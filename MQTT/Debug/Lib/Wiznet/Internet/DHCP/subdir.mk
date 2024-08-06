################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Internet/DHCP/dhcp.c 

OBJS += \
./Lib/Wiznet/Internet/DHCP/dhcp.o 

C_DEPS += \
./Lib/Wiznet/Internet/DHCP/dhcp.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Internet/DHCP/%.o Lib/Wiznet/Internet/DHCP/%.su Lib/Wiznet/Internet/DHCP/%.cyclo: ../Lib/Wiznet/Internet/DHCP/%.c Lib/Wiznet/Internet/DHCP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Internet/DHCP -I../Lib/Wiznet/Internet/DNS -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Internet-2f-DHCP

clean-Lib-2f-Wiznet-2f-Internet-2f-DHCP:
	-$(RM) ./Lib/Wiznet/Internet/DHCP/dhcp.cyclo ./Lib/Wiznet/Internet/DHCP/dhcp.d ./Lib/Wiznet/Internet/DHCP/dhcp.o ./Lib/Wiznet/Internet/DHCP/dhcp.su

.PHONY: clean-Lib-2f-Wiznet-2f-Internet-2f-DHCP

