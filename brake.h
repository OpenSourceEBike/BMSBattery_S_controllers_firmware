/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _BRAKE_H
#define _BRAKE_H

#include "main.h"

void brake_init (void);
BitStatus brake_is_set (void);
void brake_coast_enable (void);
void brake_coast_disable (void);

#endif /* _BRAKE_H */
