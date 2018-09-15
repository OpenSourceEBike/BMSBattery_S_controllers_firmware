/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke, 2017.
 * What's missing: LCD3 support, PAS direction detection
 * not tested yet: switch to higher PWM frequency, erps limitation, speed_limitation with external sensor
 *
 * Released under the GPL License, Version 3
 */

#if defined(JUSTFORREFERENCE) 

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
#include "brake.h"
#include "ACAcontrollerState.h"
#include "ACAcommons.h"


static uint32_t ui32_setpoint; // local version of setpoint
int16_t i16_assistlevel[6]={0,LEVEL_1, LEVEL_2, LEVEL_3, LEVEL_4, LEVEL_5}; // difference between setpoint and actual value
float float_temp=0; //for float calculations
int8_t uint_PWM_Enable=0; //flag for PWM state
uint16_t ui16_BatteryCurrent_accumulated = 2496L; //8x current offset, for filtering or Battery Current
uint16_t ui16_BatteryVoltage_accumulated;
uint8_t ui8_regen_throttle; //regen throttle read from ADC X4
int8_t i8_motor_temperature; //temperature read from ADC X4
uint8_t ui8_regen_flag=0; //regen flag for shifting from +90° to -90°
static uint16_t ui16_PAS_accumulated = 64000L; // for filtering of PAS value // why start at 64000?
static uint32_t ui32_erps_accumulated; //for filtering of erps
uint32_t ui32_erps_filtered; //filtered value of erps
uint32_t ui32_temp;

uint16_t ui16_erps_max=PWM_CYCLES_SECOND/30; //limit erps to have minimum 30 points on the sine curve for proper commutation

uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old)
{
 

  ui16_BatteryCurrent_accumulated -= ui16_BatteryCurrent_accumulated>>3;
  ui16_BatteryCurrent_accumulated += ui16_adc_read_motor_total_current();
  ui16_BatteryCurrent = ui16_BatteryCurrent_accumulated>>3;

  ui16_BatteryVoltage_accumulated -= ui16_BatteryVoltage_accumulated>>3;
  ui16_BatteryVoltage_accumulated += ui8_adc_read_battery_voltage();
  ui8_BatteryVoltage = ui16_BatteryVoltage_accumulated>>3;


  ui32_erps_accumulated-=ui32_erps_accumulated>>3;
  ui32_erps_accumulated+=ui16_motor_speed_erps;
  ui32_erps_filtered=ui32_erps_accumulated>>3;

#ifdef REGEN

  //check if regen is wanted
  ui8_regen_throttle = map (ui8_adc_read_regen_throttle () , ui8_throttle_min_range, ui8_throttle_max_range, 0, SETPOINT_MAX_VALUE); //map throttle to limits
    if(ui8_regen_throttle>2){
    float_temp=(float)ui8_regen_throttle*(float)(REGEN_CURRENT_MAX_VALUE-ui16_current_cal_b)/255.0+(float)ui16_current_cal_b;
    ui32_setpoint= PI_control(ui16_BatteryCurrent, (uint16_t) float_temp);
    if (ui32_setpoint<3)ui32_setpoint=0;
    if (ui32_setpoint>255)ui32_setpoint=255;
    ui8_control_state=1;
    //printf("R, %lu, %d, %d, %d\r\n", ui32_setpoint, ui8_regen_throttle, ui16_BatteryCurrent, (uint16_t) float_temp);
    }
  else if(ui8_BatteryVoltage<BATTERY_VOLTAGE_MIN_VALUE){
#endif
      //check for undervoltage
#ifndef REGEN

      i8_motor_temperature=(int8_t)((float)ui16_adc_read_regen_throttle ()*TEMP_CAL_A+TEMP_CAL_B); //calibration for tpm36 temperature sensor
      if(ui8_BatteryVoltage<BATTERY_VOLTAGE_MIN_VALUE){
#endif
      TIM1_CtrlPWMOutputs(DISABLE);
      uint_PWM_Enable=0; // highest priority: Stop motor for undervoltage protection
      ui32_setpoint=0;
      ui8_control_state=2;
#ifdef DIAGNOSTICS
      printf("Low voltage! %d\r\n",ui8_BatteryVoltage);
#endif
    }

  //check if rider is braking
  else if (brake_is_set()){
#ifdef REGEN_DIGITAL
            ui32_setpoint= PI_control(ui16_BatteryCurrent, REGEN_CURRENT_MAX_VALUE);  //Curret target = max regen,
            if (ui32_setpoint==0){ui32_setpoint=ui16_motor_speed_erps*2;} //try to get best regen at Low Speeds for BionX IGH
#else
            ui32_setpoint= PI_control(ui16_BatteryCurrent, ui16_current_cal_b);//Curret target = 0 A, this is to keep the integral part of the PI-control up to date
#endif

            if (ui32_setpoint<5){ui32_setpoint=0;}
            if (ui32_setpoint>255){ui32_setpoint=255;}
            ui8_control_state=3;
#ifdef DIAGNOSTICS            
      printf("you are braking!\r\n");REGEN_CURRENT_MAX_VALUE
#endif            
  }

  //limit max erps
  else if (ui32_erps_filtered>ui16_erps_max){
              ui32_setpoint= PI_control(ui32_erps_filtered, ui16_erps_max);//limit the erps to maximum value to have minimum 30 points of sine table for proper commutation
                    if (ui32_setpoint<5){ui32_setpoint=0;}
                    if (ui32_setpoint>255){ui32_setpoint=255;}
              ui8_control_state=4;
#ifdef DIAGNOSTICS
        printf("erps too high!\r\n");
#endif
    }

  //check if pedals are turning with throttle active in offroad mode
#if defined(THROTTLE_AND_PAS) || defined (TORQUE_SIMULATION)
  else if ((ui16_time_ticks_for_pas_calculation>timeout || !PAS_dir)&&!(ui8_offroad_state==255 && sumtorque>2)){
            ui32_setpoint= PI_control(ui16_BatteryCurrent, ui16_current_cal_b);//Curret target = 0 A, this is to keep the integral part of the PI-control up to date
                  if (ui32_setpoint<5){ui32_setpoint=0;}
                  if (ui32_setpoint>255){ui32_setpoint=255;}
            ui8_control_state=5;
#ifdef DIAGNOSTICS            
     //printf("P, %lu, %d, %d, %d\r\n", ui32_setpoint, sumtorque, ui16_BatteryCurrent, (uint16_t) ui16_current_cal_b);
     printf("you are not pedaling!\r\n");
#endif            
  }
#endif
 // check if pedals are turning in torquesensor mode, throttle active in offroad mode doesn't work here
#if defined(TORQUESENSOR)
  else if (ui16_time_ticks_for_pas_calculation>timeout || !PAS_dir){
            ui32_setpoint= PI_control(ui16_BatteryCurrent, ui16_current_cal_b);//Curret target = 0 A, this is to keep the integral part of the PI-control up to date
                  if (ui32_setpoint<5){ui32_setpoint=0;}
                  if (ui32_setpoint>255){ui32_setpoint=255;}
            ui8_control_state=5;
#ifdef DIAGNOSTICS            
     //printf("P, %lu, %d, %d, %d\r\n", ui32_setpoint, sumtorque, ui16_BatteryCurrent, (uint16_t) ui16_current_cal_b);
     printf("you are not pedaling!\r\n");
#endif            
  }
#endif

  else {

      //if none of the overruling boundaries are concerned, calculate new setpoint
#ifdef TORQUESENSOR
      ui16_PAS_accumulated-=ui16_PAS_accumulated>>3;
      ui16_PAS_accumulated+=PAS;
      ui16_time_ticks_between_pas_interrupt_smoothed=ui16_PAS_accumulated>>3;
      //uint32_current_target=((i16_assistlevel[ui8_assistlevel_global]*fummelfaktor*sumtorque*NUMBER_OF_PAS_MAGS))/(((uint32_t)ui16_time_ticks_between_pas_interrupt_smoothed)<<6)+ui16_current_cal_b; 						//calculate setpoint
      uint32_current_target=(((i16_assistlevel[ui8_assistlevel_global]*fummelfaktor*sumtorque*NUMBER_OF_PAS_MAGS))/(((uint32_t)ui16_time_ticks_between_pas_interrupt_smoothed)<<6)*(1000+ui32_SPEED_km_h/ui8_speedlimit_actual_kph))/1000+ui16_current_cal_b;
      //printf("vor: spd %d, pas %d, sumtor %d, setpoint %lu\n", speed, ui16_time_ticks_between_pas_interrupt_smoothed, sumtorque, ui32_setpoint);
      if (uint32_current_target>BATTERY_CURRENT_MAX_VALUE){
	  //printf("Current target %lu\r\n", uint32_current_target);
	  uint32_current_target=BATTERY_CURRENT_MAX_VALUE;
      }
      ui8_control_state=6;
#ifdef SPEEDSENSOR_INTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)uint32_current_target, (uint16_t) ui32_erps_filtered, (ui16_speed_kph_to_erps_ratio*((uint16_t)ui8_speedlimit_actual_kph))/100, (ui16_speed_kph_to_erps_ratio*((uint16_t)(ui8_speedlimit_actual_kph+2)))/100); //limit speed
#endif

#ifdef SPEEDSENSOR_EXTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)uint32_current_target, (uint16_t) ui32_SPEED_km_h, ui8_speedlimit_actual_kph*1000, (ui8_speedlimit_actual_kph+2)*1000); //limit speed
#endif
      ui32_setpoint= PI_control(ui16_BatteryCurrent, (uint16_t)uint32_current_target);
      if (ui32_setpoint<5)ui32_setpoint=0;
      if (ui32_setpoint>255)ui32_setpoint=255;
      //printf("T, %lu, %d, %d, %d\r\n", ui32_setpoint, sumtorque, ui16_BatteryCurrent, (uint16_t) uint32_current_target);
      //printf("%lu, %d, %d, %d\r\n", ui32_setpoint, ui16_time_ticks_between_pas_interrupt_smoothed>>3, ui16_BatteryCurrent, (uint16_t) uint32_current_target);

#endif

#if defined(THROTTLE)  || defined(THROTTLE_AND_PAS)
  float_temp=(float)sumtorque*(float)(BATTERY_CURRENT_MAX_VALUE-ui16_current_cal_b)/255.0+(float)ui16_current_cal_b; //calculate current target

  ui8_control_state=7;
#ifdef SPEEDSENSOR_INTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)float_temp, (uint16_t) ui32_erps_filtered, (ui16_speed_kph_to_erps_ratio*((uint16_t)ui8_speedlimit_actual_kph))/100, (ui16_speed_kph_to_erps_ratio*((uint16_t)(ui8_speedlimit_actual_kph+2)))/100); //limit speed
#endif


#ifdef SPEEDSENSOR_EXTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)float_temp, (uint16_t) ui32_SPEED_km_h, ui8_speedlimit_actual_kph*1000, (ui8_speedlimit_actual_kph+2)*1000); //limit speed
#endif

  if(setpoint_old>0 && (uint32_current_target-ui16_current_cal_b)*255/setpoint_old>PHASE_CURRENT_MAX_VALUE-ui16_current_cal_b){  // limit phase current according to Phase Current = battery current/duty cycle
      uint32_current_target=(PHASE_CURRENT_MAX_VALUE-ui16_current_cal_b)*setpoint_old/255+ui16_current_cal_b;
     ui8_control_state=8;
      // printf("Phase Current limited! %d, %d, %d\r\n", (uint16_t)uint32_current_target,(uint16_t)float_temp, setpoint_old );
  }

  ui32_setpoint= PI_control(ui16_BatteryCurrent, (uint16_t) uint32_current_target);
  if (ui32_setpoint<5)ui32_setpoint=0;
  if (ui32_setpoint>255)ui32_setpoint=255;

  //printf("%d, %d, %d, %d\r\n", (uint16_t) ui32_SPEED_km_h/1000, speed, ui16_BatteryCurrent, (uint16_t) uint32_current_target);
  //printf("setpoint %lu, Voltage %d, a %d, b %d, DCmax %d, erps %d\n", ui32_setpoint, ui8_BatteryVoltage, ui16_a, ui16_b, ui16_dutycycle_max, ui16_motor_speed_erps);
#endif

#ifdef TORQUE_SIMULATION
  ui16_PAS_accumulated-=ui16_PAS_accumulated>>3;
  ui16_PAS_accumulated+=PAS;
  ui16_time_ticks_between_pas_interrupt_smoothed=ui16_PAS_accumulated>>3;
  if (ui16_time_ticks_between_pas_interrupt_smoothed>ui16_s_ramp_end) //if you are pedaling slower than defined ramp end, current is proportional to cadence
    {
      uint32_current_target= (i16_assistlevel[ui8_assistlevel_global]*(BATTERY_CURRENT_MAX_VALUE-ui16_current_cal_b)/100);
      float_temp=((float)ui16_s_ramp_end)/((float)ui16_time_ticks_between_pas_interrupt_smoothed);

      uint32_current_target= ((int16_t)(uint32_current_target)*(int16_t)(float_temp*100))/100+ui16_current_cal_b;
      //printf("ui16_time_ticks_between_pas_interrupt_smoothed %d, delta %d, current target %d\r\n", ui16_time_ticks_between_pas_interrupt_smoothed, (int16_t)(float_temp*100), (int16_t) uint32_current_target);
    }
  else
    {
      uint32_current_target= (i16_assistlevel[ui8_assistlevel_global]*(BATTERY_CURRENT_MAX_VALUE-ui16_current_cal_b)/100+ui16_current_cal_b);
      //printf("current_target %d\r\n", (int16_t)uint32_current_target);
    }
   ui8_control_state=9;
  float_temp=(float)sumtorque*(float)(BATTERY_CURRENT_MAX_VALUE-ui16_current_cal_b)/255.0+(float)ui16_current_cal_b; //calculate current target
  if ((int32_t)float_temp>uint32_current_target){
    uint32_current_target=(int32_t)float_temp; //override torque simulation with throttle
    ui8_control_state=10;
  }

#ifdef SPEEDSENSOR_INTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)uint32_current_target, (uint16_t) ui32_erps_filtered, (ui16_speed_kph_to_erps_ratio*((uint16_t)ui8_speedlimit_actual_kph))/100, (ui16_speed_kph_to_erps_ratio*((uint16_t)(ui8_speedlimit_actual_kph+2)))/100); //limit speed
#endif

#ifdef SPEEDSENSOR_EXTERNAL
  uint32_current_target = CheckSpeed ((uint16_t)uint32_current_target, (uint16_t) ui32_SPEED_km_h, ui8_speedlimit_actual_kph*1000, (ui8_speedlimit_actual_kph+2)*1000); //limit speed
#endif

  if(setpoint_old>0 && (uint32_current_target-ui16_current_cal_b)*255/setpoint_old>PHASE_CURRENT_MAX_VALUE-ui16_current_cal_b){  // limit phase current according to Phase Current = battery current/duty cycle
      uint32_current_target=(PHASE_CURRENT_MAX_VALUE-ui16_current_cal_b)*setpoint_old/255+ui16_current_cal_b;
     ui8_control_state=8;
      // printf("Phase Current limited! %d, %d, %d\r\n", (uint16_t)uint32_current_target,(uint16_t)float_temp, setpoint_old );
  }
  ui32_setpoint= PI_control(ui16_BatteryCurrent, uint32_current_target);
    if (ui32_setpoint<5)ui32_setpoint=0;
    if (ui32_setpoint>255)ui32_setpoint=255;

   //printf("%lu, %d, %d, %d\r\n", ui32_setpoint, ui8_position_correction_value, ui16_BatteryCurrent, (uint16_t) uint32_current_target);
#endif

 if (!uint_PWM_Enable && ui8_BatteryVoltage>BATTERY_VOLTAGE_MIN_VALUE+8 ) //enable PWM if disabled and voltage is 2V higher than min, some hysteresis


     {
        TIM1_CtrlPWMOutputs(ENABLE);
        uint_PWM_Enable=1;
#ifdef DIAGNOSTICS
        printf("PWM enabled!\r\n");
#endif
     }
 } //end of else

  return ui32_setpoint;

} //end of update setpoint function
#endif

