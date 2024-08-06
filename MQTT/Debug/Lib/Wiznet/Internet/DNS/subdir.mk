################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Internet/DNS/dns.c 

OBJS += \
./Lib/Wiznet/Internet/DNS/dns.o 

C_DEPS += \
./Lib/Wiznet/Internet/DNS/dns.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Internet/DNS/%.o Lib/Wiznet/Internet/DNS/%.su Lib/Wiznet/Internet/DNS/%.cyclo: ../Lib/Wiznet/Internet/DNS/%.c Lib/Wiznet/Internet/DNS/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Internet/DHCP -I../Lib/Wiznet/Internet/DNS -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Internet-2f-DNS

clean-Lib-2f-Wiznet-2f-Internet-2f-DNS:
	-$(RM) ./Lib/Wiznet/Internet/DNS/dns.cyclo ./Lib/Wiznet/Internet/DNS/dns.d ./Lib/Wiznet/Internet/DNS/dns.o ./Lib/Wiznet/Internet/DNS/dns.su

.PHONY: clean-Lib-2f-Wiznet-2f-Internet-2f-DNS

