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
#include "stm8s_itc.h"
#include "stm8s_gpio.h"
#include "interrupts.h"
#include "stm8s_tim2.h"
#include "motor.h"
#include "uart.h"
#include "adc.h"
#include "brake.h"
#include "utils.h"
#include "cruise_control.h"
#include "timers.h"
#include "pwm.h"
#include "PAS.h"
#include "SPEED.h"
#include "update_setpoint.h"
#include "config.h"
#include "display.h"
#include "display_kingmeter.h"


//uint16_t ui16_LPF_angle_adjust = 0;
//uint16_t ui16_LPF_angle_adjust_temp = 0;

uint16_t ui16_log1 = 0;
uint8_t ui8_slowloop_flag = 0;
uint8_t ui8_veryslowloop_counter = 0;
uint16_t ui16_log2 = 0;
uint8_t ui8_log = 0;
uint8_t ui8_i= 0; 				//counter for ... next loop
uint16_t ui16_torque[NUMBER_OF_PAS_MAGS]; 	//array for torque values of one crank revolution
uint16_t ui16_sum_torque = 0; 			//sum of array elements
float float_kv = 0;
float float_R = 0;
uint8_t ui8_torque_index=0 ; 			//counter for torque array
uint8_t a = 0; 					//loop counter

//static uint16_t ui16_throttle_counter = 0;
//uint16_t ui16_temp_delay = 0;
static int16_t i16_deziAmps;

uint8_t ui8_cheat_state = 0; 			//state of cheat procedure
uint8_t ui8_cheat_counter = 0; 			//counter for cheat procedure




uint8_t ui8_adc_read_throttle_busy = 0;
uint16_t ui16_SPEED_Counter = 0; 	//time tics for speed measurement
uint16_t ui16_SPEED = 64000; 		//speed in timetics
uint16_t ui16_PAS_Counter = 0; 		//time tics for cadence measurement
uint16_t ui16_PAS_High_Counter = 1;	//time tics for direction detection
uint16_t ui16_PAS_High=1;		//number of High readings on PAS
uint8_t PAS_dir=2;			//PAS direction flag
uint8_t PAS_act=3;			//recent PAS direction reading
uint8_t PAS_old=4;			//last PAS direction reading
uint16_t ui16_PAS = 32000;		//cadence in timetics
uint8_t ui8_PAS_Flag = 0; 		//flag for PAS interrupt
uint8_t ui8_SPEED_Flag = 0; 		//flag for SPEED interrupt


uint8_t ui8_assistlevel_global = 3;// for debugging of display communication

/////////////////////////////////////////////////////////////////////////////////////////////
//// Functions prototypes

// main -- start of firmware and main loop
int main (void);

//With SDCC, interrupt service routine function prototypes must be placed in the file that contains main ()
//in order for an vector for the interrupt to be placed in the the interrupt vector space.  It's acceptable
//to place the function prototype in a header file as long as the header file is included in the file that
//contains main ().  SDCC will not generate any warnings or errors if this is not done, but the vector will
//not be in place so the ISR will not be executed when the interrupt occurs.

//Calling a function from interrupt not always works, SDCC manual says to avoid it. Maybe the best is to put
//all the code inside the interrupt

// Local VS global variables
// Sometimes I got the following error when compiling the firmware: motor.asm:750: Error: <r> relocation error
// and the solution was to avoid using local variables and define them as global instead

// Brake signal interrupt
void EXTI_PORTA_IRQHandler(void) __interrupt(EXTI_PORTA_IRQHANDLER);
// Speed signal interrupt
void EXTI_PORTC_IRQHandler(void) __interrupt(EXTI_PORTC_IRQHANDLER);
// PAS signal interrupt
void EXTI_PORTD_IRQHandler(void) __interrupt(EXTI_PORTD_IRQHANDLER);

// Timer1/PWM period interrupt
void TIM1_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM1_UPD_OVF_TRG_BRK_IRQHANDLER);

