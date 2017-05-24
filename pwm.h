/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _PWM_H_
#define _PWM_H_

void pwm_init (void);
void pwm_set_duty_cycle_channel1(uint16_t value);
void pwm_set_duty_cycle_channel2(uint16_t value);
void pwm_set_duty_cycle_channel3(uint16_t value);

#endif
