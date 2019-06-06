#ifndef adc_H_
#define adc_H_

#include <avr/io.h>
#include "I2C.h"
#include "ssd1306.h"
#include <stdio.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "uart.h"
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1

void init_adc();
#endif