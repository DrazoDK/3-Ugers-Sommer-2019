#define MAX 12

#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <util/delay.h>
#include <string.h>


void uart1_Init(unsigned int ubrr)		 //initialization
{
	UCSR1A  =(1<<U2X1);					//full Duplex
	UCSR1B |=(1<<RXEN1) |(1<<TXEN1);	//Enable TX, RX
	UCSR1C |=(1<<UCSZ10)|(1<<UCSZ11);   //1 startBit, 1 stopBit, 8 dataBit, 0 parity
	UBRR1H  =(unsigned char)(ubrr>>8);	//ubrr is an int so it must be shifted into the two reg
	UBRR1L  =(unsigned char)ubrr;		//   -ii-
}    


void uart0_Init(unsigned int ubrr)		 //initialization
{
	UCSR0A  =(1<<U2X0);					//full Duplex
	UCSR0B |=(1<<RXEN0) |(1<<TXEN0);	//Enable TX, RX, 
	UCSR0C |=(1<<UCSZ00)|(1<<UCSZ01);   //1 startBit, 1 stopBit, 8 dataBit, 0 parity
	UBRR0H  =(unsigned char)(ubrr>>8);	//ubrr is an int so it must be shifted into the two reg
	UBRR0L  =(unsigned char)ubrr;		//   -ii-
}	  
char getchUSART0(void)					 //receives 1 byte
{
	while(!(UCSR0A & (1<<RXC0))); //polling\\ wait until finished receving
	return UDR0;
}

void putchUSART0(char tx)				 //transmit 1 byte
{
	while(!(UCSR0A & (1<<UDRE0))); //polling\\ waiting for empty transmit buffer
	UDR0 =tx;
}
void putsUSART0(char *pnt)				 //transmits string
{
	while(*pnt)
	{
		putchUSART0(*pnt++);
	}
	putchUSART0('\n');
		
}

void getsUSART0(char *pnt)
{
	char cx;
	char i = 0;

	while((cx = getchUSART0()) != '\r')
	{
		*pnt = cx; 
		if (cx == 0x08)
		{
			putchUSART0('\r');
			pnt--;
		}else{
			pnt++;
			i++;
		}
	}
	*pnt = 0; 
}


