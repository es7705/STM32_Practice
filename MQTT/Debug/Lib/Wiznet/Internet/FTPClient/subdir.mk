################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Internet/FTPClient/ftpc.c 

OBJS += \
./Lib/Wiznet/Internet/FTPClient/ftpc.o 

C_DEPS += \
./Lib/Wiznet/Internet/FTPClient/ftpc.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Internet/FTPClient/%.o Lib/Wiznet/Internet/FTPClient/%.su Lib/Wiznet/Internet/FTPClient/%.cyclo: ../Lib/Wiznet/Internet/FTPClient/%.c Lib/Wiznet/Internet/FTPClient/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Internet-2f-FTPClient

clean-Lib-2f-Wiznet-2f-Internet-2f-FTPClient:
	-$(RM) ./Lib/Wiznet/Internet/FTPClient/ftpc.cyclo ./Lib/Wiznet/Internet/FTPClient/ftpc.d ./Lib/Wiznet/Internet/FTPClient/ftpc.o ./Lib/Wiznet/Internet/FTPClient/ftpc.su

.PHONY: clean-Lib-2f-Wiznet-2f-Internet-2f-FTPClient

