################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Ethernet/W5300/w5300.c 

OBJS += \
./Lib/Wiznet/Ethernet/W5300/w5300.o 

C_DEPS += \
./Lib/Wiznet/Ethernet/W5300/w5300.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Ethernet/W5300/%.o Lib/Wiznet/Ethernet/W5300/%.su Lib/Wiznet/Ethernet/W5300/%.cyclo: ../Lib/Wiznet/Ethernet/W5300/%.c Lib/Wiznet/Ethernet/W5300/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Internet/DHCP -I../Lib/Wiznet/Internet/DNS -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Ethernet-2f-W5300

clean-Lib-2f-Wiznet-2f-Ethernet-2f-W5300:
	-$(RM) ./Lib/Wiznet/Ethernet/W5300/w5300.cyclo ./Lib/Wiznet/Ethernet/W5300/w5300.d ./Lib/Wiznet/Ethernet/W5300/w5300.o ./Lib/Wiznet/Ethernet/W5300/w5300.su

.PHONY: clean-Lib-2f-Wiznet-2f-Ethernet-2f-W5300

