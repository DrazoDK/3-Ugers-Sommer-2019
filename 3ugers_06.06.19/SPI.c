#define F_CPU 16000000UL

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>  

void SPI_MasterInit(){


	DDRB |=(1<<DDB2)|(1<< DDB1)|(1<<DDB0);			//MOSI, SCK, !SS outputs!
	SPCR |=(1<<SPE)|(1<<SPIE)|(1<<MSTR);			//spi_enable,interrupt_enable, master
	SPCR |=(1<<SPI2X)|(1<<SPR1);					//clk frequency fosc/32
	//SPCR |=(1<<CPHA); 
	PORTB|=(1<<PB0);
}

void SPI_SlaveInit(){
	DDRB |=(1<<DDB3);   //MISO
	SPCR |=(1<<SPE);    //spi enable  slave
	SPCR |=(1<<CPOL);
}


// void putcSPI_master(unsigned char cData)
// {
// 	PORTB &=~ (1<<PB0);
// 	SPDR   =   cData;											//starts transmission
// 	while(!(SPSR & (1<<SPIF)));								//wait for transmission complete
// 	PORTB |=  (1<<PB0);										//Let the slave sleep
// 
// 
// 
// }


/*The following function sends a character from the master SPI to the slave SPI.*/
void putcSPI_master(unsigned char cx) {
	
	PORTB&=~(1<<PB0); //set !SS low activates slave
	SPDR = cx;
	while(!(SPSR & (1<<SPIF))); // wait for data to be shifted out
	// clear SPIF flag
	PORTB|=(1<<PB0);
	
}


unsigned char getcSPI_Master(void)
{
	while(!(SPSR & (1<<SPIF)))								//wait while receiving
	;
	return SPDR;											//return data register 
}
