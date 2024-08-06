################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Application/loopback/loopback.c 

OBJS += \
./Lib/Wiznet/Application/loopback/loopback.o 

C_DEPS += \
./Lib/Wiznet/Application/loopback/loopback.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Application/loopback/%.o Lib/Wiznet/Application/loopback/%.su Lib/Wiznet/Application/loopback/%.cyclo: ../Lib/Wiznet/Application/loopback/%.c Lib/Wiznet/Application/loopback/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Internet/DHCP -I../Lib/Wiznet/Internet/DNS -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Application-2f-loopback

clean-Lib-2f-Wiznet-2f-Application-2f-loopback:
	-$(RM) ./Lib/Wiznet/Application/loopback/loopback.cyclo ./Lib/Wiznet/Application/loopback/loopback.d ./Lib/Wiznet/Application/loopback/loopback.o ./Lib/Wiznet/Application/loopback/loopback.su

.PHONY: clean-Lib-2f-Wiznet-2f-Application-2f-loopback

