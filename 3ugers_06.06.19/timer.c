#include <avr/interrupt.h>

void init_timer(void)				    //init timer
{	
	TCCR1B|=(1<<CS11)|(1<<CS10);		//pre-scale N=64
	TCCR1B|=(1<<WGM12);					//CTC mode  s148 Atmega2560
	OCR1A  = 249;						//1 ms delay Atmega2560 s150
}
void enable_ctc_interrupt(void)			//enable_CTC interrupt
{
	TIMSK1|=(1<<OCIE1A);				//Timer/Counter Interrupt Mask Register
}
