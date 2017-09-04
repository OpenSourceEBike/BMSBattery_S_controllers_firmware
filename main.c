/*
 * BMSBattery S series motor controllers firmware
 *
 * Copyright (C) Casainho, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s.h"
#include "gpio.h"
#include "stm8s_itc.h"
#include "stm8s_gpio.h"
#include "interrupts.h"
#include "stm8s_tim2.h"
#include "motor.h"
#include "uart.h"
#include "adc.h"
#include "brake.h"
#include "utils.h"
#include "cruise_control.h"
#include "timers.h"
#include "pwm.h"
#include "PAS.h"
#include "SPEED.h"
#include "update_setpoint.h"
#include "config.h"


//uint16_t ui16_LPF_angle_adjust = 0;
//uint16_t ui16_LPF_angle_adjust_temp = 0;

uint16_t ui16_log1 = 0;
uint16_t ui16_log2 = 0;
uint8_t ui8_log = 0;
uint8_t ui8_i= 0; 				//counter for ... next loop
uint16_t ui16_torque[NUMBER_OF_PAS_MAGS]; 	//array for torque values of one crank revolution
uint16_t ui16_sum_torque = 0; 			//sum of array elements
uint8_t ui8_torque_index=0 ; 			//counter for torque array
uint8_t a = 0; 					//loop counter

static uint16_t ui16_throttle_counter = 0;
uint16_t ui16_temp_delay = 0;




uint8_t ui8_adc_read_throttle_busy = 0;
uint16_t ui16_SPEED_Counter = 0; 	//time tics for speed measurement
uint16_t ui16_SPEED = 32000; 		//speed in timetics
uint16_t ui16_PAS_Counter = 0; 		//time tics for cadence measurement
uint16_t ui16_PAS = 32000;		//cadence in timetics
uint8_t ui8_PAS_Flag = 0; 		//flag for PAS interrupt
uint8_t ui8_SPEED_Flag = 0; 		//flag for SPEED interrupt

/////////////////////////////////////////////////////////////////////////////////////////////
//// Functions prototypes

// main -- start of firmware and main loop
int main (void);

//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt

// Local VS global variables
// Sometimes I got the following error when compiling the firmware: motor.asm:750: Error: <r> relocation error
// and the solution was to avoid using local variables and define them as global instead

// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);
// Speed signal interrupt
void EXTI_PORTC_IRQHandler(void) __interrupt(EXTI_PORTC_IRQHANDLER);
// PAS signal interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER);

// Timer1/PWM period interrupt
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER);

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

int main (void)
{
//  static uint32_t ui32_cruise_counter = 0;
//  static uint8_t ui8_cruise_duty_cycle = 0;
  static uint16_t ui16_setpoint = ADC_THROTTLE_MIN_VALUE;
  static uint8_t ui8_temp = 0;
  static uint16_t ui16_adc_value;


  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  debug_pin_init ();
  timer2_init ();
  uart_init ();
  pwm_init ();
  hall_sensor_init ();
  adc_init ();
  PAS_init();
  SPEED_init();

//  ITC_SetSoftwarePriority (ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_2);

  enableInterrupts();
#if (SVM_TABLE == SVM)
  TIM1_SetCompare1(126 << 1);
  TIM1_SetCompare2(126 << 1);
  TIM1_SetCompare3(126 << 1);
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
  TIM1_SetCompare1(126 << 2);
  TIM1_SetCompare2(126 << 2);
  TIM1_SetCompare3(126 << 2);
#endif

  hall_sensors_read_and_action (); // needed to start the motor
printf("Back in Main.c\n");

  for(a = 0; a < NUMBER_OF_PAS_MAGS;a++) {// array init
   ui16_torque[a]=0;
  }
printf("Torquearray initialized\n");
  while (1)
  {
    static uint32_t ui32_counter = 0;
    uint16_t ui16_temp = 0;
    uint16_t ui32_temp = 0;
    static float f_temp = 0;

    // Update speed after speed interrupt occurrence
    if (ui8_SPEED_Flag == 1)
    {
	ui16_SPEED=ui16_SPEED_Counter; 	//save recent speed
	ui16_SPEED_Counter=0;		//reset speed counter
	ui8_SPEED_Flag =0; 			//reset interrupt flag
	//printf("SPEEDtic\n");
    }


#ifdef TORQUESENSOR
    //	Update cadence and torque after PAS interrupt occurrence
    if (ui8_PAS_Flag == 1)
    {
      ui16_PAS=ui16_PAS_Counter; 		//save recent cadence
      //printf("PAStic %d\n", ui16_PAS_Counter);
      ui16_PAS_Counter=0;			//reset PAS Counter

      ui8_PAS_Flag =0; 			//reset interrupt flag

      ui8_adc_read_throttle_busy = 1;
      ui8_temp = adc_read_throttle (); //read in recent torque value
      ui8_adc_read_throttle_busy = 0;
      ui16_torque[ui8_torque_index]= (uint8_t) map (ui8_temp , ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, SETPOINT_MAX_VALUE); //map throttle to limits
      ui16_sum_torque = 0;
      for(a = 0; a < NUMBER_OF_PAS_MAGS; a++) {			// sum up array content
	   ui16_sum_torque+= ui16_torque[a];
	   }
      ui8_torque_index++;
      if (ui8_torque_index>NUMBER_OF_PAS_MAGS-1){ui8_torque_index=0;} //reset index counter

    }

#else // just read in throttle value


#endif

//    if (ui16_speed_inverse < 60 )
//    {
//      ui8_position_correction_value = 152-((ui16_speed_inverse*44)/100);
//    }
//    else
//    {
//      ui8_position_correction_value=127;
//    }

// scheduled update of setpoint and duty cycle (every 100ms)
    ui16_temp_delay = TIM2_GetCounter ();

    if ((ui16_temp_delay - ui16_throttle_counter) > 100)
    {
      ui16_throttle_counter = ui16_temp_delay;

      /****************************************************************************/
      // read throttle and execute cruise control
      //
      ui16_adc_value = (uint16_t) adc_read_throttle ();
      ui8_temp = (uint8_t) map (ui16_adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 237);

#define DO_CRUISE_CONTROL 1
#if DO_CRUISE_CONTROL == 1
      ui8_temp = cruise_control (ui8_temp);
#endif
      pwm_set_duty_cycle (ui8_temp);
	  /****************************************************************************/

#if TORQUESENSOR
      pwm_set_duty_cycle ((uint8_t)ui16_setpoint);
#else if THROTTLE
//      pwm_set_duty_cycle (ui8_temp);
#endif

      getchar1 ();

//      // printf("Main: spd %d, pas %d, sumtor %d, setpoint %d\n", ui16_SPEED, ui16_PAS, ui16_sum_torque, ui16_setpoint);

//      if (ui16_motor_speed_erps < 6)
//      {
//	ui8_position_correction_value = 0;
//      }
//      else
//      {
//	// Equation found with experimental values:
//	// ui8_position_correction_value = ui16_motor_speed_erps * 0.784
//	// 100 ~= 0.784 << 127
//	ui8_position_correction_value = (uint8_t) ((ui16_motor_speed_erps * 100) >> 7);
//      }

      // printf("Main: spd %d, pas %d, sumtor %d, setpoint %d\n", ui16_SPEED, ui16_PAS, ui16_sum_torque, ui16_setpoint);

//      printf("%d, %d\n", ui16_speed_inverse, ui8_position_correction_value);
      printf("%d, %d, %d\n", ui8_motor_state, ui16_motor_speed_erps, ui8_position_correction_value);
    }
  }
}
