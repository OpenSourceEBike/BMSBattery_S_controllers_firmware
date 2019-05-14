/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _MAIN_H_
#define _MAIN_H_

#define SVM_VIRTUAL_TABLE_LEN 65 // 256/4 +1, we need only one quarter
#define SVM_TABLE_LEN_x1024 262144 //(256 * 1024)


#define SETPOINT_MAX_VALUE 255		//maximum value for setpoint, taken from map function
#define ADC_MOTOR_TOTAL_CURRENT_ZERO_AMPS 81 // 1.59V; 325 (10bits) = 81 (8bits)
#define ADC_MOTOR_TOTAL_CURRENT_MAX 20 // 20 (8bits) ~ 2 Amps
#define ADC_MOTOR_TOTAL_CURRENT_MAX_POSITIVE 90 // +2A
#define ADC_MOTOR_TOTAL_CURRENT_MAX_NEGATIVE 70 // +2A
#define MORSE_TOLERANCE 40 // Tolerance for "morse" code detection


#define PWM_CYCLES_COUNTER_MAX 3000 // higher values assume motor is at standstill.
#define PWM_CPS_NORMAL_SPEED 15625L
#define PWM_CPS_HIGH_SPEED 20833L

// 2 seconds to get up to max PWM duty cycle value of 255 (127 * 255 * 64us ~= 2 seconds)
#define PWM_DUTY_CYCLE_CONTROLLER_COUNTER 127

#define SPEED_INVERSE_INTERPOLATION 350 // experimental value; min speed aftwer which interpolation starts

#define PWM_VALUE_DUTY_CYCLE_MAX (256 - 1)
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)


extern uint16_t ui16_log1;
extern uint16_t ui16_log2;
extern uint8_t ui8_log;
extern uint8_t ui8_slowloop_flag;	//Flag for slow loop timing


uint8_t update_advance_angle();
#endif
