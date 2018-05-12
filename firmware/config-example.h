/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef CONFIG_H_
#define CONFIG_H_

// This file is the firmware configuration for the following hardware combination:
// - throttle and PAS; using motor current/torque and/or wheel speed controller
// - PAS with 8 magnets and with configured max cadence of 90 RPM
// - LCD3
// - battery pack Li-ion 24V
// - BMSBattery S06S 24/36V motor controller
// - BMSBattery Q85 motor 328RPM (direct drive motor)
//
// You should adapt the configurations for your hardware combination, by commenting/uncommenting the needed lines and values


// *************************************************************************** //
// THROTTLE
//
// choose between throttle and/or pas or torque sensor
#define EBIKE_THROTTLE_TYPE	EBIKE_THROTTLE_TYPE_THROTTLE_PAS
//#define EBIKE_THROTTLE_TYPE	EBIKE_THROTTLE_TYPE_TORQUE_SENSOR

// next, choose one of the both (only apply to throttle and/or PAS)
//#define EBIKE_THROTTLE_TYPE_THROTTLE_PAS_PWM_DUTY_CYCLE // direct PWM duty_cycle control
#define EBIKE_THROTTLE_TYPE_THROTTLE_PAS_CURRENT_SPEED // control using motor current/torque and/or wheel speed

// in the case of EBIKE_THROTTLE_TYPE = EBIKE_THROTTLE_TYPE_THROTTLE_PAS, LCD assist level will apply only to PAS
#define EBIKE_THROTTLE_TYPE_THROTTLE_PAS_ASSIST_LEVEL_PAS_ONLY

// next, if enabled, output of torque sensor algorithm is the human power (torque * cadence) other way will be the same as the torque signal
// (only apply to torque sensor)
#define EBIKE_THROTTLE_TYPE_TORQUE_SENSOR_HUMAN_POWER

// PAS configurations
//
#define PAS_NUMBER_MAGNETS	8
#define PAS_MAX_CADENCE_RPM 	90

#define PAS_THRESHOLD 1.7

// if your motor accelerates while rotating backwards the pedals instead of rotating forward, select the other option
#define PAS_DIRECTION PAS_DIRECTION_LEFT
//#define PAS_DIRECTION PAS_DIRECTION_RIGHT

// this is an advanced feature, please read bout it here:
// https://opensourceebikefirmware.bitbucket.io/development/Various--2017.12.01_-_Regen_ebrake_like_coast_brakes.html
//#define EBIKE_REGEN_EBRAKE_LIKE_COAST_BRAKES
// *************************************************************************** //

// *************************************************************************** //
// LCD

// the firmware supports automatically both LCD3 and LCD5

// you can tune LCD assist level
#define ASSIST_LEVEL_0			0.00
#define ASSIST_LEVEL_1 			0.44
#define ASSIST_LEVEL_2 			0.66
#define ASSIST_LEVEL_3 			1.00
#define ASSIST_LEVEL_4 			1.5
#define ASSIST_LEVEL_5 			2.25

// S06S motor controller: 1.50
// KT36/48SVPR: ??
#define LCD_BATTERY_CURRENT_FACTOR	1.50 // each unit = 0.35A | in this example, 42 * 0.35 ~= 15 amps
// *************************************************************************** //


// *************************************************************************** //
// BATTERY
// Choose your battery pack voltage

// the cells number can be a custom value that the controller supports, like 8 for 8S battery pack
#define BATTERY_LI_ION_CELLS_NUMBER	 7 // 7S = 24V battery pack
//#define BATTERY_LI_ION_CELLS_NUMBER	10 // 10S = 36V battery pack
//#define BATTERY_LI_ION_CELLS_NUMBER	13 // 13S = 48V battery pack

#define ADC_BATTERY_CURRENT_MAX		42 // each unit = 0.35A | in this example, 42 * 0.35 ~= 15 amps
#define ADC_BATTERY_REGEN_CURRENT_MAX	5 // CAN'T be more than 66 units!! each unit = 0.35A

// Considering the follow voltage values for each li-ion battery cell
// State of charge 		| voltage
#define LI_ION_CELL_VOLTS_MAX 		4.25 // this value is used to protect battery from overcharge on regeneration mode, mainly for direct drive motors
#define LI_ION_CELL_VOLTS_100 		4.06 // this value is used to help finding the battery SOC
#define LI_ION_CELL_VOLTS_80 		3.93 // this value is used to help finding the battery SOC
#define LI_ION_CELL_VOLTS_60 		3.78 // this value is used to help finding the battery SOC
#define LI_ION_CELL_VOLTS_40 		3.60 // this value is used to help finding the battery SOC
#define LI_ION_CELL_VOLTS_20 		3.38 // this value is used to help finding the battery SOC
#define LI_ION_CELL_VOLTS_10 		3.25 // this value is used to help finding the battery SOC
#define LI_ION_CELL_VOLTS_0 		3.00 // this value is used to help finding the battery SOC and is the minimum value after which the firmware don't ask more current to battery, to run the motor
// *************************************************************************** //

// *************************************************************************** //
// MOTOR CONTROLLER

// Choose your controller max current and max regen current
//
// S06S controller holds 15 amps as max current
#define ADC_MOTOR_CURRENT_MAX		43 // each unit = 0.35A; 43 = 15A (tested on S06S motor controller)
#define ADC_MOTOR_REGEN_CURRENT_MAX	28 // CAN'T be more than 66 units!! each unit = 0.35A; 20 = 10A but the brake/regen must be only for a few seconds!!

// Choose PWM ramp up/down step (higher value will make the motor acceleration slower)
//
// For a 24V battery, 25 for ramp up seems ok. For an higher voltage battery, this values should be higher
#define PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP	25
#define PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP	10
// *************************************************************************** //

// *************************************************************************** //
// MOTOR

// Choose some parameters for your motor (if you don't know, just keep the following original values because they should work ok)
//
// This value should be near 0. When measured with an oscilloscope, for a Q85 motor, the offset is 5
// You can try to tune with the whell on the air, full throttle and look at batttery current: adjust for lower battery current
#define MOTOR_ROTOR_OFFSET_ANGLE 0

#define MOTOR_ROTOR_ANGLE_STARTUP 0

// This value is ERPS speed after which a transition happens from sinewave no interpolation to have
// interpolation 60 degrees and must be found experimentally but a value of 25 may be good
#define MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES 25

// For some motors with not very well placed mosfets at 120 degrees between each of them. May be easier to keep this option disabled
//#define DO_SINEWAVE_INTERPOLATION_360_DEGREES
// *************************************************************************** //

#endif /* CONFIG_H_ */
