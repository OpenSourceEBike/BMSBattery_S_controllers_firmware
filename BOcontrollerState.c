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
 * File:   BOcontrollerState.h
 * Author: Björn Schmidt
 *
 * Created on August 30, 2018, 8:03 PM
 */

#include <stdio.h>
#include "config.h"
#include "stm8s.h"
#include "stm8s_itc.h"
#include "BOcontrollerState.h"

uint8_t uint8_t_hall_case[7];
uint8_t uint8_t_hall_order[6];
int8_t int8_t_hall_counter = 0;
uint8_t ui8_hall_order_counter = 5;

void controllerstate_init()
{
    uint8_t di;
    for (di = 0; di < 6; di++)
    {
        uint8_t_hall_order[di] = 0;
    }
}

void updateHallOrder(uint8_t hall_sensors)
{

    if (++ui8_hall_order_counter > 5)
    {
        ui8_hall_order_counter = 0;
    }
    uint8_t_hall_order[ui8_hall_order_counter] = hall_sensors;
}