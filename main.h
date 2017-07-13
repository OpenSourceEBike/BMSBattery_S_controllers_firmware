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

#define ADC_MOTOR_TOTAL_CURRENT_ZERO_AMPS 81 // 1.59V; 325 (10bits) = 81 (8bits)
#define ADC_MOTOR_TOTAL_CURRENT_MAX 20 // 20 (8bits) ~ 2 Amps
#define ADC_MOTOR_TOTAL_CURRENT_MAX_POSITIVE 90 // +2A
#define ADC_MOTOR_TOTAL_CURRENT_MAX_NEGATIVE 70 // +2A

// Phase current: max of +-15.5 amps
// 512 --> 15.5 amps
// 1 ADC increment --> 0.030A
// 1 ADC RMS --> 0.03 * 0.707 -- > 0.021A
#define ADC_PHASE_B_CURRENT_STEP 21 // 0.021 * 1000 = 21

#if MOTOR_TYPE == MOTOR_TYPE_Q85
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 56//46// best value found (at max speed, minimum current and power supply voltage keeps the same)
//#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 56//46// best value found (at max speed, minimum current and power supply voltage keeps the same)
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 71 // best value found
#endif

#define PWM_CYCLES_COUNTER_MAX 625

#define PWM_CYCLES_SECOND 15625 // 1 / 64us(PWM period)

#define SPEED_INVERSE_INTERPOLATION 250

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
#define ANGLE_360 255

#endif
