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

#define MOTOR_TYPE MOTOR_TYPE_EUC2


// MOTOR_TYPE_EUC2
// 28V --> 66 ERPs
// 0.424 for each ERPs
#define MOTOR_KVOLTS_PER_ERPS 107 //0.424 << 8 EUC2 motor
//#define MOTOR_KVOLTS_PER_ERPS 73 //Q85 motor

#define SVM_TABLE_LEN 256
#define SVM_TABLE_LEN_x1024 262144 //(256 * 1024)

#define SETPOINT_MAX_VALUE 237		//maximum value for setpoint, taken from map function

#define NUMBER_OF_PAS_MAGS 16 //16 for sensor from BMSBattery, 32 for Sempu-Sensor

// each 80mv on motor total current = 1A
// at 8 bits ADC, 1A = 16
#define ADC_MOTOR_TOTAL_CURRENT_ZERO_AMPS 81 // 1.59V; 325 (10bits) = 81 (8bits)
#define ADC_MOTOR_TOTAL_CURRENT_MAX 32 // 32 (8bits) ~ 2 Amps
#define ADC_MOTOR_TOTAL_CURRENT_MAX_POSITIVE 5 // 1 --> 0.5A
#define ADC_MOTOR_TOTAL_CURRENT_MIN_NEGATIVE 1//76 // -2A

// ADC Battery voltage
// 29.8V --> 110 (8bits ADC)
// 22.1V --> 81 (8bits ADC)
// 1 ADC step 8 bits --> 0.272 volts
#define ADC_BATTERY_VOLTAGE_K 70 // 0.272 << 8

// Phase current: max of +-15.5 amps
// 512 --> 15.5 amps
// 1 ADC increment --> 0.030A
// RMS value --> max value * 0.707
#define ADC_PHASE_B_CURRENT_FACTOR 333 // 0.1 / 0.030A * 0.707 = 3.3

#if MOTOR_TYPE == MOTOR_TYPE_Q85
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 210// best value found (at max speed, minimum current and power supply voltage keeps the same)
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
//#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 235 // best value found
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 235 // best value found
#endif

#define PWM_CYCLES_COUNTER_MAX 4000 // bei h�heren Werten wird angenommen, der Motor steht.
#define PWM_CYCLES_SECOND 15625L // 1 / 64us(PWM period)

// 2 seconds to get up to max PWM duty cycle value of 255 (127 * 255 * 64us ~= 2 seconds)
//#define PWM_DUTY_CYCLE_CONTROLLER_COUNTER 127
#define PWM_DUTY_CYCLE_CONTROLLER_COUNTER 2

#define SPEED_INVERSE_INTERPOLATION 625 // experimental value; min speed aftwer which interpolation starts

#define PWM_VALUE_DUTY_CYCLE_MAX (256 - 1)
#define MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX (PWM_VALUE_DUTY_CYCLE_MAX/2)

#define ANGLE_1 0 //(360/256) / 300
#define ANGLE_60 42
#define ANGLE_120 85
#define ANGLE_180 127
#define ANGLE_240 170
#define ANGLE_300 212
#define ANGLE_360 255

extern uint16_t ui16_log1;
extern uint16_t ui16_log2;
extern uint8_t ui8_log;
extern uint8_t ui8_adc_read_throttle_busy;
extern uint16_t ui16_SPEED_Counter; 	//Counter for bike speed
extern uint16_t ui16_PAS_Counter;	//Counter for cadence
extern uint8_t ui8_PAS_Flag;		//Flag for PAS Interrupt detected
extern uint8_t ui8_SPEED_Flag;		//Flag for PAS Interrupt detected


#endif
