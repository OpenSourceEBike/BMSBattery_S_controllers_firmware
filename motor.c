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
uint8_t ui8_position_correction_value = 127; // in 360/256 degrees

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
  uint16_t ui16_temp;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));
  if ((hall_sensors != hall_sensors_last) ||
      (ui8_motor_state == MOTOR_STATE_COAST)) // let's run the code when motor is stopped/coast so it can pick right motor position for correct startup
  {
    hall_sensors_last = hall_sensors;

    if (ui8_motor_state == MOTOR_STATE_COAST) { ui8_motor_state = MOTOR_STATE_RUNNING_6_STEPS; }

    switch (hall_sensors)
    {
      case 3:
      if (ui8_motor_state != MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
      {
	ui8_motor_rotor_absolute_position = (uint8_t) (ANGLE_120 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
      }

      // read here the phase B current
//	if (ui8_motor_state == MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
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
      break;

      case 1:
debug_pin_reset ();
      if (ui8_motor_state != MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
      {
	ui8_motor_rotor_absolute_position = (uint8_t) (ANGLE_180 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
      }
      break;

      case 5:
      if (ui8_motor_state != MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
      {
	ui8_motor_rotor_absolute_position = (uint8_t) (ANGLE_240 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
      }
      break;

      // start of phase B current sinusoid
      case 4:
      ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
      ui16_PWM_cycles_counter = 0;
      ui16_motor_speed_erps = PWM_CYCLES_SECOND / ui16_PWM_cycles_counter_total; // this division takes ~4.2us

      // update motor state based on motor speed
      if (ui16_motor_speed_erps > 100)
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_SINE_INTERPOLATION;
      }
      else if (ui16_motor_speed_erps > 10)
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_SINE_NO_INTERPOLATION;
      }

      ui8_motor_rotor_absolute_position = (uint8_t) (ANGLE_300 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
      break;

      case 6:
      if (ui8_motor_state != MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
      {
	ui8_motor_rotor_absolute_position = (uint8_t) (ANGLE_1 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
      }
      break;

      case 2:
      if (ui8_motor_state != MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
      {
	ui8_motor_rotor_absolute_position = (uint8_t) (ANGLE_60 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
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
  if(ui16_SPEED_Counter < 65530) {ui16_SPEED_Counter++;} 	//increase SPEED Counter but avoid overflow
  if(ui16_PAS_Counter < 65530) {ui16_PAS_Counter++;}		//increase PAS Counter but avoid overflow

  // count number of fast loops / PWM cycles
  if (ui16_PWM_cycles_counter < PWM_CYCLES_COUNTER_MAX)
  {
    ui16_PWM_cycles_counter++;
    ui16_PWM_cycles_counter_6++;
  }
  else
  {
    ui16_PWM_cycles_counter = 0xffff;
    ui16_PWM_cycles_counter_total = 0xffff;
    ui16_PWM_cycles_counter_6 = 0xffff;
    ui16_speed_inverse = 0xffff;

    ui8_position_correction_value = 127;

    // next code is need for motor startup correctly
    ui8_motor_state = MOTOR_STATE_COAST;
    hall_sensors_read_and_action ();
  }

#define DO_INTERPOLATION 1 // may be usefull when debugging
#if DO_INTERPOLATION == 1

  if (ui8_motor_state == MOTOR_STATE_RUNNING_SINE_NO_INTERPOLATION)
  {
    // calculate the interpolation angle, to avoid overflow use 127 steps at low speed
    if(ui16_PWM_cycles_counter_total > 255){
      ui8_interpolation_angle = (uint8_t) ((ui16_PWM_cycles_counter_6 << 7) / (ui16_PWM_cycles_counter_total >> 1));}
    else {
      ui8_interpolation_angle = (uint8_t) ((ui16_PWM_cycles_counter_6 << 8) / (ui16_PWM_cycles_counter_total));}

    ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value - ui8_interpolation_angle);
  }
  else if (ui8_motor_state == MOTOR_STATE_RUNNING_SINE_INTERPOLATION)
  {
    // calculate the interpolation angle, to avoid overflow use 127 steps at low speed
    if(ui16_PWM_cycles_counter_total > 255){
	ui8_interpolation_angle = (uint8_t) ((ui16_PWM_cycles_counter << 7) / (ui16_PWM_cycles_counter_total >> 1));}
    else {
	ui8_interpolation_angle = (uint8_t) ((ui16_PWM_cycles_counter << 8) / (ui16_PWM_cycles_counter_total));}

    ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value - ui8_interpolation_angle);
  }
  else // MOTOR_STATE_COAST || MOTOR_STATE_RUNNING_6_STEPS
#endif
  {
    ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
  }

  pwm_duty_cycle_controller ();
}
