/*
 * config.h
 *
 *  Automatically created by OSEC Parameter Configurator
 *  Author: stancecoke
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#define NUMBER_OF_PAS_MAGS 48
#define limit 25
#define timeout 3125
#define wheel_circumference 2040L
#define limit_without_pas 6
#define ADC_THROTTLE_MIN_VALUE 72
#define ADC_THROTTLE_MAX_VALUE 172
#define BATTERY_VOLTAGE_MIN_VALUE 148
#define BATTERY_CURRENT_MAX_VALUE 150L
#define PHASE_CURRENT_MAX_VALUE 500L
#define REGEN_CURRENT_MAX_VALUE 0L
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 237
#define current_cal_a 76
#define TEMP_CAL_A 1.6
#define TEMP_CAL_B -110.4
#define LEVEL_1 50
#define LEVEL_2 62
#define LEVEL_3 74
#define LEVEL_4 87
#define LEVEL_5 100
#define MORSE_TIME_1 50
#define MORSE_TIME_2 50
#define MORSE_TIME_3 50
#define RAMP_END 0
#define P_FACTOR 0.5
#define I_FACTOR 0.1
#define GEAR_RATIO 106L
#define BATTERY_LI_ION_CELLS_NUMBER 12
#define PAS_THRESHOLD 1.9
#define RAMP_START 0
#define limit_with_throttle_override 40
#define CORRECTION_AT_ANGLE 127
#define PWM_CYCLES_SECOND 15625L
#define DISPLAY_TYPE_KT_LCD3
#define ANGLE_4_0 1
#define ANGLE_6_60 43
#define ANGLE_2_120 86
#define ANGLE_3_180 128
#define ANGLE_1_240 171
#define ANGLE_5_300 213
#define TQS_CALIB 1500.0
#define ACA 6817
#define EEPROM_NOINIT // eeprom will not be cleared
#define EEPROM_INIT_MAGIC_BYTE 167 // makes sure (chance of fail 1/255) eeprom is invalidated after flashing new config
#define ADC_BATTERY_VOLTAGE_K 69
#define ACA_EXPERIMENTAL 128
#define BATTERY_VOLTAGE_MAX_VALUE 208

#endif /* CONFIG_H_ */
