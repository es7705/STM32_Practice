################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Application/multicast/multicast.c 

OBJS += \
./Lib/Wiznet/Application/multicast/multicast.o 

C_DEPS += \
./Lib/Wiznet/Application/multicast/multicast.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Application/multicast/%.o Lib/Wiznet/Application/multicast/%.su Lib/Wiznet/Application/multicast/%.cyclo: ../Lib/Wiznet/Application/multicast/%.c Lib/Wiznet/Application/multicast/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Internet/DHCP -I../Lib/Wiznet/Internet/DNS -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Application-2f-multicast

clean-Lib-2f-Wiznet-2f-Application-2f-multicast:
	-$(RM) ./Lib/Wiznet/Application/multicast/multicast.cyclo ./Lib/Wiznet/Application/multicast/multicast.d ./Lib/Wiznet/Application/multicast/multicast.o ./Lib/Wiznet/Application/multicast/multicast.su

.PHONY: clean-Lib-2f-Wiznet-2f-Application-2f-multicast

