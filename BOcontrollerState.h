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


#ifndef BOCONTROLLERSTATE_H
#define BOCONTROLLERSTATE_H

#include "config.h"

extern uint8_t uint8_t_hall_case[7];
extern uint8_t uint8_t_hall_debug_order[6];
extern int8_t int8_t_hall_counter;
extern uint8_t ui8_hall_debug_counter;

void controllerstate_init (void);
void updateHallOrder(uint8_t hall_sensors);

#endif /* BOCONTROLLERSTATE_H */

