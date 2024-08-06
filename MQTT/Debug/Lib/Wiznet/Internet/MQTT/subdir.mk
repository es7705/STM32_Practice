################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Internet/MQTT/MQTTClient.c \
../Lib/Wiznet/Internet/MQTT/mqtt_interface.c 

OBJS += \
./Lib/Wiznet/Internet/MQTT/MQTTClient.o \
./Lib/Wiznet/Internet/MQTT/mqtt_interface.o 

C_DEPS += \
./Lib/Wiznet/Internet/MQTT/MQTTClient.d \
./Lib/Wiznet/Internet/MQTT/mqtt_interface.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Internet/MQTT/%.o Lib/Wiznet/Internet/MQTT/%.su Lib/Wiznet/Internet/MQTT/%.cyclo: ../Lib/Wiznet/Internet/MQTT/%.c Lib/Wiznet/Internet/MQTT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Internet/DHCP -I../Lib/Wiznet/Internet/DNS -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Internet-2f-MQTT

clean-Lib-2f-Wiznet-2f-Internet-2f-MQTT:
	-$(RM) ./Lib/Wiznet/Internet/MQTT/MQTTClient.cyclo ./Lib/Wiznet/Internet/MQTT/MQTTClient.d ./Lib/Wiznet/Internet/MQTT/MQTTClient.o ./Lib/Wiznet/Internet/MQTT/MQTTClient.su ./Lib/Wiznet/Internet/MQTT/mqtt_interface.cyclo ./Lib/Wiznet/Internet/MQTT/mqtt_interface.d ./Lib/Wiznet/Internet/MQTT/mqtt_interface.o ./Lib/Wiznet/Internet/MQTT/mqtt_interface.su

.PHONY: clean-Lib-2f-Wiznet-2f-Internet-2f-MQTT

