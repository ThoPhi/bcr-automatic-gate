################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Sensor/Sensor.c 

OBJS += \
./Sensor/Sensor.o 

C_DEPS += \
./Sensor/Sensor.d 


# Each subdirectory must supply rules for building sources it contributes
Sensor/%.o: ../Sensor/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"D:\Project\Own\BCRAdapterBoard\Code\EEPROM" -I"D:\Project\Own\BCRAdapterBoard\Code\Led7" -I"D:\Project\Own\BCRAdapterBoard\Code\RCServo" -I"D:\Project\Own\BCRAdapterBoard\Code\RF" -I"D:\Project\Own\BCRAdapterBoard\Code" -Wall -Os -fpack-struct -fshort-enums -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega8 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


