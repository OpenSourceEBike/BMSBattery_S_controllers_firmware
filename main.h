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

#define ADC_THROTTLE_MIN_VALUE 175
#define ADC_THROTTLE_MAX_VALUE 730

#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 0
#define PWM_CYCLES_COUNTER_MAX 20000

#define PWM_VALUE_DUTY_CYCLE_MAX (256 - 1)
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)

#define ANGLE_STEP_256_x1000 (360 * 1000)/256

#endif
