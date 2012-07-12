################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../EEPROM/EEPROM.c 

OBJS += \
./EEPROM/EEPROM.o 

C_DEPS += \
./EEPROM/EEPROM.d 


# Each subdirectory must supply rules for building sources it contributes
EEPROM/%.o: ../EEPROM/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"D:\Project\Own\BCRAdapterBoard\Code\EEPROM" -I"D:\Project\Own\BCRAdapterBoard\Code\Led7" -I"D:\Project\Own\BCRAdapterBoard\Code\RCServo" -I"D:\Project\Own\BCRAdapterBoard\Code\RF" -I"D:\Project\Own\BCRAdapterBoard\Code" -Wall -Os -fpack-struct -fshort-enums -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega8 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


