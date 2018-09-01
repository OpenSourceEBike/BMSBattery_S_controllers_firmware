/*
 * Copyright (c) 2018 Björn Schmidt
 *
 * This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
 */

/* 
 * File:   BOeeprom.h
 * Author: Björn Schmidt
 *
 * Created on August 30, 2018, 8:03 PM
 */

#include <stdio.h>
#include <stdint.h>
#include "stm8s.h"
#include "stm8s_itc.h"
#include "stm8s_flash.h"
#include "config.h"
#include "BOeeprom.h"
#include "BOcontrollerState.h"

void eeprom_init(void)
{
    eeprom_magic_byte = eeprom_read(EEPROM_MAX_INIT_RANGE);
    if (eeprom_magic_byte != EEPROM_INIT_MAGIC_BYTE)
    {
        // eeprom needs to be reset after flashing
        uint8_t di;
        FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
        FLASH_Unlock(FLASH_MEMTYPE_DATA);
        
        for (di = 0; di < EEPROM_MAX_INIT_RANGE; di++)
        {
            while (!FLASH_GetFlagStatus(FLASH_FLAG_DUL));
            FLASH_ProgramByte(EEPROM_BASE_ADDRESS + di, 0x00);
            while (!FLASH_GetFlagStatus(FLASH_FLAG_EOP));
        }

        while (!FLASH_GetFlagStatus(FLASH_FLAG_DUL));
        FLASH_ProgramByte(EEPROM_BASE_ADDRESS + EEPROM_MAX_INIT_RANGE, EEPROM_INIT_MAGIC_BYTE);
        while (!FLASH_GetFlagStatus(FLASH_FLAG_EOP));

        FLASH_Lock(FLASH_MEMTYPE_DATA);
        
        // reread to make sure everything went well
        eeprom_magic_byte = eeprom_read(EEPROM_MAX_INIT_RANGE);
    }
  
}

uint8_t eeprom_read(uint8_t address_offset)
{
    return (FLASH_ReadByte(EEPROM_BASE_ADDRESS + address_offset));
}

void eeprom_write(uint8_t address_offset, uint8_t value)
{
    FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    FLASH_Unlock(FLASH_MEMTYPE_DATA);
    while (!FLASH_GetFlagStatus(FLASH_FLAG_DUL));
    FLASH_ProgramByte(EEPROM_BASE_ADDRESS + address_offset, value);
    while (!FLASH_GetFlagStatus(FLASH_FLAG_EOP));
    FLASH_Lock(FLASH_MEMTYPE_DATA);
}