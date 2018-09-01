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
 * File:   BOdisplay.h
 * Author: Björn Schmidt
 *
 * Created on August 30, 2018, 8:03 PM
 */

#ifndef BODISPLAY_H
#define BODISPLAY_H

#include "config.h"

typedef enum
{
    FUN_ERROR = ((uint8_t) 0x66),
    FUN_RUNTIME_INFOS = ((uint8_t) 0x41),
    FUN_CONFIG_INFOS = ((uint8_t) 0x42),
    FUN_HALL_INFOS = ((uint8_t) 0x43)
} BO_FUN_CODES;

typedef enum
{
    CODE_LRC_CHECK = ((uint8_t) 0x60),
    CODE_ERROR = ((uint8_t) 0x66)
} BO_VALUE_CODES;

typedef enum
{
    CONFIG_ADDRESS = ((uint8_t) 0xFE),
    DISPLAY_ADDRESS = ((uint8_t) 0xFD),
    ERROR_ADDRESS = ((uint8_t) 0x66)
} BO_ADDRESS_CODES;

void processBoMessage();

#endif /* BODISPLAY_H */