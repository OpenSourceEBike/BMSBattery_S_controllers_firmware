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

//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt
#define EXTI_PORTE_IRQHANDLER 7
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
  uart_init ();
  hall_sensor_init ();
  enableInterrupts ();

  while (1)
  {
    ;
  }
}
