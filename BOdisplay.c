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


#include <stdio.h>
#include "uart.h"
#include "config.h"
#include "stm8s.h"
#include "stm8s_itc.h"
#include "BOdisplay.h"
#include "interrupts.h"
#include "ACAeeprom.h"
#include "brake.h" // ugly crossrefernce for brake_is_set(), FIXME
#include "ACAcontrollerState.h"
#include "ACAcommons.h"

#ifdef BLUOSEC

// example
//:304100305F\r\n 
//  0 A 0 (as chars)
uint8_t ui8_rx_buffer[17]; // modbus ascii with max 8 bytes payload (array including padding) // modbus rtu uses only 11 bytes
uint8_t ui8_tx_buffer[65]; // (max 30*8bit key + 30*8bit data points + bounced checksum(+ key) + address + function + checksum) (array excluding padding)
uint8_t ui8_rx_converted_buffer[7]; // for decoded ascii values

uint8_t ui8_rx_buffer_counter = 0;
uint8_t ui8_tx_buffer_counter = 0;

uint8_t int2hex(uint8_t in) {
	if (in <= 9)
		return in + 0x30;
	return 0x41 - 10 + in;
}

uint8_t hex2int(uint8_t ch) {
	if (ch >= 0x30 && ch <= 0x39)
		return ch - 0x30;
	if (ch >= 0x41 && ch <= 0x46)
		return ch - 0x41 + 10;
	if (ch >= 0x61 && ch <= 0x66)
		return ch - 0x61 + 10;
	return 0;
}

uint8_t calcLRC(uint8_t ints[], uint8_t start, uint8_t end) {
	uint8_t i;
	uint8_t LRC = 0;
	for (i = start; i < end; i++) {
		LRC = LRC + ints[i];
		//printf("LI %u\r\n",LRC);
	}
	//printf("LIX %u\r\n",LRC);
	return (~LRC) + 1;
}

void sendPreparedAsciiPackage(void) {
	uint8_t j;
	uart_put_buffered(0x3A);
	for (j = 0; j < ui8_tx_buffer_counter; j++) {
		uart_put_buffered(int2hex(ui8_tx_buffer[j] >> 4));
		uart_put_buffered(int2hex(ui8_tx_buffer[j]&15));
	}
	uart_put_buffered(0x0D);
	uart_put_buffered(0x0A);
}

void sendPreparedRtuPackage(void) {
	uint8_t j;
	for (j = 0; j < ui8_tx_buffer_counter; j++) {
		uart_put_buffered(ui8_tx_buffer[j]);
	}
	uart_put_buffered(0x00);
	uart_put_buffered(0x00);
	uart_put_buffered(0x00);
	uart_put_buffered(0x00);
}

void sendPreparedPackage(void) {
	//sendPreparedAsciiPackage();
	sendPreparedRtuPackage();
}

void addPayload(uint8_t id, uint8_t value) {
	ui8_tx_buffer[ui8_tx_buffer_counter++] = id;
	ui8_tx_buffer[ui8_tx_buffer_counter++] = value;
}

void prepareBasePackage(uint8_t address, uint8_t function) {
	ui8_tx_buffer_counter = 0;
	ui8_tx_buffer[ui8_tx_buffer_counter++] = address;
	ui8_tx_buffer[ui8_tx_buffer_counter++] = function;

}

void signPackage(void) {
	ui8_tx_buffer[ui8_tx_buffer_counter] = calcLRC(ui8_tx_buffer, 0, ui8_tx_buffer_counter);
	ui8_tx_buffer_counter++;
}

