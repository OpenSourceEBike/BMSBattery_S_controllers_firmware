/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke, 2017.
 * What's missing: LCD3 support, PAS direction detection
 * not tested yet: switch to higher PWM frequency, erps limitation, speed_limitation with external sensor
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
#include "utils.h"
#include "brake.h"



static uint32_t ui32_setpoint; // local version of setpoint
uint32_t ui32_SPEED_km_h; //global variable Speed
int16_t i16_assistlevel[5]={LEVEL_1, LEVEL_2, LEVEL_3, LEVEL_4, LEVEL_5}; // difference between setpoint and actual value
uint32_t uint32_current_target=0; //target for PI-Control
float float_temp=0; //for float calculations
int8_t uint_PWM_Enable=0; //flag for PWM state
uint16_t ui16_BatteryCurrent_accumulated = 2496L; //8x current offset, for filtering or Battery Current
uint16_t ui16_BatteryCurrent; //Battery Current read from ADC8
uint8_t ui8_BatteryVoltage; //Battery Voltage read from ADC
uint8_t ui8_regen_throttle; //regen throttle read from ADC
static uint16_t ui16_PAS_accumulated = 64000L; // for filtering of PAS value
static uint32_t ui32_erps_accumulated; //for filtering of erps
uint32_t ui32_erps_filtered; //filtered value of erps
//uint16_t ui16_erps_limit_lower=((limit)*(GEAR_RATIO/wheel_circumference));
//uint16_t ui16_erps_limit_higher=((limit+2)*(GEAR_RATIO/wheel_circumference));
uint16_t ui16_erps_limit_lower=(uint16_t)((float)GEAR_RATIO*(float)limit*10000.0/((float)wheel_circumference*36.0));
uint16_t ui16_erps_limit_higher=(uint16_t)((float)GEAR_RATIO*(float)(limit+2)*10000.0/((float)wheel_circumference*36.0));

uint16_t ui16_erps_max=PWM_CYCLES_SECOND/30; //limit erps to have minimum 30 points on the sine curve for proper commutation

uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old)
{
  ui16_BatteryCurrent_accumulated -= ui16_BatteryCurrent_accumulated>>3;
  ui16_BatteryCurrent_accumulated += ui16_adc_read_motor_total_current();
  ui16_BatteryCurrent = ui16_BatteryCurrent_accumulated>>3;
  ui8_BatteryVoltage = ui8_adc_read_battery_voltage();

  ui32_erps_accumulated-=ui32_erps_accumulated>>3;
  ui32_erps_accumulated+=ui16_motor_speed_erps;
  ui32_erps_filtered=ui32_erps_accumulated>>3;

  ui8_regen_throttle = map (ui8_adc_read_regen_throttle () , ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, SETPOINT_MAX_VALUE); //map throttle to limits

  ui32_SPEED_km_h=(wheel_circumference*PWM_CYCLES_SECOND*36L)/(10L*(uint32_t)speed);			//calculate speed in m/h conversion fr	om sec to hour --> *3600, conversion from mm to km --> /1000000, tic frequency 15625 Hz
  if(ui16_SPEED_Counter>40000){ui32_SPEED_km_h=0;}     //if wheel isn't turning, reset speed

  //check if rider is braking
  if (brake_is_set()){
            ui32_setpoint= PI_control(ui16_BatteryCurrent, -1*current_cal_b);//Curret target = 0 A, this is to keep the integral part of the PI-control up to date
                  if (ui32_setpoint<30){ui32_setpoint=0;}
                  if (ui32_setpoint>255){ui32_setpoint=255;}
      printf("you are braking!\r\n");
  }
#ifdef REGEN
  //check if regen is wanted
  else if(ui8_regen_throttle>5){
  float_temp=(float)ui8_regen_throttle*(float)(REGEN_CURRENT_MAX_VALUE+current_cal_b)/255.0-(float)current_cal_b;
  ui32_setpoint= PI_control(ui16_BatteryCurrent, (uint16_t) float_temp);
  if (ui32_setpoint<3)ui32_setpoint=0;
  if (ui32_setpoint>255)ui32_setpoint=255;
  //printf("%lu, %d, %d, %d\r\n", ui32_setpoint, ui8_regen_throttle, ui16_BatteryCurrent, (uint16_t) float_temp);
  }
#endif
  //check for undervoltage
  else if(ui8_BatteryVoltage<BATTERY_VOLTAGE_MIN_VALUE){

      TIM1_CtrlPWMOutputs(DISABLE);
      uint_PWM_Enable=0; // highest priority: Stop motor for undervoltage protection
      ui32_setpoint=0;
      printf("Low voltage! %d\n",ui8_BatteryVoltage);
    }



  //limit max erps
  else if (ui32_erps_filtered>ui16_erps_max){
              ui32_setpoint= PI_control(ui32_erps_filtered, ui16_erps_max);//limit the erps to maximum value to have minimum 30 points of sine table for proper commutation
                    if (ui32_setpoint<30){ui32_setpoint=0;}
                    if (ui32_setpoint>255){ui32_setpoint=255;}
        printf("erps too high!\r\n");
    }

  //check if pedals are turning
#ifndef THROTTLE
  else if (ui16_PAS_Counter>timeout|| PAS_dir!=PAS_DIRECTION){
            ui32_setpoint= PI_control(ui16_BatteryCurrent, -1*current_cal_b);//Curret target = 0 A, this is to keep the integral part of the PI-control up to date
                  if (ui32_setpoint<30){ui32_setpoint=0;}
                  if (ui32_setpoint>255){ui32_setpoint=255;}
     // printf("you are not pedaling!\r\n");
  }
#endif

  else {

      //if none of the overruling boundaries are concerned, calculate new setpoint
#ifdef TORQUESENSOR
      ui16_PAS_accumulated-=ui16_PAS_accumulated>>3;
      ui16_PAS_accumulated+=PAS;
      PAS=ui16_PAS_accumulated>>3;
      uint32_current_target=((i16_assistlevel[ui8_assistlevel_global-1]*fummelfaktor*sumtorque))/(((uint32_t)PAS)<<6)-current_cal_b; 						//calculate setpoint
      //printf("vor: spd %d, pas %d, sumtor %d, setpoint %lu\n", speed, PAS, sumtorque, ui32_setpoint);
      if (uint32_current_target>BATTERY_CURRENT_MAX_VALUE){
	  //printf("Current target %lu\r\n", uint32_current_target);
	  uint32_current_target=BATTERY_CURRENT_MAX_VALUE;
      }
      uint32_current_target = CheckSpeed ((uint16_t) uint32_current_target, (uint16_t) ui32_erps_filtered);
      ui32_setpoint= PI_control(ui16_BatteryCurrent, uint32_current_target);
      if (ui32_setpoint<30)ui32_setpoint=0;
      if (ui32_setpoint>255)ui32_setpoint=255;

      printf("%lu, %d, %d, %d\r\n", ui32_setpoint, PAS>>3, ui16_BatteryCurrent, (uint16_t) uint32_current_target);

#endif

#if defined(THROTTLE)  || defined(THROTTLE_AND_PAS)
  float_temp=(float)sumtorque*(float)(BATTERY_CURRENT_MAX_VALUE+current_cal_b)/255.0-(float)current_cal_b; //calculate current target

#ifdef SPEEDSENSOR_INTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)float_temp, (uint16_t) ui32_erps_filtered); //limit speed
#endif

#ifdef SPEEDSENSOR_EXTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)float_temp, (uint16_t) ui32_SPEED_km_h); //limit speed
#endif

  ui32_setpoint= PI_control(ui16_BatteryCurrent, (uint16_t) uint32_current_target);
  if (ui32_setpoint<10)ui32_setpoint=0;
  if (ui32_setpoint>255)ui32_setpoint=255;

  //printf("%d, %d, %d, %d\r\n", ui16_motor_speed_erps, ui8_BatteryVoltage, ui16_BatteryCurrent, (uint16_t) uint32_current_target);
  //printf("setpoint %lu, Voltage %d, a %d, b %d, DCmax %d, erps %d\n", ui32_setpoint, ui8_BatteryVoltage, ui16_a, ui16_b, ui16_dutycycle_max, ui16_motor_speed_erps);
#endif

#ifdef TORQUE_SIMULATION
  ui16_PAS_accumulated-=ui16_PAS_accumulated>>3;
  ui16_PAS_accumulated+=PAS;
  PAS=ui16_PAS_accumulated>>3;
  if (PAS>RAMP_END) //if you are pedaling slower than defined ramp end, current is proportional to cadence
    {
      uint32_current_target= (i16_assistlevel[ui8_assistlevel_global-1]*(BATTERY_CURRENT_MAX_VALUE+current_cal_b)/100);
      float_temp=((float)RAMP_END)/((float)PAS);

      uint32_current_target= ((int16_t)(uint32_current_target)*(int16_t)(float_temp*100))/100-current_cal_b;
      //printf("PAS %d, delta %d, current target %d\r\n", PAS, (int16_t)(float_temp*100), (int16_t) uint32_current_target);
    }
  else
    {
      uint32_current_target= (i16_assistlevel[ui8_assistlevel_global-1]*(BATTERY_CURRENT_MAX_VALUE+current_cal_b)/100-current_cal_b);
      //printf("current_target %d\r\n", (int16_t)uint32_current_target);
    }

  uint32_current_target = CheckSpeed ((uint16_t) uint32_current_target, (uint16_t) ui32_erps_filtered);

  ui32_setpoint= PI_control(ui16_BatteryCurrent, uint32_current_target);
    if (ui32_setpoint<30)ui32_setpoint=0;
    if (ui32_setpoint>255)ui32_setpoint=255;

   // printf("%lu, %d, %d, %d\r\n", ui32_setpoint, PAS>>3, ui16_BatteryCurrent, (uint16_t) uint32_current_target);
#endif

 if (!uint_PWM_Enable) //enable PWM if disabled
     {
        TIM1_CtrlPWMOutputs(ENABLE);
        uint_PWM_Enable=1;
        //printf("PWM enabled!\n");
     }
  } //end of else

  return ui32_setpoint;

} //end of update setpoint function



