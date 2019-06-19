#include <avr/io.h>
#include <stdio.h>
#include <math.h>
#define F_CPU 16000000UL
#define BAUD 115200
#define SYNC 0x5A
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <avr/pgmspace.h>
#include "uart.h"
#include "adc.h"
#include "SPI.h"
#include "I2C.h"
#include "ssd1306.h"

volatile char Sample;
volatile char flagADC;
volatile int length;
volatile char type = 0;
volatile unsigned char sample_rate;
volatile unsigned char sample_rate2;
volatile int sample_rate3;
volatile unsigned int record_length;
volatile unsigned int record_length2;
volatile int record_length3;
volatile char data_buffer[11];

volatile char sample_flag = 1;
volatile char adc_buffer1[1000];
volatile char adc_buffer2[1000];
volatile char adc_send_done = 0;

char BTN = 0;
char SW = 0;
char ActiveIndicator = 0;
char Shape = 0;
char Amplitude = 0;
char Frequency = 0;
char data_return[11];
char start_stop = 0;

unsigned char j;
char Bodeplot_Array[255];
char Bodeplot_Send[262];
unsigned char Amplitude_max;
unsigned char Amplitude_min;
unsigned char Amplitude_Bodeplot;
unsigned char Amplitude_ref;
unsigned int x;

uint8_t _i2c_address;
uint8_t display_buffer[1024];

void init_timer1(unsigned int sps){
	TCCR1A = 0;
	TCCR1B = 0;
	TCNT1 = 0;
	TCCR1B |=(1<<WGM12)|(1<<CS11)|(1<<CS10); //CTC mode
	
	OCR1A = (unsigned int)25*(10000/((float)sps))-1;
// 	if ((sps<31)){
// 		TCCR1B |=(1<<CS11)|(1<<CS10);
// 		OCR1A = (F_CPU/(sps*64))-64;
// 	}
// 	else if ((sps<245)){
// 		TCCR1B |=(1<<CS11);
// 		OCR1A = (F_CPU/(sps*8))-8;
// 	}
// 	else{
// 		TCCR1B |=(1<<CS10);
// 		OCR1A = (F_CPU/(sps))-1;
// 	}
	TIMSK1 |=(1<<OCIE1A); //interrupt when TCNNT1=OCR1A value
}

void adc_packet_send(){
	int j = 5;
	char adc_send[record_length3 + 7];
	int totlen = record_length3+7;
	char len2 = totlen;
	char len1 = (totlen >> 8);
	adc_send[0] = 0x55;
	adc_send[1] = 0xAA;
	adc_send[2] = len1;
	adc_send[3] = len2;
	adc_send[4] = 0x02;
	char check = 0;
	adc_send[record_length3 + 5] = check;
	adc_send[record_length3 + 6] = check;
	if(sample_flag == 1){
		while(j < record_length3+5){
			adc_send[j] = adc_buffer1[j-5];
			j++;
		}
	}
	if(sample_flag == 2){
		while(j < record_length3+5){
			adc_send[j] = adc_buffer2[j-5];
			j++;
		}
	}
	putsUSART1(adc_send, record_length3+6);
}

