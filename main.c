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

int32_t motor_speed_erps = 0; // motor speed in electronic rotations per second
int8_t flag_count_speed = 0;
int16_t PWM_cycles_per_SVM_TABLE_step = 0;
int32_t PWM_cycles_counter = 0;
int16_t motor_rotor_position = 0; // in degrees
int16_t motor_rotor_absolute_position = 0; // in degrees
int16_t position_correction_value = 0; // in degrees
int32_t interpolation_angle_step = 0; // x1000
int32_t interpolation_sum = 0; // x1000
int16_t interpolation_angle = 0;

volatile uint16_t duty_cycle;

/////////////////////////////////////////////////////////////////////////////////////////////
//// Functions prototypes

// main -- start of firmware and main loop
int main (void);

//// Brake related
// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);

//// Hall sensors related
// HALL SENSORS signal interrupt
void EXTI_PORTE_IRQHandler(void) __interrupt(EXTI_PORTE_IRQHANDLER);
// reads hall sensors -- called from EXTI_PORTE_IRQHandler
void hall_sensors_read_and_action (void);

void motor_fast_loop (void);
void apply_duty_cycle (int16_t duty_cycle_value);

// map / limit values
int32_t map (int32_t x, int32_t in_min, int32_t in_max, int32_t out_min, int32_t out_max);

int16_t mod_angle_degrees (int16_t value);

/////////////////////////////////////////////////////////////////////////////////////////////

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
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  debug_pin_set ();
  motor_fast_loop ();
  debug_pin_reset ();

  // clear the interrupt pending bit for TIM1
  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

void hall_sensors_read_and_action (void)
{
  int8_t hall_sensors = 0;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));

  switch (hall_sensors)
  {
    case 3:
      motor_rotor_absolute_position = (60 * 0);
    break;

    case 1:
      motor_rotor_absolute_position = (60 * 1);
    break;

    case 5:
      motor_rotor_absolute_position = (60 * 2);

      // count speed only when motor did rotate half of 1 electronic rotation
      if (flag_count_speed)
      {
	  flag_count_speed = 0;
	  motor_speed_erps = PWM_CYCLES_COUNTER_MAX / PWM_cycles_counter;
	  interpolation_angle_step = (SVM_TABLE_LEN * 1000) / PWM_cycles_counter;
	  PWM_cycles_counter = 0;
      }
    break;

    case 4:
      motor_rotor_absolute_position = (60 * 3);
    break;

    case 6:
      motor_rotor_absolute_position = (60 * 4);
    break;

    case 2:
      motor_rotor_absolute_position = (60 * 5);

      flag_count_speed = 1;
    break;

    default:
    return;
    break;
  }

  motor_rotor_absolute_position += MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;

  motor_rotor_position = mod_angle_degrees(motor_rotor_absolute_position + position_correction_value);
  interpolation_sum = 0;
}

// runs every 64us (PWM frequency)
void motor_fast_loop (void)
{
  // count number of fast loops / PWM cycles
  if (PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    PWM_cycles_counter++;
  }
  else
  {
    PWM_cycles_counter = 0;
    motor_speed_erps = 0;
    interpolation_angle_step = (SVM_TABLE_LEN * 1000) / PWM_CYCLES_COUNTER_MAX;
    interpolation_sum = 0;
  }

#define DO_INTERPOLATION 0 // may be usefull when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle
  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
  if ( !(duty_cycle < 5 && duty_cycle > -5) || motor_speed_erps >= 80)
  {
    if (interpolation_sum <= (60 * 1000)) // interpolate only for angle <= 60º
    {
      // add step interpolation value to motor_rotor_position
      interpolation_sum += interpolation_angle_step;
      interpolation_angle = (int16_t) (interpolation_sum / 1000);

      motor_rotor_position = mod_angle_degrees(motor_rotor_absolute_position + position_correction_value + interpolation_angle);
    }
  }
#endif

  apply_duty_cycle (duty_cycle);
}

void apply_duty_cycle (int16_t duty_cycle_value)
{
  int16_t _duty_cycle;
  static int16_t value_a;
  static int16_t value_b;
  static int16_t value_c;
  int16_t temp;

  _duty_cycle = duty_cycle_value;

  // scale and apply _duty_cycle
  temp = motor_rotor_position;
  value_a = svm_table[temp];
  if (value_a > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    value_a = (value_a - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) * _duty_cycle;
    value_a = value_a / 1000;
    value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + value_a;
  }
  else
  {
    value_a = (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - value_a) * _duty_cycle;
    value_a = value_a / 1000;
    value_a = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - value_a;
  }

  // add 120 degrees and limit
  temp = mod_angle_degrees(motor_rotor_position + 120);
  value_b = svm_table[temp];
  if (value_b > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    value_b = (value_b - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) * _duty_cycle;
    value_b = value_b / 1000;
    value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + value_b;
  }
  else
  {
    value_b = (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - value_b) * _duty_cycle;
    value_b = value_b / 1000;
    value_b = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - value_b;
  }

  // subtract 120 degrees and limit
  temp = mod_angle_degrees(motor_rotor_position + 240);
  value_c = svm_table[temp];
  if (value_c > MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX)
  {
    value_c = (value_c - MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX) * _duty_cycle;
    value_c = value_c / 1000;
    value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX + value_c;
  }
  else
  {
    value_c = (MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - value_c) * _duty_cycle;
    value_c = value_c / 1000;
    value_c = MIDDLE_PWM_VALUE_DUTY_CYCLE_MAX - value_c;
  }

  // set final duty_cycle value
  TIM1_SetCompare1(value_a);
  TIM1_SetCompare2(value_b);
  TIM1_SetCompare4(value_c);
}

// Brake signal
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

// HALL SENSORS signal
void EXTI_PORTE_IRQHandler(void) __interrupt(EXTI_PORTE_IRQHANDLER)
{
  hall_sensors_read_and_action ();
}

int16_t mod_angle_degrees (int16_t value)
{
  int16_t ret = value % 360;
  if(ret < 0)
    ret += 360;
  return ret;
}

int main (void)
{
  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  debug_pin_init ();
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
//    duty_cycle = map (adc_value, ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, 1000);

    duty_cycle = 50;
  }
}
