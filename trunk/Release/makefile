################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include default/subdir.mk
-include Sensor/subdir.mk
-include RF/subdir.mk
-include RCServo/subdir.mk
-include Led7/subdir.mk
-include EEPROM/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(ASM_DEPS)),)
-include $(ASM_DEPS)
endif
ifneq ($(strip $(S_DEPS)),)
-include $(S_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LSS += \
BCRGate.lss \

FLASH_IMAGE += \
BCRGate.hex \

EEPROM_IMAGE += \
BCRGate.eep \

SIZEDUMMY += \
sizedummy \


# All Target
all: BCRGate.elf secondary-outputs

# Tool invocations
BCRGate.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: AVR C Linker'
	avr-gcc -Wl,-Map,BCRGate.map -mmcu=atmega8 -o"BCRGate.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

BCRGate.lss: BCRGate.elf
	@echo 'Invoking: AVR Create Extended Listing'
	-avr-objdump -h -S BCRGate.elf  >"BCRGate.lss"
	@echo 'Finished building: $@'
	@echo ' '

BCRGate.hex: BCRGate.elf
	@echo 'Create Flash image (ihex format)'
	-avr-objcopy -R .eeprom -O ihex BCRGate.elf  "BCRGate.hex"
	@echo 'Finished building: $@'
	@echo ' '

BCRGate.eep: BCRGate.elf
	@echo 'Create eeprom image (ihex format)'
	-avr-objcopy -j .eeprom --no-change-warnings --change-section-lma .eeprom=0 -O ihex BCRGate.elf  "BCRGate.eep"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: BCRGate.elf
	@echo 'Invoking: Print Size'
	-avr-size --format=avr --mcu=atmega8 BCRGate.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(ASM_DEPS)$(EEPROM_IMAGE)$(FLASH_IMAGE)$(ELFS)$(LSS)$(S_DEPS)$(SIZEDUMMY)$(S_UPPER_DEPS) BCRGate.elf
	-@echo ' '

secondary-outputs: $(LSS) $(FLASH_IMAGE) $(EEPROM_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