void addConfigStateInfosA(void) {

	// float casts might be costly but they are only requested once every 10 seconds
	addPayload(CODE_ERPS_FACTOR, ui8_gear_ratio);
	addPayload(CODE_WHEEL_CIRCUMFENCE_HIGH_BYTE, wheel_circumference >>8);
	addPayload(CODE_WHEEL_CIRCUMFENCE, wheel_circumference);
	addPayload(CODE_CURRENT_CAL_A, ui8_current_cal_a);
	addPayload(CODE_CURRENT_CAL_B_HIGH_BYTE, ui16_current_cal_b >> 8);
	addPayload(CODE_CURRENT_CAL_B, ui16_current_cal_b);
	addPayload(CODE_EEPROM_MAGIC_BYTE, eeprom_magic_byte);
	addPayload(CODE_MAX_SPEED_DEFAULT, ui8_speedlimit_kph);
	addPayload(CODE_MAX_SPEED_WITHOUT_PAS, ui8_speedlimit_without_pas_kph);
	addPayload(CODE_MAX_SPEED_WITH_THROTTLE_OVERRIDE, ui8_speedlimit_with_throttle_override_kph);
	addPayload(CODE_ACA_FLAGS_HIGH_BYTE, ui16_aca_flags >> 8);
	addPayload(CODE_ACA_FLAGS, ui16_aca_flags);
	addPayload(CODE_THROTTLE_MIN_RANGE, ui8_throttle_min_range);
	addPayload(CODE_THROTTLE_MAX_RANGE, ui8_throttle_max_range);
	addPayload(CODE_MOTOR_SPECIFIC_ANGLE, ui8_s_motor_angle);
	addPayload(CODE_PAS_TRESHOLD, float2int(flt_s_pas_threshold, 4.0));
	addPayload(CODE_PID_GAIN_P, float2int(flt_s_pid_gain_p, 2.0));
	addPayload(CODE_PID_GAIN_I, float2int(flt_s_pid_gain_i, 2.0));
	addPayload(CODE_TQ_CALIB, float2int(flt_torquesensorCalibration, 8000.0));
	addPayload(CODE_RAMP_END, ui16_s_ramp_end >> 5);
	addPayload(CODE_RAMP_START, ui16_s_ramp_start >> 6);
	addPayload(CODE_MAX_BAT_CURRENT_HIGH_BYTE, ui16_battery_current_max_value >> 8);
	addPayload(CODE_MAX_BAT_CURRENT, ui16_battery_current_max_value);
	addPayload(CODE_CORRECTION_AT_ANGLE, ui8_correction_at_angle);

	// 5 more elements left/avail (max30)

}

void addConfigStateInfosB(void) {

	addPayload(CODE_HALL_ANGLE_4_0, ui8_s_hall_angle4_0);
	addPayload(CODE_HALL_ANGLE_6_60, ui8_s_hall_angle6_60);
	addPayload(CODE_HALL_ANGLE_2_120, ui8_s_hall_angle2_120);
	addPayload(CODE_HALL_ANGLE_3_180, ui8_s_hall_angle3_180);
	addPayload(CODE_HALL_ANGLE_1_240, ui8_s_hall_angle1_240);
	addPayload(CODE_HALL_ANGLE_5_300, ui8_s_hall_angle5_300);

	addPayload(CODE_ASSIST_PERCENT_LEVEL_1, ui8_a_s_assistlevels[1]);
	addPayload(CODE_ASSIST_PERCENT_LEVEL_2, ui8_a_s_assistlevels[2]);
	addPayload(CODE_ASSIST_PERCENT_LEVEL_3, ui8_a_s_assistlevels[3]);
	addPayload(CODE_ASSIST_PERCENT_LEVEL_4, ui8_a_s_assistlevels[4]);
	addPayload(CODE_ASSIST_PERCENT_LEVEL_5, ui8_a_s_assistlevels[5]);

	addPayload(CODE_MAX_REGEN_CURRENT, ui16_regen_current_max_value);
	addPayload(CODE_ADC_BATTERY_VOLTAGE_CALIB, ui8_s_battery_voltage_calibration);
	addPayload(CODE_ADC_BATTERY_VOLTAGE_MIN, ui8_s_battery_voltage_min);
	addPayload(CODE_ADC_BATTERY_VOLTAGE_MAX, ui8_s_battery_voltage_max);

	addPayload(CODE_ACA_EXPERIMENTAL_FLAGS_HIGH_BYTE, ui16_aca_experimental_flags >> 8);
	addPayload(CODE_ACA_EXPERIMENTAL_FLAGS, ui16_aca_experimental_flags);
	
	addPayload(CODE_MOTOR_CONSTANT, float2int(flt_s_motor_constant, 4.0));
	// 12 more elements left/avail (max30)
}

