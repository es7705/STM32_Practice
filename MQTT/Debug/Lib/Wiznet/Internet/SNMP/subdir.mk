################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Internet/SNMP/snmp.c \
../Lib/Wiznet/Internet/SNMP/snmp_custom.c 

OBJS += \
./Lib/Wiznet/Internet/SNMP/snmp.o \
./Lib/Wiznet/Internet/SNMP/snmp_custom.o 

C_DEPS += \
./Lib/Wiznet/Internet/SNMP/snmp.d \
./Lib/Wiznet/Internet/SNMP/snmp_custom.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Internet/SNMP/%.o Lib/Wiznet/Internet/SNMP/%.su Lib/Wiznet/Internet/SNMP/%.cyclo: ../Lib/Wiznet/Internet/SNMP/%.c Lib/Wiznet/Internet/SNMP/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Internet-2f-SNMP

clean-Lib-2f-Wiznet-2f-Internet-2f-SNMP:
	-$(RM) ./Lib/Wiznet/Internet/SNMP/snmp.cyclo ./Lib/Wiznet/Internet/SNMP/snmp.d ./Lib/Wiznet/Internet/SNMP/snmp.o ./Lib/Wiznet/Internet/SNMP/snmp.su ./Lib/Wiznet/Internet/SNMP/snmp_custom.cyclo ./Lib/Wiznet/Internet/SNMP/snmp_custom.d ./Lib/Wiznet/Internet/SNMP/snmp_custom.o ./Lib/Wiznet/Internet/SNMP/snmp_custom.su

.PHONY: clean-Lib-2f-Wiznet-2f-Internet-2f-SNMP

