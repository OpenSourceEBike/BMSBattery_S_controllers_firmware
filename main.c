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
#include "ebike_app.h"
#include "eeprom.h"
#include "motor.h"
#include "PAS.h"

uint16_t ui16_TIM2_counter = 0;
uint16_t ui16_motor_controller_counter = 0;
uint16_t ui16_ebike_app_controller_counter = 0;
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
// when I have this code inside a function: "static uint8_t ui8_cruise_counter = 0;"
// and the solution was define the variable as global instead

// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);

// Motor overcurrent interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER);

// Timer1/PWM period interrupt
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER);

// UART2 Receive interrupt
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER);

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////

// motor overcurrent interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER)
{
  // find the pin that has caused the interrupt
  if (!GPIO_ReadInputPin(CURRENT_MOTOR_TOTAL_OVER__PORT,CURRENT_MOTOR_TOTAL_OVER__PIN)) // over current handling
  {
    // motor will stop and error symbol on LCD will be shown
    motor_controller_set_state (MOTOR_CONTROLLER_STATE_OVER_CURRENT);
    motor_disable_PWM ();
    motor_controller_set_error (MOTOR_CONTROLLER_ERROR_06_SHORT_CIRCUIT);
  }
  else if (!GPIO_ReadInputPin (PAS__PORT, PAS__PIN)) // PAS handling
  {
    ui16_pas_timer2_ticks = ((uint16_t) TIM2->CNTRH << 8);
    ui16_pas_timer2_ticks = (uint16_t) (ui16_pas_timer2_ticks | ((uint16_t) (TIM2->CNTRL)));
  }
}

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
  pwm_init_bipolar_4q ();
  hall_sensor_init ();
  adc_init ();
  eeprom_init ();
  motor_init ();
  PAS_init ();
  enableInterrupts ();

  while (1)
  {
#ifdef DEBUG_UART
    printf ("%d, %d, %d, %d\n", motor_get_motor_speed_erps (), ui8_duty_cycle, ui8_motor_commutation_type, ui8_position_correction_value);
#endif

    // because of continue; at the end of each if code block that will stop the while (1) loop there,
    // the first if block code will have the higher priority over the others
    ui16_TIM2_counter = TIM2_GetCounter ();
    if ((ui16_TIM2_counter - ui16_motor_controller_counter) > 781) // every 100ms
    {
      ui16_motor_controller_counter = ui16_TIM2_counter;
      motor_controller ();
      continue;
    }

    ui16_TIM2_counter = TIM2_GetCounter ();
    if ((ui16_TIM2_counter - ui16_ebike_app_controller_counter) > 781) // every 100ms
    {
      ui16_ebike_app_controller_counter = ui16_TIM2_counter;
      ebike_app_controller ();
      continue;
    }
  }

  return 0;
}
