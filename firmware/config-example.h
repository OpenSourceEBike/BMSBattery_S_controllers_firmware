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

// this is an advsanced feature, please read bout it here:
// https://opensourceebikefirmware.bitbucket.io/development/Various--2017.12.01_-_Regen_ebrake_like_coast_brakes.html
//#define EBIKE_REGEN_EBRAKE_LIKE_COAST_BRAKES
// *************************************************************************** //

// *************************************************************************** //
// LCD

// the firmware supports automatically both LCD3 and LCD5

// you can tune LCD assist level
#define ASSIST_LEVEL_0	0.0
#define ASSIST_LEVEL_1 	0.25
#define ASSIST_LEVEL_2 	0.5
#define ASSIST_LEVEL_3 	0.1
#define ASSIST_LEVEL_4 	2.0
#define ASSIST_LEVEL_5 	4.0
// *************************************************************************** //


// *************************************************************************** //
// BATTERY
// Choose your battery pack voltage

// the cells number can be a custom value that the controller supports, like 8 for 8S battery pack
#define BATTERY_LI_ION_CELLS_NUMBER	 7 // 7S = 24V battery pack
//#define BATTERY_LI_ION_CELLS_NUMBER	10 // 10S = 36V battery pack
//#define BATTERY_LI_ION_CELLS_NUMBER	13 // 13S = 48V battery pack

#define ADC_BATTERY_CURRENT_MAX		10 // each unit = 0.35A
#define ADC_BATTERY_REGEN_CURRENT_MAX	5 // CAN'T be more than 66 units!! each unit = 0.35A
// *************************************************************************** //

// *************************************************************************** //
// MOTOR CONTROLLER

// Choose your controller max current and max regen current
//
// S06S controller holds 15 amps as max current
#define ADC_MOTOR_CURRENT_MAX		60 // each unit = 0.25A; 60 = 15A | measured (on S06S) that ADC_MOTOR_CURRENT_MAX = 60 is almost equal to peak 15 amps of phase B current
#define ADC_MOTOR_REGEN_CURRENT_MAX	30 // CAN'T be more than 66 units!! each unit = 0.25A; 30 = 7.5A but the brake/regen must be only for a few seconds!!

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
// This value must be found experimenting. Motor should rotate forward and have a good torque,
// a value to much higher or lower will make the motor not having torque while the motor starting up.
// This value can be tested with motor blocked, at startup, to found a value where is does have the best torque at startup
// A value of MOTOR_ROTOR_OFFSET_ANGLE = 202 was found to be a good one for BMSBattery Q85 motor with S06S controller
#define MOTOR_ROTOR_OFFSET_ANGLE 202

// This value at 127 is the default but a value a bit higher or lower my improve the controller efficiency
// This value can be tested with motor running at medium speed, where it is already running with sinewave interpolation (not at startup)
// A way to test: put the motor with the same mechanical load (like on a bike training roller) and with a constant speed
// changing this value will make the motor to need more or less current to mantain the same speed -- adjust to use the least current possible
// A value of FOC_READ_ID_CURRENT_ANGLE_ADJUST = 137 was found to be a good one for BMSBattery Q85 motor with S06S controller
#define FOC_READ_ID_CURRENT_ANGLE_ADJUST 137

// This value is ERPS speed after which a transition happens from sinewave no interpolation to have
// interpolation 60 degrees and must be found experimentally but a value of 40 may be good
#define MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES 15

// For some motors with not very well placed mosfets at 120 degrees between each of them. May be easier to keep this option disabled
//#define DO_SINEWAVE_INTERPOLATION_360_DEGREES
// *************************************************************************** //

#endif /* CONFIG_H_ */
