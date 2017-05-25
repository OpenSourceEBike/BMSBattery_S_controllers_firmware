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

}

// HALL SENSORS signal
void EXTI_PORTE_IRQHandler(void) __interrupt(EXTI_PORTE_IRQHANDLER)
{
  unsigned char hall_sensors = 0;
//  static unsigned int flag_count_speed = 0;
//
  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));

  // sequence: 1; 3; 2; 6; 4; 5

  printf("%d\n", hall_sensors);

//  if (get_motor_rotation_direction() == LEFT)
//  {
//    switch (hall_sensors) // angle increments with rotation
//    {
//      case 8192:
//      motor_rotor_absolute_position = (60 * 5); // 6
//      break;
//
//      case 24576: // transition to positive value of hall sensor A
//      motor_rotor_absolute_position = (60 * 4); // 5
//      break;
//
//      case 16384:
//      motor_rotor_absolute_position = (60 * 3); // 4
//      flag_count_speed = 1;
//      break;
//
//      case 20480:
//      motor_rotor_absolute_position = (60 * 2); // 3
//      break;
//
//      case 4096:
//      motor_rotor_absolute_position = (60 * 1); // 2
//      break;
//
//      case 12288:
//      motor_rotor_absolute_position = (60 * 0); // 1
//
//      // count speed only when motor did rotate half of 1 electronic rotation
//      if (flag_count_speed)
//      {
//	  flag_count_speed = 0;
////	  motor_speed_erps = PWM_CYCLES_COUNTER_MAX / PWM_cycles_counter;
////	  interpolation_angle_step = (SVM_TABLE_LEN * 1000) / PWM_cycles_counter;
////	  PWM_cycles_counter = 0;
//      }
//      break;
//
//      default:
//      return;
//      break;
//    }
//
//    motor_rotor_absolute_position += MOTOR_ROTOR_DELTA_PHASE_ANGLE_LEFT;
//  }
//  else if (get_motor_rotation_direction() == RIGHT)
//  {
//    switch (hall_sensors) // angle DEcrements with rotation
//    {
//      case 8192:
//      motor_rotor_absolute_position = (60 * 2); // 3
//      break;
//
//      case 24576: // transition to positive value of hall sensor A
//      motor_rotor_absolute_position = (60 * 1); // 2
//      break;
//
//      case 16384:
//      motor_rotor_absolute_position = (60 * 0); // 1
//
//      // count speed only when motor did rotate half of 1 electronic rotation
//      if (flag_count_speed)
//      {
//	  flag_count_speed = 0;
////	  motor_speed_erps = PWM_CYCLES_COUNTER_MAX / PWM_cycles_counter;
////	  interpolation_angle_step = (SVM_TABLE_LEN * 1000) / PWM_cycles_counter;
////	  PWM_cycles_counter = 0;
//      }
//      break;
//
//      case 20480:
//      motor_rotor_absolute_position = (60 * 5); // 6
//      break;
//
//      case 4096:
//      motor_rotor_absolute_position = (60 * 4); // 5
//      break;
//
//      case 12288:
//      motor_rotor_absolute_position = (60 * 3); // 4
//      flag_count_speed = 1;
//      break;
//
//      default:
//      return;
//      break;
//    }
//
//    motor_rotor_absolute_position += MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
//  }
//
//  motor_rotor_position = mod_angle_degrees(motor_rotor_absolute_position + position_correction_value);
}

int main()
{
  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();

  // hold here while brake is pressed -- this is a protection for development
  while (!brake_is_set()) ;

  uart_init ();
  hall_sensor_init ();
  pwm_init ();
  adc_init ();
  enableInterrupts();

  while (1)
  {
    static uint16_t adc_value;
    adc_value = adc_read_throttle ();
    adc_value = map (adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 1023);

    pwm_set_duty_cycle_channel1 (adc_value);
    pwm_set_duty_cycle_channel2 (adc_value);
    pwm_set_duty_cycle_channel3 (0);
  }
}
