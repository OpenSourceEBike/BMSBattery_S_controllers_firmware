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
#include "stm8s_gpio.h"
#include "hall_sensors.h"
#include "motor.h"
#include "uart.h"
#include "pwm.h"
#include "interrupts.h"
#include "stm8s_adc1.h"
#include "stm8s_tim1.h"

volatile uint16_t pwm_value;

void pwm_phase_a_disable (void)
{
  TIM1_OC3Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTNSTATE_DISABLE,
  	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
  	       TIM1_OCPOLARITY_HIGH,
  	       TIM1_OCNPOLARITY_LOW,
  	       TIM1_OCIDLESTATE_RESET,
  	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_A_HIGH__PORT,
	    PMW_PHASE_A_HIGH__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);

  // disable pin
  GPIO_Init(PMW_PHASE_A_LOW__PORT,
	    PMW_PHASE_A_LOW__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void pwm_phase_a_enable_pwm (void)
{
  TIM1_OC3Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_A_LOW__PORT,
	    PMW_PHASE_A_LOW__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void pwm_phase_a_enable_low (void)
{
  TIM1_OC3Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTNSTATE_DISABLE,
  	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_A_HIGH__PORT,
	    PMW_PHASE_A_HIGH__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);

  // enable pin
  GPIO_Init(PMW_PHASE_A_LOW__PORT,
	    PMW_PHASE_A_LOW__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);
}

void pwm_phase_b_disable (void)
{
  TIM1_OC2Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTNSTATE_DISABLE,
  	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
  	       TIM1_OCPOLARITY_HIGH,
  	       TIM1_OCNPOLARITY_LOW,
  	       TIM1_OCIDLESTATE_RESET,
  	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_B_HIGH__PORT,
	    PMW_PHASE_B_HIGH__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);

  // disable pin
  GPIO_Init(PMW_PHASE_B_LOW__PORT,
	    PMW_PHASE_B_LOW__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void pwm_phase_b_enable_pwm (void)
{
  TIM1_OC2Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_B_LOW__PORT,
	    PMW_PHASE_B_LOW__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void pwm_phase_b_enable_low (void)
{
  TIM1_OC2Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTNSTATE_DISABLE,
  	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_B_HIGH__PORT,
	    PMW_PHASE_B_HIGH__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);

  // enable pin
  GPIO_Init(PMW_PHASE_B_LOW__PORT,
	    PMW_PHASE_B_LOW__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);
}

void pwm_phase_c_disable (void)
{
  TIM1_OC1Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTNSTATE_DISABLE,
  	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
  	       TIM1_OCPOLARITY_HIGH,
  	       TIM1_OCNPOLARITY_LOW,
  	       TIM1_OCIDLESTATE_RESET,
  	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_C_HIGH__PORT,
	    PMW_PHASE_C_HIGH__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);

  // disable pin
  GPIO_Init(PMW_PHASE_C_LOW__PORT,
	    PMW_PHASE_C_LOW__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void pwm_phase_c_enable_pwm (void)
{
  TIM1_OC1Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTSTATE_ENABLE,
	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_C_LOW__PORT,
	    PMW_PHASE_C_LOW__PIN,
	    GPIO_MODE_OUT_PP_HIGH_FAST);
}

void pwm_phase_c_enable_low (void)
{
  TIM1_OC1Init(TIM1_OCMODE_PWM1,
	       TIM1_OUTPUTNSTATE_DISABLE,
  	       TIM1_OUTPUTNSTATE_DISABLE,
	       pwm_value,
	       TIM1_OCPOLARITY_HIGH,
	       TIM1_OCNPOLARITY_LOW,
	       TIM1_OCIDLESTATE_RESET,
	       TIM1_OCNIDLESTATE_SET);

  // disable pin
  GPIO_Init(PMW_PHASE_C_HIGH__PORT,
	    PMW_PHASE_C_HIGH__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);

  // enable pin
  GPIO_Init(PMW_PHASE_C_LOW__PORT,
	    PMW_PHASE_C_LOW__PIN,
	    GPIO_MODE_OUT_PP_LOW_FAST);
}


int32_t map (int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max)
{
  // if input is smaller/bigger than expected return the min/max out ranges value
  if (x < in_min)
    return out_min;
  else if (x > in_max)
    return out_max;

  // map the input to the output range.
  // round up if mapping bigger ranges to smaller ranges
  else  if ((in_max - in_min) > (out_max - out_min))
    return (x - in_min) * (out_max - out_min + 1) / (in_max - in_min + 1) + out_min;
  // round down if mapping smaller ranges to bigger ranges
  else
    return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

//can't put ADC code file on external file like adc.c or the code will not work :-(
void adc_init (void)
{
  //init GPIO for the used ADC pins
  GPIO_Init(THROTTLE__PORT,
	    THROTTLE__PIN,
	    GPIO_MODE_IN_FL_NO_IT);

  //de-Init ADC peripheral
  ADC1_DeInit();

  //init ADC2 peripheral
  ADC1_Init(ADC1_CONVERSIONMODE_CONTINUOUS,
	    ADC1_CHANNEL_4,
	    ADC1_PRESSEL_FCPU_D2,
            ADC1_EXTTRIG_TIM,
	    DISABLE, //disable external trigger
	    ADC1_ALIGN_RIGHT,
	    ADC1_SCHMITTTRIG_CHANNEL9,
            DISABLE);
}

uint16_t adc_read_throttle (void)
{
  ADC1_ConversionConfig(ADC1_CONVERSIONMODE_SINGLE,
			ADC1_CHANNEL_4,
			ADC1_ALIGN_RIGHT);

  //start Conversion
  ADC1_StartConversion();

  //block waiting for the end of conversion
  while (!ADC1_GetFlagStatus(ADC1_FLAG_EOC)) ;

  return ADC1_GetConversionValue();
}



//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt

// BRAKE signal
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER)
{
  if (brake_is_set())
  {
    brake_coast_disable (); // pwm main output disable
  }
  else
  {
    brake_coast_enable (); // pwm main output enable
  }
}

void hall_sensors_read_and_action (void)
{
  unsigned char hall_sensors = 0;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));

  switch (hall_sensors)
  {
    case 3:
      pwm_phase_a_enable_pwm ();
      pwm_phase_b_disable ();
      pwm_phase_c_enable_low ();

    break;

    case 1:
      pwm_phase_a_enable_pwm ();
      pwm_phase_b_enable_low ();
      pwm_phase_c_disable ();
    break;

    case 5:
      pwm_phase_a_disable ();
      pwm_phase_b_enable_low ();
      pwm_phase_c_enable_pwm ();
    break;

    case 4:
      pwm_phase_a_enable_low ();
      pwm_phase_b_disable ();
      pwm_phase_c_enable_pwm ();
    break;

    case 6:
      pwm_phase_a_enable_low ();
      pwm_phase_b_enable_pwm ();
      pwm_phase_c_disable ();
    break;

    case 2:
      pwm_phase_a_disable ();
      pwm_phase_b_enable_pwm ();
      pwm_phase_c_enable_low ();
    break;

    default:
    return;
    break;
  }
}

// HALL SENSORS signal
void EXTI_PORTE_IRQHandler(void) __interrupt(EXTI_PORTE_IRQHANDLER)
{
  hall_sensors_read_and_action ();
}

int main()
{
  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  uart_init ();
  hall_sensor_init ();
  pwm_init ();
  adc_init ();
  enableInterrupts();

  hall_sensors_read_and_action (); // needed to start the motor

  while (1)
  {
    static uint16_t adc_value;
    adc_value = adc_read_throttle ();
    adc_value = map (adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 1023);
    pwm_value = adc_value;

    pwm_set_duty_cycle_channel1 (pwm_value);
    pwm_set_duty_cycle_channel2 (pwm_value);
    pwm_set_duty_cycle_channel3 (pwm_value);
  }
}
