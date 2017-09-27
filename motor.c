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
#include "adc.h"

uint8_t ui8_counter = 0;

uint16_t ui16_PWM_cycles_counter = 0;
uint16_t ui16_PWM_cycles_counter_div_4 = 0;
uint16_t ui16_PWM_cycles_counter_6 = 0;
uint16_t ui16_PWM_cycles_counter_total = 0;

uint16_t ui16_motor_speed_erps = 0;
uint8_t ui8_motor_rotor_position = 0; // in 360/256 degrees
uint8_t ui8_motor_rotor_absolute_position = 0; // in 360/256 degrees
uint8_t ui8_position_correction_value = 127; // in 360/256 degrees

uint8_t ui8_interpolation_angle = 0;

uint16_t ui16_adc_current_phase_B = 0;
uint16_t ui16_adc_current_phase_B_accumulated = 0;
uint16_t ui16_adc_current_phase_B_filtered = 0;

uint8_t ui8_motor_interpolation_state = NO_INTERPOLATION_60_DEGREES;
uint8_t ui8_motor_state = MOTOR_STATE_COAST;

uint8_t ui8_hall_sensors = 0;
uint8_t ui8_hall_sensors_last = 0;

uint8_t ui8_ADC_id_current = 0;
uint8_t ui8_ADC_id_current_sign = 0;

uint8_t ui8_motor_total_current_flag = 0;

uint8_t ui8_ADC_motor_current_max_positive = ADC_MOTOR_TOTAL_CURRENT_MAX_POSITIVE;
uint8_t ui8_ADC_motor_current_max_negative = ADC_MOTOR_TOTAL_CURRENT_MIN_NEGATIVE;
uint8_t ui8_ADC_motor_current_zero_value;

uint8_t ui8_half_e_rotation_flag = 0;

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
//debug_pin_set ();
  adc_trigger ();

  hall_sensors_read_and_action ();

  motor_fast_loop ();

  TIM1_ClearITPendingBit(TIM1_IT_UPDATE);
//debug_pin_reset ();
}

