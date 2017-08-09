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

uint16_t ui16_PWM_cycles_counter = 0;
uint8_t ui8_PWM_cycles_counter_1 = 0;
uint8_t ui8_PWM_cycles_counter_value = 0;
uint8_t ui8_PWM_cycles_counter_value_t = 0;
uint16_t ui16_PWM_cycles_counter_value_temp = 0;
uint16_t ui16_speed_inverse = 0;
uint8_t ui8_motor_rotor_position = 0; // in 360/256 degrees
uint8_t ui8_motor_rotor_absolute_position = 0; // in 360/256 degrees
uint8_t ui8_position_correction_value = 0; // in 360/256 degrees
uint8_t ui16_PWM_cycles_correction_value = 0; // in 360/256 degrees
uint16_t ui16_PWM_cycles_counter_total = 0;
uint16_t ui16_PWM_cycles_counter_angle_track_filtered = 0;
uint16_t ui16_PWM_cycles_counter_angle_track_accumulated = 0;
uint8_t ui8_interpolation_angle = 0;
uint8_t ui8_interpolation_angle_temp = 0;
uint8_t ui8_interpolation_angle_old = 0;
uint8_t ui8_last_counter_value = 0;

uint16_t ui16_motor_speed_erps = 0;

uint16_t ui16_adc_current_phase_B = 0;
uint8_t ui8_adc_current_phase_B_flag = 0;
uint16_t ui16_adc_current_phase_B_temp = 0;

uint8_t motor_state = MOTOR_STATE_RUNNING_VERY_SLOW;
//uint8_t motor_state = MOTOR_STATE_RUNNING;

int8_t hall_sensors;
int8_t hall_sensors_last = 0;

uint8_t ui8_angle_track_flag = 0;
uint16_t ui16_position_correction_value_accumulated = 0;
uint16_t ui16_position_correction_value_filtered = 0;

//uint8_t ui8_debug = 0;
//uint16_t ui16_debug = 0;

void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER)
{
  uint8_t ui8_temp;
  uint16_t ui16_temp;
  static uint16_t ui16_last_value;
  static uint16_t ui16_temp1;

////  ui8_PWM_cycles_counter_1++;
//  if (ui8_adc_current_phase_B_flag == 1)
//  {
//    // find the adc_current_phase_B minimum value
//    ui16_temp = ADC1_GetConversionValue ();
//    if (ui16_temp < ui16_adc_current_phase_B_temp)
//    {
//      ui16_adc_current_phase_B_temp = ui16_temp;
////      ui8_PWM_cycles_counter_value = ui8_PWM_cycles_counter_1;
//    }
//  }

  if ((ui8_angle_track_flag == 1) && (ui8_adc_read_throttle_busy == 0))
  {
    // find the adc_current_phase_B minimum value
    ui16_temp = ADC1_GetConversionValue ();
    if (ui16_temp > 512) // should happen when ui8_motor_rotor_position = 67
    {
      ui8_angle_track_flag = 0;

      ui16_PWM_cycles_counter_angle_track_accumulated -= ui16_PWM_cycles_counter_angle_track_accumulated >> 6;
      ui16_PWM_cycles_counter_angle_track_accumulated += ui16_PWM_cycles_counter;
      ui16_PWM_cycles_counter_angle_track_filtered = ui16_PWM_cycles_counter_angle_track_accumulated >> 6;

//ui16_log1 = ui16_motor_speed_erps;
//ui16_log2 = ui16_PWM_cycles_counter_angle_track_filtered;
    }
  }


//  ui16_temp = (ui16_PWM_cycles_counter_angle_track_filtered >> 1) + (ui16_PWM_cycles_counter_angle_track_filtered >> 2); // 3/4
//  if (ui16_PWM_cycles_counter == ui16_temp)
//  {
////    debug_pin_set ();
//    ui16_log1 = ui16_PWM_cycles_counter_angle_track_filtered - ui16_PWM_cycles_counter;
//
//    ui16_log2 = ((ui16_log1 << 8) / ui16_PWM_cycles_counter_total);
//
////    ui16_log2 = (uint16_t) ui8_position_correction_value;
//  }
//  else { /* debug_pin_reset (); */ }


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
  uint8_t ui8_temp;
  uint16_t ui16_temp;

  // read hall sensors signal pins and mask other pins
  hall_sensors = (GPIO_ReadInputData (HALL_SENSORS__PORT) & (HALL_SENSORS_MASK));
  if ((hall_sensors != hall_sensors_last) ||
      (motor_state == MOTOR_STATE_COAST)) // let's run the code when motor is stopped/coast so it can pick right motor position for correct startup
  {
    hall_sensors_last = hall_sensors;

//    if (motor_state != MOTOR_STATE_RUNNING) { ui8_position_correction_value = 0; }

    switch (hall_sensors)
    {
      case 3:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_120;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
      break;

      case 1:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_180;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}

	ui8_angle_track_flag = 1;
	break;

      case 5:
	// find the phase current B lag
//	ui16_temp = ui16_PWM_cycles_counter_angle_track_filtered - ui16_PWM_cycles_counter;
//	ui8_temp = (uint8_t) ((ui16_temp << 8) / ui16_PWM_cycles_counter_total);

//	ui16_position_correction_value_accumulated -= ui16_position_correction_value_accumulated >> 3;
//	ui16_position_correction_value_accumulated += (uint16_t) ui8_temp;
//	ui16_position_correction_value_filtered = ui16_position_correction_value_accumulated >> 3;
//
//
//	ui8_position_correction_value = ui16_position_correction_value_filtered - 10;

	ui16_PWM_cycles_correction_value = ui16_PWM_cycles_counter_angle_track_filtered - ui16_PWM_cycles_counter;


//ui16_log1 = ui16_PWM_cycles_counter;
//ui16_log2 = ui16_PWM_cycles_counter_angle_track_filtered;


	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_240;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}
	break;

      case 4:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_300;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
	}

	ui8_angle_track_flag = 0;
