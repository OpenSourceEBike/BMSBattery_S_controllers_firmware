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
#include "pwm.h"
#include "config.h"

uint8_t ui8_counter = 0;

uint16_t ui16_PWM_cycles_counter = 0;
uint16_t ui16_PWM_cycles_counter_6 = 0;
uint16_t ui16_PWM_cycles_counter_total = 0;

uint16_t ui16_motor_speed_erps = 0;
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

  motor_fast_loop ();

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
      (ui8_motor_state == MOTOR_STATE_COAST)) // let's run the code when motor is stopped/coast so it can pick right motor position for correct startup
  {
    hall_sensors_last = hall_sensors;

    if (ui8_motor_state == MOTOR_STATE_COAST) { ui8_motor_state = MOTOR_STATE_RUNNING_NO_INTERPOLATION_60_DEGREES; }

    switch (hall_sensors)
    {
      case 3://rotor position 180 degree
      // full electric revolution recognized, reset counters read here the phase B current for FOC,
      if (ui8_adc_read_throttle_busy == 0)
      {
debug_pin_set ();
	ui16_ADC_iq_current = ADC1_GetConversionValue (); // this value is regualted to be zero by FOC in this case without averaging

      }

      ui16_PWM_cycles_counter_total = ui16_PWM_cycles_counter;
      ui16_PWM_cycles_counter = 0;
      ui16_PWM_cycles_counter_total_div_4 = ui16_PWM_cycles_counter_total >> 2;
      ui16_motor_speed_erps = PWM_CYCLES_SECOND / ui16_PWM_cycles_counter_total; // this division takes ~4.2us

      // update motor state based on motor speed
#if MOTOR_TYPE == MOTOR_TYPE_Q85
      if (ui16_motor_speed_erps > 50)
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES;
      }
      else if (ui16_motor_speed_erps > 25)
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_INTERPOLATION_60_DEGREES;
      }
      else
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_NO_INTERPOLATION_60_DEGREES;
      }
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
      if (ui16_motor_speed_erps > 10)
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_INTERPOLATION_60_DEGREES;
      }
      else
      {
	ui8_motor_state = MOTOR_STATE_RUNNING_NO_INTERPOLATION_60_DEGREES;
      }
#endif

      ui8_motor_rotor_absolute_position = ANGLE_180 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      break;

      case 1: //rotor position 240 degree, do FOC control
	if (ui16_motor_speed_erps > 7)
	      {
		if (ui16_ADC_iq_current>>2 > 127)// hier prüfen, ob Wandlung von 10 auf 8 bit geht....
		{
		  ui8_position_correction_value++;
		}
		else if (ui16_ADC_iq_current>>2 < 125)
		{
		  ui8_position_correction_value--;
		}
	      }
      if (ui8_motor_state != MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_240 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 5: //rotor position 300 degree
      if (ui8_motor_state != MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_300 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 4: //rotor position 0 degree
debug_pin_reset ();
      if (ui8_motor_state != MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_1 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 6://rotor position 60 degree
      if (ui8_motor_state != MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES)
      {
	ui8_motor_rotor_absolute_position = ANGLE_60 + MOTOR_ROTOR_DELTA_PHASE_ANGLE_RIGHT;
      }
      break;

      case 2://rotor position 120 degree
      if (ui8_motor_state != MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES)
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
    ui16_PWM_cycles_counter = 0;
    ui16_PWM_cycles_counter_6 = 0;
    ui16_PWM_cycles_counter_total = 0; //(SVM_TABLE_LEN_x1024) / PWM_CYCLES_COUNTER_MAX;
    ui8_position_correction_value = 127;

    // next code is need for motor startup correctly
    ui8_motor_state = MOTOR_STATE_COAST;
    hall_sensors_read_and_action ();
  }

#define DO_INTERPOLATION 1 // may be usefull when debugging
#if DO_INTERPOLATION == 1
//  // calculate the interpolation angle
//  // interpolation seems a problem when motor starts, so avoid to do it at very low speed
  if (ui8_motor_state == MOTOR_STATE_RUNNING_INTERPOLATION_60_DEGREES)
  {
    ui8_interpolation_angle = (ui16_PWM_cycles_counter_6 << 8) / ui16_PWM_cycles_counter_total;
#if MOTOR_TYPE == MOTOR_TYPE_Q85
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value + ui8_interpolation_angle;
#elif MOTOR_TYPE == MOTOR_TYPE_EUC2
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value - ui8_interpolation_angle;
#endif
  }
  else if (ui8_motor_state == MOTOR_STATE_RUNNING_INTERPOLATION_360_DEGREES)
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
    ui8_motor_rotor_position = ui8_motor_rotor_absolute_position + ui8_position_correction_value;
  }

  pwm_duty_cycle_controller ();
}
