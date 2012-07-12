################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Led7/Led7.c 

OBJS += \
./Led7/Led7.o 

C_DEPS += \
./Led7/Led7.d 


# Each subdirectory must supply rules for building sources it contributes
Led7/%.o: ../Led7/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: AVR Compiler'
	avr-gcc -I"D:\Project\Own\BCRAdapterBoard\Code\EEPROM" -I"D:\Project\Own\BCRAdapterBoard\Code\Led7" -I"D:\Project\Own\BCRAdapterBoard\Code\RCServo" -I"D:\Project\Own\BCRAdapterBoard\Code\RF" -I"D:\Project\Own\BCRAdapterBoard\Code" -Wall -Os -fpack-struct -fshort-enums -std=gnu99 -funsigned-char -funsigned-bitfields -mmcu=atmega8 -DF_CPU=8000000UL -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -c -o"$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