//	ui8_adc_current_phase_B_flag = 0;
//	ui16_adc_current_phase_B = ui16_adc_current_phase_B_temp;
	break;

      case 6:
//	ui8_adc_current_phase_B_flag = 1;
//	ui16_adc_current_phase_B_temp = 512; // 2.5V, 0 amps

	ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;

	// filter
	// out = accum >> k
	// accum = accum - out + in
//	ui32_PWM_cycles_counter_total_accumulated = ui32_PWM_cycles_counter_total_accumulated - (ui32_PWM_cycles_counter_total_accumulated >> 12);
//	ui32_PWM_cycles_counter_total_accumulated = ui32_PWM_cycles_counter_total_accumulated + ((uint32_t) ui16_PWM_cycles_counter);
//	ui16_PWM_cycles_counter_total_filtered = (uint16_t) (ui32_PWM_cycles_counter_total_accumulated >> 12);
//
//	ui16_log1 = ui16_PWM_cycles_counter_total;

//	ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter_total_filtered;

//	ui16_log2 = ui16_PWM_cycles_counter_total_filtered;

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

//	if (motor_state != MOTOR_STATE_RUNNING)
//	{
	  ui8_motor_rotor_absolute_position = ANGLE_1;
	  ui8_motor_rotor_absolute_position = (uint8_t) (ui8_motor_rotor_absolute_position + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT);
	  ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value);
//	}
	  break;

      case 2:
	if (motor_state != MOTOR_STATE_RUNNING)
	{
	  ui8_motor_rotor_absolute_position = ANGLE_60;
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
  uint16_t ui16_temp;

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
//    ui16_temp = ui16_PWM_cycles_counter + ui16_PWM_cycles_correction_value;
    ui16_temp = ui16_PWM_cycles_counter;
    ui8_interpolation_angle = (uint8_t) ((ui16_temp << 8) / ui16_PWM_cycles_counter_total);

    ui8_motor_rotor_position = (uint8_t) (ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle);

ui16_log1 = ui16_PWM_cycles_counter_total;
ui16_log2 = ui16_PWM_cycles_correction_value;
  }
#endif

  pwm_duty_cycle_controller ();
}

int8_t get_motor_rotation_direction (void)
{
  return LEFT;
}
