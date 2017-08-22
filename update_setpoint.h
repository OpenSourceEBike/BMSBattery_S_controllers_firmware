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
#define wheel_circumference 2000L 	// wheel circumference for calculation speed, "L" for assigning a "long" variable
#define fummelfaktor 128L		//factor to bring setpoint in right range
#define timeout 3125 			//time after that motor stops, if you are not pedaling

#include "main.h"

uint16_t update_setpoint (uint16_t speed, uint16_t PAS, uint16_t sumtorque, uint16_t setpoint_old );


#endif /* _SPEED_H */
