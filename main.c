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

//uint16_t ui16_LPF_angle_adjust = 0;
//uint16_t ui16_LPF_angle_adjust_temp = 0;
//
//uint8_t ui8_debug = 0;
//uint16_t ui16_debug = 0;
//
//static uint16_t ui16_value;
//
//
//uint16_t ui16_adc_current_phase_B = 0;
//uint8_t ui8_adc_current_phase_B_flag = 0;
//uint16_t ui16_adc_current_phase_B_temp = 0;
//uint8_t adc_total_current = 0;
//uint8_t ui8_adc_total_current_busy_flag = 0;
//uint8_t adc_throttle = 0;
//uint8_t adc_throttle_busy_flag = 0;
//
//extern uint8_t ui8_cruise_state;

/////////////////////////////////////////////////////////////////////////////////////////////
//// Functions prototypes

// main -- start of firmware and main loop
int main (void);

// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);

// Timer1/PWM period interrupt
//extern void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER);

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt



int main (void)
{
//  static uint32_t ui32_cruise_counter = 0;
//  static uint8_t ui8_cruise_duty_cycle = 0;
//  static uint16_t ui16_adc_value;
//  static uint8_t ui8_temp = 0;

  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  debug_pin_init ();

  uart_init ();
//  hall_sensor_init ();
//  pwm_init ();
//  adc_init ();

//  ITC_SetSoftwarePriority (ITC_IRQ_PORTE, ITC_PRIORITYLEVEL_1); // hall sensors interrupt have the most priority
//  ITC_SetSoftwarePriority (ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_2);
//
  enableInterrupts();
//#if (SVM_TABLE == SVM)
//  TIM1_SetCompare1(126 << 1);
//  TIM1_SetCompare2(126 << 1);
//  TIM1_SetCompare3(126 << 1);
//#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
//  TIM1_SetCompare1(126 << 2);
//  TIM1_SetCompare2(126 << 2);
//  TIM1_SetCompare3(126 << 2);
//#endif
//
//  hall_sensors_read_and_action (); // needed to start the motor

  while (1)
  {
    while (1)
    {
	debug_pin_set ();
	printf("testing UART after build optimize 1..fdhgdfhfgdhjdfjdfgjdfjfhnjchnhyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");

	debug_pin_reset ();
    }

//    //    static uint16_t c;
//        static uint32_t ui32_counter = 0;
//        uint16_t ui16_temp = 0;
//        uint16_t ui32_temp = 0;
//    //    int8_t i8_buffer[64];
//    //    uint8_t ui8_value;
//    //    int objects_readed;
//        static uint32_t ui32_LPF_running_average = 0;
//        static uint32_t ui32_LPF_temp = 0;
//        static float f_temp = 0;
//
//    //    debug_pin_reset ();
//
//        ui32_counter++;
//        if (ui32_counter > 10000) // 25ms
//        {
//          ui32_counter = 0;
//          while (ui8_adc_total_current_busy_flag) ;
//
//          /****************************************************************************/
//          // read throttle and execute cruise control
//          //
//          ui16_adc_value = (uint16_t) adc_read_throttle ();
//          ui8_temp = (uint8_t) map (ui16_adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 237);
//
//          // Cruise control
//          if (ui8_cruise_state == 0)
//          {
//            if ((ui8_temp > 25) &&
//                ((ui8_temp > (ui8_cruise_duty_cycle - 25)) || (ui8_temp < (ui8_cruise_duty_cycle + 25))))
//            {
//    	  ui32_cruise_counter++;
//    	  ui8_duty_cycle = ui8_temp;
//
//    	  if (ui32_cruise_counter > 100)
//    	  {
//    	    ui8_cruise_state = 1;
//    	    ui8_duty_cycle = ui8_temp;
//    	    ui32_cruise_counter = 0;
//    	    ui8_cruise_duty_cycle = 0;
//    	  }
//            }
//            else
//            {
//    	  ui32_cruise_counter = 0;
//    	  ui8_cruise_duty_cycle = ui8_temp;
//    	  ui8_duty_cycle = ui8_cruise_duty_cycle;
//            }
//          }
//          else if (ui8_cruise_state == 1)
//          {
//            if (ui8_temp < 25) { ui8_cruise_state = 2; }
//          }
//          else if (ui8_cruise_state == 2)
//          {
//            if (ui8_temp > 25)
//            {
//              ui8_cruise_state = 0;
//              ui8_duty_cycle = ui8_temp;
//            }
//          }
//          /****************************************************************************/
//
//          // low pass filter using running average
//          ui32_temp = ui32_LPF_running_average >> 2; // ui32_LPF_running_average / 8
//          ui32_LPF_running_average -= ui32_temp; // ui32_LPF_running_average is now reduced to 7/8 of the original ui32_LPF_running_average
//          ui32_LPF_running_average += (uint32_t) (ui16_adc_current_phase_B >> 2); //add 1/8 a to get the new average

    //      disableInterrupts();
    //      ui32_LPF_running_average = (uint32_t) ui16_adc_current_phase_B;
    //      enableInterrupts();

    //      printf("%d\n", (uint16_t) ui16_debug);

    //      ui32_LPF_temp = 512 - ui32_LPF_running_average;
    //      ui32_LPF_temp = ui32_LPF_temp * ADC_PHASE_B_CURRENT_STEP;
    //      printf("%d\n", (uint16_t) ui32_LPF_temp);

    //      printf("%d\n", ui16_PWM_cycles_counter_value_temp);
//          printf("%d\n", ui16_motor_speed_erps);
//        }



    //    ui8_duty_cycle = 80;

    //    apply_duty_cycle (ui8_duty_cycle);

    //    c++;
    //    if (c < 43)
    //    {
    //      motor_fast_loop ();
    //    }
    //    else
    //    {
    //      c = 0;
    //      hall_sensors_read_and_action ();
    //    }

    //   fflush(stdin); // needed to unblock scanf() after a not expected formatted data
    //   objects_readed = scanf("%s %d", &i8_buffer, &ui8_value);
    //
    //   if (objects_readed > 0)
    //   {
    //     switch (i8_buffer[0])
    //     {
    //      case 'a':
    //	printf("a = %d\n", ui8_value);
    //	ui8_position_correction_value = ui8_value;
    //	break;
    //
    //      default:
    //	break;
    //     }
    //   }
  }
}
