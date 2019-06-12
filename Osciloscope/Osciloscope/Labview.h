#ifndef LABVIEW_H_
#define LABVIEW_H_

#include <avr/io.h>
#include <stdio.h>
#define F_CPU 16000000UL
#define BAUD 115200
#define MYUDRRF F_CPU/8/BAUD-1
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/pgmspace.h>
#include "uart.h"



#endif /* LABVIEW_H_ */