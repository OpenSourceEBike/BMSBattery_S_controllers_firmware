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
 * File:   ACAcommons.c
 * Author: Björn Schmidt
 *
 * Created on September 7, 2018, 7:31 PM
 */

#include <stdio.h>
#include <stdint.h>
#include "config.h"
#include "ACAcommons.h"
#include "ACAcontrollerState.h"

uint32_t PI_control(uint16_t pv, uint16_t setpoint) {
    float float_p;
    static float float_i;
    float_p = ((float) setpoint - (float) pv) * P_FACTOR;
    if (float_p > 3)float_p = 3;
    if (float_p<-3)float_p = -3;
    float_i += ((float) setpoint - (float) pv) * I_FACTOR;
    if (float_i > 255)float_i = 255;
    if (float_i < 0)float_i = 0;

    return ((uint32_t) (float_p + float_i));
}



uint32_t CheckSpeed(uint16_t current_target, uint16_t speed, uint16_t softLimit, uint16_t hardLimit) {
    //ramp down motor power if you are riding too fast and speed liming is active
    if (speed > softLimit && ui8_offroad_state != 5) {

        if (speed > hardLimit) { //if you are riding much too fast, stop motor immediately
            current_target = ui16_current_cal_b;
            ui8_control_state = 11;
        } else {
            uint32_t ui32_temp = ((current_target - ui16_current_cal_b));
            ui32_temp *= (hardLimit - speed);
            current_target = (uint16_t) ((ui32_temp) / (hardLimit - softLimit) + ui16_current_cal_b);
            ui8_control_state = 12;

        }
    }
    return ((uint32_t) current_target);
}
