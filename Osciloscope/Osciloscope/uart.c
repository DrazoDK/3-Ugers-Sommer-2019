#include <avr/io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <util/delay.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1
//#define MYUBRRH F_CPU/16/BAUD-1

void uart_Init(unsigned int ubrr)
{
	UCSR0A=(1<<U2X0);
	
	UCSR0B|=(1<<RXEN0)|(1<<TXEN0);
	
	UCSR0C|=(1<<UCSZ00)|(1<<UCSZ01);
	
	UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0L = (unsigned char)ubrr;
}

char getchUSART0(void){
	while(!(UCSR0A & (1<<RXC0)));
	return UDR0;
}


void putchUSART0(char tx){
	while(!(UCSR0A & (1<<UDRE0)));
	UDR0 = tx;
}

void getsUSART0(unsigned char *ptr){
	char cx;
	while ((cx = getchUSART0()) != '\r'){
		*ptr = cx;
		putchUSART0(cx);
		if (cx == '\n'){
			putchUSART0(' ');
			putchUSART0('\n');
			ptr--;
		}
		else ptr++;
	}
	*ptr = '\0';
}

void putsUSART0(char *ptr){
	while(*ptr){
		putchUSART0(*ptr);
		ptr++;
	}
}