int main(void)
{
	init_adc(0x00);
	uart_Init(16);
	uart0_Init(16);
	I2C_Init();
	InitializeDisplay();
	reset_display();
	SPI_MasterInit();
	sei();
	init_timer1(10);
	char str[5];

    while (1) 
    {
		if ((flagADC=1)){
			flagADC = 0;
 			itoa(Sample,str,10);
 			sendStrXY(str,1,1);
 			sendStr("  ");
		}
		switch(type){
		
		case 1:
		
		sendStrXY("Generator   ",5,0);
		BTN = data_buffer[5];
		SW = data_buffer[6];
		
		if (BTN==0){
			if (ActiveIndicator == 0){
				Shape = SW;
			}
			if (ActiveIndicator == 1){
				Amplitude = SW;
			}
			if (ActiveIndicator == 2){
				Frequency = SW;
			}
			
			MCU_to_FPGA(Shape,Amplitude,Frequency);
		}
		
		if (BTN==1){
			if (ActiveIndicator == 2){
				ActiveIndicator = 0;
			}
			else if (ActiveIndicator == 0){
				ActiveIndicator = 1;
			}
			else if (ActiveIndicator == 1){
				ActiveIndicator = 2;
			}
		}
		
		if (BTN==2){
			if (start_stop == 0){
				MCU_to_FPGA(Shape,Amplitude,Frequency); //start generator
				start_stop = 1;
			}
			if (start_stop == 1){
				MCU_to_FPGA(0,0,0); //stop generator
				start_stop = 0;	
			}			
		}

		if (BTN==3){
			Shape = 0;
			Amplitude = 0;
			Frequency = 0;
		}
		
		data_return[0] = 0x55; //sync
		data_return[1] = 0xAA; //sync
		data_return[2] = 0x00; //length
		data_return[3] = 0x0b; //length
		data_return[4] = 0x01; //type
		data_return[5] = ActiveIndicator; // indicator
		data_return[6] = Shape; // shape
		data_return[7] = Amplitude; // amplitude
		data_return[8] = Frequency; // frequency
		data_return[9] = 0x00; //checksum
		data_return[10] = 0x00; //checksum
		
		putsUSART1(data_return,10);
		type = 0; // Reset type, så knapper kun registreres 1 gang
		break;
		
		case 0:
		break;
		
		case 2:
		sendStrXY("Oscilloscope",5,0);
		
		sample_rate = data_buffer[5];
		sample_rate2 = data_buffer[6];
		sample_rate3 = (sample_rate<<8)|sample_rate2;
		
		record_length = data_buffer[7];
		record_length2 = data_buffer[8];
		record_length3 = (record_length<<8)|record_length2;
		
		init_timer1(sample_rate3);
		
		if(record_length3 > 0){
			adc_packet_send();
		}
		
		break;
		
		case 3:
		
		sendStrXY("Bodeplot    ",5,0);

		init_timer1(10000);
		Shape = 3; //sinus
		Amplitude = 0xff; //3,3V

		for(j=0; j<255; j++){
			Frequency = (j+1); //+1 da frekvensen ikke må være 0

			MCU_to_FPGA(Shape,Amplitude,Frequency);

			Amplitude_min = 0xff; // sikre at sample er mindre første gang
			Amplitude_max = 0x00; // sikre at sample er større første gang

			for(x=0; x<=1000; x++){

				if (Sample < Amplitude_min){
					Amplitude_min = Sample;
				}
				if (Sample > Amplitude_max){
					Amplitude_max = Sample;
				}
			}

			Amplitude_Bodeplot = (Amplitude_max - Amplitude_min)/2;

			Bodeplot_Array[j] = Amplitude_Bodeplot;
		}
		Amplitude_ref = Bodeplot_Array[0];

		Bodeplot_Send[0] = 0x55;
		Bodeplot_Send[1] = 0xAA;
		Bodeplot_Send[2] = 0x01;
		Bodeplot_Send[3] = 0x06;
		Bodeplot_Send[4] = 0x03;

		for(j=0; j<255; j++){
			Bodeplot_Send[j+5] = Bodeplot_Array[j] / Amplitude_ref;
		}

		Bodeplot_Send[260] = 0x00;
		Bodeplot_Send[261] = 0x00;

		putsUSART1(Bodeplot_Send, 261);
	
		break;
		}
	}
}

ISR(TIMER1_COMPA_vect){
	ADCSRA |= (1<<ADSC);
}

ISR(ADC_vect){
	static int i = 0;
	Sample = ADCH;
	if(sample_flag == 1){
		adc_buffer1[i] = ADCH;
		i++;
		if(i > record_length3-1){
			i = 0;
			sample_flag = 2;
		}
	}
	if(sample_flag == 2){
		adc_buffer2[i] = ADCH;
		i++;
		if(i > record_length3-1){
			i = 0;
			sample_flag = 1;
		}
	}
	flagADC = 1;
}

ISR(USART1_RX_vect){
	static int i;
	static int max_len = 11;
	data_buffer[i] = UDR1;
	i++;
	if(data_buffer[4] == 1){
		type = 1;
		max_len = 9;
	}
	if(data_buffer[4] == 2){
		type = 2;
		max_len = 11;
	}
	if(data_buffer[4] == 3){
		type = 3;
		max_len = 7;
	}
	if(i == max_len){
		i = 0;
	}
}