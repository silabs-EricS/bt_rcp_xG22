################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../autogen/sl_bluetooth_controller.c \
../autogen/sl_board_default_init.c \
../autogen/sl_device_init_clocks.c \
../autogen/sl_event_handler.c \
../autogen/sl_uartdrv_init.c 

OBJS += \
./autogen/sl_bluetooth_controller.o \
./autogen/sl_board_default_init.o \
./autogen/sl_device_init_clocks.o \
./autogen/sl_event_handler.o \
./autogen/sl_uartdrv_init.o 

C_DEPS += \
./autogen/sl_bluetooth_controller.d \
./autogen/sl_board_default_init.d \
./autogen/sl_device_init_clocks.d \
./autogen/sl_event_handler.d \
./autogen/sl_uartdrv_init.d 


# Each subdirectory must supply rules for building sources it contributes
autogen/sl_bluetooth_controller.o: ../autogen/sl_bluetooth_controller.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32BG22C224F512IM40=1' '-DSL_APP_PROPERTIES=1' '-DSL_BOARD_NAME="BRD4184A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/src/hci" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/uart/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/board/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader/api" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/CMSIS/Core/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/device_init/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/dmadrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emlib/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/gpiointerrupt/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/library" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc/public" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/common" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ble" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ieee802154" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/zwave" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/silicon_labs/silabs_core/memory_manager" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/toolchain/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/system/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/sleeptimer/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/uartdrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/udelay/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/autogen" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/config" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_bluetooth_controller.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_board_default_init.o: ../autogen/sl_board_default_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32BG22C224F512IM40=1' '-DSL_APP_PROPERTIES=1' '-DSL_BOARD_NAME="BRD4184A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/src/hci" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/uart/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/board/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader/api" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/CMSIS/Core/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/device_init/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/dmadrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emlib/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/gpiointerrupt/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/library" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc/public" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/common" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ble" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ieee802154" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/zwave" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/silicon_labs/silabs_core/memory_manager" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/toolchain/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/system/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/sleeptimer/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/uartdrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/udelay/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/autogen" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/config" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_board_default_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_device_init_clocks.o: ../autogen/sl_device_init_clocks.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32BG22C224F512IM40=1' '-DSL_APP_PROPERTIES=1' '-DSL_BOARD_NAME="BRD4184A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/src/hci" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/uart/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/board/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader/api" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/CMSIS/Core/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/device_init/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/dmadrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emlib/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/gpiointerrupt/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/library" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc/public" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/common" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ble" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ieee802154" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/zwave" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/silicon_labs/silabs_core/memory_manager" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/toolchain/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/system/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/sleeptimer/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/uartdrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/udelay/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/autogen" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/config" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_device_init_clocks.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_event_handler.o: ../autogen/sl_event_handler.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32BG22C224F512IM40=1' '-DSL_APP_PROPERTIES=1' '-DSL_BOARD_NAME="BRD4184A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/src/hci" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/uart/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/board/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader/api" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/CMSIS/Core/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/device_init/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/dmadrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emlib/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/gpiointerrupt/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/library" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc/public" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/common" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ble" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ieee802154" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/zwave" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/silicon_labs/silabs_core/memory_manager" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/toolchain/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/system/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/sleeptimer/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/uartdrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/udelay/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/autogen" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/config" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_event_handler.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

autogen/sl_uartdrv_init.o: ../autogen/sl_uartdrv_init.c autogen/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM C Compiler'
	arm-none-eabi-gcc -g3 -gdwarf-2 -mcpu=cortex-m33 -mthumb -std=c99 '-DEFR32BG22C224F512IM40=1' '-DSL_APP_PROPERTIES=1' '-DSL_BOARD_NAME="BRD4184A"' '-DSL_BOARD_REV="A02"' '-DSL_COMPONENT_CATALOG_PRESENT=1' '-DMBEDTLS_CONFIG_FILE=<mbedtls_config.h>' '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' '-DSLI_RADIOAES_REQUIRES_MASKING=1' -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/Device/SiliconLabs/EFR32BG22/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/src/hci" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/protocol/bluetooth/bgstack/ll/utils/hci_packet/uart/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/board/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/bootloader/api" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/CMSIS/Core/Include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_cryptoacc_library/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/device_init/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/dmadrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/common/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emlib/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/gpiointerrupt/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/config" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_mbedtls_support/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/include" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/mbedtls/library" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/hardware/driver/mx25_flash_shutdown/inc/sl_mx25_flash_shutdown_usart" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_psa_driver/inc/public" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/common" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ble" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/ieee802154" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/protocol/zwave" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/chip/efr32/efr32xg2x" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/se_manager/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/silicon_labs/silabs_core/memory_manager" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/common/toolchain/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/system/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/sleeptimer/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/util/third_party/crypto/sl_component/sl_protocol_crypto/src" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/emdrv/uartdrv/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/gecko_sdk_4.1.0/platform/service/udelay/inc" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/autogen" -I"/Users/ersu/SimplicityStudio/v5_workspace/bt_rcp_xG22/config" -Os -Wall -Wextra -ffunction-sections -fdata-sections -imacrossl_gcc_preinclude.h -mfpu=fpv5-sp-d16 -mfloat-abi=hard -mcmse -c -fmessage-length=0 -MMD -MP -MF"autogen/sl_uartdrv_init.d" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


