# HCI Folow Control Modification.
It based on the RCP (Radio Co-Processor)) example on GSDK v4.1.0. 

Modification list as bellow.
1. Change the lib file, add one function for Link Layer send NACK. Replace .a file under /gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/lib.

2. /gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/uart/src/sl_hci_packet.c
    1. sl_btctrl_hci_packet_read(), get relevant paparmeter in event.
    2. hci_common_transport_transmit(), report it support HCI controller to host flow control.
    3. hci_common_transport_transmit(), check host buffer status before send ACL data out, if buffer is used up, send NACK and block data from controller to host. 

3. /gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/inc/sl_btctrl_hci_packet.h
Cooperate with change sl_hci_packet.c, add some definitions    