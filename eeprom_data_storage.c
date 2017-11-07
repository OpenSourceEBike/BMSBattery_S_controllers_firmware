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
#include "eeprom_data_storage.h"

void eeprom_data_storage_init (void)
{
  uint8_t ui8_data;

  /* Define FLASH programming time */
  FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);

  /* Unlock Data memory */
  FLASH_Unlock(FLASH_MEMTYPE_DATA);

  /****************************************************************************/
  // start by reading address 0 and see if value is different from our key,
  // if so mean that eeprom memory is clean and we need to populate: should happen after erasing the microcontroller
  ui8_data = FLASH_ReadByte(0);
  if (ui8_data != 0xca) // 0xca is our key
  {
    // flash all the default values
    FLASH_ProgramByte(ADDRESS_ASSIST_LEVEL, DEFAULT_VALUE_ASSIST_LEVEL);
    FLASH_ProgramByte(ADDRESS_MOTOR_CHARACTARISTIC, DEFAULT_VALUE_MOTOR_CHARACTARISTIC);
    FLASH_ProgramByte(ADDRESS_WHEEL_SIZE, DEFAULT_VALUE_WHEEL_SIZE);
    FLASH_ProgramByte(ADDRESS_MAX_SPEED, DEFAULT_VALUE_MAX_SPEED);
    FLASH_ProgramByte(ADDRESS_POWER_ASSIST_CONTROL_MODE, DEFAULT_VALUE_POWER_ASSIST_CONTROL_MODE);
    FLASH_ProgramByte(ADDRESS_CONTROLLER_MAX_CURRENT, DEFAULT_VALUE_CONTROLLER_MAX_CURRENT);
    FLASH_ProgramByte(0, 0xca); // finally, flash our key
  }
  else // values on eeprom memory should be ok, now use them
  {
    ui8_assist_level = FLASH_ReadByte(ADDRESS_ASSIST_LEVEL);
    ui8_motor_characteristic = FLASH_ReadByte(ADDRESS_MOTOR_CHARACTARISTIC);
//      FLASH_ReadByte(ADDRESS_WHEEL_SIZE);
//      FLASH_ReadByte(ADDRESS_MAX_SPEED);
//      FLASH_ReadByte(ADDRESS_POWER_ASSIST_CONTROL_MODE);
//      FLASH_ReadByte(ADDRESS_CONTROLLER_MAX_CURRENT);
  }
}