// Timer2/slow control loop
void TIM2_UPD_OVF_TRG_BRK_IRQHandler(void) __interrupt(TIM2_UPD_OVF_TRG_BRK_IRQHANDLER);


#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
// UART2 receivce handler
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER);
#endif

#ifdef DISPLAY_TYPE_KT_LCD3
// UART2 receivce handler
void UART2_IRQHandler(void) __interrupt(UART2_IRQHANDLER);
#endif

/////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////


int main (void)
{
//  static uint32_t ui32_cruise_counter = 0;
//  static uint8_t ui8_cruise_duty_cycle = 0;
  static uint16_t ui16_setpoint = 0;
  static uint8_t ui8_temp = 0;
  static int16_t i16_temp = 0;
  uint16_t ui16_throttle_accumulated=0;


  //set clock at the max 16MHz
  CLK_HSIPrescalerConfig(CLK_PRESCALER_HSIDIV1);

  gpio_init ();
  brake_init ();
  while (brake_is_set()) ; // hold here while brake is pressed -- this is a protection for development
  debug_pin_init ();
  timer2_init ();
  uart_init ();
  pwm_init ();
  hall_sensor_init ();
  adc_init ();
  PAS_init();
  SPEED_init();
  display_init();

//  ITC_SetSoftwarePriority (ITC_IRQ_TIM1_OVF, ITC_PRIORITYLEVEL_2);

  enableInterrupts();

  watchdog_init (); //init watchdog after enabling interrupt to have fast loop running already

  #if (SVM_TABLE == SVM)
  TIM1_SetCompare1(126 << 1);
  TIM1_SetCompare2(126 << 1);
  TIM1_SetCompare3(126 << 1);
#elif (SVM_TABLE == SINE) || (SVM_TABLE == SINE_SVM)
  TIM1_SetCompare1(126 << 2);
  TIM1_SetCompare2(126 << 2);
  TIM1_SetCompare3(126 << 2);
#endif

  hall_sensors_read_and_action (); // needed to start the motor
//printf("Back in Main.c\n");

  for(a = 0; a < NUMBER_OF_PAS_MAGS;a++) {// array init
   ui16_torque[a]=0;
  }
  printf("System initialized\n");
  while (1)
  {
    static uint32_t ui32_counter = 0;
    uint16_t ui16_temp = 0;

    uint16_t ui32_temp = 0;
    uint8_t j = 0;//Schleifenzähler
    static float f_temp = 0;
#if (DISPLAY_TYPE & DISPLAY_TYPE_KINGMETER)
    // Update display after message received occurrence
    if (ui8_msg_received)
        {
	ui8_msg_received=0;
	//printf("%d\n", ui16_SPEED);
	display_update(); //Display aktualisieren aus Code vom Forumscontroller
        }
#endif

#ifdef DISPLAY_TYPE_KT_LCD3
    // Update display after message received occurrence
    if (ui8_msg_received)
        {
	ui8_msg_received=0;
	//printf("%d\n", ui16_SPEED);
	check_message(); //Display aktualisieren aus Code vom Forumscontroller
        }
#endif

    // Update speed after speed interrupt occurrence
    if (ui8_SPEED_Flag == 1)
    {
	ui16_SPEED=ui16_SPEED_Counter; 	//save recent speed
	ui16_SPEED_Counter=0;		//reset speed counter
	ui8_SPEED_Flag =0; //reset interrupt flag
	//printf("%d\r\n", ui16_SPEED);
	//printf("SPEEDtic\n");
    }
    if (ui16_SPEED_Counter>64000L)
        {
    	ui16_SPEED=64000; 	//Set Display to 0 km/h

        }
//in case of THROTTLEANDPAS or THORQUE_SIMULATION, process the PAS routine
#if defined(THROTTLE_AND_PAS)
	      if (ui8_PAS_Flag == 1)
	      	              {
	      	                ui16_PAS=ui16_PAS_Counter; 		//save recent cadence
	      	                //printf("PAStic %d\n", ui16_PAS_Counter);
	      	                ui16_PAS_Counter=0;			//reset PAS Counter

	      	                ui8_PAS_Flag =0; 			//reset interrupt flag
	      	          }
#endif


#if defined(TORQUESENSOR) || defined(TORQUE_SIMULATION)
    //	Update cadence, torque and battery current after PAS interrupt occurrence
    if (ui8_PAS_Flag == 1)
    {
      ui16_PAS=ui16_PAS_Counter; 		//save recent cadence
      ui16_PAS_High=ui16_PAS_High_Counter;
      //ui16_PAS_High= (uint16_t)(((float)ui16_PAS/(float)ui16_PAS_High)*1000.0);
      //printf("%d,%d,%d\r\n", (uint16_t)(((float)ui16_PAS/(float)ui16_PAS_High)*1000.0),ui16_PAS_Counter,ui16_PAS_High);




      if((float)ui16_PAS/(float)ui16_PAS_High>PAS_THRESHOLD){PAS_act=1;} //calculate PAS direction
      else{PAS_act=0;}

      if (PAS_act==PAS_old){PAS_dir=PAS_act;} //set direction only if two readings are in same direction
      PAS_old=PAS_act;

      ui16_PAS_Counter=1;
      ui16_PAS_High_Counter=1;//reset PAS Counter



      ui8_PAS_Flag =0; 			//reset interrupt flag

      ui8_temp = ui8_adc_read_throttle (); //read in recent torque value
      putchar (ui8_temp);
      ui16_torque[ui8_torque_index]= (uint8_t) map (ui8_temp , ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, SETPOINT_MAX_VALUE); //map throttle to limits
      ui16_sum_torque = 0;
      for(a = 0; a < NUMBER_OF_PAS_MAGS; a++) {			// sum up array content
	   ui16_sum_torque+= ui16_torque[a];
	   }
      ui8_torque_index++;
      if (ui8_torque_index>NUMBER_OF_PAS_MAGS-1){ui8_torque_index=0;} //reset index counter
    }


#endif


// scheduled update of setpoint and duty cycle (slow loop, 50 Hz)

	if (ui8_slowloop_flag)
	  {
	    //printf("MainSlowLoop\n");
	    ui8_slowloop_flag=0; //reset flag for slow loop
	    ui8_veryslowloop_counter++; // increase counter for very slow loop

#if defined(THROTTLE)  || defined(THROTTLE_AND_PAS) // read in Throttle value an map it to margins
	    ui16_throttle_accumulated -= ui16_throttle_accumulated>>3;
	    ui16_throttle_accumulated += ui8_adc_read_throttle ();

	    ui8_temp= ui16_throttle_accumulated>>3; //read in value from adc

	    ui16_sum_torque = (uint8_t) map (ui8_temp , ADC_THROTTLE_MIN_VALUE, ADC_THROTTLE_MAX_VALUE, 0, SETPOINT_MAX_VALUE); //map throttle to limits
#endif

//start of cheat procedure

if (ui8_cheat_state!=4)
  {
if(ui8_cheat_state==0 && !GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)) //first step, brake on.
  {
    ui8_cheat_state=1;
  }
if(ui8_cheat_state==1) //second step, make sure the brake is hold according to definded time
  {
    ui8_cheat_counter++;
    if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)&&ui8_cheat_counter<CHEAT_TIME_1) //brake is released too early
      {
	ui8_cheat_state=0;
	ui8_cheat_counter=0;
      }
    else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_cheat_counter>CHEAT_TIME_1+25) //brake is released according to cheatcode
    {
      ui8_cheat_state=2;
      ui8_cheat_counter=0;
    }
    else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)&&ui8_cheat_counter>CHEAT_TIME_1+25) //brake is released too late
        {
          ui8_cheat_state=0;
          ui8_cheat_counter=0;
        }
  }

