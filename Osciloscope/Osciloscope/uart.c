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
	
	UCSR1B|=(1<<RXEN1)|(1<<TXEN1)|(1<<RXCIE1); // enable Rx og TX, enable recieve compleate interrupt.
	
	UCSR1C|=(1<<UCSZ10)|(1<<UCSZ11);
	
	UBRR1H = (unsigned char)(ubrr>>8);
	UBRR1L = (unsigned char)ubrr;
}

void uart0_Init(unsigned int ubrr)
{
	UCSR0A=(1<<U2X0);
	
	UCSR0B|=(1<<RXEN0)|(1<<TXEN0); // enable Rx og TX, enable recieve compleate interrupt.
	
	UCSR0C|=(1<<UCSZ00)|(1<<UCSZ01);
	
	UBRR0H = (unsigned char)(ubrr>>8);
	UBRR0L = (unsigned char)ubrr;
}

char getchUSART1(void){
	while(!(UCSR1A & (1<<RXC1)));
	return UDR1;
}


void putchUSART1(char tx){
	while(!(UCSR1A & (1<<UDRE1)));
	UDR1 = tx;
}

void putchUSART0(char tx){
	while(!(UCSR0A & (1<<UDRE0)));
	UDR0 = tx;
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

void putsUSART1(char *ptr, int length){
	int i = 0;
	while((i <= length)){
		putchUSART1(*ptr);
		ptr++;
		i++;
	}
}

void putsUSART0(char *ptr, int length){
	int i = 0;
	while((i <= length)){
		putchUSART0(*ptr);
		ptr++;
		i++;
	}
}