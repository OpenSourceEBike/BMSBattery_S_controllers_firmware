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
 * File:   ACAsetPoint.c
 * Author: Björn Schmidt
 *
 * Created on September 7, 2018, 6:47 PM
 */

#include <stdio.h>
#include <stdint.h>
#include "config.h"
#include "stm8s.h"
#include "stm8s_it.h"
#include "ACAsetPoint.h"
#include "ACAcontrollerState.h"
#include "ACAcommons.h"
// FIXME ugly cross references
// why? cause this blackbox is just for calculating,
// it's not supposed to read values on its own
// all values should be read by a slowloop_"readall/updatesensors, whatever" before calling it
#include "brake.h"
#include "adc.h" // FIXME ugly cross reference

static uint32_t ui32_dutycycle; // local version of setpoint
static int16_t i16_assistlevel[6] = {0, LEVEL_1, LEVEL_2, LEVEL_3, LEVEL_4, LEVEL_5}; // difference between setpoint and actual value

static int8_t uint_PWM_Enable = 0; //flag for PWM state
static uint16_t ui16_BatteryCurrent_accumulated = 2496L; //8x current offset, for filtering or Battery Current
static uint16_t ui16_BatteryVoltage_accumulated;
static uint16_t ui16_assist_percent_smoothed;
static uint32_t ui32_time_ticks_between_pas_interrupt_accumulated = timeout; // for filtering of PAS value 
static uint32_t ui32_erps_accumulated; //for filtering of erps
//static uint32_t ui32_speedlimit_actual_accumulated;
static uint32_t ui32_sumthrottle_accumulated; //it is already smoothed b4 we get it, we want to smooth it even more though for dynamic assist levels

static uint16_t ui16_erps_max = PWM_CYCLES_SECOND / 30; //limit erps to have minimum 30 points on the sine curve for proper commutation
static float float_temp = 0; //for float calculations

static uint32_t uint32_temp = 0;
static uint16_t uint16_temp = 0;
static uint8_t ui8_temp = 0;

uint16_t cutoffSetpoint(uint32_t ui32_dutycycle) {
	if (ui32_dutycycle < 5) {
		ui32_dutycycle = 0;
	}
	if (ui32_dutycycle > 255) {
		ui32_dutycycle = 255;
	}
	return ui32_dutycycle;
}

