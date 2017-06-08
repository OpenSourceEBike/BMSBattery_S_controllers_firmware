/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MAIN_H_
#define _MAIN_H_

#define MOTOR_TYPE_Q85 1
#define MOTOR_TYPE_EUC2 2

#define MOTOR_TYPE MOTOR_TYPE_Q85

#define SVM_TABLE_LEN 256
#define SVM_TABLE_LEN_x1024 262144 //(256 * 1024)

#define ADC_THROTTLE_MIN_VALUE 43//175
#define ADC_THROTTLE_MAX_VALUE 182//730

#if MOTOR_TYPE == MOTOR_TYPE_Q85
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT ANGLE_60// best value found
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT ANGLE_90 // best value found
#endif

#define PWM_CYCLES_COUNTER_MAX 2560000 //256*10000

#define PWM_VALUE_DUTY_CYCLE_MAX (256 - 1)
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)

#define ANGLE_30 21 //(360/256) / 300
#define ANGLE_90 64
#define ANGLE_150 107
#define ANGLE_210 149
#define ANGLE_270 192
#define ANGLE_330 235

#define ANGLE_30 21
#define ANGLE_45 32
#define ANGLE_60 43

#endif
