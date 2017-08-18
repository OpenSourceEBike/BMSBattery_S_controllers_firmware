/*
 * OpenSource EBike firmware
 *
 * Copyright (C) Stancecoke 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _update_setpoint_H
#define _update_setpoint_H
#define limit 25 			// speed limit in km/h
#define wheel_circumference 2000 	// wheel circumference for calculation speed
#define fummelfaktor 1 			//factor to bring setpoint in right range
#define timeout 3125 			//time after that motor stops, if you are not pedaling

#include "main.h"

uint8_t update_setpoint (int16_t speed, int16_t PAS, int16_t sumtorque, int16_t setpoint_old );


#endif /* _SPEED_H */
