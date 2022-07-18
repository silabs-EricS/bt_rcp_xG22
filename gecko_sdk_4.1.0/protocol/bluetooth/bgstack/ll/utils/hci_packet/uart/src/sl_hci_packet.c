#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <em_device.h>
#include <em_gpio.h>
#include <em_core.h>
#include "sl_hci_common_transport.h"
#include "sl_hci_uart.h"
#include "sl_btctrl_hci_packet.h"

#define RX_BUFFER_LEN 64

SL_ALIGN(4)
static uint8_t hci_rx_buffer[RX_BUFFER_LEN] SL_ATTRIBUTE_ALIGN(4);
/* buffer pointer for transferring bytes to hci_rx_buffer */
static uint8_t *buf_byte_ptr;
static hci_packet_t *const PACKET = (hci_packet_t *) hci_rx_buffer;
static enum hci_packet_state state;
static uint16_t bytes_remaining; // first message byte contains packet type
static uint16_t total_bytes_read;
static uint16_t buffer_remaining;

#ifdef ENABLE_HCI_CONTROLLER_TO_HOST_FLOW_CONTROL
typedef  struct {
  uint16_t handle;
  uint16_t acl_packet_counter;
} hci_connection_t;

static uint8_t acl_packet_support_counter;
static uint8_t num_hci_connections = 0;
static hci_connection_t hci_connections[MAX_NUM_HCI_CONNECTIONS];
static hci_controller_to_host_flow_control_t flow_control;
static hci_host_buffer_t host_buffer;
static hci_host_completed_t host_completed;

extern void set_nack_packets_ctl_flag(bool value);


void sl_set_rx_enable(bool en)
{
  if(en)
    set_nack_packets_ctl_flag(false);
  else
    set_nack_packets_ctl_flag(true);
}

void hci_add_connection(uint16_t handle)
{
  for (uint8_t i = 0; i < num_hci_connections; i++){
    if (hci_connections[i].handle == handle)
      return;
  }

  if (num_hci_connections < MAX_NUM_HCI_CONNECTIONS){
    hci_connections[num_hci_connections].handle = handle;
    hci_connections[num_hci_connections].acl_packet_counter = 0;
    num_hci_connections++;
  }
}

void hci_remove_connection(uint16_t handle)
{  
  uint8_t shift = 0;
  
  if (num_hci_connections < 1){
    return;
  }

  for (uint8_t i = 0; i < (num_hci_connections-1); i++){
    if (hci_connections[i].handle == handle){
      shift = 1;
    }
    hci_connections[i] = hci_connections[i+shift];
  }

  num_hci_connections--;
}

hci_connection_t* hci_get_connection(uint16_t handle)
{
  for (uint8_t i = 0; i < num_hci_connections; i++){
    if (hci_connections[i].handle == handle)
      return &(hci_connections[i]);
  }
  return NULL;
}
#endif

static void reset(void)
{
  memset(hci_rx_buffer, 0, RX_BUFFER_LEN);
  state = hci_packet_state_read_packet_type;
  buf_byte_ptr = hci_rx_buffer;
  bytes_remaining = 1;
  total_bytes_read = 0;
  buffer_remaining = RX_BUFFER_LEN;
}

static void reception_failure(void)
{
  hci_common_transport_receive(NULL, 0, false);
  reset();
}

/**
 *  Called from sl_service_process_event(). Immediately returns if no data
 *  available to read. Reading of data consists of three phases: packet type,
 *  header, and data. The amount of data read during each phase is dependent
 *  upon the command. For a given phase, an attempt is made to read the full
 *  amount of data pertaining to that phase. If less than this amount is in
 *  the buffer, the amount read is subtracted from the remaining amount and
 *  function execution returns. When all data for a phase has been read, the
 *  next phase is started, or hci_common_transport_receive() is called if all
 *  data has been read.
 */
