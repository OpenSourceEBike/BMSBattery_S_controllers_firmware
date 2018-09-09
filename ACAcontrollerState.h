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


#ifndef ACACONTROLLERSTATE_H
#define ACACONTROLLERSTATE_H

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
extern uint8_t ui8_uptime;

extern uint8_t uint8_t_hall_case[7];
extern uint8_t uint8_t_hall_order[6];
extern int8_t int8_t_hall_counter;
extern uint8_t ui8_hall_debug_counter;
extern uint8_t ui8_hall_order_counter;

extern uint16_t ui16_erps_limit_lower;
extern uint16_t ui16_erps_limit_higher;

extern uint32_t ui32_SPEED_km_h; //global variable Speed
extern uint32_t ui32_SPEED_km_h_accumulated;

extern uint16_t ui16_SPEED_Counter; //Counter for bike speed
extern uint8_t ui8_SPEED_Flag; //Flag for PAS Interrupt detected
extern uint16_t ui16_SPEED; //Speed duration of one wheel revolution (tics * 64us)
extern uint8_t ui8_offroad_counter;

extern uint8_t ui8_adc_read_throttle_busy;

extern uint16_t ui16_torque[NUMBER_OF_PAS_MAGS];
extern uint8_t ui8_torque_index;

extern uint16_t ui16_PAS_smoothed; // for filtering of PAS value
extern float flt_current_PAS_fraction;
extern uint16_t ui16_PAS;
extern uint16_t ui16_PAS_High;
extern uint16_t ui16_PAS_Counter; //Counter for cadence
extern uint16_t ui16_PAS_High_Counter; //Flag for PAS Interrupt detected
extern uint8_t ui8_PAS_Flag; //flag for PAS interrupt
extern uint8_t ui8_PAS_update_call_when_inactive_counter;

extern uint8_t ui8_s_pas_direction;
extern float flt_s_pas_threshold;
extern float flt_s_pid_gain_p;
extern float flt_s_pid_gain_i;
extern uint16_t ui16_s_ramp_end;
extern uint8_t ui8_s_motor_angle;


void controllerstate_init(void);

typedef enum {
	// values from 0-31 are allowed as signals are stored in a single uint32_t
	SIGNAL_SPEEDLIMIT_CHANGED = ((uint8_t) 0x00),

} ICC_SIGNALS;

#endif /* BOCONTROLLERSTATE_H */

