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
 * File:   ACAcontrollerState.h
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
#include "ACAeeprom.h"
#include "ACAcontrollerState.h"

uint32_t uint32_icc_signals = 0;

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
uint8_t ui8_throttle_min_range = 0;
uint8_t ui8_throttle_max_range = 255;
uint8_t ui8_uptime = 0;

uint8_t uint8_t_hall_case[7];
uint8_t uint8_t_hall_order[6];
int8_t int8_t_hall_counter = 0;
uint8_t ui8_hall_order_counter = 5;

uint16_t ui16_erps_limit_lower = 0;
uint16_t ui16_erps_limit_higher = 0;

uint32_t ui32_SPEED_km_h; //global variable Speed
uint32_t ui32_SPEED_km_h_accumulated;
uint16_t ui16_SPEED = 64000; 		//speed in timetics
uint16_t ui16_SPEED_Counter = 0; 	//time tics for speed measurement
uint8_t ui8_SPEED_Flag = 0; 		//flag for SPEED interrupt
uint8_t ui8_offroad_counter = 0; //counter for offroad switching procedure

uint8_t ui8_adc_read_throttle_busy = 0;
uint16_t ui16_torque[NUMBER_OF_PAS_MAGS]; //array for torque values of one crank revolution
uint8_t ui8_torque_index = 0; //counter for torque array

uint16_t ui16_PAS_Counter = 0; //time tics for cadence measurement
uint16_t ui16_PAS_High_Counter = 1; //time tics for direction detection
uint16_t ui16_PAS = 32000; //cadence in timetics
uint16_t ui16_PAS_High = 1; //number of High readings on PAS
uint8_t PAS_old = 4; //last PAS direction reading

void controllerstate_init(void) {
    uint8_t di;
    uint8_t eepromVal;

    // convert static defines to volatile vars
    ui8_speedlimit_kph = limit;
    ui8_throttle_min_range = ADC_THROTTLE_MIN_VALUE;
    ui8_throttle_max_range = ADC_THROTTLE_MAX_VALUE;


    // read in overrides from eeprom if they are > 0, assuming 0s are uninitialized
    eepromVal = eeprom_read(OFFSET_MAX_SPEED);
    if (eepromVal > 0) ui8_speedlimit_kph = eepromVal;
    eepromVal = eeprom_read(OFFSET_ASSIST_LEVEL);
    if (eepromVal > 0) ui8_assistlevel_global = eepromVal;
    eepromVal = eeprom_read(OFFSET_THROTTLE_MIN_RANGE);
    if (eepromVal > 0) ui8_throttle_min_range = eepromVal;
    eepromVal = eeprom_read(OFFSET_THROTTLE_MAX_RANGE);
    if (eepromVal > 0) ui8_throttle_max_range = eepromVal;


    for (di = 0; di < 6; di++) {
        uint8_t_hall_order[di] = 0;
    }

}