uint32_t PI_control (uint16_t ist, uint16_t soll)
{
  float float_p;
  static float float_i;
  float_p=((float)soll - (float)ist)*P_FACTOR;
  if (float_p>3)float_p=3;
  if (float_p<-3)float_p=-3;
  float_i+=((float)soll - (float)ist)*I_FACTOR;
  if (float_i>255)float_i=255;
  if (float_i<0)float_i=0;
  //printf("soll %d, ist %d, P-Anteil %d,I-Anteil %d\r\n", soll, ist, (int16_t)float_p, (int16_t)float_i);
  return ((uint32_t)(float_p+float_i));
}

#ifdef SPEEDSENSOR_INTERNAL
uint32_t CheckSpeed (uint16_t current_target, uint16_t erps)
{
  //printf("Speed %d, %d\r\n", erps, ui16_erps_limit_lower);
  //ramp down motor power if you are riding too fast and speed liming is active
  if (erps>ui16_erps_limit_lower && ui8_cheat_state!=4){

	if (erps>ui16_erps_limit_higher){ //if you are riding much too fast, stop motor immediately
	    current_target=-1*current_cal_b;
	   printf("Speed much too high! %d, %d\r\n", erps,((limit+2)*GEAR_RATIO));
	}
	else {
	    current_target=((current_target+current_cal_b)*(ui16_erps_limit_higher-erps))/(ui16_erps_limit_higher-ui16_erps_limit_lower)-current_cal_b; 	//ramp down the motor power within 2 km/h, if you are riding too fast
	   printf("Speed too high!\r\n");
	}
  }
    return ((uint32_t)current_target);
  }
#endif

#ifdef SPEEDSENSOR_EXTERNAL
uint32_t CheckSpeed (uint16_t current_target, uint16_t speed)
{
  //printf("Speed %d, %d\r\n", erps, ui16_erps_limit_lower);
  //ramp down motor power if you are riding too fast and speed liming is active
  if (speed>limit*1000 && ui8_cheat_state!=4){

	if (speed>(limit+2)*1000){ //if you are riding much too fast, stop motor immediately
	    current_target=-1*current_cal_b;
	   // printf("Speed much too high! %d, %d\r\n", erps,((limit+2)*GEAR_RATIO));
	}
	else {
	    current_target=(uint16_t)(((uint32_t)current_target+current_cal_b)*((limit+2)*1000)-speed)/2000-current_cal_b; 	//ramp down the motor power within 2 km/h, if you are riding too fast
	    printf("Speed too high!\r\n");
	}
  }
    return ((uint32_t)current_target);
  }
#endif
