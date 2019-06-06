
#define F_CPU 16000000UL

#include <stdio.h>
#include <string.h>	
#include <avr/io.h>

void SPI_MasterInit(void)
{
	//SS OUTPUT, SCK OUTPUT'
	DDRB  |= (1<<DDB0)|(1<<DDB1);
	//MISO INPUT so pull-up activated
	PORTB |= (1<<PB3);
	//Master Specifications
	SPCR |= (1<<SPE)|(1<<MSTR)|(1<<SPR1);	
	
}


void SPI_SlaveInit(void)
{
	DDRB |=  (1<<DDB3);
	SPCR |=  (1<<SPE );
	PORTB|=  (1<<PB0 ); 
}



void putcSPI_master(unsigned char cData)
{
	PORTB &=~ (1<<PB0);
	SPDR   =   cData;											//starts transmission
	while(!(SPSR & (1<<SPIF)));								//wait for transmission complete
	PORTB |=  (1<<PB0);										//Let the slave sleep
}


unsigned char getcSPI_Master(void)
{
	while(!(SPSR & (1<<SPIF)))								//wait while receiving
	;
	return SPDR;											//return data register 
}
