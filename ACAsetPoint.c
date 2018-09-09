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

static uint32_t ui32_setpoint; // local version of setpoint
static int16_t i16_assistlevel[5] = {LEVEL_1, LEVEL_2, LEVEL_3, LEVEL_4, LEVEL_5}; // difference between setpoint and actual value

static int8_t uint_PWM_Enable = 0; //flag for PWM state
static uint16_t ui16_BatteryCurrent_accumulated = 2496L; //8x current offset, for filtering or Battery Current
static uint16_t ui16_BatteryVoltage_accumulated;
static uint16_t ui16_PAS_accumulated = 64000L; // for filtering of PAS value // why start at 64000?
static uint32_t ui32_erps_accumulated; //for filtering of erps
static uint32_t ui32_erps_filtered; //filtered value of erps

static uint16_t ui16_erps_max = PWM_CYCLES_SECOND / 30; //limit erps to have minimum 30 points on the sine curve for proper commutation
static float float_temp = 0; //for float calculations

uint16_t aca_setpoint(uint16_t speed, uint16_t ui16_currentCadenceUnfiltered, uint16_t sumtorque, uint16_t setpoint_old) {
#if defined(ACA)  
    

    ui16_BatteryCurrent_accumulated -= ui16_BatteryCurrent_accumulated >> 3;
    ui16_BatteryCurrent_accumulated += ui16_adc_read_motor_total_current();
    ui16_BatteryCurrent = ui16_BatteryCurrent_accumulated >> 3;

    ui16_BatteryVoltage_accumulated -= ui16_BatteryVoltage_accumulated >> 3;
    ui16_BatteryVoltage_accumulated += ui8_adc_read_battery_voltage();
    ui8_BatteryVoltage = ui16_BatteryVoltage_accumulated >> 3;

    ui32_erps_accumulated -= ui32_erps_accumulated >> 3;
    ui32_erps_accumulated += ui16_motor_speed_erps;
    ui32_erps_filtered = ui32_erps_accumulated >> 3;
    
    ui16_PAS_accumulated -= ui16_PAS_accumulated >> 3;
    ui16_PAS_accumulated += ui16_currentCadenceUnfiltered;
    ui16_PAS_smoothed = ui16_PAS_accumulated >> 3; // now it's filtered

    //check for undervoltage
    if (ui8_BatteryVoltage < BATTERY_VOLTAGE_MIN_VALUE) {

        TIM1_CtrlPWMOutputs(DISABLE);
        uint_PWM_Enable = 0; // highest priority: Stop motor for undervoltage protection
        ui32_setpoint = 0;
        ui8_control_state = 2;

    } else if (brake_is_set()) {

        ui32_setpoint = PI_control(ui16_BatteryCurrent, REGEN_CURRENT_MAX_VALUE); //Curret target = max regen,



        if (ui32_setpoint < 5) {
            ui32_setpoint = 0;
        }
        if (ui32_setpoint > 255) {
            ui32_setpoint = 255;
        }
        ui8_control_state = 3;

    } else if (ui32_erps_filtered > ui16_erps_max) {//limit max erps
        ui32_setpoint = PI_control(ui32_erps_filtered, ui16_erps_max); //limit the erps to maximum value to have minimum 30 points of sine table for proper commutation
        if (ui32_setpoint < 5) {
            ui32_setpoint = 0;
        }
        if (ui32_setpoint > 255) {
            ui32_setpoint = 255;
        }
        ui8_control_state = 4;

    } else if ((ui16_PAS_Counter > timeout || !PAS_dir)
            &&!(ui8_offroad_state >= 0 && sumtorque > 2)) { //FIXME just for testing == 5 for ui8_offroad_state
        //check if pedals are turning with throttle active in offroad mode
        ui32_setpoint = PI_control(ui16_BatteryCurrent, ui16_current_cal_b); //Curret target = 0 A, this is to keep the integral part of the PI-control up to date
        if (ui32_setpoint < 5) {
            ui32_setpoint = 0;
        }
        if (ui32_setpoint > 255) {
            ui32_setpoint = 255;
        }
        ui8_control_state = 5;
    } else {

        //if none of the overruling boundaries are concerned, calculate new setpoint
        
        if (ui16_PAS_smoothed > ui16_s_ramp_end) //if you are pedaling slower than defined ramp end, current is proportional to cadence
        {
            uint32_current_target = (i16_assistlevel[ui8_assistlevel_global - 1]*(BATTERY_CURRENT_MAX_VALUE - ui16_current_cal_b) / 100);
            float_temp = ((float) ui16_s_ramp_end) / ((float) ui16_PAS_smoothed);

            uint32_current_target = ((int16_t) (uint32_current_target)*(int16_t) (float_temp * 100)) / 100 + ui16_current_cal_b;
            
        } else {
            uint32_current_target = (i16_assistlevel[ui8_assistlevel_global - 1]*(BATTERY_CURRENT_MAX_VALUE - ui16_current_cal_b) / 100 + ui16_current_cal_b);
            
        }
        ui8_control_state = 9;
        float_temp = (float) sumtorque * (float) (BATTERY_CURRENT_MAX_VALUE - ui16_current_cal_b) / 255.0 + (float) ui16_current_cal_b; //calculate current target
        if ((int32_t) float_temp > uint32_current_target) {
            uint32_current_target = (int32_t) float_temp; //override torque simulation with throttle
            ui8_control_state = 10;
        }

#ifdef SPEEDSENSOR_INTERNAL
        uint32_current_target = CheckSpeed((uint16_t) uint32_current_target, (uint16_t) ui32_erps_filtered, ui16_erps_limit_lower, ui16_erps_limit_higher); //limit speed
#endif

#ifdef SPEEDSENSOR_EXTERNAL
        uint32_current_target = CheckSpeed((uint16_t) uint32_current_target, (uint16_t) ui32_SPEED_km_h, ui8_speedlimit_kph * 1000, (ui8_speedlimit_kph + 2)*1000); //limit speed
#endif

        if (setpoint_old > 0 && (uint32_current_target - ui16_current_cal_b)*255 / setpoint_old > PHASE_CURRENT_MAX_VALUE - ui16_current_cal_b) { // limit phase current according to Phase Current = battery current/duty cycle
            uint32_current_target = (PHASE_CURRENT_MAX_VALUE - ui16_current_cal_b) * setpoint_old / 255 + ui16_current_cal_b;
            ui8_control_state = 8;
        }
        ui32_setpoint = PI_control(ui16_BatteryCurrent, uint32_current_target);
        if (ui32_setpoint < 5)ui32_setpoint = 0;
        if (ui32_setpoint > 255)ui32_setpoint = 255;


        //enable PWM if disabled and voltage is 2V higher than min, some hysteresis
        if (!uint_PWM_Enable && ui8_BatteryVoltage > BATTERY_VOLTAGE_MIN_VALUE + 8) {
            TIM1_CtrlPWMOutputs(ENABLE);
            uint_PWM_Enable = 1;

        }
    }
#endif
    return ui32_setpoint;

}