uint16_t aca_setpoint(uint16_t ui16_time_ticks_between_speed_interrupt, uint16_t ui16_time_ticks_between_pas_interrupt, uint16_t setpoint_old) {
	// select virtual erps speed based on speedsensor type
#ifdef SPEEDSENSOR_INTERNAL
	ui16_virtual_erps_speed = (uint16_t) ui32_erps_filtered;
#endif

#ifdef SPEEDSENSOR_EXTERNAL
	ui16_virtual_erps_speed = ui16_speed_kph_to_erps_ratio * ((uint16_t) (ui32_SPEED_km_h / 100)) / 1000; // /100/1000 instead of more plausible /1000/100 cause of 16bit overflow
#endif

	// first select current speed limit
	if (ui8_offroad_state == 255) {
		ui8_speedlimit_actual_kph = 80;
	} else if (ui8_offroad_state > 15 && ui16_sum_throttle <= 2) { // allow a slight increase based on ui8_offroad_state
		ui8_speedlimit_actual_kph = ui8_speedlimit_kph + (ui8_offroad_state - 16);
	} else if (ui8_offroad_state > 15 && ui16_sum_throttle > 2) {
		ui8_speedlimit_actual_kph = ui8_speedlimit_with_throttle_override_kph + (ui8_offroad_state - 16);
	} else if (ui16_time_ticks_for_pas_calculation > timeout || !PAS_is_active) {
		ui8_speedlimit_actual_kph = ui8_speedlimit_without_pas_kph;
	} else {
		ui8_speedlimit_actual_kph = ui8_speedlimit_kph;
	}

	// >=8 means levels are switched of, use wanted percentage directly instead
	ui16_assist_percent_smoothed -= ui16_assist_percent_smoothed >> 4;
	if ((ui8_assistlevel_global & 15) < 8) {
		ui16_assist_percent_smoothed += i16_assistlevel[ui8_assistlevel_global & 15];
	} else {
		ui16_assist_percent_smoothed += ui8_assist_percent_wanted;
	}
	ui8_assist_percent_actual = ui16_assist_percent_smoothed >> 4;


	// average throttle over a longer time period (for dynamic assist level) 
	ui32_sumthrottle_accumulated -= ui32_sumthrottle_accumulated >> 10;
	ui32_sumthrottle_accumulated += ui16_sum_throttle;
	ui8_assist_dynamic_percent_addon = ui32_sumthrottle_accumulated >> 10;
	if ((ui8_assist_dynamic_percent_addon + ui8_assist_percent_actual) > 100) {
		ui8_assist_dynamic_percent_addon = 100 - ui8_assist_percent_actual;
	}

	ui16_BatteryCurrent_accumulated -= ui16_BatteryCurrent_accumulated >> 3;
	ui16_BatteryCurrent_accumulated += ui16_adc_read_motor_total_current();
	ui16_BatteryCurrent = ui16_BatteryCurrent_accumulated >> 3;

	ui16_BatteryVoltage_accumulated -= ui16_BatteryVoltage_accumulated >> 3;
	ui16_BatteryVoltage_accumulated += ui8_adc_read_battery_voltage();
	ui8_BatteryVoltage = ui16_BatteryVoltage_accumulated >> 3;

	ui32_erps_accumulated -= ui32_erps_accumulated >> 3;
	ui32_erps_accumulated += ui16_motor_speed_erps;
	ui32_erps_filtered = ui32_erps_accumulated >> 3;

	ui32_time_ticks_between_pas_interrupt_accumulated -= ui32_time_ticks_between_pas_interrupt_accumulated >> 3;
	// do not allow values > ramp_start into smoothing cause it makes startup sluggish
	if (ui16_time_ticks_between_pas_interrupt > ui16_s_ramp_start) {
		ui32_time_ticks_between_pas_interrupt_accumulated += ui16_s_ramp_start;
	} else {
		ui32_time_ticks_between_pas_interrupt_accumulated += ui16_time_ticks_between_pas_interrupt;
	}
	ui16_time_ticks_between_pas_interrupt_smoothed = ui32_time_ticks_between_pas_interrupt_accumulated >> 3;

	//check for undervoltage --> disable PWM
	if (ui8_BatteryVoltage < BATTERY_VOLTAGE_MIN_VALUE) {

		TIM1_CtrlPWMOutputs(DISABLE);
		uint_PWM_Enable = 0; // highest priority: Stop motor for undervoltage protection
		ui32_dutycycle = 0;
		ui8_control_state = 255;

		// check for brake --> set regen current
	} else if (brake_is_set()) {

		ui8_control_state = 255;
		//Current target based on regen assist level
		if ((ui16_aca_flags & DIGITAL_REGEN) == DIGITAL_REGEN) {

			ui8_temp = i16_assistlevel[ui8_assistlevel_global >> 4];
			ui8_control_state -= 1;

			//Current target based on linear input on pad X4
		} else {
			ui8_temp = map(ui16_adc_read_x4_value() >> 2, ui8_throttle_min_range, ui8_throttle_max_range, 0, 100); //map regen throttle to limits
			ui8_control_state -= 2;
		}
		float_temp = (float) ui8_temp * (float) (ui16_regen_current_max_value) / 100.0;

		//Current target gets ramped down with speed
		if (((ui16_aca_flags & SPEED_INFLUENCES_REGEN) == SPEED_INFLUENCES_REGEN) && (ui16_virtual_erps_speed < ((ui16_speed_kph_to_erps_ratio * ((uint16_t) ui8_speedlimit_kph)) / 100))) {

			if (ui16_virtual_erps_speed < 15) {
				// turn of regen at low speeds
				// based on erps in order to avoid an additional calculation
				float_temp = 0.0;
			} else {

				float_temp *= ((float) ui16_virtual_erps_speed / ((float) (ui16_speed_kph_to_erps_ratio * ((float) ui8_speedlimit_kph)) / 100.0)); // influence of current speed based on base speed limit
				ui8_control_state -= 4;
			}
		}

		uint32_current_target = (uint32_t) ui16_current_cal_b - float_temp;
		ui32_dutycycle = PI_control(ui16_BatteryCurrent, uint32_current_target);
		if (((ui16_aca_flags & BYPASS_LOW_SPEED_REGEN_PI_CONTROL) == BYPASS_LOW_SPEED_REGEN_PI_CONTROL) && (ui32_dutycycle == 0)) {
			//try to get best regen at Low Speeds for BionX IGH
			ui32_dutycycle = ui16_virtual_erps_speed * 2;
			ui8_control_state -= 8;
		}

		//limit max erps
	} else if (ui32_erps_filtered > ui16_erps_max) {
		ui32_dutycycle = PI_control(ui32_erps_filtered, ui16_erps_max); //limit the erps to maximum value to have minimum 30 points of sine table for proper commutation
		ui8_control_state = 0;

	} else {

		uint32_current_target = ui16_current_cal_b; // reset target to zero
		ui8_control_state = 0;
		//if none of the overruling boundaries are concerned, calculate new setpoint

		// if torque sim is requested. We could check if we could solve this function with just one line with map function...
		if (flt_torquesensorCalibration == 0.0) {

			// add dynamic assist level based on past throttle input
			ui8_temp = ui8_assist_percent_actual;

			if ((ui16_aca_flags & DYNAMIC_ASSIST_LEVEL) == DYNAMIC_ASSIST_LEVEL) {
				ui8_temp += ui8_assist_dynamic_percent_addon;
			}

			if (ui16_time_ticks_between_pas_interrupt_smoothed > ui16_s_ramp_end) {
				//if you are pedaling slower than defined ramp end
				//or not pedalling at all
				//current is proportional to cadence
				uint32_current_target = (ui8_temp * (ui16_battery_current_max_value) / 100);
				float_temp = 1.0 - (((float) (ui16_time_ticks_between_pas_interrupt_smoothed - ui16_s_ramp_end)) / ((float) (ui16_s_ramp_start - ui16_s_ramp_end)));
				uint32_current_target = ((uint16_t) (uint32_current_target)*(uint16_t) (float_temp * 100.0)) / 100 + ui16_current_cal_b;
				ui8_control_state += 1;

				//in you are pedaling faster than in ramp end defined, desired battery current level is set,
			} else {
				uint32_current_target = (ui8_temp * (ui16_battery_current_max_value) / 100 + ui16_current_cal_b);
				ui8_control_state += 2;
			}
		} else { // torque sensor mode

			float_temp = (float) ui16_sum_torque;
			float_temp *= ((float) ui8_assist_percent_actual / 100.0);

			if (flt_torquesensorCalibration > 1) {
				// flt_torquesensorCalibration is >fummelfactor * NUMBER_OF_PAS_MAGS * 64< (64 cause of <<6)
				float_temp *= flt_torquesensorCalibration / ((uint32_t) ui16_time_ticks_between_pas_interrupt_smoothed); // influence of cadence
			}

			//increase power linear with speed for convenient commuting :-)
			if ((ui16_aca_flags & SPEED_INFLUENCES_TORQUESENSOR) == SPEED_INFLUENCES_TORQUESENSOR) {
				float_temp *= (1.0 + (float) ui16_virtual_erps_speed / ((float) (ui16_speed_kph_to_erps_ratio * ((float) ui8_speedlimit_kph)) / 100.0)); // influence of current speed based on base speed limit
			}

			uint32_current_target = (uint32_t) (float_temp * (float) (ui16_battery_current_max_value) / 255.0 + (float) ui16_current_cal_b);
			ui8_control_state += 4;

		}


		// throttle / torquesensor override following
		if (flt_torquesensorCalibration == 0.0) {
			float_temp = (float) ui16_sum_throttle;
		} else {
			float_temp = (float) ui16_momentary_throttle; // or ui16_sum_throttle
			float_temp *= (1 - (float) ui16_virtual_erps_speed / 2 / (float) (ui16_speed_kph_to_erps_ratio * ((float) ui8_speedlimit_kph))); //ramp down linear with speed. Risk: Value is getting negative if speed>2*speedlimit

		}

		// map curret target to assist level, not to maximum value
		if ((ui16_aca_flags & ASSIST_LVL_AFFECTS_THROTTLE) == 1) {
			float_temp *= ((float) ui8_assist_percent_actual / 100.0);
			ui8_control_state += 8;
		}

		float_temp = float_temp * (float) (ui16_battery_current_max_value) / 255.0 + (float) ui16_current_cal_b; //calculate current target


		if ((uint32_t) float_temp > uint32_current_target) {
			uint32_current_target = (uint32_t) float_temp; //override torque simulation with throttle / torquesensor
			ui8_control_state += 16;
		}

		// check for overspeed
		uint32_temp = uint32_current_target;
		uint32_current_target = CheckSpeed((uint16_t) uint32_current_target, (uint16_t) ui16_virtual_erps_speed, (ui16_speed_kph_to_erps_ratio * ((uint16_t) ui8_speedlimit_actual_kph)) / 100, (ui16_speed_kph_to_erps_ratio * ((uint16_t) (ui8_speedlimit_actual_kph + 2))) / 100); //limit speed
		if (uint32_temp != uint32_current_target) {
			ui8_control_state += 32;
		}

		if (uint32_current_target > ui16_battery_current_max_value + ui16_current_cal_b) {
			uint32_current_target = ui16_battery_current_max_value + ui16_current_cal_b;
			ui8_control_state += 64;
		}
		//phase current limiting
		if (setpoint_old > 0 && (uint32_current_target - ui16_current_cal_b)*255 / setpoint_old > PHASE_CURRENT_MAX_VALUE) { // limit phase current according to Phase Current = battery current/duty cycle
			uint32_current_target = (PHASE_CURRENT_MAX_VALUE) * setpoint_old / 255 + ui16_current_cal_b;
			ui8_control_state += 128;
		}
		//send current target to PI-controller
		ui32_dutycycle = PI_control(ui16_BatteryCurrent, uint32_current_target);

		//disable PWM if enabled and motor is at standstill and no power is wanted
		/*if (uint_PWM_Enable && ui32_erps_filtered == 0 && uint32_current_target == ui16_current_cal_b) {
			TIM1_CtrlPWMOutputs(DISABLE);
			uint_PWM_Enable = 0;
		}*/

		//enable PWM if disabled and voltage is 2V higher than min, some hysteresis and power is wanted
		if (!uint_PWM_Enable && ui8_BatteryVoltage > BATTERY_VOLTAGE_MIN_VALUE + 8) { //&& ((ui32_erps_filtered != 0) || (uint32_current_target != ui16_current_cal_b))
			TIM1_CtrlPWMOutputs(ENABLE);
			uint_PWM_Enable = 1;

		}
	}
	return cutoffSetpoint(ui32_dutycycle);

}
