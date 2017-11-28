/*
 * config.h
 *
 *  Automatically created by OSEC Parameter Configurator
 *  Author: stancecoke
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#define NUMBER_OF_PAS_MAGS 16
#define limit 25L
#define timeout 3125
#define wheel_circumference 2000L
#define fummelfaktor 64L
#define ADC_THROTTLE_MIN_VALUE 43
#define ADC_THROTTLE_MAX_VALUE 182
#define BATTERY_VOLTAGE_MIN_VALUE 127
#define BATTERY_CURRENT_MAX_VALUE 372L
#define REGEN_CURRENT_MAX_VALUE 282L
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 214
#define current_cal_a 10
#define current_cal_b -312L
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
#define I_FACTOR 0.2
#define GEAR_RATIO 64L
#define THROTTLE
#define DISPLAY_TYPE_KINGMETER_618U (1<<4) // King-Meter 618U protocol (KM5s, EBS-LCD2, J-LCD, SW-LCD)
#define DISPLAY_TYPE_KINGMETER (DISPLAY_TYPE_KINGMETER_618U|DISPLAY_TYPE_KINGMETER_901U)
#define DISPLAY_TYPE DISPLAY_TYPE_KINGMETER  // Set your display type here. CHANGES ONLY HERE!

#endif /* CONFIG_H_ */
