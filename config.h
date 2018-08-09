/*
 * config.h
 *
 *  Automatically created by OSEC Parameter Configurator
 *  Author: stancecoke
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#define NUMBER_OF_PAS_MAGS 16
#define limit 26
#define timeout 3125
#define wheel_circumference 2200L
#define fummelfaktor 32L
#define ADC_THROTTLE_MIN_VALUE 43
#define ADC_THROTTLE_MAX_VALUE 182
#define BATTERY_VOLTAGE_MIN_VALUE 111
#define BATTERY_CURRENT_MAX_VALUE 411L
#define PHASE_CURRENT_MAX_VALUE 511L
#define REGEN_CURRENT_MAX_VALUE 251L
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 238
#define current_cal_a 10
#define TEMP_CAL_A 1.6
#define TEMP_CAL_B -110.4
#define LEVEL_1 20
#define LEVEL_2 40
#define LEVEL_3 60
#define LEVEL_4 80
#define LEVEL_5 100
#define CHEAT_TIME_1 50
#define CHEAT_TIME_2 50
#define CHEAT_TIME_3 50
#define RAMP_END 977
#define P_FACTOR 0.5
#define I_FACTOR 0.1
#define GEAR_RATIO 12L
#define BATTERY_LI_ION_CELLS_NUMBER 10
#define PAS_THRESHOLD 1.7
#define THROTTLE
#define PWM_CYCLES_SECOND 15625L
//#define DISPLAY_TYPE_KT_LCD3
//#define DISPLAY_TYPE_KINGMETER_618U (1<<4) // King-Meter 618U protocol (KM5s, EBS-LCD2, J-LCD, SW-LCD)
//#define DISPLAY_TYPE_KINGMETER (DISPLAY_TYPE_KINGMETER_618U|DISPLAY_TYPE_KINGMETER_901U)
//#define DISPLAY_TYPE DISPLAY_TYPE_KINGMETER  // Set your display type here. CHANGES ONLY HERE!
#define SPEEDSENSOR_INTERNAL
//#define DIAGNOSTICS
#define REGEN_DIGITAL
#define PAS_DIRECTION 1

#endif /* CONFIG_H_ */
