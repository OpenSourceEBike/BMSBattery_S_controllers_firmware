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

extern uint16_t ui16_erps_max;
extern uint16_t ui16_pwm_cycles_second;

extern uint8_t ui8_throttle_min_range;
extern uint8_t ui8_throttle_max_range;




extern uint16_t ui16_control_state;
extern uint8_t ui8_a_s_assistlevels[6];
extern uint8_t ui8_assist_percent_actual;
extern uint8_t ui8_assist_percent_wanted;
extern uint8_t ui8_assistlevel_global; //assist level for regen (high 4 bits) and torque (low 4 bits)
extern uint8_t ui8_assist_dynamic_percent_addon;
extern uint8_t PAS_act;
extern uint8_t PAS_is_active;
extern uint16_t ui16_sum_torque;
extern uint16_t ui16_sum_throttle;
extern uint16_t ui16_momentary_throttle;
extern uint8_t ui8_offroad_state;
extern uint32_t uint32_current_target;
extern uint16_t ui16_setpoint;
extern uint16_t ui16_throttle_accumulated;
extern uint16_t ui16_current_cal_b;
extern uint8_t ui8_current_cal_a;
extern uint16_t ui16_x4_cal_b;
extern uint16_t ui16_x4_value;
extern uint16_t ui16_throttle_cal_b;
extern uint16_t ui16_battery_current_max_value;
extern uint16_t ui16_regen_current_max_value;
extern uint8_t ui8_possible_motor_state;
extern uint8_t ui8_dynamic_motor_state;
extern uint8_t ui8_BatteryVoltage;
extern uint8_t ui8_battery_voltage_nominal;
extern uint16_t ui16_motor_speed_erps;
extern uint16_t ui16_virtual_erps_speed;
extern uint32_t ui32_erps_filtered; //filtered value of erps
extern uint16_t ui16_BatteryCurrent;
extern uint8_t ui8_position_correction_value;
extern uint8_t ui8_correction_at_angle;
extern uint16_t ui16_ADC_iq_current;
extern uint16_t ui16_ADC_iq_current_filtered;
extern uint8_t ui8_speedlimit_kph;
extern uint8_t ui8_speedlimit_without_pas_kph;
extern uint8_t ui8_speedlimit_actual_kph;
extern uint8_t ui8_speedlimit_with_throttle_override_kph;
extern uint8_t ui8_uptime;
extern uint8_t ui8_walk_assist;

extern uint8_t ui8_variableDebugA;
extern uint8_t ui8_variableDebugB;
extern uint8_t ui8_variableDebugC;

extern int8_t i8_motor_temperature;

extern uint8_t uint8_t_60deg_pwm_cycles[6];
extern uint8_t uint8_t_hall_case[7];
extern uint8_t uint8_t_hall_order[6];
extern int8_t int8_t_hall_counter;
extern uint8_t ui8_hall_debug_counter;
extern uint8_t ui8_hall_order_counter;

extern uint8_t ui8_gear_ratio;
extern uint16_t ui16_speed_kph_to_erps_ratio;

extern uint32_t ui32_speed_sensor_rpks; //speed sensor rounds per 1000 sec
extern uint32_t ui32_speed_sensor_rpks_accumulated;

extern uint16_t ui16_time_ticks_for_uart_timeout;
extern uint16_t ui16_time_ticks_for_speed_calculation;
extern uint16_t ui16_time_ticks_between_speed_interrupt; //Counter for bike speed
extern uint8_t ui8_SPEED_Flag; //Flag for PAS Interrupt detected
extern uint16_t ui16_time_ticks_between_speed_interrupt; //Speed duration of one wheel revolution (tics * 64us)
extern uint8_t ui8_offroad_counter;
extern uint16_t ui16_idle_counter;
extern uint16_t ui16_no_pass_counter;
extern uint16_t ui16_passcode;
extern uint8_t ui8_lockstatus;

extern uint16_t ui16_aca_flags;
extern uint16_t ui16_aca_experimental_flags;