void sl_btctrl_hci_packet_read(void)
{
  uint16_t bytes_read;
  uint16_t len;

  /* Check if data available */
  if (sl_hci_uart_rx_buffered_length() <= 0) {
    return;
  }

  if (bytes_remaining >= buffer_remaining) {
    len = buffer_remaining;
  } else {
    len = bytes_remaining;
  }

  bytes_read = sl_hci_uart_read(buf_byte_ptr, len);
  buf_byte_ptr += bytes_read;
  total_bytes_read += bytes_read;
  bytes_remaining -= bytes_read;
  buffer_remaining -= bytes_read;

  if (bytes_remaining == 1 && state == hci_packet_state_read_data) {
    sl_hci_disable_sleep(true);
  }

  if (bytes_remaining > 0 && buffer_remaining > 0) {
    return;
  }

  switch (state) {
    case hci_packet_state_read_packet_type:
    {
      switch (PACKET->packet_type) {
        case hci_packet_type_ignore:
        {
          reset();
          return;
        }
        case hci_packet_type_command:
        {
          bytes_remaining = hci_command_header_size;
          break;
        }
        case hci_packet_type_acl_data:
        {
          bytes_remaining = hci_acl_data_header_size;
          break;
        }
        default:
        {
          reception_failure();
          return;
        }
      }

      state = hci_packet_state_read_header;
      break;
    }
    case hci_packet_state_read_header:
    {
      switch (PACKET->packet_type) {
        case hci_packet_type_command:
        {
          bytes_remaining = PACKET->hci_cmd.param_len;
          break;
        }
        case hci_packet_type_acl_data:
        {
          bytes_remaining = PACKET->acl_pkt.length;
          break;
        }
        default:
        {
          reception_failure();
          return;
        }
      }

      if (bytes_remaining == 0) {
        hci_common_transport_receive(hci_rx_buffer, total_bytes_read, true);
        reset();
        return;
      } else {
        state = hci_packet_state_read_data;
      }
      break;
    }
    case hci_packet_state_read_data:
    {
      // TODO: if HCI flow control related command is received, process it here, and DO NOT forward it to the controller
      //         * if HCI_Set_Host_Controller_To_Host_Flow_Control (OGF 0x03 OCF 0x0031) is received,
      //             * enable/disable flow control based on the least significant bit (0x01) of Flow_Control_Enable
      //             * if flow control is disabled, free the local buffer
      //             * send HCI_Command_Complete event
      //         * if HCI_Host_Buffer_Size message (OGF 0x03 OCF 0x0033) is received, then
      //             * set the host_buffer_slot_size to Host_ACL_Data_Packet_Length
      //             * set the host_total_buffer_size to Host_Total_Num_ACL_Data_Packets
      //             * set the host_available_buffer_size to host_total_buffer_size
      //             * init local buffer with slot size set to host_buffer_slot_size + 4 (header)
      //             * send HCI_Command_Complete event
      //         * if HCI_Host_Number_Of_Completed_Packets (OGF 0x03 OCF 0x0035) is received, then
      //             * increase the host_available_buffer_size according to Host_Num_Completed_Packets
      //                 * ideally this should be set separately for each HCI connection handle, but in first round we can use a
      //                       common host_available_buffer_size, assuming that there is only one connection
      //             * transmit as many packets from the controller buffer as possible

      if (bytes_remaining > 0) {
        hci_common_transport_receive(hci_rx_buffer, RX_BUFFER_LEN, false);
        buffer_remaining = RX_BUFFER_LEN;
        buf_byte_ptr = hci_rx_buffer;
      } else {
        sl_hci_disable_sleep(false);

        #ifdef ENABLE_HCI_CONTROLLER_TO_HOST_FLOW_CONTROL
        if (PACKET->packet_type == hci_packet_type_command &&
          (PACKET->hci_cmd.opcode == HCI_Set_Host_Controller_To_Host_Flow_Control ||
           PACKET->hci_cmd.opcode == HCI_Host_Buffer_Size ||
           PACKET->hci_cmd.opcode == HCI_Host_Number_Of_Completed_Packets)) {
          switch (PACKET->hci_cmd.opcode){
            case HCI_Set_Host_Controller_To_Host_Flow_Control:
            {
              memset(&flow_control, 0, sizeof(hci_controller_to_host_flow_control_t));
              if(PACKET->hci_cmd.param_len == sizeof(hci_controller_to_host_flow_control_t)) //Prevent the overflow
                memcpy(&flow_control, PACKET->hci_cmd.payload, PACKET->hci_cmd.param_len);
              if(flow_control.enable == 0){
                acl_packet_support_counter = 0;
                for (uint8_t i=0; i < MAX_NUM_HCI_CONNECTIONS; i++){
                  hci_connections[i].acl_packet_counter = 0;
                }
              }
              break;
            }
            case HCI_Host_Buffer_Size:
            {
              memset(&host_buffer, 0, sizeof(hci_host_buffer_t));
              if(PACKET->hci_cmd.param_len == sizeof(hci_host_buffer_t)) //Prevent the overflow
                memcpy(&host_buffer, PACKET->hci_cmd.payload, PACKET->hci_cmd.param_len);
              acl_packet_support_counter = host_buffer.acl_pkts;
              for (uint8_t i=0; i < MAX_NUM_HCI_CONNECTIONS; i++){
                hci_connections[i].acl_packet_counter = 0;
              }
              break;
            }
            case HCI_Host_Number_Of_Completed_Packets:
            {
              memset(&host_completed, 0, sizeof(hci_host_completed_t));
              if(PACKET->hci_cmd.param_len <= sizeof(hci_host_completed_t)) //Prevent the overflow
                memcpy(&host_completed, PACKET->hci_cmd.payload, PACKET->hci_cmd.param_len);

              for(uint8_t i = 0; i < host_completed.handle_num; i++){
                uint16_t current_handle = host_completed.handles_and_counts[i];
                uint16_t current_count =  host_completed.handles_and_counts[host_completed.handle_num + i];
                if (hci_get_connection(current_handle)){
                  hci_get_connection(current_handle)->acl_packet_counter -= current_count;
                }
                acl_packet_support_counter += current_count;
              }

              if(acl_packet_support_counter > host_buffer.acl_pkts){
                acl_packet_support_counter = host_buffer.acl_pkts;
              }

              hci_common_transport_receive(NULL, 0, false);
              reset();
              return;
            }
            default:
              break;
          }
        }
        #endif

        hci_common_transport_receive(hci_rx_buffer, RX_BUFFER_LEN - buffer_remaining, true);
        reset();

      }
      break;
    }
    default:
    {
      reception_failure();
      return;
    }
  }
}

