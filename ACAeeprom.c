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
 * File:   ACAeeprom.h
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
#include "ACAeeprom.h"

uint8_t eeprom_magic_byte = 0;

void eeprom_init(void) {
#ifndef EEPROM_NOINIT
    eeprom_magic_byte = (FLASH_ReadByte(EEPROM_BASE_ADDRESS + EEPROM_MAX_INIT_RANGE));
    if (eeprom_magic_byte != EEPROM_INIT_MAGIC_BYTE) {
        // eeprom needs to be reset after flashing
        uint8_t di;
        FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
        FLASH_Unlock(FLASH_MEMTYPE_DATA);

        for (di = 1; di < EEPROM_MAX_INIT_RANGE; di++) {
            while (!FLASH_GetFlagStatus(FLASH_FLAG_DUL));
            FLASH_ProgramByte(EEPROM_BASE_ADDRESS + di, 0x00);
            while (!FLASH_GetFlagStatus(FLASH_FLAG_EOP));
        }

        while (!FLASH_GetFlagStatus(FLASH_FLAG_DUL));
        FLASH_ProgramByte(EEPROM_BASE_ADDRESS + EEPROM_MAX_INIT_RANGE, EEPROM_INIT_MAGIC_BYTE);
        while (!FLASH_GetFlagStatus(FLASH_FLAG_EOP));

        FLASH_Lock(FLASH_MEMTYPE_DATA);

        // reread to check everything went well
        eeprom_magic_byte = (FLASH_ReadByte(EEPROM_BASE_ADDRESS + EEPROM_MAX_INIT_RANGE));
    }
#endif
}

uint8_t eeprom_read(uint8_t address_offset) {
    // only values between 1 and EEPROM_MAX_INIT_RANGE allowed
    if ((address_offset < 1) || (address_offset > EEPROM_MAX_INIT_RANGE - 1)) {
        return 0;
    }

    return (FLASH_ReadByte(EEPROM_BASE_ADDRESS + address_offset));
}

uint8_t eeprom_write(uint8_t address_offset, uint8_t value) {
    // magic byte at EEPROM_MAX_INIT_RANGE, only values between 1 and EEPROM_MAX_INIT_RANGE allowed
    if ((address_offset < 1) || (address_offset > EEPROM_MAX_INIT_RANGE - 1)) {
        return 1;
    }

    if (eeprom_read(address_offset) == value) {
        return 0;
    }

    FLASH_SetProgrammingTime(FLASH_PROGRAMTIME_STANDARD);
    FLASH_Unlock(FLASH_MEMTYPE_DATA);
    while (!FLASH_GetFlagStatus(FLASH_FLAG_DUL));
    FLASH_ProgramByte(EEPROM_BASE_ADDRESS + address_offset, value);
    while (!FLASH_GetFlagStatus(FLASH_FLAG_EOP));
    FLASH_Lock(FLASH_MEMTYPE_DATA);

    return 0;
}