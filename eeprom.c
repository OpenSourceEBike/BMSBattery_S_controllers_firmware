/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include "stm8s.h"
#include "stm8s_flash.h"
#include "eeprom.h"
#include "ebike_app.h"

void eeprom_read_values_to_variables (void);

void eeprom_init (void)
{
  uint8_t array_default_values [7] = {
	KEY,
	DEFAULT_VALUE_ASSIST_LEVEL,
	DEFAULT_VALUE_MOTOR_CHARACTARISTIC,
	DEFAULT_VALUE_WHEEL_SIZE,
	DEFAULT_VALUE_MAX_SPEED,
	DEFAULT_VALUE_POWER_ASSIST_CONTROL_MODE,
	DEFAULT_VALUE_CONTROLLER_MAX_CURRENT
  };
  uint8_t ui8_i;
  uint8_t ui8_data;

  /****************************************************************************/
  // start by reading address 0 and see if value is different from our key,
  // if so mean that eeprom memory is clean and we need to populate: should happen after erasing the microcontroller
  ui8_data = FLASH_ReadByte (ADDRESS_KEY);
  if (ui8_data != KEY) // verify if our key exist
  {
    FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    FLASH_Unlock(FLASH_MEMTYPE_DATA);
    while (FLASH_GetFlagStatus(FLASH_FLAG_DUL) == RESET) ;

    // flash all the default values
    for (ui8_i = 0; ui8_i < 7; ui8_i++)
    {
      FLASH_ProgramByte(EEPROM_BASE_ADDRESS + ui8_i, array_default_values [ui8_i]);
      FLASH_GetFlagStatus (FLASH_FLAG_EOP) ;
    }
    FLASH_Lock(FLASH_MEMTYPE_DATA);

    eeprom_read_values_to_variables ();
  }
  else // values on eeprom memory should be ok, now use them
  {
    eeprom_read_values_to_variables ();
  }
}

void eeprom_read_values_to_variables (void)
{
  struc_lcd_configuration_variables *p_lcd_configuration_variables = ebike_app_get_lcd_configuration_variables ();

  p_lcd_configuration_variables->ui8_assist_level = FLASH_ReadByte(ADDRESS_ASSIST_LEVEL);
  p_lcd_configuration_variables->ui8_motor_characteristic = FLASH_ReadByte(ADDRESS_MOTOR_CHARACTARISTIC);
  p_lcd_configuration_variables->ui8_wheel_size = FLASH_ReadByte(ADDRESS_WHEEL_SIZE);
  p_lcd_configuration_variables->ui8_max_speed = FLASH_ReadByte(ADDRESS_MAX_SPEED);
  p_lcd_configuration_variables->ui8_power_assist_control_mode = FLASH_ReadByte(ADDRESS_POWER_ASSIST_CONTROL_MODE);
  p_lcd_configuration_variables->ui8_controller_max_current = FLASH_ReadByte(ADDRESS_CONTROLLER_MAX_CURRENT);
}