void addHallStateInfos(void) {
	addPayload(CODE_CURRENT_AT_HALL_POSITION_BASE + 0x00, uint8_t_hall_case[0]);
	addPayload(CODE_CURRENT_AT_HALL_POSITION_BASE + 0x01, uint8_t_hall_case[1]);
	addPayload(CODE_CURRENT_AT_HALL_POSITION_BASE + 0x02, uint8_t_hall_case[2]);
	addPayload(CODE_CURRENT_AT_HALL_POSITION_BASE + 0x03, uint8_t_hall_case[3]);
	addPayload(CODE_CURRENT_AT_HALL_POSITION_BASE + 0x04, uint8_t_hall_case[4]);
	addPayload(CODE_CURRENT_AT_HALL_POSITION_BASE + 0x05, uint8_t_hall_case[5]);
	addPayload(CODE_HALL_ORDER_BASE + 0x00, uint8_t_hall_order[0]);
	addPayload(CODE_HALL_ORDER_BASE + 0x01, uint8_t_hall_order[1]);
	addPayload(CODE_HALL_ORDER_BASE + 0x02, uint8_t_hall_order[2]);
	addPayload(CODE_HALL_ORDER_BASE + 0x03, uint8_t_hall_order[3]);
	addPayload(CODE_HALL_ORDER_BASE + 0x04, uint8_t_hall_order[4]);
	addPayload(CODE_HALL_ORDER_BASE + 0x05, uint8_t_hall_order[5]);
	addPayload(CODE_60_DEG_PWM_CYCLES + 0x00, uint8_t_60deg_pwm_cycles[0]);
	addPayload(CODE_60_DEG_PWM_CYCLES + 0x01, uint8_t_60deg_pwm_cycles[1]);
	addPayload(CODE_60_DEG_PWM_CYCLES + 0x02, uint8_t_60deg_pwm_cycles[2]);
	addPayload(CODE_60_DEG_PWM_CYCLES + 0x03, uint8_t_60deg_pwm_cycles[3]);
	addPayload(CODE_60_DEG_PWM_CYCLES + 0x04, uint8_t_60deg_pwm_cycles[4]);
	addPayload(CODE_60_DEG_PWM_CYCLES + 0x05, uint8_t_60deg_pwm_cycles[5]);

	addPayload(CODE_VAR_DEBUG_A, ui8_variableDebugA);
	addPayload(CODE_VAR_DEBUG_B, ui8_variableDebugB);
	addPayload(CODE_VAR_DEBUG_C, ui8_variableDebugC);

	// 9 more elements left/avail (max30)
}

void addDetailStateInfos(void) {
	addPayload(CODE_OFFROAD, ui8_offroad_state);
	addPayload(CODE_PAS_ACTIVE, PAS_act);
	addPayload(CODE_PAS_DIR, PAS_is_active);
	addPayload(CODE_CORRECTION_VALUE, ui8_position_correction_value);
	addPayload(CODE_PHASE_CURRENT, ui16_ADC_iq_current >> 2);
	addPayload(CODE_THROTTLE_HIGH_BYTE, ui16_momentary_throttle >> 8);
	addPayload(CODE_THROTTLE, ui16_momentary_throttle);
	addPayload(CODE_CURRENT_TARGET_HIGH_BYTE, uint32_current_target >> 8);
	addPayload(CODE_CURRENT_TARGET, uint32_current_target);
	addPayload(CODE_CURRENT_RAMP_HIGH_BYTE, ui16_time_ticks_between_pas_interrupt_smoothed >> 8);
	addPayload(CODE_CURRENT_RAMP, ui16_time_ticks_between_pas_interrupt_smoothed);
	addPayload(CODE_PAS_HIGH_COUNTER_HIGH_BYTE, ui16_PAS_High >> 8);
	addPayload(CODE_PAS_HIGH_COUNTER, ui16_PAS_High);
	addPayload(CODE_PAS_COUNTER_HIGH_BYTE, ui16_time_ticks_between_pas_interrupt >> 8);
	addPayload(CODE_PAS_COUNTER, ui16_time_ticks_between_pas_interrupt);
	addPayload(CODE_LOCKSTATUS, ui8_lockstatus);
	// 10 more elements left/avail (max30)
}

