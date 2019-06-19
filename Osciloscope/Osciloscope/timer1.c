#include <avr/io.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include <avr/pgmspace.h>
#include <avr/interrupt.h>

void init_timer1(unsigned int sps){
	TCCR1A = 0;
	TCCR1B = 0;
	TCNT1 = 0;
	TCCR1B |=(1<<WGM12)|(1<<CS11)|(1<<CS10); //CTC mode
	OCR1A = (unsigned int)25*(10000/((float)sps))-1;
	TIMSK1 |=(1<<OCIE1A); //interrupt when TCNNT1=OCR1A value
}