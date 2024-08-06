################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/lcd16x2_i2c.c 

OBJS += \
./Lib/lcd16x2_i2c.o 

C_DEPS += \
./Lib/lcd16x2_i2c.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/%.o Lib/%.su Lib/%.cyclo: ../Lib/%.c Lib/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I"C:/STM PROJECT/CUBEIDE/I2C/Lib" -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib

clean-Lib:
	-$(RM) ./Lib/lcd16x2_i2c.cyclo ./Lib/lcd16x2_i2c.d ./Lib/lcd16x2_i2c.o ./Lib/lcd16x2_i2c.su

.PHONY: clean-Lib