void addBasicStateInfos(void) {
	addPayload(CODE_ACTUAL_MAX_SPEED, ui8_speedlimit_actual_kph);
	addPayload(CODE_ASSIST_LEVEL, ui8_assistlevel_global);
	addPayload(CODE_ASSIST_LEVEL_SMOOTHED_PERCENT, ui8_assist_percent_actual);
	addPayload(CODE_ASSIST_PERCENT_WANTED, ui8_assist_percent_wanted);
	addPayload(CODE_ASSIST_LEVEL_DYNAMIC_ADDON, ui8_assist_dynamic_percent_addon);
	addPayload(CODE_BRAKE_STATUS, (int) brake_is_set());
	addPayload(CODE_MOTOR_STATE, ui8_possible_motor_state | ui8_dynamic_motor_state<<4);
	addPayload(CODE_BATTERY_VOLTAGE, ui8_BatteryVoltage);
	addPayload(CODE_ER_SPEED_HIGH_BYTE, ui16_motor_speed_erps >> 8);
	addPayload(CODE_ER_SPEED, ui16_motor_speed_erps);
	addPayload(CODE_SENSOR_RPKS_HIGH_BYTE, ui32_speed_sensor_rpks >> 8);
	addPayload(CODE_SENSOR_RPKS, ui32_speed_sensor_rpks);
	addPayload(CODE_BATTERY_CURRENT_HIGH_BYTE, ui16_BatteryCurrent >> 8);
	addPayload(CODE_BATTERY_CURRENT, ui16_BatteryCurrent);
	addPayload(CODE_SUM_TORQUE, ui16_sum_torque);
	addPayload(CODE_SUM_THROTTLE, ui16_sum_throttle);
	addPayload(CODE_SETPOINT, ui16_setpoint);
	addPayload(CODE_SETPOINT_STATE_HIGH_BYTE, ui16_control_state >> 8);
	addPayload(CODE_SETPOINT_STATE, ui16_control_state);
	addPayload(CODE_UPTIME, ui8_uptime);
	addPayload(CODE_X4VALUE_HIGH_BYTE, ui16_x4_value >> 8);
	addPayload(CODE_X4VALUE, ui16_x4_value);
    addPayload(CODE_VER_SPEED_HIGH_BYTE, ui16_virtual_erps_speed >> 8);
	addPayload(CODE_VER_SPEED, ui16_virtual_erps_speed);
	// 4 more elements left/avail (max30)
}

void gatherDynamicPayload(uint8_t function) {
	switch (function) {
		case FUN_BASIC_INFOS:
			addBasicStateInfos();
			break;
		case FUN_DETAIL_INFOS:
			addDetailStateInfos();
			break;
		case FUN_HALL_INFOS:
			addHallStateInfos();
			break;
		default:
			addPayload(CODE_ERROR, CODE_ERROR);
	}
}

void gatherStaticPayload(uint8_t function) {
	switch (function) {
		case FUN_CONFIG_INFOS_A:
			addConfigStateInfosA();
			break;
		case FUN_CONFIG_INFOS_B:
			addConfigStateInfosB();
			break;
		default:
			addPayload(CODE_ERROR, CODE_ERROR);
	}
}

