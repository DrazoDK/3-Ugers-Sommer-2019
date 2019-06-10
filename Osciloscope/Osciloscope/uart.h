
#ifndef uart_H_
#define uart_H_

#include <avr/io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

void uart_Init(unsigned int ubrr);
char getchUSART1(void);
void putchUSART1(char tx);
void getsUSART1(unsigned char *ptr);
void putsUSART1(char *ptr);
#endif