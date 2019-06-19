#ifndef TIMER1_H_
#define TIMER1_H_

#include <avr/io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

void init_timer1(unsigned int sps);

#endif