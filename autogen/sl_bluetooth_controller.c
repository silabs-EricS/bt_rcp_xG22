

#include <stdbool.h>
#include <em_common.h>
#include "sl_btctrl_linklayer.h"
#include "sl_btctrl_config.h"
#include "sl_btctrl_acceptance_list_config.h"

#ifdef SL_COMPONENT_CATALOG_PRESENT
#include "sl_component_catalog.h"
#endif // SL_COMPONENT_CATALOG_PRESENT
#include "sl_bluetooth_advertiser_config.h"
#include "sl_bluetooth_connection_config.h"
#include "sl_btctrl_linklayer.h"
#include "sl_bt_periodic_advertiser_config.h"

#ifndef SL_BT_CONFIG_MAX_CONNECTIONS
#define SL_BT_CONFIG_MAX_CONNECTIONS 0
#endif
#ifndef SL_BT_CONFIG_USER_ADVERTISERS
#define SL_BT_CONFIG_USER_ADVERTISERS 0
#endif
#ifndef SL_BT_CONFIG_ACCEPT_LIST_SIZE
#define SL_BT_CONFIG_ACCEPT_LIST_SIZE 0
#endif
#ifndef SL_BT_ACTIVATE_POWER_CONTROL
#define SL_BT_ACTIVATE_POWER_CONTROL 0
#endif

void sl_bt_controller_init(void)
{
  if(sl_btctrl_is_initialized() == true)
  {
    return;
  }
  sl_btctrl_init_mem(SL_BT_CONTROLLER_BUFFER_MEMORY);
#if !defined(SL_CATALOG_KERNEL_PRESENT)
  sli_btctrl_events_init();
#endif
  sl_btctrl_init_ll();
  sl_btctrl_init_adv();
  sl_btctrl_init_scan();
  sl_btctrl_init_conn();
  sl_btctrl_init_phy();
  sl_btctrl_init_adv_ext();
  sl_btctrl_init_scan_ext();
  sl_btctrl_init_basic(SL_BT_CONFIG_MAX_CONNECTIONS, SL_BT_CONFIG_USER_ADVERTISERS, SL_BT_CONFIG_ACCEPT_LIST_SIZE);
  sl_btctrl_alloc_periodic_adv(SL_BT_CONFIG_MAX_PERIODIC_ADVERTISERS);sl_btctrl_init_periodic_adv();
}
sl_status_t sl_bt_ll_deinit();

void sl_bt_controller_deinit(void)
{
  if(sl_btctrl_is_initialized() == false){    
    return;
  }
  sl_btctrl_alloc_periodic_adv(0);
  sl_bt_ll_deinit();

  sli_btctrl_deinit_mem();
}