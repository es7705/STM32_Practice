################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Lib/Wiznet/Internet/MQTT/MQTTPacket/src/subdir.mk
-include Lib/Wiznet/Internet/MQTT/subdir.mk
-include Lib/Wiznet/Internet/DNS/subdir.mk
-include Lib/Wiznet/Internet/DHCP/subdir.mk
-include Lib/Wiznet/Ethernet/W5500/subdir.mk
-include Lib/Wiznet/Ethernet/W5300/subdir.mk
-include Lib/Wiznet/Ethernet/W5200/subdir.mk
-include Lib/Wiznet/Ethernet/W5100S/subdir.mk
-include Lib/Wiznet/Ethernet/W5100/subdir.mk
-include Lib/Wiznet/Ethernet/subdir.mk
-include Lib/Wiznet/Application/multicast/subdir.mk
-include Lib/Wiznet/Application/loopback/subdir.mk
-include Drivers/STM32F1xx_HAL_Driver/Src/subdir.mk
-include Core/Startup/subdir.mk
-include Core/Src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

OPTIONAL_TOOL_DEPS := \
$(wildcard ../makefile.defs) \
$(wildcard ../makefile.init) \
$(wildcard ../makefile.targets) \


BUILD_ARTIFACT_NAME := EGG_F103_MQTT
BUILD_ARTIFACT_EXTENSION := elf
BUILD_ARTIFACT_PREFIX :=
BUILD_ARTIFACT := $(BUILD_ARTIFACT_PREFIX)$(BUILD_ARTIFACT_NAME)$(if $(BUILD_ARTIFACT_EXTENSION),.$(BUILD_ARTIFACT_EXTENSION),)

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
EGG_F103_MQTT.elf \

MAP_FILES += \
EGG_F103_MQTT.map \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
EGG_F103_MQTT.list \


# All Target
all: main-build

# Main-build Target
main-build: EGG_F103_MQTT.elf secondary-outputs

# Tool invocations
EGG_F103_MQTT.elf EGG_F103_MQTT.map: $(OBJS) $(USER_OBJS) C:\STM\ PROJECT\CUBEIDE\MQTT\STM32F103RBTX_FLASH.ld makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-gcc -o "EGG_F103_MQTT.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m3 -T"C:\STM PROJECT\CUBEIDE\MQTT\STM32F103RBTX_FLASH.ld" --specs=nosys.specs -Wl,-Map="EGG_F103_MQTT.map" -Wl,--gc-sections -static --specs=nano.specs -mfloat-abi=soft -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

EGG_F103_MQTT.list: $(EXECUTABLES) makefile objects.list $(OPTIONAL_TOOL_DEPS)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "EGG_F103_MQTT.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) EGG_F103_MQTT.elf EGG_F103_MQTT.list EGG_F103_MQTT.map default.size.stdout
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

fail-specified-linker-script-missing:
	@echo 'Error: Cannot find the specified linker script. Check the linker settings in the build configuration.'
	@exit 2

warn-no-linker-script-specified:
	@echo 'Warning: No linker script specified. Check the linker settings in the build configuration.'

.PHONY: all clean dependents main-build fail-specified-linker-script-missing warn-no-linker-script-specified

-include ../makefile.targets
