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

typedef enum {
	FUN_ERROR = ((uint8_t) 0x66),
	FUN_DETAIL_INFOS = ((uint8_t) 0x40),
	FUN_BASIC_INFOS = ((uint8_t) 0x41),
	FUN_CONFIG_INFOS_A = ((uint8_t) 0x42),
	FUN_HALL_INFOS = ((uint8_t) 0x43),
	FUN_SET_CONFIG = ((uint8_t) 0x44),
	FUN_CONFIG_INFOS_B = ((uint8_t) 0x45),
	FUN_NOOP = ((uint8_t) 0x46)
} BO_FUN_CODES;

typedef enum {
	// do not use values below 0x60 (reserved for array types)

	CODE_DUMMY_HIGH_BYTE = ((uint8_t) 0x64),
	CODE_DUMMY = ((uint8_t) 0xFF),
	CODE_LRC_CHECK = ((uint8_t) 0x60),
	CODE_ERROR = ((uint8_t) 0x66),

	CODE_ASSIST_LEVEL = ((uint8_t) 0xA0),
	CODE_BRAKE_STATUS = ((uint8_t) 0xA1),
	CODE_PAS_ACTIVE = ((uint8_t) 0xA2),
	CODE_PAS_DIR = ((uint8_t) 0xA3),
	CODE_OFFROAD = ((uint8_t) 0xA4),

	CODE_VER_SPEED_HIGH_BYTE = ((uint8_t) 0xA5),
	CODE_VER_SPEED = ((uint8_t) 0xA6),

	CODE_ASSIST_LEVEL_DYNAMIC_ADDON = ((uint8_t) 0xA7),
	CODE_ASSIST_LEVEL_SMOOTHED_PERCENT = ((uint8_t) 0xA8),
	CODE_ASSIST_PERCENT_WANTED = ((uint8_t) 0xA9),

	CODE_HALL_ANGLE_4_0 = ((uint8_t) 0xAA),
	CODE_HALL_ANGLE_6_60 = ((uint8_t) 0xAB),
	CODE_HALL_ANGLE_2_120 = ((uint8_t) 0xAC),
	CODE_HALL_ANGLE_3_180 = ((uint8_t) 0xAD),
	CODE_HALL_ANGLE_1_240 = ((uint8_t) 0xAE),
	CODE_HALL_ANGLE_5_300 = ((uint8_t) 0xAF),

	CODE_ASSIST_PERCENT_LEVEL_1 = ((uint8_t) 0xB0),
	CODE_ASSIST_PERCENT_LEVEL_2 = ((uint8_t) 0xB1),
	CODE_ASSIST_PERCENT_LEVEL_3 = ((uint8_t) 0xB2),
	CODE_ASSIST_PERCENT_LEVEL_4 = ((uint8_t) 0xB3),
	CODE_ASSIST_PERCENT_LEVEL_5 = ((uint8_t) 0xB4),
			
	CODE_PASSCODE_HIGH_BYTE = ((uint8_t) 0xBE),
	CODE_PASSCODE = ((uint8_t) 0xBF),

	CODE_MOTOR_STATE = ((uint8_t) 0xC0),
	CODE_BATTERY_VOLTAGE = ((uint8_t) 0xC1),
	CODE_UPTIME = ((uint8_t) 0xC2),

	CODE_BATTERY_CURRENT_HIGH_BYTE = ((uint8_t) 0xC4),
	CODE_BATTERY_CURRENT = ((uint8_t) 0xC5),
	CODE_CORRECTION_VALUE = ((uint8_t) 0xC6),
	CODE_PHASE_CURRENT = ((uint8_t) 0xC7),

	CODE_SPEED_HIGH_BYTE = ((uint8_t) 0xC8),
	CODE_SPEED = ((uint8_t) 0xC9),

	CODE_ER_SPEED_HIGH_BYTE = ((uint8_t) 0xCA),
	CODE_ER_SPEED = ((uint8_t) 0xCB),

	CODE_ADC_BATTERY_VOLTAGE_CALIB = ((uint8_t) 0xCC),
	CODE_ADC_BATTERY_VOLTAGE_MIN = ((uint8_t) 0xCD),
	CODE_ADC_BATTERY_VOLTAGE_MAX = ((uint8_t) 0xCE),

	CODE_SUM_TORQUE = ((uint8_t) 0xD0),
	CODE_SETPOINT = ((uint8_t) 0xD1),
			
	CODE_SETPOINT_STATE_HIGH_BYTE = ((uint8_t) 0xD2),
	CODE_SETPOINT_STATE = ((uint8_t) 0xD3),

	CODE_CURRENT_RAMP_HIGH_BYTE = ((uint8_t) 0xD4),
	CODE_CURRENT_RAMP = ((uint8_t) 0xD5),


	CODE_PAS_COUNTER_HIGH_BYTE = ((uint8_t) 0xD6),
	CODE_PAS_COUNTER = ((uint8_t) 0xD7),
	CODE_PAS_HIGH_COUNTER_HIGH_BYTE = ((uint8_t) 0xD8),
	CODE_PAS_HIGH_COUNTER = ((uint8_t) 0xD9),

	CODE_THROTTLE_HIGH_BYTE = ((uint8_t) 0xDA),
	CODE_THROTTLE = ((uint8_t) 0xDB),
	CODE_CURRENT_TARGET_HIGH_BYTE = ((uint8_t) 0xDC),
	CODE_CURRENT_TARGET = ((uint8_t) 0xDD),

	CODE_SUM_THROTTLE = ((uint8_t) 0xDE),

	CODE_MOTOR_SPECIFIC_ANGLE = ((uint8_t) 0x80),
	CODE_ERPS_FACTOR = ((uint8_t) 0x81),
	CODE_CURRENT_CAL_A = ((uint8_t) 0x82),

	CODE_CURRENT_CAL_B_HIGH_BYTE = ((uint8_t) 0x88),
	CODE_CURRENT_CAL_B = ((uint8_t) 0x89),
			
	CODE_LOCKSTATUS = ((uint8_t) 0x83),

	CODE_EEPROM_MAGIC_BYTE = ((uint8_t) 0x84),
	CODE_MAX_SPEED_DEFAULT = ((uint8_t) 0x85),

	CODE_THROTTLE_MIN_RANGE = ((uint8_t) 0x86),
	CODE_THROTTLE_MAX_RANGE = ((uint8_t) 0x87),


	CODE_PAS_TRESHOLD = ((uint8_t) 0x8A),
	CODE_PID_GAIN_P = ((uint8_t) 0x8B),
	CODE_PID_GAIN_I = ((uint8_t) 0x8C),
	CODE_RAMP_END = ((uint8_t) 0x8D),
	CODE_RAMP_START = ((uint8_t) 0x8E),
	CODE_TQ_CALIB = ((uint8_t) 0x8F),

	CODE_ACTUAL_MAX_SPEED = ((uint8_t) 0x90),
	CODE_MAX_SPEED_WITHOUT_PAS = ((uint8_t) 0x91),
	CODE_MAX_SPEED_WITH_THROTTLE_OVERRIDE = ((uint8_t) 0x92),

	CODE_MAX_BAT_CURRENT_HIGH_BYTE = ((uint8_t) 0x94),
	CODE_MAX_BAT_CURRENT = ((uint8_t) 0x95),
	CODE_MAX_REGEN_CURRENT = ((uint8_t) 0x96),

	CODE_ACA_FLAGS_HIGH_BYTE = ((uint8_t) 0x97),
	CODE_ACA_FLAGS = ((uint8_t) 0x98),

	CODE_CORRECTION_AT_ANGLE = ((uint8_t) 0x99),

	CODE_VAR_DEBUG_A = ((uint8_t) 0x9A),
	CODE_VAR_DEBUG_B = ((uint8_t) 0x9B),
	CODE_VAR_DEBUG_C = ((uint8_t) 0x9C),
			
	CODE_ACA_EXPERIMENTAL_FLAGS_HIGH_BYTE = ((uint8_t) 0x9D),
	CODE_ACA_EXPERIMENTAL_FLAGS = ((uint8_t) 0x9E),
			
	CODE_MOTOR_CONSTANT = ((uint8_t) 0x9F),

	CODE_60_DEG_PWM_CYCLES = ((uint8_t) 0x08),
	CODE_HALL_ORDER_BASE = ((uint8_t) 0x10),
	CODE_CURRENT_AT_HALL_POSITION_BASE = ((uint8_t) 0x00)
} BO_VALUE_CODES;

typedef enum {
	EEPROM_ADDRESS = ((uint8_t) 0xFE),
	STATIC_DATA_ADDRESS = ((uint8_t) 0xFB),
	CONFIG_ADDRESS = ((uint8_t) 0xFC),
	DYNAMIC_DATA_ADDRESS = ((uint8_t) 0xFD),
	ERROR_ADDRESS = ((uint8_t) 0x66)
} BO_ADDRESS_CODES;

void display_update();
void display_init();

#endif /* BODISPLAY_H */