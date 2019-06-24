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
volatile char Sample;
volatile char flagADC;
volatile char flagUART = 1;
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
volatile char adc_send_done = 1;
volatile long record_length_min;
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
volatile char SampleReady = 0;

void init_timer1(unsigned int sps){
	TCCR1A = 0;
	TCCR1B = 0;
	TCNT1 = 0;
	TCCR1B |=(1<<WGM12)|(1<<CS11)|(1<<CS10); //CTC mode
	
	OCR1A = (250000/sps)-1; //=(16.000.000*(1/sps)-64)/64
	TIMSK1 |=(1<<OCIE1A); //interrupt when TCNNT1=OCR1A value
}

void adc_packet_send(volatile char *ptr){
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
	
	while(j < record_length3+5){
		adc_send[j] = *ptr;
		ptr++;
		j++;
	}
	putsUSART1(adc_send, record_length3+6);
}

int main(void)
{
	init_adc(0x00);
	uart_Init(16);
	uart0_Init(16);
	SPI_MasterInit();
	sei();
	init_timer1(100);

	while (1)
	{	
		switch(type){
			
			case 1:
			if(flagUART == 0){
			flagUART = 1;
		
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
			type = 0; // Reset type, s? knapper kun registreres 1 gang
			
			}
			break;
			
			case 0:
			break;
			
			case 2:

			if (flagUART == 0){
				sample_rate = data_buffer[5];
				sample_rate2 = data_buffer[6];
				sample_rate3 = (sample_rate<<8)|sample_rate2;
				
				record_length = data_buffer[7];
				record_length2 = data_buffer[8];
				record_length3 = (record_length<<8)|record_length2;

				long calc1 = 7;
				long calc2 = -11520;
				record_length_min = -1*((calc1*sample_rate3)/(calc2+sample_rate3))+1;
				if(record_length3 < record_length_min){
					record_length3 = record_length_min;
				}
				
				//init_timer1(sample_rate3);
				OCR1A = (250000/sample_rate3)-1;
				flagUART = 1;
				}
			//if(record_length3 > 0){
			if (flagADC == 1){
				if(sample_flag == 1){
					if(adc_send_done == 1){
						adc_packet_send(adc_buffer2);
						adc_send_done = 2;
					}	
					}
				else if(sample_flag == 0){
					if(adc_send_done == 2){
						adc_packet_send(adc_buffer1);
						adc_send_done = 1;	
					}
				}
				flagADC = 0;
			}
			
			
			break;
		
			case 3:
			if(flagUART == 0){
				OCR1A = 24; // sample rate 10000 sps
				Shape = 3; //sinus
				Amplitude = 0xff; //3,3V
				
					Bodeplot_Send[0] = 0x55;
					Bodeplot_Send[1] = 0xAA;
					Bodeplot_Send[2] = 0x01;
					Bodeplot_Send[3] = 0x06;
					Bodeplot_Send[4] = 0x03;
				
				for(j=0; j<255; j++){
					Frequency = (j);

					MCU_to_FPGA(Shape,Amplitude,Frequency);

					Amplitude_min = 0xff; // sikre at sample er mindre første gang
					Amplitude_max = 0x00; // sikre at sample er større første gang

					for(x=0; x<=10000; x++){
						if (SampleReady == 1){
							SampleReady = 0;
							if (Sample < Amplitude_min){
								Amplitude_min = Sample;
							}
							if (Sample > Amplitude_max){
								Amplitude_max = Sample;
							}
						}
						else{
							x--;
						}
					}

					Amplitude_Bodeplot = (Amplitude_max - Amplitude_min);
					Bodeplot_Send[j+6] = Amplitude_Bodeplot;
				}
			
				Bodeplot_Send[260] = 0x00;
				Bodeplot_Send[261] = 0x00;

				putsUSART1(Bodeplot_Send, 261);
				flagUART = 1;
			}
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
	SampleReady = 1;
	if(sample_flag == 1){
		adc_buffer1[i] = ADCH;
		i++;
		//	adc_buffer1[250] = 0xff;
		if(i > record_length3-1){
			i = 0;
			sample_flag = 0;
			flagADC = 1;
		}
	}
	else{
		adc_buffer2[i] = ADCH;
		i++;
		//adc_buffer2[250] = 0x00;
		if(i > record_length3-1){
			i = 0;
			sample_flag = 1;
			flagADC = 1;
		}
	}
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
		flagUART = 0;
	}

}