void digestConfigRequest(uint8_t configAddress, uint8_t requestedCodeLowByte, uint8_t requestedValueHighByte, uint8_t requestedValue) {


	switch (requestedCodeLowByte) {
		case CODE_ERPS_FACTOR:
			ui8_gear_ratio = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_GEAR_RATIO, requestedValue);
			}
			// special processing, reinit ratio
			initErpsRatio();
			addPayload(requestedCodeLowByte, ui8_gear_ratio);
			break;
		case CODE_OFFROAD:
			ui8_offroad_state = requestedValue;
			addPayload(requestedCodeLowByte, ui8_offroad_state);
			break;
		case CODE_PASSCODE:
			if ((ui8_lockstatus == 16) && (configAddress == EEPROM_ADDRESS)){
				// write new passcode only if unlocked
				ui16_passcode = ((uint16_t) requestedValueHighByte << 8)+(uint16_t) requestedValue;
				eeprom_write(OFFSET_PASSCODE_HIGH_BYTE, requestedValueHighByte);
				eeprom_write(OFFSET_PASSCODE, requestedValue);
				addPayload(CODE_PASSCODE_HIGH_BYTE, ui16_passcode >> 8);
				addPayload(requestedCodeLowByte, ui16_passcode);
			}else if ((configAddress != EEPROM_ADDRESS) && (ui16_passcode == (((uint16_t) requestedValueHighByte << 8)+(uint16_t) requestedValue))){
				// unlock if correct code was sent
				ui16_no_pass_counter = 0;
				ui8_lockstatus = 16;
				addPayload(CODE_PASSCODE_HIGH_BYTE, ui16_passcode >> 8);
				addPayload(requestedCodeLowByte, ui16_passcode);
			}else{
				addPayload(CODE_ERROR, CODE_ERROR);
			}
			break;
		case CODE_ACA_FLAGS:
			ui16_aca_flags = ((uint16_t) requestedValueHighByte << 8)+(uint16_t) requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ACA_FLAGS_HIGH_BYTE, requestedValueHighByte);
				eeprom_write(OFFSET_ACA_FLAGS, requestedValue);
			}
			addPayload(CODE_ACA_FLAGS_HIGH_BYTE, ui16_aca_flags >> 8);
			addPayload(requestedCodeLowByte, ui16_aca_flags);
			break;
		case CODE_ACA_EXPERIMENTAL_FLAGS:
			ui16_aca_experimental_flags = ((uint16_t) requestedValueHighByte << 8)+(uint16_t) requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ACA_EXPERIMENTAL_FLAGS_HIGH_BYTE, requestedValueHighByte);
				eeprom_write(OFFSET_ACA_EXPERIMENTAL_FLAGS, requestedValue);
			}
			addPayload(CODE_ACA_EXPERIMENTAL_FLAGS_HIGH_BYTE, ui16_aca_experimental_flags >> 8);
			addPayload(requestedCodeLowByte, ui16_aca_experimental_flags);
			break;
		case CODE_MAX_BAT_CURRENT:
			ui16_battery_current_max_value = ((uint16_t) requestedValueHighByte << 8)+(uint16_t) requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_BATTERY_CURRENT_MAX_VALUE_HIGH_BYTE, requestedValueHighByte);
				eeprom_write(OFFSET_BATTERY_CURRENT_MAX_VALUE, requestedValue);
			}
			addPayload(CODE_MAX_BAT_CURRENT_HIGH_BYTE, ui16_battery_current_max_value >> 8);
			addPayload(requestedCodeLowByte, ui16_battery_current_max_value);
			break;
		case CODE_MAX_REGEN_CURRENT:
			ui16_regen_current_max_value = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_REGEN_CURRENT_MAX_VALUE, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui16_regen_current_max_value);
			break;
		case CODE_CURRENT_CAL_A:
			ui8_current_cal_a = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_CURRENT_CAL_A, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_current_cal_a);
			break;
		case CODE_ADC_BATTERY_VOLTAGE_CALIB:
			ui8_s_battery_voltage_calibration = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_BATTERY_VOLTAGE_CALIB, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_battery_voltage_calibration);
			break;
		case CODE_ADC_BATTERY_VOLTAGE_MIN:
			ui8_s_battery_voltage_min = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_BATTERY_VOLTAGE_MIN, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_battery_voltage_min);
			break;
		case CODE_ADC_BATTERY_VOLTAGE_MAX:
			ui8_s_battery_voltage_max = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_BATTERY_VOLTAGE_MAX, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_battery_voltage_max);
			break;
		case CODE_ASSIST_PERCENT_LEVEL_1:
			ui8_a_s_assistlevels[1] = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_PERCENT_LEVEL_1, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_a_s_assistlevels[1]);
			break;
		case CODE_ASSIST_PERCENT_LEVEL_2:
			ui8_a_s_assistlevels[2] = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_PERCENT_LEVEL_2, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_a_s_assistlevels[2]);
			break;
		case CODE_ASSIST_PERCENT_LEVEL_3:
			ui8_a_s_assistlevels[3] = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_PERCENT_LEVEL_3, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_a_s_assistlevels[3]);
			break;
		case CODE_ASSIST_PERCENT_LEVEL_4:
			ui8_a_s_assistlevels[4] = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_PERCENT_LEVEL_4, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_a_s_assistlevels[4]);
			break;
		case CODE_ASSIST_PERCENT_LEVEL_5:
			ui8_a_s_assistlevels[5] = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_PERCENT_LEVEL_5, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_a_s_assistlevels[5]);
			break;
		case CODE_ASSIST_LEVEL:
			ui8_assistlevel_global = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_LEVEL, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_assistlevel_global);
			break;
		case CODE_ASSIST_PERCENT_WANTED:
			// also sends new (fake) level in high byte
			ui8_assist_percent_wanted = requestedValue;
			ui8_assistlevel_global = requestedValueHighByte;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_ASSIST_PERCENT_WANTED, requestedValue);
				eeprom_write(OFFSET_ASSIST_LEVEL, requestedValueHighByte);
			}
			addPayload(requestedCodeLowByte, ui8_assist_percent_wanted);
			addPayload(CODE_ASSIST_LEVEL, ui8_assistlevel_global);
			break;
		case CODE_THROTTLE_MIN_RANGE:
			ui8_throttle_min_range = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_THROTTLE_MIN_RANGE, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_throttle_min_range);
			break;
		case CODE_THROTTLE_MAX_RANGE:
			ui8_throttle_max_range = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_THROTTLE_MAX_RANGE, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_throttle_max_range);
			break;

		case CODE_MOTOR_SPECIFIC_ANGLE:
			ui8_s_motor_angle = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_MOTOR_ANGLE, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_motor_angle);
			break;
		case CODE_CORRECTION_AT_ANGLE:
			ui8_correction_at_angle = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_CORRECTION_AT_ANGLE, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_correction_at_angle);
			break;
		case CODE_HALL_ANGLE_4_0:
			ui8_s_hall_angle4_0 = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_HALL_ANGLE_4_0, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_hall_angle4_0);
			break;
		case CODE_HALL_ANGLE_6_60:
			ui8_s_hall_angle6_60 = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_HALL_ANGLE_6_60, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_hall_angle6_60);
			break;
		case CODE_HALL_ANGLE_2_120:
			ui8_s_hall_angle2_120 = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_HALL_ANGLE_2_120, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_hall_angle2_120);
			break;
		case CODE_HALL_ANGLE_3_180:
			ui8_s_hall_angle3_180 = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_HALL_ANGLE_3_180, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_hall_angle3_180);
			break;
		case CODE_HALL_ANGLE_1_240:
			ui8_s_hall_angle1_240 = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_HALL_ANGLE_1_240, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_hall_angle1_240);
			break;
		case CODE_HALL_ANGLE_5_300:
			ui8_s_hall_angle5_300 = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_HALL_ANGLE_5_300, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui8_s_hall_angle5_300);
			break;

		case CODE_PAS_TRESHOLD:
			flt_s_pas_threshold = int2float(requestedValue, 4.0);
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_PAS_TRESHOLD, requestedValue);
			}
			addPayload(requestedCodeLowByte, float2int(flt_s_pas_threshold, 4.0));
			break;
		case CODE_MOTOR_CONSTANT:
			flt_s_motor_constant = int2float(requestedValue, 4.0);
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_MOTOR_CONSTANT, requestedValue);
			}
			addPayload(requestedCodeLowByte, float2int(flt_s_motor_constant, 4.0));
			break;
		case CODE_PID_GAIN_P:
			flt_s_pid_gain_p = int2float(requestedValue, 2.0);
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_PID_GAIN_P, requestedValue);
			}
			addPayload(requestedCodeLowByte, float2int(flt_s_pid_gain_p, 2.0));
			break;
		case CODE_PID_GAIN_I:
			flt_s_pid_gain_i = int2float(requestedValue, 2.0);
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_PID_GAIN_I, requestedValue);
			}
			addPayload(requestedCodeLowByte, float2int(flt_s_pid_gain_i, 2.0));
			break;
		case CODE_RAMP_END:
			ui16_s_ramp_end = requestedValue << 5;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_RAMP_END, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui16_s_ramp_end >> 5);
			break;
		case CODE_TQ_CALIB:
			flt_torquesensorCalibration = int2float(requestedValue, 8000.0);
						uint32_torquesensorCalibration = (uint32_t)flt_torquesensorCalibration;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_TQ_CALIB, requestedValue);
			}
			addPayload(requestedCodeLowByte, float2int(flt_torquesensorCalibration, 8000.0));
			break;
		case CODE_RAMP_START:
			ui16_s_ramp_start = requestedValue << 6;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_RAMP_START, requestedValue);
			}
			addPayload(requestedCodeLowByte, ui16_s_ramp_start >> 6);
			break;
		case CODE_MAX_SPEED_DEFAULT:
			ui8_speedlimit_kph = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_MAX_SPEED_DEFAULT, requestedValue);
			}
			setSignal(SIGNAL_SPEEDLIMIT_CHANGED);
			addPayload(requestedCodeLowByte, ui8_speedlimit_kph);
			break;
		case CODE_MAX_SPEED_WITHOUT_PAS:
			ui8_speedlimit_without_pas_kph = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_MAX_SPEED_WITHOUT_PAS, requestedValue);
			}
			setSignal(SIGNAL_SPEEDLIMIT_CHANGED);
			addPayload(requestedCodeLowByte, ui8_speedlimit_without_pas_kph);
			break;
		case CODE_MAX_SPEED_WITH_THROTTLE_OVERRIDE:
			ui8_speedlimit_with_throttle_override_kph = requestedValue;
			if (configAddress == EEPROM_ADDRESS) {
				eeprom_write(OFFSET_MAX_SPEED_WITH_THROTTLE_OVERRIDE, requestedValue);
			}
			setSignal(SIGNAL_SPEEDLIMIT_CHANGED);
			addPayload(requestedCodeLowByte, ui8_speedlimit_with_throttle_override_kph);
			break;


		default:
			addPayload(CODE_ERROR, CODE_ERROR);

	}

}

