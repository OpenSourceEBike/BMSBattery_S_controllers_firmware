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

#define SVM_TABLE SVM

extern uint8_t ui8_svm_table [SVM_TABLE_LEN];
extern uint8_t ui8_duty_cycle_target;
extern uint8_t ui8_duty_cycle;
extern uint8_t ui8_duty_cycle_ramp_inverse_step;

void pwm_init_6_steps (void);
void pwm_phase_a_disable (uint8_t _duty_cycle_value);
void pwm_phase_a_enable_pwm (uint8_t _duty_cycle_value);
void pwm_phase_a_enable_low (uint8_t _duty_cycle_value);
void pwm_phase_b_disable (uint8_t _duty_cycle_value);
void pwm_phase_b_enable_pwm (uint8_t _duty_cycle_value);
void pwm_phase_b_enable_low (uint8_t _duty_cycle_value);
void pwm_phase_c_disable (uint8_t _duty_cycle_value);
void pwm_phase_c_enable_pwm (uint8_t _duty_cycle_value);
void pwm_phase_c_enable_low (uint8_t _duty_cycle_value);

void pwm_init_bipolar_4q (void);
void pwm_duty_cycle_controller (void);
void pwm_set_duty_cycle_target (uint8_t value);
void pwm_apply_duty_cycle (uint8_t ui8_duty_cycle_value);

#endif /* _PWM_H_ */
