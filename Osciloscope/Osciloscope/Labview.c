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

void LV_Recieve(unsigned char *ptr){
	
	while(){
		char RawData[8000];
		char i = 0;
		int count;
	}
}

char getchUSART1(void){
	while(!(UCSR1A & (1<<RXC1)));
	return UDR1;
}