void hall_sensors_read_and_action (void)
{
  // read hall sensors signal pins and mask other pins
  ui8_hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));
  if (ui8_hall_sensors != ui8_hall_sensors_last)
  {
    ui8_hall_sensors_last = ui8_hall_sensors;

    switch (ui8_hall_sensors)
    {
      case 3:
debug_pin_set ();
      // read here the phase B current: FOC Iq current
      ui8_ADC_id_current = ui8_adc_read_phase_B_current ();

#if (MOTOR_TYPE == MOTOR_TYPE_EUC2)
      if (ui8_motor_state == MOTOR_STATE_RUNNING)
      {
	if (ui8_motor_interpolation_state == INTERPOLATION_60_DEGREES)
	{
	  if (ui8_ADC_id_current > 127)
	  {
	    ui8_position_correction_value++;
	  }
	  else if (ui8_ADC_id_current < 125)
	  {
	    ui8_position_correction_value--;
	  }
	}
      }
#elif (MOTOR_TYPE == MOTOR_TYPE_Q85)
      if (ui8_motor_state == MOTOR_STATE_RUNNING)
      {
	if ((ui8_motor_interpolation_state == INTERPOLATION_60_DEGREES) ||
	    (ui8_motor_interpolation_state == INTERPOLATION_360_DEGREES))
	{
	  if (ui8_ADC_id_current > 127)
	  {
	    ui8_position_correction_value++;
	  }
	  else if (ui8_ADC_id_current < 125)
	  {
	    ui8_position_correction_value--;
	  }
	}
      }
#endif

      if (ui8_motor_interpolation_state != INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_180 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 1:
      if (ui8_half_e_rotation_flag == 1)
      {
	ui8_half_e_rotation_flag = 0;
	ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
	ui16_PWM_cycles_counter = 0;
	ui16_motor_speed_erps = PWM_CYCLES_SECOND / ui16_PWM_cycles_counter_total; // this division takes ~4.2us
      }

      // update motor state based on motor speed
#if MOTOR_TYPE == MOTOR_TYPE_Q85
      if (ui16_motor_speed_erps > 100)
      {
	ui8_motor_interpolation_state = INTERPOLATION_360_DEGREES;
	ui8_motor_state = MOTOR_STATE_RUNNING;
      }
      else if (ui16_motor_speed_erps > 25)
      {
	ui8_motor_interpolation_state = INTERPOLATION_60_DEGREES;
	ui8_motor_state = MOTOR_STATE_RUNNING;
      }
      else
      {
	ui8_motor_interpolation_state = NO_INTERPOLATION_60_DEGREES;
      }
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
      if (ui16_motor_speed_erps > 10)
      {
	ui8_motor_interpolation_state = INTERPOLATION_60_DEGREES;
	ui8_motor_state = MOTOR_STATE_RUNNING;
      }
      else
      {
	ui8_motor_interpolation_state = NO_INTERPOLATION_60_DEGREES;
      }
#endif

      ui8_motor_rotor_absolute_position = ANGLE_240 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      break;

      case 5:
      if (ui8_motor_interpolation_state != INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_300 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 4:
debug_pin_reset ();
      if (ui8_motor_interpolation_state != INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_1 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 6:
      ui8_half_e_rotation_flag = 1;

      if (ui8_motor_interpolation_state != INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_60 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 2:
      if (ui8_motor_interpolation_state != INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_120 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      default:
      return;
      break;
    }

    ui16_PWM_cycles_counter_6 = 0;
  }
}

// runs every 64us (PWM frequency)
void motor_fast_loop (void)
{
  uint8_t ui8_temp;

  // count number of fast loops / PWM cycles
  if (ui16_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    ui16_PWM_cycles_counter++;
    ui16_PWM_cycles_counter_6++;
  }
  else
  {
    ui16_PWM_cycles_counter = 0;
    ui16_PWM_cycles_counter_6 = 0;
    ui16_motor_speed_erps = 0;
    ui16_PWM_cycles_counter_total = 0;
    ui8_position_correction_value = 127;
    ui8_motor_interpolation_state = NO_INTERPOLATION_60_DEGREES;
    ui8_motor_state = MOTOR_STATE_STOP;
  }

#define DO_INTERPOLATION 1 // may be usefull when debugging
#if DO_INTERPOLATION == 1
//  // calculate the interpolation angle
//  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
  if (ui8_motor_interpolation_state == INTERPOLATION_60_DEGREES)
  {
    ui8_interpolation_angle = (ui16_PWM_cycles_counter_6 << 8) / ui16_PWM_cycles_counter_total;
#if MOTOR_TYPE == MOTOR_TYPE_Q85
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle;
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value - ui8_interpolation_angle;
#endif
  }
  else if (ui8_motor_interpolation_state == INTERPOLATION_360_DEGREES)
  {
    ui8_interpolation_angle = (ui16_PWM_cycles_counter << 8) / ui16_PWM_cycles_counter_total;
#if MOTOR_TYPE == MOTOR_TYPE_Q85
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle;
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value - ui8_interpolation_angle;
#endif
  }
  else // MOTOR_STATE_COAST || MOTOR_STATE_RUNNING_NO_INTERPOLATION_60_DEGREES
#endif
  {
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position;
  }

  pwm_duty_cycle_controller ();
}

void motor_set_mode_coast (void)
{
  TIM1_CtrlPWMOutputs(DISABLE);
  ui8_motor_state = MOTOR_STATE_COAST;
}

void motor_set_mode_run (void)
{
  TIM1_CtrlPWMOutputs(ENABLE);
}

void hall_sensor_init (void)
{
  GPIO_Init(HALL_SENSORS__PORT,
	    (GPIO_Pin_TypeDef)(HALL_SENSOR_A__PIN | HALL_SENSOR_B__PIN | HALL_SENSOR_C__PIN),
	    GPIO_MODE_IN_FL_NO_IT);
}

void motor_init (void)
{
  uint8_t ui8_counter = 0;
  uint16_t ui16_temp = 0;

  // reading some samples of ADC motor total current and average, to get the real zero value
  while (ui8_counter < 32)
  {
    ui16_temp += ui8_adc_read_motor_total_current ();
    ui8_counter++;
  }
  ui8_ADC_motor_current_zero_value = ui16_temp >> 5; // ui16_temp / 32
}
