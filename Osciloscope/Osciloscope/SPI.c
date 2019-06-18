#define F_CPU 16000000UL
#define SYNC 0x5A

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h>

void SPI_MasterInit(){

	DDRB |=(1<<DDB2)|(1<< DDB1)|(1<<DDB0);			//MOSI, SCK, !SS outputs!
	SPCR |=(1<<SPE)|(1<<MSTR);						//spi_enable,interrupt_enable, master
	SPCR |=(1<<SPI2X)|(1<<SPR1);					//clk frequency fosc/32

}


void MCU_to_FPGA(char shape,char ampl, char freq)
{
	char ChkSum;
	char MISO, MISO1;
	
	do{				//'do while' in case ChkSum is the same
		

		ChkSum = SYNC ^ shape ^ ampl ^ freq;
		
		
		//SYNC
		PORTB &=~ (1<<PB0);										// set ss/cs to low (enable)
		SPDR  =   SYNC;											//Data Register is ready
		while(!(SPSR & (1<<SPIF)))								//wait while receiving
		;
		MISO = SPDR;											//return data register
		PORTB  =  (1<<PB0);										//set ss/cs to High (disable)

		//Shape
		PORTB &=~ (1<<PB0);										// set ss/cs to low (enable)
		SPDR  =   shape;										//Data Register is ready
		while(!(SPSR & (1<<SPIF)))								//wait while receiving
		;
		MISO1 = SPDR;											//Get second half of data
		PORTB  =  (1<<PB0);										//set ss/cs to High (disable)

		//Ampl
		PORTB &=~ (1<<PB0);										// set ss/cs to low (enable)
		SPDR  =   ampl;											//Data Register is ready
		while(!(SPSR & (1<<SPIF)))								//wait while receiving
		;
		PORTB  =  (1<<PB0);										//set ss/cs to High (disable)

		//Freq
		PORTB &=~ (1<<PB0);										// set ss/cs to low (enable)
		SPDR  =   freq;											//Data Register is ready
		while(!(SPSR & (1<<SPIF)))								//wait while receiving
		;
		PORTB  =  (1<<PB0);										//set ss/cs to High (disable)

		//ChkSum
		PORTB &=~ (1<<PB0);										// set ss/cs to low (enable)
		SPDR  =   ChkSum;										//Data Register is ready
		while(!(SPSR & (1<<SPIF)))								//wait while receiving
		;
		PORTB  =  (1<<PB0);										//set ss/cs to High (disable)


		MISO =  (MISO << 1) | (MISO1 >> 7);						// the MISO signal is shifted one bit too far this compensates for that
		
		
		
		//til test
		//		char str[100] ={'\0'};
		// 		sprintf(str, "sync [%x],  shape [%x],  ampl [%x],  freq [%x],  chksum [%x],   MISO [%x],  counter = %d = %x",SYNC, shape, ampl, freq, ChkSum, MISO, counter, counter);
		// 		putsUSART0(str);
		
	}while (MISO != ChkSum);
}