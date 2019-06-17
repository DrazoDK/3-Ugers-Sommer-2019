#ifndef SPI_H_
#define SPI_H_

#define F_CPU 16000000UL

#include <stdio.h>
#include <string.h>
#include <avr/io.h>

void SPI_MasterInit(void);
void SPI_SlaveInit(void);
void putcSPI_master(unsigned char cData);
unsigned char getcSPI_Master(void);

#endif /* SPI_H_ */