extern uint16_t ui16_torque[NUMBER_OF_PAS_MAGS];
extern uint8_t ui8_torque_index;

extern uint16_t ui16_time_ticks_between_pas_interrupt_smoothed; // for filtering of PAS value
extern float flt_current_PAS_fraction;
extern uint16_t ui16_time_ticks_between_pas_interrupt;
extern uint16_t ui16_PAS_High;
extern uint16_t ui16_time_ticks_for_pas_calculation; //Counter for cadence
extern uint16_t ui16_PAS_High_Counter;
extern uint8_t ui8_PAS_Flag; //flag for PAS interrupt
extern uint8_t ui8_PAS_update_call_when_inactive_counter;


extern float flt_torquesensorCalibration;
extern uint32_t uint32_torquesensorCalibration;
extern float flt_s_pas_threshold;
extern float flt_s_pid_gain_p;
extern float flt_s_pid_gain_i;
extern float flt_s_motor_constant;
extern uint16_t ui16_s_ramp_end;
extern uint16_t ui16_s_ramp_start;
extern uint8_t ui8_s_motor_angle;
extern uint8_t ui8_s_hall_angle4_0;
extern uint8_t ui8_s_hall_angle6_60;
extern uint8_t ui8_s_hall_angle2_120;
extern uint8_t ui8_s_hall_angle3_180;
extern uint8_t ui8_s_hall_angle1_240;
extern uint8_t ui8_s_hall_angle5_300;

extern uint8_t ui8_s_battery_voltage_calibration;
extern uint8_t ui8_s_battery_voltage_min;
extern uint8_t ui8_s_battery_voltage_max;

extern uint8_t light_stat;
extern uint8_t walk_stat;

void controllerstate_init(void);

typedef enum {
	// values from 0-31 are allowed as signals are stored in a single uint32_t
	SIGNAL_SPEEDLIMIT_CHANGED = ((uint8_t) 0x00),

} ICC_SIGNALS;

typedef enum {
	ASSIST_LVL_AFFECTS_THROTTLE = ((uint16_t) 1),
	OFFROAD_ENABLED = ((uint16_t) 2),
	BRAKE_DISABLES_OFFROAD = ((uint16_t) 4),

	DIGITAL_REGEN = ((uint16_t) 8),
	SPEED_INFLUENCES_REGEN = ((uint16_t) 16),
	SPEED_INFLUENCES_TORQUESENSOR = ((uint16_t) 32),
	PAS_INVERTED = ((uint16_t) 64),

	DUMMY_ALWAYS_ON = ((uint16_t) 128),

	BYPASS_LOW_SPEED_REGEN_PI_CONTROL = ((uint16_t) 256),

	DYNAMIC_ASSIST_LEVEL = ((uint16_t) 512),
	
	POWER_BASED_CONTROL= ((uint16_t) 1024),
	TQ_SENSOR_MODE = ((uint16_t) 2048),
	ANGLE_CORRECTION_ENABLED = ((uint16_t) 4096),
	EXTERNAL_SPEED_SENSOR = ((uint16_t) 8192),	
	IDLE_DISABLES_OFFROAD = ((uint16_t) 16384)
			
			
} ACA_FLAGS;

typedef enum {

	DC_STATIC_ZERO = ((uint16_t) 1),
	AVOID_MOTOR_CYCLES_JITTER = ((uint16_t) 2),
	DISABLE_INTERPOLATION = ((uint16_t) 4),
	DISABLE_60_DEG_INTERPOLATION = ((uint16_t) 8),
	SWITCH_360_DEG_INTERPOLATION = ((uint16_t) 16),
	USE_ALTERNATE_WAVETABLE = ((uint16_t) 32),
	USE_ALTERNATE_WAVETABLE_B = ((uint16_t) 64),
	DUMMY_EXP_ALWAYS_ON = ((uint16_t) 128),
	HIGH_SPEED_MOTOR = ((uint16_t) 256),
	PWM_AUTO_OFF = ((uint16_t) 1024),
			
} ACA_EXPERIMENTAL_FLAGS;

#endif /* BOCONTROLLERSTATE_H */

