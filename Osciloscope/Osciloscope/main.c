#include <avr/io.h>
#include <stdio.h>
#define F_CPU 16000000UL
#define BAUD 19200
#define MYUDRRF F_CPU/8/BAUD-1
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/pgmspace.h>
#include "uart.h"
#include "adc.h"
#include "I2C.h"
#include "ssd1306.h"
volatile char intrflag;

void init_intr(){
	EICRB|=(1<<ISC41); //Interrupt sense control, Falling edge
	EIMSK|=(1<<INT4); //External interrupt 4 enable
}
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
int main(void)
{
	sei();
	init_intr();
	init_adc(0x02);
	uart_Init(MYUDRRF);
	I2C_Init();
	InitializeDisplay();
	reset_display();
	char Sample;
    while (1) 
    {
		ADCSRA|=(1<<ADSC); //Sample starts
		while(!(ADCSRA &(1<<ADIF)));
		Sample = ADCH;
		
    }
}

ISR(INT4_vect){
	intrflag = 1;
}
