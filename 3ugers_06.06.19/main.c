#define F_CPU 16000000UL
#define SYNC 0x5A							

#include "USART.h"
#include "SPI.h"
#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>

void MCU_to_FPGA(char shape, char ampl, char freq); 
void debounceInitE4(void);
	char str[100] ={'\0'};
	int i = 0; 
	char flag = 0; 
int main(void)
{
 
	SPI_MasterInit();						//initialize SPI
	uart0_Init(MYUBRRF);					//initialize uart (for test)
	debounceInitE4();
	char i = 0; 
	
    while (1) 
    {
	MCU_to_FPGA(i%3, (char)i, (char)i);
	_delay_ms(1); 
	if (flag == 1)	
		i++;
		
	sprintf(str, "%d, ",i);
	putsUSART0(str);
	
	
	}
	
}

void MCU_to_FPGA(char shape,char ampl, char freq)
{
	char ChkSum = SYNC ^ shape ^ ampl ^ freq; 
// 			sprintf(str, "sync %x shape %x, ampl %x ,freq %x chksum %x",SYNC, shape, ampl, freq, ChkSum);
// 			putsUSART0(str);
// 	
	putcSPI_master(SYNC);
	putcSPI_master(shape);				
	putcSPI_master(ampl);
	putcSPI_master(freq);
	putcSPI_master(ChkSum);

}

void debounceInitE4(void)							//init debounce
{
	EICRB |= (1<<ISC41);							//Falling edge 1<-ISC41  0<-ISC40   -- (External Interrupt Control Register b)
	EIMSK |= (1<<INT4);								//enable int4 -- (External Interrupt Mask Register )
	//PORTE |= 0x10;									//pull_up
}


ISR(INT4_vect)
{
flag = 1;
}