void display_init() {
	// noop just here to have a common interface
}

uint8_t readRtu() {
	uart_fill_rx_packet_buffer(ui8_rx_buffer, 11, &ui8_rx_buffer_counter);
	if (ui8_rx_buffer_counter == 11) {
		ui8_rx_converted_buffer[0] = ui8_rx_buffer[0];
		ui8_rx_converted_buffer[1] = ui8_rx_buffer[1];
		ui8_rx_converted_buffer[2] = ui8_rx_buffer[2];
		ui8_rx_converted_buffer[3] = ui8_rx_buffer[3];
		ui8_rx_converted_buffer[4] = ui8_rx_buffer[4];
		ui8_rx_converted_buffer[5] = ui8_rx_buffer[5];
		ui8_rx_converted_buffer[6] = ui8_rx_buffer[6];
		// allow fetching of new data
		ui8_rx_buffer_counter = 0;
		return 1;
	}
	return 0;
}

uint8_t readAscii() {
	uart_fill_rx_packet_buffer(ui8_rx_buffer, 17, &ui8_rx_buffer_counter);
	if (ui8_rx_buffer_counter == 17) {
		ui8_rx_converted_buffer[0] = (hex2int(ui8_rx_buffer[1]) << 4) + hex2int(ui8_rx_buffer[2]);
		ui8_rx_converted_buffer[1] = (hex2int(ui8_rx_buffer[3]) << 4) + hex2int(ui8_rx_buffer[4]);
		ui8_rx_converted_buffer[2] = (hex2int(ui8_rx_buffer[5]) << 4) + hex2int(ui8_rx_buffer[6]);
		ui8_rx_converted_buffer[3] = (hex2int(ui8_rx_buffer[7]) << 4) + hex2int(ui8_rx_buffer[8]);
		ui8_rx_converted_buffer[4] = (hex2int(ui8_rx_buffer[9]) << 4) + hex2int(ui8_rx_buffer[10]);
		ui8_rx_converted_buffer[5] = (hex2int(ui8_rx_buffer[11]) << 4) + hex2int(ui8_rx_buffer[12]);
		ui8_rx_converted_buffer[6] = (hex2int(ui8_rx_buffer[13]) << 4) + hex2int(ui8_rx_buffer[14]);
		// allow fetching of new data
		ui8_rx_buffer_counter = 0;
		return 1;
	}
	return 0;
}

