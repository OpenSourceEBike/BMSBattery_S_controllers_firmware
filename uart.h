/*
 * EGG OpenSource EBike firmware
 *
 * Copyright (C) Casainho, 2015, 2106, 2017.
 *
 * Released under the GPL License, Version 3
 */

#ifndef _UART_H
#define _UART_H

#include "main.h"

extern uint8_t ui8_array_flag;

void uart_init (void);
char getchar1(void);

#endif /* _UART_H */
