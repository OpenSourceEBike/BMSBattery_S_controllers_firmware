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

extern uint32_t uint32_icc_signals; // inter component communication, very simplistig way of signalling stuff via a shared var

extern uint8_t ui8_throttle_min_range;
extern uint8_t ui8_throttle_max_range;
extern uint8_t ui8_control_state;
extern uint8_t ui8_assistlevel_global;
extern uint8_t PAS_act;
extern uint8_t PAS_dir; //flag for pasdirection
extern uint16_t ui16_sum_torque;
extern uint8_t ui8_offroad_state;
extern uint32_t uint32_current_target;
extern uint16_t ui16_setpoint;
extern uint16_t ui16_throttle_accumulated;
extern uint16_t ui16_current_cal_b;
extern uint8_t ui8_motor_state;
extern uint8_t ui8_BatteryVoltage;
extern uint16_t ui16_motor_speed_erps;
extern uint16_t ui16_BatteryCurrent;
extern uint8_t ui8_position_correction_value;
extern uint16_t ui16_ADC_iq_current;
extern uint16_t ui16_ADC_iq_current_filtered;
extern uint8_t ui8_speedlimit_kph;
extern uint8_t ui8_ride_mode;
extern uint8_t ui8_uptime;

extern uint8_t uint8_t_hall_case[7];
extern uint8_t uint8_t_hall_order[6];
extern int8_t int8_t_hall_counter;
extern uint8_t ui8_hall_debug_counter;

void setSignal(uint8_t signal);
uint8_t readAndClearSignal(uint8_t signal);
void controllerstate_init(void);
void updateHallOrder(uint8_t hall_sensors);
void updateOffroadStatus(void);

typedef enum
{
    // values from 0-31 are allowed as signals are stored in a single uint32_t
    RIDE_MODE_THROTTLE = ((uint8_t) 0x00),
    RIDE_MODE_THROTTLE_AND_PAS = ((uint8_t) 0x01),
    RIDE_MODE_TORQUESENSOR = ((uint8_t) 0x02),
    RIDE_MODE_TORQUE_SIMULATION = ((uint8_t) 0x03)
            

} RIDE_MODES;

typedef enum
{
    // values from 0-31 are allowed as signals are stored in a single uint32_t
    SIGNAL_SPEEDLIMIT_CHANGED = ((uint8_t) 0x00),

} ICC_SIGNALS;

#endif /* BOCONTROLLERSTATE_H */

