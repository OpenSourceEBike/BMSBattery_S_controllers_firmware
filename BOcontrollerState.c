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
#include "stm8s_gpio.h"
#include "gpio.h"
#include "BOeeprom.h"
#include "BOcontrollerState.h"

uint8_t ui8_assistlevel_global = 3; // for debugging of display communication
uint8_t PAS_act = 3; //recent PAS direction reading
uint8_t PAS_dir = 0; //PAS direction flag
uint16_t ui16_sum_torque = 0; //sum of array elements
uint8_t ui8_offroad_state = 0; //state of offroad switching procedure
uint32_t uint32_current_target = 0; //target for PI-Control
uint16_t ui16_setpoint = 0;
uint16_t ui16_throttle_accumulated = 0;
uint16_t ui16_current_cal_b = 0;
uint8_t ui8_motor_state = 0;
uint8_t ui8_BatteryVoltage = 0; //Battery Voltage read from ADC
uint16_t ui16_motor_speed_erps = 0;
uint16_t ui16_BatteryCurrent = 0; //Battery Current read from ADC8
uint8_t ui8_position_correction_value = 127; // in 360/256 degrees
uint16_t ui16_ADC_iq_current = 0;
uint16_t ui16_ADC_iq_current_filtered = 0;
uint8_t ui8_control_state = 0;
uint8_t ui8_speedlimit_kph = 0;

uint8_t uint8_t_hall_case[7];
uint8_t uint8_t_hall_order[6];
int8_t int8_t_hall_counter = 0;
uint8_t ui8_hall_order_counter = 5;

//for internal use only
uint8_t ui8_offroad_counter = 0; //counter for offroad switching procedure

void controllerstate_init(void)
{
    uint8_t di;
    uint8_t eepromVal;
    
    // convert static defines to volatile vars
    ui8_speedlimit_kph = limit;

    // read in overrides from eeprom if they are > 0, assuming 0s are uninitialized
    eepromVal = eeprom_read(OFFSET_MAX_SPEED);
    if (eepromVal > 0) ui8_speedlimit_kph = eepromVal;
    eepromVal = eeprom_read(OFFSET_ASSIST_LEVEL);
    if (eepromVal > 0) ui8_assistlevel_global = eepromVal;

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

void updateOffroadStatus(void)
{

    if (ui8_offroad_state != 5)
    {
        if (ui8_offroad_state == 0 && !GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)) //first step, brake on.
        {
            ui8_offroad_state = 1;
            //printf("offroad 1");
        }
        if (ui8_offroad_state == 1) //second step, make sure the brake is hold according to definded time
        {
            ui8_offroad_counter++;

            if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter < MORSE_TIME_1) //brake is released too early
            {
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
            else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_1 + MORSE_TOLERANCE) //brake is released according to cheatcode
            {
                ui8_offroad_state = 2;
                ui8_offroad_counter = 0;
                //printf("offroad 2");
            }
            else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_1 + MORSE_TOLERANCE) //brake is released too late
            {
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
        }

        if (ui8_offroad_state == 2) //third step, make sure the brake is released according to definded time
        {
            ui8_offroad_counter++;
            if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter < MORSE_TIME_2) //brake is hold too early
            {
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
            else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_2 + MORSE_TOLERANCE) //brake is hold according to cheatcode
            {
                ui8_offroad_state = 3;
                ui8_offroad_counter = 0;
                //printf("offroad 3");
            }
            else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_2 + MORSE_TOLERANCE) //brake is hold too late
            {
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
        }

        if (ui8_offroad_state == 3) //second step, make sure the brake is hold according to definded time
        {
            ui8_offroad_counter++;
            if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter < MORSE_TIME_3) //brake is released too early
            {
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
            else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_3 + MORSE_TOLERANCE) //brake is released according to cheatcode
            {
                ui8_offroad_state = 4;
                ui8_offroad_counter = 0;
                //printf("offroad 4");
            }
            else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_3 + MORSE_TOLERANCE) //brake is released too late
            {
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
        }
        // wait 3 seconds in state 4 for display feedback
        if (ui8_offroad_state == 4)
        {
            ui8_offroad_counter++;
            if (ui8_offroad_counter > 150)
            {
                ui8_offroad_state = 5;
                ui8_offroad_counter = 0;
            }
        }

    }
}