uint8_t readUart() {
	return readRtu();
}

void display_update() {

	if (readUart()) {

		uint8_t calculatedLrc;
		calculatedLrc = calcLRC(ui8_rx_converted_buffer, 0, 6);


		if (calculatedLrc == ui8_rx_converted_buffer[6]) {
			uint8_t requestedFunction = ui8_rx_converted_buffer[1];
			uint8_t requestedCodeLowByte = ui8_rx_converted_buffer[4];
			uint8_t requestedValueHighByte = ui8_rx_converted_buffer[3];
			uint8_t requestedValue = ui8_rx_converted_buffer[5];

			if (ui8_rx_converted_buffer[0] == DYNAMIC_DATA_ADDRESS) {
				// dynamic data requests also sends the displays assist percentage
				// temporary check for backwards compatibility
				if (CODE_DUMMY != requestedValue)
					ui8_assist_percent_wanted = requestedValue;
				prepareBasePackage(DYNAMIC_DATA_ADDRESS, requestedFunction);
				gatherDynamicPayload(requestedFunction);
				addPayload(CODE_LRC_CHECK, calculatedLrc);
				signPackage();
				sendPreparedPackage();
			} else if (ui8_rx_converted_buffer[0] == STATIC_DATA_ADDRESS) {
				// static data requests also sends the displays assist configuration
				ui8_assist_percent_wanted = requestedValue;
				ui8_assistlevel_global = requestedValueHighByte;
				prepareBasePackage(STATIC_DATA_ADDRESS, requestedFunction);
				gatherStaticPayload(requestedFunction);
				addPayload(CODE_LRC_CHECK, calculatedLrc);
				signPackage();
				sendPreparedPackage();
			} else if ((ui8_rx_converted_buffer[0] == CONFIG_ADDRESS) || (ui8_rx_converted_buffer[0] == EEPROM_ADDRESS)) {
				prepareBasePackage(ui8_rx_converted_buffer[0], requestedFunction);
				digestConfigRequest(ui8_rx_converted_buffer[0], requestedCodeLowByte, requestedValueHighByte, requestedValue);
				addPayload(CODE_LRC_CHECK, calculatedLrc);
				signPackage();
				sendPreparedPackage();
			}
		} else {
			// let sender know what was received and what the correct lrc would have been
			prepareBasePackage(ERROR_ADDRESS, ui8_rx_converted_buffer[1]);
			addPayload(CODE_ERROR, ui8_rx_converted_buffer[0]);
			addPayload(CODE_ERROR + 1, ui8_rx_converted_buffer[1]);
			addPayload(CODE_ERROR + 2, ui8_rx_converted_buffer[2]);
			addPayload(CODE_ERROR + 3, ui8_rx_converted_buffer[3]);
			addPayload(CODE_ERROR + 4, ui8_rx_converted_buffer[4]);
			addPayload(CODE_ERROR + 5, ui8_rx_converted_buffer[5]);
			addPayload(CODE_ERROR + 6, ui8_rx_converted_buffer[6]);
			addPayload(CODE_LRC_CHECK, calculatedLrc);
			signPackage();
			sendPreparedPackage();
		}

	}
}


#endif // BLUOSEC
