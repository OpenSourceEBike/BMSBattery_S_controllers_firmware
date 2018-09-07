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
 * File:   ACAcommons.h
 * Author: Björn Schmidt
 *
 * Created on September 7, 2018, 7:31 PM
 */

#ifndef ACACOMMONS_H
#define ACACOMMONS_H

#include "config.h"

uint32_t PI_control(uint16_t ist, uint16_t soll);
uint32_t CheckSpeed(uint16_t current_target, uint16_t speed, uint16_t softLimit, uint16_t hardLimit);

#endif /* ACACOMMONS_H */

