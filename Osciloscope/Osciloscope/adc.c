#include <avr/io.h>
#include <stdio.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include "uart.h"
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1

//Initialize adc
void init_adc(){
	ADCSRA|=(1<<ADPS0)|(1<<ADPS1)|(1<<ADPS2)|(1<<ADEN)|(1<<ADIE)|(1<<ADATE); //125 kHz med 128 Prescale, ADC Enable, ADC Intertupt Enable, Auto-trigger Enable
	ADCSRB|=(1<<ADTS1)|(1<<ADTS2); //Auto-trigger = Timer1_overflow
	ADMUX |= (1<<REFS0); //ADC Spændings Refference = AVCC
}