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


#define SETPOINT_MAX_VALUE 255		//maximum value for setpoint, taken from map function
#define ADC_MOTOR_TOTAL_CURRENT_ZERO_AMPS 81 // 1.59V; 325 (10bits) = 81 (8bits)
#define ADC_MOTOR_TOTAL_CURRENT_MAX 20 // 20 (8bits) ~ 2 Amps
#define ADC_MOTOR_TOTAL_CURRENT_MAX_POSITIVE 90 // +2A
#define ADC_MOTOR_TOTAL_CURRENT_MAX_NEGATIVE 70 // +2A
#define CHEAT_TOLERANCE 40 // Tolerance for "morse" code detection

//for Kunteng Displays
#define COMMUNICATIONS_BATTERY_VOLTAGE	(BATTERY_LI_ION_CELLS_NUMBER * 3.45) // example: 7S battery, should be = 24

// Considering the follow voltage values for each li-ion battery cell
// State of charge 		| voltage
#define LI_ION_CELL_VOLTS_MAX 	4.20
#define LI_ION_CELL_VOLTS_100 	4.20
#define LI_ION_CELL_VOLTS_80 	4.02
#define LI_ION_CELL_VOLTS_60 	3.87
#define LI_ION_CELL_VOLTS_40 	3.80
#define LI_ION_CELL_VOLTS_20 	3.73
#define LI_ION_CELL_VOLTS_0 	3.27
#define LI_ION_CELL_VOLTS_MIN 	3.10

#define BATTERY_PACK_VOLTS_100	(LI_ION_CELL_VOLTS_100 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_80 	(LI_ION_CELL_VOLTS_80 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_60	(LI_ION_CELL_VOLTS_60 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_40	(LI_ION_CELL_VOLTS_40 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_20	(LI_ION_CELL_VOLTS_20 * BATTERY_LI_ION_CELLS_NUMBER) * 256
#define BATTERY_PACK_VOLTS_0	(LI_ION_CELL_VOLTS_0 * BATTERY_LI_ION_CELLS_NUMBER) * 256

#define ADC_BATTERY_VOLTAGE_K 73 // 0.272 << 8

// Phase current: max of +-15.5 amps
// 512 --> 15.5 amps
// 1 ADC increment --> 0.030A
// 1 ADC RMS --> 0.03 * 0.707 -- > 0.021A
#define ADC_PHASE_B_CURRENT_STEP 21 // 0.021 * 1000 = 21
#define ADC_PHASE_B_CURRENT_FACTOR_MA 21 // 0,030273437 * 1000 * 0.707

#if MOTOR_TYPE == MOTOR_TYPE_Q85
//#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 77// best value found (at max speed, minimum current and power supply voltage keeps the same)
//#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 214// value for ui8_position_correction_value = 0 initially @ shenyi middrive motor
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
#define MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT 92 // best value found
#endif

#define PWM_CYCLES_COUNTER_MAX 3000 // bei höheren Werten wird angenommen, der Motor steht.


// 2 seconds to get up to max PWM duty cycle value of 255 (127 * 255 * 64us ~= 2 seconds)
#define PWM_DUTY_CYCLE_CONTROLLER_COUNTER 127

#define SPEED_INVERSE_INTERPOLATION 350 // experimental value; min speed aftwer which interpolation starts

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
extern uint16_t ui16_SPEED; 		//Speed duration of one wheel revolution (tics * 64us)
extern uint16_t ui16_PAS_Counter;	//Counter for cadence
extern uint16_t ui16_PAS_High_Counter;
extern uint8_t ui8_PAS_Flag;		//Flag for PAS Interrupt detected
extern uint8_t ui8_SPEED_Flag;		//Flag for PAS Interrupt detected
extern uint8_t ui8_slowloop_flag;	//Flag for slow loop timing
extern uint8_t ui8_assistlevel_global;
extern uint8_t ui8_msg_received;
extern uint8_t ui8_cheat_state;
extern uint8_t PAS_dir;			//flag for pasdirection

uint8_t update_advance_angle();
#endif
