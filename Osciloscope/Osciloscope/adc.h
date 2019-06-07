#ifndef adc_H_
#define adc_H_

#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#include "uart.h"
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1
#include <util/delay.h>

void init_adc(char ADC_channel);
#endif