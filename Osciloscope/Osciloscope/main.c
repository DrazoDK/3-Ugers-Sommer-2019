#include <avr/io.h>
#include <stdio.h>
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1
#include <util/delay.h>
#include <avr/interrupt.h>
#include "uart.h"
#include "adc.h"
volatile char intrflag;

void init_intr(){
	EICRB|=(1<<ISC41); //Interrupt sense control, Falling edge
	EIMSK|=(1<<INT4); //External interrupt 4 enable
}

int main(void)
{
	
    while (1) 
    {
	sei();
	init_intr();
	init_adc();
	uart_Init(MYUDRRF);
    }
}

ISR(INT4_vect){
	intrflag = 1;
}