if(ui8_cheat_state==2) //third step, make sure the brake is released according to definded time
  {
    ui8_cheat_counter++;
    if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)&&ui8_cheat_counter<CHEAT_TIME_2) //brake is hold too early
      {
	ui8_cheat_state=0;
	ui8_cheat_counter=0;
      }
    else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_cheat_counter>CHEAT_TIME_2+25) //brake is hold according to cheatcode
    {
      ui8_cheat_state=3;
      ui8_cheat_counter=0;
    }
    else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)&&ui8_cheat_counter>CHEAT_TIME_2+25) //brake is hold too late
        {
          ui8_cheat_state=0;
          ui8_cheat_counter=0;
        }
  }

if(ui8_cheat_state==3) //second step, make sure the brake is hold according to definded time
  {
    ui8_cheat_counter++;
    if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)&&ui8_cheat_counter<CHEAT_TIME_3) //brake is released too early
      {
	ui8_cheat_state=0;
	ui8_cheat_counter=0;
      }
    else if (GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN) && ui8_cheat_counter>CHEAT_TIME_3+25) //brake is released according to cheatcode
    {
      ui8_cheat_state=4;
      ui8_cheat_counter=0;
    }
    else if (!GPIO_ReadInputPin(BRAKE__PORT, BRAKE__PIN)&&ui8_cheat_counter>CHEAT_TIME_3+25) //brake is released too late
        {
          ui8_cheat_state=0;
          ui8_cheat_counter=0;
        }
  }

  }
