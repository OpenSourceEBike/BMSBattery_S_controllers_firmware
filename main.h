/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MAIN_H_
#define _MAIN_H_

//#define DEBUG_UART

#define CONTROLLER_TYPE_S06S 1
#define CONTROLLER_TYPE_S12S 2

#define CONTROLLER_TYPE CONTROLLER_TYPE_S12S


#define MOTOR_TYPE_Q85 1
#define MOTOR_TYPE_Q100 3
#define MOTOR_TYPE_EUC2 2

#define MOTOR_TYPE MOTOR_TYPE_Q85

// MOTOR_TYPE_EUC2
// 28V --> 66 ERPs
// 0.424 for each ERPs
#if (MOTOR_TYPE == MOTOR_TYPE_Q85) || (MOTOR_TYPE == MOTOR_TYPE_Q100)
#define MOTOR_KVOLTS_PER_ERPS 73 //Q85 motor
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
#define MOTOR_KVOLTS_PER_ERPS 107 //0.424 << 8 EUC2 motor
#endif

#if CONTROLLER_TYPE == CONTROLLER_TYPE_S06S
#define ADC_MOTOR_CURRENT_MAX_MED_VALUE_10B 10144 // ADC_MOTOR_CURRENT_MAX_ZERO_VALUE_10B << 5
#define ADC_MOTOR_CURRENT_MAX 15 // 30 = 15A; 1 --> 0.5A
#define ADC_MOTOR_CURRENT_MAX_10B 60 // 120 = 15A; 1 --> 0.125A
#define ADC_MOTOR_REGEN_CURRENT_MAX 4 	// 1 --> 0.5A
#elif CONTROLLER_TYPE == CONTROLLER_TYPE_S12S
#define ADC_MOTOR_CURRENT_MAX_MED_VALUE_10B 10144 // ADC_MOTOR_CURRENT_MAX_ZERO_VALUE_10B << 5
#define ADC_MOTOR_CURRENT_MAX 50 // 50 = 25A; 1 --> 0.5A
#define ADC_MOTOR_CURRENT_MAX_10B 200 // 200 = 25A; 1 --> 0.125A
#define ADC_MOTOR_REGEN_CURRENT_MAX 4 	// 1 --> 0.5A
#endif

#if CONTROLLER_TYPE == CONTROLLER_TYPE_S06S
#define PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP 50
#define PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP 30
#elif CONTROLLER_TYPE == CONTROLLER_TYPE_S12S
#define PWM_DUTY_CYCLE_RAMP_UP_INVERSE_STEP 100
#define PWM_DUTY_CYCLE_RAMP_DOWN_INVERSE_STEP 30
#endif

// Phase current: max of +-15.5 amps
// 512 --> 15.5 amps
// 1 ADC increment --> 0.030A
// RMS value --> max value * 0.707
#define ADC_PHASE_B_CURRENT_FACTOR 333 // 0.1 / 0.030A * 0.707 = 3.3

#if (MOTOR_TYPE == MOTOR_TYPE_Q85) || (MOTOR_TYPE == MOTOR_TYPE_Q100)
// This value must be found experimenting. Motor should rotate forward and have a good torque,
// a value to much higher or lower will make the motor not having torque while the motor starting up.
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 80

// This value is ERPS speed after which a transition happens from sinewave no interpolation to have
// interpolation 60 degrees and must be found experimentally but a value of 40 may be good
#define MOTOR_ROTOR_ERPS_START_INTERPOLATION_60_DEGREES 40
// This value is needed for correct transition to sinewave interpolation and must be found experimentally
// but may be something like: MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT + 127(180 degrees) + 32(45 degrees)
#define MOTOR_ROTOR_PHASE_ANGLE_INTERPOLATION 239

// For some motors with not very well placed mosfets at 120 degrees between each of them. May be easier to keep disable this option
//#define DO_SINEWAVE_INTERPOLATION_360_DEGREES
#ifdef DO_SINEWAVE_INTERPOLATION_360_DEGREES
// This value is ERPS speed after which a transition happens from sinewave 60 degrees to have
// interpolation 360 degrees and must be found experimentally but a value of 100 may be good
#define MOTOR_ROTOR_ERPS_START_INTERPOLATION_360_DEGREES 100
#endif
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
#endif

#if MOTOR_TYPE == MOTOR_TYPE_Q85
#define PWM_CYCLES_COUNTER_MAX 3125 // 5 erps minimum speed; 1/5 = 200ms; 200ms/64us = 3125
#elif MOTOR_TYPE == MOTOR_TYPE_Q100
//#define PWM_CYCLES_COUNTER_MAX 520 // 30 erps minimum speed; 1/5 = 200ms; 200ms/64us = 3125
#define PWM_CYCLES_COUNTER_MAX 1041 // 15 erps minimum speed
#endif


#define PWM_CYCLES_SECOND 15625L // 1 / 64us(PWM period)

#define SPEED_INVERSE_INTERPOLATION 625 // experimental value; min speed aftwer which interpolation starts

