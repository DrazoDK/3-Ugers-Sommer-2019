#define F_CPU 16000000UL
#define SYNC 0x5A							

#include "USART.h"
#include "SPI.h"
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>

void MCU_to_FPGA(char shape, char ampl, char freq); 


char str[100] ={'\0'};


int main(void)
{
 
	SPI_MasterInit();						//initialize SPI
	uart0_Init(MYUBRRF);					//initialize uart (for test)

	
    while (1) 
    {
			MCU_to_FPGA(3, 50, 1);
	}	
	
	
	
}






