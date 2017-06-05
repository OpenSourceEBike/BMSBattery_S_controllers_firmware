/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MAIN_H_
#define _MAIN_H_

#define Q85 1
#define MOTOR_TYPE Q85

#define SVM_TABLE_LEN 256
#define SVM_TABLE_LEN_x1024 262144 //(256 * 1024)

#define ADC_THROTTLE_MIN_VALUE 175
#define ADC_THROTTLE_MAX_VALUE 730

#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 42 // 64 to much?
#define PWM_CYCLES_COUNTER_MAX 2560000 //256*10000

#define PWM_VALUE_DUTY_CYCLE_MAX (256 - 1)
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)

#define ANGLE_30 21 //(360/256) / 300
#define ANGLE_90 64
#define ANGLE_150 107
#define ANGLE_210 149
#define ANGLE_270 192
#define ANGLE_330 235

#define ANGLE_60 43

#endif
