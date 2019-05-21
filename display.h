/*
Generic display init and update functions
Written by Thomas Jarosch

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation; either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software Foundation,
Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301  USA
*/
#ifndef DISPLAY_H
#define DISPLAY_H

#include "config.h"

void display_init();
void display_update();
//void display_debug(HardwareSerial* localSerial);

//void display_show_important_info(const char *str, int duration_secs);
//void display_show_important_info(const __FlashStringHelper *str, int duration_secs);

void display_show_welcome_msg();
void display_show_welcome_msg_temp();

void display_prev_view();
void display_next_view();



//definitions for different screen mode
typedef enum {DISPLAY_MODE_TEXT,
              DISPLAY_MODE_GRAPHIC,               // Note: Same as _TEXT on 16x2 displays
              DISPLAY_MODE_MENU,
              DISPLAY_MODE_IMPORTANT_INFO
             } display_mode_type;

typedef enum {DISPLAY_VIEW_MAIN=0,

              _DISPLAY_VIEW_END
             } display_view_type;

extern display_view_type display_view;

extern display_mode_type display_mode; //currently display mode
extern uint8_t display_force_text;         //only valid for Nokia displays
extern uint16_t poti_stat;
extern uint16_t throttle_stat;
extern uint8_t battery_percent_fromvoltage;
extern uint8_t battery_percent_fromcapacity;
extern uint32_t wheel_time;
extern float current_display;


#ifdef DISPLAY_TYPE_KT_LCD3
typedef struct _lcd_configuration_variables
{
  uint8_t ui8_light_On;        //added by DerBasteler	
  uint8_t ui8_WalkModus_On;    //added by DerBasteler	
  uint8_t ui8_assist_level;
  uint8_t ui8_max_speed;
  uint8_t ui8_wheel_size;
  uint8_t ui8_p1;
  uint8_t ui8_p2;
  uint8_t ui8_p3;
  uint8_t ui8_p4;
  uint8_t ui8_p5;
  uint8_t ui8_c1;
  uint8_t ui8_c2;
  uint8_t ui8_c4;
  uint8_t ui8_c5;
  uint8_t ui8_c12;
  uint8_t ui8_c13;
  uint8_t ui8_c14;
} struc_lcd_configuration_variables;

#endif

#endif
