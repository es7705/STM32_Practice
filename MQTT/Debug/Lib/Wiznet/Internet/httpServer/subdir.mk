################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (12.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lib/Wiznet/Internet/httpServer/httpParser.c \
../Lib/Wiznet/Internet/httpServer/httpServer.c \
../Lib/Wiznet/Internet/httpServer/httpUtil.c 

OBJS += \
./Lib/Wiznet/Internet/httpServer/httpParser.o \
./Lib/Wiznet/Internet/httpServer/httpServer.o \
./Lib/Wiznet/Internet/httpServer/httpUtil.o 

C_DEPS += \
./Lib/Wiznet/Internet/httpServer/httpParser.d \
./Lib/Wiznet/Internet/httpServer/httpServer.d \
./Lib/Wiznet/Internet/httpServer/httpUtil.d 


# Each subdirectory must supply rules for building sources it contributes
Lib/Wiznet/Internet/httpServer/%.o Lib/Wiznet/Internet/httpServer/%.su Lib/Wiznet/Internet/httpServer/%.cyclo: ../Lib/Wiznet/Internet/httpServer/%.c Lib/Wiznet/Internet/httpServer/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F103xB -c -I../Core/Inc -I../Lib/Wiznet/Ethernet -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Lib-2f-Wiznet-2f-Internet-2f-httpServer

clean-Lib-2f-Wiznet-2f-Internet-2f-httpServer:
	-$(RM) ./Lib/Wiznet/Internet/httpServer/httpParser.cyclo ./Lib/Wiznet/Internet/httpServer/httpParser.d ./Lib/Wiznet/Internet/httpServer/httpParser.o ./Lib/Wiznet/Internet/httpServer/httpParser.su ./Lib/Wiznet/Internet/httpServer/httpServer.cyclo ./Lib/Wiznet/Internet/httpServer/httpServer.d ./Lib/Wiznet/Internet/httpServer/httpServer.o ./Lib/Wiznet/Internet/httpServer/httpServer.su ./Lib/Wiznet/Internet/httpServer/httpUtil.cyclo ./Lib/Wiznet/Internet/httpServer/httpUtil.d ./Lib/Wiznet/Internet/httpServer/httpUtil.o ./Lib/Wiznet/Internet/httpServer/httpUtil.su

.PHONY: clean-Lib-2f-Wiznet-2f-Internet-2f-httpServer

