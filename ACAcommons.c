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
#include "stm8s.h"
#include "stm8s_itc.h"
#include "stm8s_gpio.h"
#include "config.h"
#include "gpio.h"
#include "adc.h"
#include "ACAcommons.h"
#include "ACAcontrollerState.h"

static uint8_t ui8_temp;

uint8_t float2int(float in, float maxRange) {
    uint16_t result;
    if (in < 0.0)
        return 0;
    result = (uint16_t) (in * (float) ((float) 256 / (float) maxRange));
    if (result > 255)
        result = 255;
    return (result);
}

float int2float(uint8_t in, float maxRange) {
    return ((float) in / (float) ((float) 256 / (float) maxRange));
}

int32_t map(int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max) {
    // if input is smaller/bigger than expected return the min/max out ranges value
    if (x < in_min)
        return out_min;
    else if (x > in_max)
        return out_max;

        // map the input to the output range.
        // round up if mapping bigger ranges to smaller ranges
    else if ((in_max - in_min) > (out_max - out_min))
        return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
        // round down if mapping smaller ranges to bigger ranges
    else
        return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

uint32_t PI_control(uint16_t pv, uint16_t setpoint) {
    float float_p;
    static float float_i;
    float_p = ((float) setpoint - (float) pv) * flt_s_pid_gain_p;
    if (float_p > 3)float_p = 3;
    if (float_p<-3)float_p = -3;
    float_i += ((float) setpoint - (float) pv) * flt_s_pid_gain_i;
    if (float_i > 255)float_i = 255;
    if (float_i < 0)float_i = 0;

    return ((uint32_t) (float_p + float_i));
}

void updateSpeeds(void) {
    // Update speed after speed interrupt occurrence
    if (ui8_SPEED_Flag) {
        if (ui16_time_ticks_for_speed_calculation > 1500) {
            //ignore spikes speed information, Do nothing if derived speed would be greater ca. 82km/h with 28" wheel
            ui16_time_ticks_between_speed_interrupt = ui16_time_ticks_for_speed_calculation; //save recent speed
            ui16_time_ticks_for_speed_calculation = 0; //reset speed counter

            ui32_SPEED_km_h_accumulated -= ui32_SPEED_km_h_accumulated >> 2;
            ui32_SPEED_km_h_accumulated += (wheel_circumference * PWM_CYCLES_SECOND * 36L) / (10L * (uint32_t) ui16_time_ticks_between_speed_interrupt); // speed km/h*1000 from external sensor
            ui32_SPEED_km_h = ui32_SPEED_km_h_accumulated >> 2; //calculate speed in m/h conversion from sec to hour --> *3600, conversion from mm to km --> /1000000, tic frequency 15625 Hz
        }

        ui8_SPEED_Flag = 0; //reset interrupt flag

    }
    //if wheel isn't turning, reset speed
    // FIXME, the following is gathered from two places that were executed just in that order
    // distinction 40000/65529 doesn't really make much sense
    if (ui16_time_ticks_for_speed_calculation > 40000) {
        ui32_SPEED_km_h = 0;
    }
    if (ui16_time_ticks_for_speed_calculation > 65529 && ui16_time_ticks_between_speed_interrupt != 65530) {
        ui16_time_ticks_between_speed_interrupt = 65530; //Set Display to 0 km/h
        PAS_act = 0; //Set PAS indicator to 0 to avoid motor startig, if pushing backwards from standstill
    }
}

uint32_t CheckSpeed(uint16_t current_target, uint16_t speed, uint16_t softLimit, uint16_t hardLimit) {
    //ramp down motor power if you are riding too fast and speed liming is active
    if (speed > softLimit && ui8_offroad_state != 5) { // FIXME the && part is only in here for old setpoint, aca already defines a higher limit

        if (speed > hardLimit) { //if you are riding much too fast, stop motor immediately
            current_target = ui16_current_cal_b;

        } else {
            uint32_t ui32_ct_normalized = ((current_target - ui16_current_cal_b));

            current_target = (uint16_t)
                    ((ui32_ct_normalized * (hardLimit - speed)) /
                    (hardLimit - softLimit)
                    + ui16_current_cal_b);


        }
    }
    return ((uint32_t) current_target);
}

// internal signals so that components con communicate simple things without code cohesion

void setSignal(uint8_t signal) {
    uint32_icc_signals |= 1 << signal;
}

uint8_t readAndClearSignal(uint8_t signal) {
    if ((uint32_icc_signals & (1 << signal)) > 0) {
        uint32_icc_signals &= ~(1 << signal);
        return 1;
    }
    return 0;
}

void initErpsRatio(void) {
    //if (readAndClearSignal(SIGNAL_SPEEDLIMIT_CHANGED) == 1) 
    ui16_speed_kph_to_erps_ratio = (uint16_t) ((float) GEAR_RATIO * 1000000.0 / ((float) wheel_circumference * 36.0));
}

void updateHallOrder(uint8_t hall_sensors) {

    if (++ui8_hall_order_counter > 5) {
        ui8_hall_order_counter = 0;
    }
    uint8_t_hall_order[ui8_hall_order_counter] = hall_sensors;
}

void updatePasDir(void) {
#ifdef TORQUESENSOR
    if (ui16_time_ticks_between_pas_interrupt < timeout) {
        PAS_dir = 1;
    } //only PAS timeout for Torquesensor Mode.
#else
    if (PAS_act > 3) {
        PAS_dir = 1;
    }//set direction only if enough pulses in the right direction are detected.
#endif
    else {
        PAS_dir = 0;
    }
}

void updateRequestedTorque(void) {

#ifndef TORQUESENSOR
    ui16_throttle_accumulated -= ui16_throttle_accumulated >> 3;
    ui16_throttle_accumulated += ui8_adc_read_throttle();
    ui8_temp = ui16_throttle_accumulated >> 3; //read in value from adc
    ui16_sum_torque = (uint8_t) map(ui8_temp, ui8_throttle_min_range, ui8_throttle_max_range, 0, SETPOINT_MAX_VALUE); //map throttle to limits
#else
    ui16_sum_torque = 0;
    for (ui8_temp = 0; ui8_temp < NUMBER_OF_PAS_MAGS; ui8_temp++) { // sum up array content
        ui16_sum_torque += ui16_torque[ui8_temp];
    }

    ui16_sum_torque /= NUMBER_OF_PAS_MAGS;
#endif
}

void checkPasInActivity(void) {
    ui8_PAS_update_call_when_inactive_counter++;
    //	Update cadence, after PAS interrupt occurrence
    // we are called at 50 Hz, if there has been no interrupt for more than ~1s, ramp down PAS automatically
    if (ui8_PAS_Flag == 0 && ui8_PAS_update_call_when_inactive_counter > (uint8_t) (timeout >> 6)) {

        ui8_PAS_update_call_when_inactive_counter = 0;

        if (PAS_act > 0) {
            PAS_act--;
        }

        updatePasDir();

    }
}

void updatePasStatus(void) {

    if (ui8_PAS_Flag == 1) {
        ui8_PAS_Flag = 0; //reset interrupt flag

        ui16_time_ticks_between_pas_interrupt = ui16_time_ticks_for_pas_calculation; //save recent cadence
        ui16_PAS_High = ui16_PAS_High_Counter;

        if ((ui8_s_pas_direction == 1) && ((float) ui16_time_ticks_between_pas_interrupt / (float) ui16_PAS_High > flt_s_pas_threshold)) {
            if (PAS_act < 7) {
                PAS_act++;
            }
        } else if ((ui8_s_pas_direction == 0) && ((float) ui16_time_ticks_between_pas_interrupt / (float) ui16_PAS_High < flt_s_pas_threshold)) {
            if (PAS_act < 7) {
                PAS_act++;
            }
        } else {
            if (PAS_act > 0) {
                PAS_act--;
            }
        }


        if (flt_torquesensorCalibration != 0.0) {
            ui8_temp = ui8_adc_read_throttle(); //read in recent torque value
            ui16_torque[ui8_torque_index] = (uint8_t) map(ui8_temp, ui8_throttle_min_range, ui8_throttle_max_range, 0, SETPOINT_MAX_VALUE); //map throttle to limits

            ui8_torque_index++;
            if (ui8_torque_index > NUMBER_OF_PAS_MAGS - 1) {
                ui8_torque_index = 0;
            } //reset index counter

        }

        updatePasDir();
        ui16_time_ticks_for_pas_calculation = 1;
        ui16_PAS_High_Counter = 1; //reset PAS Counter
        ui8_PAS_update_call_when_inactive_counter = 0;
    }
}

void updateOffroadStatus(void) {

    if (ui8_offroad_state == 5) {
        if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)) {
            ui8_offroad_counter++;
            if (ui8_offroad_counter == 255) {//disable on pressing brake for 5 seconds
                ui8_offroad_state = 0;
                ui8_offroad_counter = 0;
            }
        } else {
            ui8_offroad_counter = 0;
        }
    } else if (ui8_offroad_state == 0 && !GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)) {//first step, brake on.
        ui8_offroad_state = 1;
    } else if (ui8_offroad_state == 1) {//second step, make sure the brake is hold according to definded time
        ui8_offroad_counter++;
        if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter < MORSE_TIME_1) {//brake is released too early
            ui8_offroad_state = 0;
            ui8_offroad_counter = 0;
        } else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_1 + MORSE_TOLERANCE) {//brake is released according to cheatcode
            ui8_offroad_state = 2;
            ui8_offroad_counter = 0;
        } else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_1 + MORSE_TOLERANCE) {//brake is released too late
            ui8_offroad_state = 0;
            ui8_offroad_counter = 0;
        }
    } else if (ui8_offroad_state == 2) {//third step, make sure the brake is released according to definded time
        ui8_offroad_counter++;
        if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter < MORSE_TIME_2) { //brake is hold too early
            ui8_offroad_state = 0;
            ui8_offroad_counter = 0;
        } else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_2 + MORSE_TOLERANCE) {//brake is hold according to cheatcode
            ui8_offroad_state = 3;
            ui8_offroad_counter = 0;

        } else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_2 + MORSE_TOLERANCE) {//brake is hold too late
            ui8_offroad_state = 0;
            ui8_offroad_counter = 0;
        }
    } else if (ui8_offroad_state == 3) {//second step, make sure the brake is hold according to definded time
        ui8_offroad_counter++;
        if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter < MORSE_TIME_3) {//brake is released too early
            ui8_offroad_state = 0;
            ui8_offroad_counter = 0;
        } else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_3 + MORSE_TOLERANCE) {//brake is released according to cheatcode
            ui8_offroad_state = 4;
            ui8_offroad_counter = 0;

        } else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_offroad_counter > MORSE_TIME_3 + MORSE_TOLERANCE) {//brake is released too late
            ui8_offroad_state = 0;
            ui8_offroad_counter = 0;
        }
    } else if (ui8_offroad_state == 4) {
        // wait 3 seconds in state 4 for display feedback
        ui8_offroad_counter++;
        if (ui8_offroad_counter > 150) {
            ui8_offroad_state = 5;
            ui8_offroad_counter = 0;
        }
    }


}