#define PWM_VALUE_DUTY_CYCLE_MAX 245
#define PWM_VALUE_DUTY_CYCLE_MIN 20
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)

#define ANGLE_1 0 //(360/256) / 300
#define ANGLE_60 42
#define ANGLE_120 85
#define ANGLE_180 127
#define ANGLE_240 170
#define ANGLE_300 212
#define ANGLE_360 255

#define MOTOR_OVER_SPEED_ERPS 520 // motor max speed, protection max value | 30 points for the sinewave at max speed

#if CONTROLLER_TYPE == CONTROLLER_TYPE_S06S
#define MOTOR_SPEED_CONTROLLER_KP 2 // x << 5
#elif CONTROLLER_TYPE == CONTROLLER_TYPE_S12S
#define MOTOR_SPEED_CONTROLLER_KP 1 // x << 5
#endif
#define MOTOR_SPEED_CONTROLLER_OUTPUT_MAX 8160 // PWM max duty_cycle << 5

#define MOTOR_CURRENT_CONTROLLER_KP 10
#define MOTOR_CURRENT_CONTROLLER_OUTPUT_MAX 16320

#define MOTOR_PWM_TICKS_PER_MS 16

#define ADC_THROTTLE_MIN_VALUE 45
#define ADC_THROTTLE_MAX_VALUE 182
#define ADC_THROTTLE_MIN_VALUE_ERROR 35
#define ADC_THROTTLE_MAX_VALUE_ERROR 192
#define CRUISE_CONTROL_MIN_VALUE (ADC_THROTTLE_MIN_VALUE + 25)


// *************************************************************************** //
// EEPROM memory variables default values

#define DEFAULT_VALUE_ASSIST_LEVEL 		2
#define DEFAULT_VALUE_MOTOR_CHARACTARISTIC 	202 // for Q85 motor (12.6 * 16)
#define DEFAULT_VALUE_WHEEL_SIZE	 	20 // 26''
#define DEFAULT_VALUE_MAX_SPEED	 		25
#define DEFAULT_VALUE_POWER_ASSIST_CONTROL_MODE 1
#define DEFAULT_VALUE_CONTROLLER_MAX_CURRENT	10

// *************************************************************************** //
// BATTERY

#define BATTERY_LI_ION_CELLS_NUMB	ER 7 // 7S = 24V battery pack
//#define BATTERY_LI_ION_CELLS_NUMBER 10 // 10S = 36V battery pack
//#define BATTERY_LI_ION_CELLS_NUMBER 13 // 13S = 48V battery pack

// ADC Battery voltage
// 29.8V --> 110 (8bits ADC)
// 22.1V --> 81 (8bits ADC)
// 1 ADC step 8 bits --> 0.287 volts
#define ADC_BATTERY_VOLTAGE_K 73 // 0.272 << 8

#if BATTERY_LI_ION_CELLS_NUMBER == 7
#define COMMUNICATIONS_BATTERY_VOLTAGE 24
#define BATTERY_VOLTAGE_MAX_VALUE 108 // 29.4V (7S * 4.2V)
#define BATTERY_VOLTAGE_MED_VALUE 5632 // 24V: 88 << 6
#define BATTERY_VOLTAGE_MIN_VALUE 77 // 29.4V <(7S * 3.0V)
#elif BATTERY_LI_ION_CELLS_NUMBER == 10
#define COMMUNICATIONS_BATTERY_VOLTAGE 36
#define BATTERY_VOLTAGE_MAX_VALUE 162
#define BATTERY_VOLTAGE_MED_VALUE 8448
#define BATTERY_VOLTAGE_MIN_VALUE 115
#elif BATTERY_LI_ION_CELLS_NUMBER == 13
#define COMMUNICATIONS_BATTERY_VOLTAGE 48
#define BATTERY_VOLTAGE_MAX_VALUE 216
#define BATTERY_VOLTAGE_MED_VALUE 11264
#define BATTERY_VOLTAGE_MIN_VALUE 154
#endif

//#define BATTERY_OVER_VOLTAGE_PROTECTION

// Considering the follow voltage values for each li-ion battery cell
// State of charge 		| voltage
#define LI_ION_CELL_VOLTS_MAX 	4.2
#define LI_ION_CELL_VOLTS_100 	4.05
#define LI_ION_CELL_VOLTS_80 	3.93
#define LI_ION_CELL_VOLTS_60 	3.78
#define LI_ION_CELL_VOLTS_40 	3.60
#define LI_ION_CELL_VOLTS_20 	3.38
#define LI_ION_CELL_VOLTS_0 	3.20
#define LI_ION_CELL_VOLTS_MIN 	3.0


#define BATTERY_PACK_VOLTS_100	(LI_ION_CELL_VOLTS_100 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_80 	(LI_ION_CELL_VOLTS_80 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_60	(LI_ION_CELL_VOLTS_60 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_40	(LI_ION_CELL_VOLTS_40 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_20	(LI_ION_CELL_VOLTS_20 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_0	(LI_ION_CELL_VOLTS_0 * BATTERY_LI_ION_CELLS_NUMBER) * 256

#endif
