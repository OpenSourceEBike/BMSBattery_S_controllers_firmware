/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke, 2017.
 *
 * Released under the GPL License, Version 3
 */

#include <stdint.h>
#include <stdio.h>
#include <float.h>
#include "stm8s.h"
#include "stm8s_it.h"
#include "gpio.h"
#include "main.h"
#include "interrupts.h"
#include "PAS.h"
#include "cruise_control.h"
#include "motor.h"
#include "pwm.h"
#include "adc.h"
#include "update_setpoint.h"
#include "config.h"



static uint32_t ui32_setpoint; // local version of setpoint
uint32_t ui32_SPEED_km_h; //global variable Speed
static int16_t i16_delta; // difference between setpoint and actual value
int16_t i16_assistlevel[5]={LEVEL_1, LEVEL_2, LEVEL_3, LEVEL_4, LEVEL_5}; // difference between setpoint and actual value
uint16_t uint16_current_target=0;
float float_temp=-1.15;
int8_t uint_PWM_Enable=0;
uint16_t ui16_dutycycle_max=0;
uint16_t ui16_a=0;
uint16_t ui16_b=0;
uint16_t ui16_BatteryCurrent_accumulated = 2496L; //8x current offset
uint16_t ui16_BatteryCurrent;
uint8_t ui8_BatteryVoltage;
uint16_t ui16_counter;
uint16_t ui16_PAS_accumulated = 64000L;





uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old)
{

  ui16_BatteryCurrent_accumulated -= ui16_BatteryCurrent_accumulated>>3;
  ui16_BatteryCurrent_accumulated += ui16_adc_read_motor_total_current();
  ui16_BatteryCurrent = ui16_BatteryCurrent_accumulated>>3;
  ui8_BatteryVoltage = ui8_adc_read_battery_voltage();

   ui32_SPEED_km_h=(wheel_circumference*PWM_CYCLES_SECOND*36L)/(10000L*(uint32_t)speed);			//calculate speed in km/h conversion fr	om sec to hour --> *3600, conversion from mm to km --> /1000000, tic frequency 15625 Hz
  if(ui16_SPEED_Counter>40000){ui32_SPEED_km_h=0;}     //if wheel isn't turning, reset speed
  if(ui8_BatteryVoltage<BATTERY_VOLTAGE_MIN_VALUE){
      ui32_setpoint=0; 	// highest priority: Stop motor for undervoltage protection
      TIM1_CtrlPWMOutputs(DISABLE);
            uint_PWM_Enable=0;
            ui32_setpoint=0; 	// highest priority: Stop motor for undervoltage protection
     // printf("Low voltage! %d\n",ui8_BatteryVoltage);

#ifndef THROTTLE
  }else if (ui16_PAS_Counter>timeout){
      TIM1_CtrlPWMOutputs(DISABLE);
            uint_PWM_Enable=0;
      ui32_setpoint=0;			// next priority: Stop motor if not pedaling
      printf("you are not pedaling!\n");
#endif

 /* }else if(ui16_BatteryCurrent>BATTERY_CURRENT_MAX_VALUE){
      if (ui32_setpoint>ADC_THROTTLE_MIN_VALUE){
	  //ui32_setpoint=(uint32_t)(setpoint_old-(ui16_BatteryCurrent-BATTERY_CURRENT_MAX_VALUE));
	  printf("Battery Current too high!, setpoint %lu, setpoint_old %d\n",ui32_setpoint, setpoint_old);
      }  //next priority: reduce (old) setpoint if battery current is too high*/


  }else if (ui32_SPEED_km_h>limit && setpoint_old>(ui32_SPEED_km_h-limit) && ui8_cheat_state!=4){
      ui32_setpoint=(uint32_t)setpoint_old-(ui32_SPEED_km_h-limit); 	//next priority: reduce (old) setpoint, if you are riding too fast
      printf("Speed too high!\n");

  }else {								//if none of the overruling boundaries are concerned, calculate new setpoint
#ifdef TORQUESENSOR
  ui32_setpoint=((i16_assistlevel[ui8_assistlevel_global-1]*fummelfaktor*sumtorque))/(PAS*100); 						//calculate setpoint
  //printf("vor: spd %d, pas %d, sumtor %d, setpoint %lu\n", speed, PAS, sumtorque, ui32_setpoint);

  if (i16_delta<max_change*(-1)){i16_delta=max_change*(-1);}
  if (i16_delta>max_change){i16_delta=max_change;}//limit max change of setpoint to avoid motor stopping by fault


   if (i16_delta>((int16_t)setpoint_old)*(-1)) //avoid values < 0 for setpoint
     {

       ui32_setpoint=(uint32_t)(setpoint_old + i16_delta);
       //printf("setpoint %lu, Delta %d, current %d, current_target %d, temp %d\n", ui32_setpoint, i16_delta, ui16_BatteryCurrent, uint16_current_target, float_temp);
     }
   if (ui32_setpoint>SETPOINT_MAX_VALUE){ui32_setpoint=SETPOINT_MAX_VALUE;}

#endif

#if defined(THROTTLE)  || defined(THROTTLE_AND_PAS)
 /* if (sumtorque>10 && setpoint_old-10>sumtorque){
      TIM1_CtrlPWMOutputs(DISABLE);
      uint_PWM_Enable=0;
      //printf("Floating!\n");
  }
  else if (!uint_PWM_Enable && sumtorque>setpoint_old){
      TIM1_CtrlPWMOutputs(ENABLE);
      uint_PWM_Enable=1;
      //printf("PWM enabled!\n");
  }*/
  //ui16_a = (255L*(370L/MOTOR_VELOCITY_CONSTANT))/ui8_BatteryVoltage;
  //ui16_b = ((BATTERY_CURRENT_MAX_VALUE+current_cal_b)*((255*((MOTOR_RESISTANCE*37L)/ui8_BatteryVoltage))/100L))/1000;
  float_temp=(float)sumtorque*(float)(BATTERY_CURRENT_MAX_VALUE+current_cal_b)/255.0-(float)current_cal_b;
  ui32_setpoint= PI_control(ui16_BatteryCurrent, (uint16_t)float_temp);
  if (ui32_setpoint<40)ui32_setpoint=0;
  if (ui32_setpoint>255)ui32_setpoint=255;

  printf("%lu, %d, %d, %d\r\n", ui32_setpoint, sumtorque, ui16_BatteryCurrent, (uint16_t)float_temp);
  //printf("setpoint %lu, Voltage %d, a %d, b %d, DCmax %d, erps %d\n", ui32_setpoint, ui8_BatteryVoltage, ui16_a, ui16_b, ui16_dutycycle_max, ui16_motor_speed_erps);
#endif

#ifdef TORQUE_SIMULATION
  ui16_PAS_accumulated-=ui16_PAS_accumulated>>3;
  ui16_PAS_accumulated+=PAS;
  PAS=ui16_PAS_accumulated>>3;
  if (PAS>RAMP_END) //if you are pedaling slower than defined ramp end, current is proportional to cadence
    {
      uint16_current_target= (i16_assistlevel[ui8_assistlevel_global-1]*(BATTERY_CURRENT_MAX_VALUE+current_cal_b)/100);
      float_temp=((float)RAMP_END)/((float)PAS);

      uint16_current_target= ((int16_t)(uint16_current_target)*(int16_t)(float_temp*100))/100-current_cal_b;
      //printf("PAS %d, delta %d, current target %d\n", PAS, (int16_t)(float_temp*100), uint16_current_target);
    }
  else
    {
      uint16_current_target= (i16_assistlevel[ui8_assistlevel_global-1]*(BATTERY_CURRENT_MAX_VALUE+current_cal_b)/100-current_cal_b);
      //printf("current_target %d\n", uint16_current_target);
    }

  ui32_setpoint= PI_control(ui16_BatteryCurrent, uint16_current_target);
    if (ui32_setpoint<40)ui32_setpoint=0;
    if (ui32_setpoint>255)ui32_setpoint=255;

    printf("%lu, %d, %d, %d\r\n", ui32_setpoint, PAS>>3, ui16_BatteryCurrent, uint16_current_target);


#endif
  }
 if (!uint_PWM_Enable)
     {
        TIM1_CtrlPWMOutputs(ENABLE);
        uint_PWM_Enable=1;
        //printf("PWM enabled!\n");
     }
  //printf("setpoint %lu, Delta %d\n", ui32_setpoint, i16_delta);

  return ui32_setpoint;
 // return 0;
}

uint32_t PI_control (uint16_t ist, uint16_t soll)
{
  float float_p;
  static float float_i;
  float_p=((float)soll - (float)ist)*0.5;
  if (float_p>3)float_p=5;
  if (float_p<-3)float_p=-5;
  float_i+=((float)soll - (float)ist)*0.2;
  //printf("soll %d, ist %d, P-Anteil %d,I-Anteil %d\n", soll, ist, (int16_t)float_p, (int16_t)float_i);
  return ((uint32_t)(float_p+float_i));
}
