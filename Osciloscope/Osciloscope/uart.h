
#ifndef uart_H_
#define uart_H_

#include <avr/io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1
#include <util/delay.h>

void uart_Init(unsigned int ubrr);
char getchUSART0(void);
void putchUSART0(char tx);
void getsUSART0(unsigned char *ptr);
void putsUSART0(char *ptr);
#endif