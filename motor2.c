/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include "stm8s_gpio.h"
#include "stm8s_tim1.h"
#include "motor.h"
#include "gpio.h"
#include "motor.h"
#include "pwm.h"
#include "config.h"

uint8_t ui8_counter = 0;

uint16_t ui16_PWM_cycles_counter = 0;
uint16_t ui16_PWM_cycles_counter_6 = 0;
uint16_t ui16_PWM_cycles_counter_total = 0;

uint16_t ui16_motor_speed_erps = 0;
uint16_t ui16_speed_inverse = 0;
uint8_t ui8_motor_rotor_position = 0; // in 360/256 degrees
uint8_t ui8_motor_rotor_absolute_position = 0; // in 360/256 degrees
//uint8_t ui8_position_correction_value = 127; // in 360/256 degrees
uint8_t ui8_position_correction_value = 0; // in 360/256 degrees

uint8_t ui8_position_correction_value1 = 0; // in 360/256 degrees

uint16_t ui16_PWM_cycles_counter_total_div_4 = 0;
uint8_t ui8_interpolation_angle = 0;

uint16_t ui16_adc_current_phase_B = 0;
uint16_t ui16_adc_current_phase_B_accumulated = 0;
uint16_t ui16_adc_current_phase_B_filtered = 0;

uint8_t ui8_motor_state = MOTOR_STATE_COAST;

int8_t hall_sensors;
int8_t hall_sensors_last = 0;

uint16_t ui16_ADC_iq_current = 0;
uint16_t ui16_ADC_iq_current_accumulated = 0;
uint16_t ui16_ADC_iq_current_filtered = 0;
uint16_t ui16_iq_current_ma = 0;

uint8_t motor_state = MOTOR_STATE_RUNNING_VERY_SLOW;
uint8_t ui8_last_counter_value = 0;

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  hall_sensors_read_and_action ();

  /****************************************************************
  * Motor control: angle interpolation and PWM control
  */
  motor_fast_loop ();
  /****************************************************************/

  // clear the interrupt pending bit for TIM1
  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
}

void hall_sensor_init (void)
{
  GPIO_Init(HALL_SENSORS__PORT,
	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
	    GPIO_MODE_IN_FL_NO_IT);
}

void hall_sensors_read_and_action (void)
{
  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));
  if ((hall_sensors != hall_sensors_last) ||
      (motor_state == MOTOR_STATE_COAST)) // let's run the code when motor is stopped/coast so it can pick right motor position for correct startup
  {
    hall_sensors_last = hall_sensors;

    switch (hall_sensors)
    {
      case 3:
      // read here the phase B current
//      if (ui8_motor_state == MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
      {
	if (ui8_adc_read_throttle_busy == 0)
	{
debug_pin_set ();
	  ui16_ADC_iq_current = ADC1_GetConversionValue ();
	  ui16_ADC_iq_current_accumulated -= ui16_ADC_iq_current_accumulated >> 2;
	  ui16_ADC_iq_current_accumulated += ui16_ADC_iq_current;
	  ui16_ADC_iq_current_filtered = ui16_ADC_iq_current_accumulated >> 2;

//	    ui16_ADC_iq_current_filtered = ui16_ADC_iq_current;
	}
      }

      ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;

      if (motor_state != MOTOR_STATE_COAST)
      {
	ui16_speed_inverse = ui16_PWM_cycles_counter;
      }

      // update motor state based on motor speed
      if (ui16_speed_inverse > SPEED_INVERSE_INTERPOLATION)
      {
	motor_state = MOTOR_STATE_RUNNING_VERY_SLOW;
      }
      else
      {
	motor_state = MOTOR_STATE_RUNNING;
      }

      ui16_motor_speed_erps = PWM_CYCLES_SECOND / ui16_PWM_cycles_counter; // this division takes ~4.2us
      ui16_PWM_cycles_counter = 0;

      ui8_interpolation_angle = 0;
      ui8_last_counter_value = 0;

      ui8_motor_rotor_absolute_position = ANGLE_180;
      ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
      ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
      break;

      case 1:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_240;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
	break;

      case 5:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_300;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
	break;

      case 4:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_1;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}

//	ui8_adc_current_phase_B_flag = 0;
//	ui16_adc_current_phase_B = ui16_adc_current_phase_B_temp;

debug_pin_set ();
	break;

      case 6:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_60;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
debug_pin_reset ();
	break;

      case 2:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_120;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
	break;

      default:
      return;
      break;
    }

  //  ui16_debug = ((uint8_t) (ui16_PWM_cycles_counter_total >> 8));
  //  ui16_debug = ui16_PWM_cycles_counter_total;
  }
}

// runs every 64us (PWM frequency)
void motor_fast_loop (void)
{
  // count number of fast loops / PWM cycles
  if (ui16_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    ui16_PWM_cycles_counter++;
  }
  else
  {
    ui16_PWM_cycles_counter = 0;
    ui8_last_counter_value = 0;
    ui16_PWM_cycles_counter_total = 0xffff; //(SVM_TABLE_LEN_x1024) / PWM_CYCLES_COUNTER_MAX;
    ui16_speed_inverse = 0xffff;

    // next code is need for motor startup correctly
    ui8_interpolation_angle = 0;
    motor_state = MOTOR_STATE_COAST;
    hall_sensors_read_and_action ();
  }

#define DO_INTERPOLATION 1 // may be usefull when debugging
#if DO_INTERPOLATION == 1
  // calculate the interpolation angle
  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
  if (motor_state == MOTOR_STATE_RUNNING)
  {
    ui8_interpolation_angle = (uint8_t) ((ui16_PWM_cycles_counter << 8) / ui16_PWM_cycles_counter_total);

    ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle);
  }
#endif

  pwm_duty_cycle_controller ();
}
