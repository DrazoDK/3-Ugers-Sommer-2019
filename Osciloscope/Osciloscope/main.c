#include <avr/io.h>
#include <stdio.h>
#define F_CPU 16000000UL
#define BAUD 115200
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/pgmspace.h>
#include "uart.h"
#include "adc.h"
#include "Labview.h"
#include "I2C.h"
#include "ssd1306.h"
volatile char Sample;
volatile char flagADC;
volatile char flagUART;

uint8_t _i2c_address;
uint8_t display_buffer[1024];

//used for test
const uint8_t test_bmp[] PROGMEM =
{0x00,0x41,0x22,0x14,0x08,0x00,0x00,0x00};

//used for test -
const uint8_t logo16_glcd_bmp[] PROGMEM =
{ 0b00000000, 0b11000000,
	0b00000001, 0b11000000,
	0b00000001, 0b11000000,
	0b00000011, 0b11100000,
	0b11110011, 0b11100000,
	0b11111110, 0b11111000,
	0b01111110, 0b11111111,
	0b00110011, 0b10011111,
	0b00011111, 0b11111100,
	0b00001101, 0b01110000,
	0b00011011, 0b10100000,
	0b00111111, 0b11100000,
	0b00111111, 0b11110000,
	0b01111100, 0b11110000,
	0b01110000, 0b01110000,
0b00000000, 0b00110000 };
/** example setting some text on the display*/

void init_timer1(unsigned int sps){
	TCCR1A = 0;
	TCCR1B = 0;
	TCNT1 = 0;
	TCCR1B |=(1<<WGM12); //CTC mode
	if ((sps<31)){
		TCCR1B |=(1<<CS11)|(1<<CS10);
		OCR1A = (F_CPU/(sps*64))-64;
	}
	else if ((sps<245)){
		TCCR1B |=(1<<CS11);
		OCR1A = (F_CPU/(sps*8))-8;
	}
	else{
		TCCR1B |=(1<<CS10);
		OCR1A = (F_CPU/(sps))-1;
	}
	TIMSK1 |=(1<<OCIE1A); //interrupt when TCNNT1=OCR1A value
}

int main(void)
{
	init_adc(0x00);
	uart_Init(16);
	uart0_Init(16);
	I2C_Init();
	InitializeDisplay();
	reset_display();
	sei();
	init_timer1(1000);
	char str[5];
		
    while (1) 
    {
		if ((flagADC=1)){
			flagADC = 0;
			
 			itoa(Sample,str,10);
 			sendStrXY(str,1,1);
 			sendStr("  ");
			//putchUSART1(Sample);
		}
		if  ((flagUART=1)){
			flagUART = 0;
		}
	}
}

ISR(TIMER1_COMPA_vect){
	ADCSRA |= (1<<ADSC);
}

ISR(ADC_vect){
	Sample = ADCH;
	flagADC = 1;

}
ISR(USART1_RX_vect){
	
	putchUSART0(UDR1);
	static int i=0;
	static char buffer[4];
	
	switch(i) {
		
		case 0:
		buffer[i]=UDR1;
		if (buffer[i]==0x55){
			i++;
		}
		break;
		
		case 1:
		buffer[i]=UDR1;
		if (buffer[i]==0xAA){
			i++;
		}
		else{
			i = 0;
		}
		break;
		
		case 2:
		buffer[i]=UDR1;
		char len1 = buffer[i];
		i++;
		break;
		
		case 3:
		buffer[i]=UDR1;
		char len2 = buffer[i];
		i++;
		
// 		putchUSART0(len1);
// 		putchUSART0(len2);
// 		
// 		int length = (len1<<8)&(len2);
// 		char str2[5];
// 		itoa(length,str2,10);
// 		sendStrXY(str2,2,1);
// 		sendStr("  ");
		break;
	}
}