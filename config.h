/*
 * config.h
 *
 *  Automatically created by OSEC Parameter Configurator
 *  Author: stancecoke
 */

#ifndef CONFIG_H_
#define CONFIG_H_

#define limit 20
#define timeout 3125
#define wheel_circumference 2000L
#define fummelfaktor 64L
#define ADC_THROTTLE_MIN_VALUE 43
#define ADC_THROTTLE_MAX_VALUE 182
#define BATTERY_VOLTAGE_MIN_VALUE 80
#define BATTERY_CURRENT_MAX_VALUE 343
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT -4
#define current_cal_a 10
#define current_cal_b -312
#define THROTTLE

#define DISPLAY_TYPE_KINGMETER_618U (1<<4)                  // King-Meter 618U protocol (KM5s, EBS-LCD2, J-LCD, SW-LCD)
#define DISPLAY_TYPE_KINGMETER      (DISPLAY_TYPE_KINGMETER_618U|DISPLAY_TYPE_KINGMETER_901U)

#define DISPLAY_TYPE DISPLAY_TYPE_KINGMETER                // Set your display type here. CHANGES ONLY HERE!

#endif /* CONFIG_H_ */
