#define F_CPU 16000000UL
#define SYNC 0x5A

#include "USART.h"
#include "SPI.h"
#include <avr/io.h>
#include <util/delay.h>
#include <stdio.h>


int main(void)
{
    
	char str[100] ={'\0'};
	char adr = 0, data = 0; 
	SPI_SlaveInit();						//initialize SPI
	uart0_Init(MYUBRRF);					//initialize uart (for test)
	int i = 0;
	char ChkSum1 ; 
	
    while (1) 
    {
		
// 			if(getcSPI_Master() == 0x5A)
// 			{
// 			adr     = getcSPI_Master();
// 			data    = getcSPI_Master();
// 			ChkSum1 = getcSPI_Master();
// 			
// 			char ChkSum2 = 0x5A ^ data ^ adr; 
// 			i = (ChkSum2 == ChkSum1 )? 1 : 0 ; 
			
			
			while(!(SPSR & (1<<SPIF)))								//wait while receiving
			;
			adr = SPDR;
			while(!(SPSR & (1<<SPIF)))								//wait while receiving
			;
			data = SPDR;
			while(!(SPSR & (1<<SPIF)))								//wait while receiving
			;
			ChkSum1 = SPDR;			
			
			char ChkSum2 = 0x5A ^ data ^ adr; 
			i = (ChkSum2 == ChkSum1 )? 1 : 0 ; 
			sprintf(str, "adr[%d] = %d data  ChkSum %d", adr,data,i);	
			putsUSART0(str);
//			}

    }
}