uint32_t hci_common_transport_transmit(uint8_t *data, int16_t len)
{
  #ifdef ENABLE_HCI_CONTROLLER_TO_HOST_FLOW_CONTROL
  bool forward_packet = true;
  //TODO: check the packet type.
  //        * if it is an event, then we can simply transmit it.
  //           * if a HCI_Disconnection_Complete event was sent out, then the host_available_buffer_size should be set to host_total_buffer_size (reset)
  //        * If it is ACL data, then we should check if there is available slot on the host
  //           * if there is available slot on the host, transmit the message and decrease the host_available_buffer_size
  //           * if there is no available slot, put the message into the local buffer
  //           * in both cases, check if the length (excluding the 4 byte header!) is greater than the host_buffer_slot_size, and if it is,
  //                then fragment the data into smaller chunks, so that they fit into one slot

  hci_packet_t transmit_data;
  memcpy(&transmit_data, data, len);
  if (transmit_data.packet_type == hci_packet_type_event) {
    if (transmit_data.hci_evt.eventcode == HCI_Connection_Complete) {
      uint16_t current_handle = transmit_data.hci_evt.payload[1] + transmit_data.hci_evt.payload[2]*256;
      hci_add_connection(current_handle);
    }

    if (transmit_data.hci_evt.eventcode == HCI_Disconnection_Complete) {
      uint16_t current_handle = transmit_data.hci_evt.payload[1] + transmit_data.hci_evt.payload[2]*256;
      if (hci_get_connection(current_handle)){
        acl_packet_support_counter += hci_get_connection(current_handle)->acl_packet_counter;
        if(acl_packet_support_counter > host_buffer.acl_pkts){
          acl_packet_support_counter = host_buffer.acl_pkts;
        }
        hci_remove_connection(current_handle);
      }
      sl_set_rx_enable(true); //enable it for next round
    }

    if(transmit_data.hci_evt.eventcode == HCI_Command_Complete){
      if (transmit_data.hci_evt.opcode == HCI_Read_Local_Supported_Commands) {
        transmit_data.hci_evt.payload[hci_flow_control_config_index] |= 0xE0;  //Set bit5,6,7
      }else if((transmit_data.hci_evt.opcode == HCI_Set_Host_Controller_To_Host_Flow_Control)
             ||(transmit_data.hci_evt.opcode == HCI_Host_Buffer_Size)
             /*||(transmit_data.hci_evt.opcode == HCI_Host_Number_Of_Completed_Packets)*/){
        transmit_data.hci_evt.status = 0x00; //Reply the host that controller support flow control
      }
      memcpy(data, &transmit_data, len);
    }
  } else if (transmit_data.packet_type == hci_packet_type_acl_data){
    //uint16_t ACL_packet_total_len = ((hci_packet_t *)data)->acl_pkt.length;
    // fragment the packet into chunks and then either transmit the chunks or put them into the local buffer

    if (flow_control.enable){
        //Limit on Host_ACL_Data_Packet_Length,fragment the packet in next step
        if(len > host_buffer.acl_mtu){
          return -1;
        }
		
      if ( hci_get_connection(transmit_data.acl_pkt.conn_handle)){
        hci_get_connection(transmit_data.acl_pkt.conn_handle)->acl_packet_counter++;
      }
      //Limit on Host_Total_Num_ACL_Data_Packets
      //If there is space in host buffer, forward message and decrease buffer size,
      //otherwise do not forward the packet
      if(acl_packet_support_counter > 0){
        forward_packet = true;
        acl_packet_support_counter--;
      } else {
        forward_packet = false;
      }

      //If there is still space in the host buffer after this packet, enable further receiving
      //otherwise disable further receiving
      if(acl_packet_support_counter > 0){
        sl_set_rx_enable(true);
      }else{
        sl_set_rx_enable(false);
        //Note: this will not actually stop receiving, it only starts non-ACKing the incoming packets
        //This means that ACL packets will still be received, and they should not be forwarded until 
        //there is free buffer space on the host, see above
      }

    }
  }
  #endif

  if (forward_packet){
    return sl_hci_uart_write(data, len);
  }

  return -1;
}

void hci_common_transport_init(void)
{
  reset();
  sl_hci_uart_init();
}
