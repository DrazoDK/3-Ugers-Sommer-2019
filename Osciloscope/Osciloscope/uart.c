#include <avr/io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>
//#define MYUBRRH F_CPU/16/BAUD-1

void uart_Init(unsigned int ubrr)
{
	UCSR1A=(1<<U2X1);
	
	UCSR1B|=(1<<RXEN1)|(1<<TXEN1);
	
	UCSR1C|=(1<<UCSZ10)|(1<<UCSZ11);
	
	UBRR1H = (unsigned char)(ubrr>>8);
	UBRR1L = (unsigned char)ubrr;
}

char getchUSART1(void){
	while(!(UCSR1A & (1<<RXC1)));
	return UDR1;
}


void putchUSART1(char tx){
	while(!(UCSR1A & (1<<UDRE1)));
	UDR1 = tx;
}

void getsUSART1(unsigned char *ptr){
	char cx;
	while ((cx = getchUSART1()) != '\r'){
		*ptr = cx;
		putchUSART1(cx);
		if (cx == '\n'){
			putchUSART1(' ');
			putchUSART1('\n');
			ptr--;
		}
		else ptr++;
	}
	*ptr = '\0';
}

void putsUSART1(char *ptr){
	while(*ptr){
		putchUSART1(*ptr);
		ptr++;
	}
}