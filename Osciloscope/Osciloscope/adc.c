#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#define F_CPU 16000000UL

//Initialize adc
void init_adc(char ADC_channel){
		ADCSRA|=(1<<ADPS2)|(1<<ADEN)|(1<<ADATE)|(1<<ADIE); //1 MHz med 16 Prescale, ADC Enable, ADC Intertupt Enable
		ADCSRB|=(1<<ADTS1)|(1<<ADTS2); //Auto-trigger = Timer1_overflow
		ADMUX=ADC_channel;
		ADMUX |= (1<<REFS0)|(1<<ADLAR); //ADC Spændings Refference = AVCC, Left shift resultat
		DIDR0 = (1<<ADC_channel);
		DIDR0 =~DIDR0;
		DIDR2 =0xff;
}