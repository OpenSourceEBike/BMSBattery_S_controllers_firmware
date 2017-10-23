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
#include "uart.h"
#include "adc.h"
#include "brake.h"
#include "utils.h"
#include "timers.h"
#include "pwm.h"
#include "config.h"
#include "motor_controller_low_level.h"
#include "motor_controller_high_level.h"
#include "throttle_pas_torque_sensor_controller.h"
#include "communications_controller.h"

uint16_t ui16_TIM2_counter = 0;
uint16_t ui16_motor_controller_counter = 0;
uint16_t ui16_throttle_pas_torque_sensor_controller_counter = 0;
uint16_t ui16_communications_controller_counter = 0;

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
// Other times, I got code that did not work until I put the variables global.

// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);

// motor overcurrent interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER);

// Timer1/PWM period interrupt
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER);

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

int main (void)
{
  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig (CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  debug_pin_init ();
  timer2_init ();
  uart_init ();
  pwm_init_6_steps ();
  hall_sensor_init ();
  adc_init ();

  motor_init ();
  motor_set_current_max (ADC_MOTOR_CURRENT_MAX); // 1 --> 0.5A
  motor_set_regen_current_max (2); // 1 --> 0.5A
  motor_set_pwm_duty_cycle_ramp_inverse_step (100); // each step = 64us
  motor_speed_controller_set_erps (0);

  enableInterrupts ();

  hall_sensors_read_and_action (); // needed to start the motor

  while (1)
  {
#ifdef DEBUG_UART
    printf ("%d, %d, %d, %d\n", ui8_duty_cycle, motor_get_motor_speed_erps (), ui8_motor_interpolation_state, ui8_position_correction_value);
#endif

    // because of continue; at the end of each if code block that will stop the while (1) loop there,
    // the first if block code will have the higher priority over the others
    ui16_TIM2_counter = TIM2_GetCounter ();
    if ((ui16_TIM2_counter - ui16_motor_controller_counter) > 100) // every 100ms
    {
      ui16_motor_controller_counter = ui16_TIM2_counter;
      motor_controller_high_level ();
      continue;
    }

    ui16_TIM2_counter = TIM2_GetCounter ();
    if ((ui16_TIM2_counter - ui16_communications_controller_counter) > 150) // every 100ms
    {
      ui16_communications_controller_counter = ui16_TIM2_counter;
      communications_controller ();
      continue;
    }

    ui16_TIM2_counter = TIM2_GetCounter ();
    if ((ui16_TIM2_counter - ui16_throttle_pas_torque_sensor_controller_counter) > 100) // every 100ms
    {
      ui16_throttle_pas_torque_sensor_controller_counter = ui16_TIM2_counter;
      throttle_pas_torque_sensor_controller ();
      continue;
    }
  }

  return 0;
}
