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

#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT ANGLE_60
#define PWM_CYCLES_COUNTER_MAX (256 * 10000)

#define PWM_VALUE_DUTY_CYCLE_MAX (256 - 1)
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)

#define ANGLE_STEP_256_x1000 (256 * 1000)/360

#define ANGLE_0 0 //(ANGLE_STEP_256_x1000 * 60 * 0) / 1000
#define ANGLE_60 42 //(ANGLE_STEP_256_x1000 * 60 * 1) / 1000
#define ANGLE_120 85 //	(ANGLE_STEP_256_x1000 * 60 * 2) / 1000
#define ANGLE_180 128 //(ANGLE_STEP_256_x1000 * 60 * 3) / 1000
#define ANGLE_240 170 //(ANGLE_STEP_256_x1000 * 60 * 4) / 1000
#define ANGLE_300 213 //(ANGLE_STEP_256_x1000 * 60 * 5) / 1000

#define ANGLE_60_x1024 43008//(ANGLE_60*10)

#endif