//end of cheatprocedure

	      ui16_setpoint = (uint16_t)update_setpoint (ui16_SPEED,ui16_PAS,ui16_sum_torque,ui16_setpoint); //update setpoint


//#define DO_CRUISE_CONTROL 1
#if DO_CRUISE_CONTROL == 1
	  ui16_setpoint = cruise_control (ui16_setpoint);
#endif

     pwm_set_duty_cycle ((uint8_t)ui16_setpoint);

	  //pwm_set_duty_cycle ((uint8_t)ui16_sum_torque);



	  /****************************************************************************/
//very slow loop for communication
      if (ui8_veryslowloop_counter > 5){
	  ui8_veryslowloop_counter=0;
      //getchar1 ();

#ifdef DIAGNOSTICS
	  printf("%d, %d, %d\r\n", ui16_setpoint, (uint16_t)(((float)ui16_PAS/(float)ui16_PAS_High)*1000.0), ui16_BatteryCurrent);
#endif
	  //printf("erps %d, motorstate %d, cyclecountertotal %d\r\n", ui16_motor_speed_erps, ui8_motor_state, ui16_PWM_cycles_counter_total);

      //printf("cheatstate, %d, km/h %lu, Voltage, %d, setpoint %d, erps %d, current %d, correction_value, %d\n", ui8_cheat_state, ui32_SPEED_km_h, ui8_BatteryVoltage, ui16_setpoint, ui16_motor_speed_erps, ui16_BatteryCurrent, ui8_position_correction_value);
      //printf("%d, %d, %d, %d, %d, %d\n", int8_t_hall_case[0], int8_t_hall_case[1], int8_t_hall_case[2], int8_t_hall_case[3], int8_t_hall_case[4], int8_t_hall_case[5]);
	//printf("kv %d, erps %d, R %d\n", (uint16_t)(float_kv*10.0) , ui16_motor_speed_erps, (uint16_t)(float_R*1000.0));


      //printf("correction angle %d, Current %d, Voltage %d, sumtorque %d, setpoint %d, km/h %lu\n",ui8_position_correction_value, i16_deziAmps, ui8_BatteryVoltage, ui16_sum_torque, ui16_setpoint, ui32_SPEED_km_h);
      }//end of very slow loop


    }// end of slow loop
  }// end of while(1) loop
}
