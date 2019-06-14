
#ifndef USART_H_
#define USART_H_

#define F_CPU 16000000UL  
#define BAUD 19200
#define MYUBRRF F_CPU/8/BAUD-1   //Full Duplex  (U2Xn = 0)
#define MYUBRRH F_CPU/16/BAUD-1  //Half Duplex  (U2Xn = 1)


void uart1_Init(unsigned int);

void uart0_Init(unsigned int);
char getchUSART0(void);
void putchUSART0(char);
void putsUSART0(char*);
void getsUSART0(char*);


#endif 