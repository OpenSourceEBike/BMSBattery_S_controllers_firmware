/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _PWM_H
#define _PWM_H

#include "main.h"
#include "interrupts.h"

#define SVM 1
#define SINE_SVM 2
#define SINE 3

#define SVM_TABLE SVM

extern uint8_t ui8_svm_table [SVM_TABLE_LEN];

void pwm_init (void);
void pwm_duty_cycle_controller (void);
void pwm_set_duty_cycle (uint8_t value);
void pwm_apply_duty_cycle (uint8_t ui8_duty_cycle_value);

void pwm_phase_a_enable (void);
void pwm_phase_a_disable (void);
void pwm_phase_a_enable_pwm (void);
void pwm_phase_a_enable_low (void);
void pwm_phase_b_enable (void);
void pwm_phase_b_disable (void);
void pwm_phase_b_enable_pwm (void);
void pwm_phase_b_enable_low (void);
void pwm_phase_c_enable (void);
void pwm_phase_c_disable (void);
void pwm_phase_c_enable_pwm (void);
void pwm_phase_c_enable_low (void);

#endif /* _PWM_H_ */
