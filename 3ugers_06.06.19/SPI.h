


#ifndef SPI_H_
#define SPI_H_

extern void SPI_SlaveInit(void);
extern void SPI_MasterInit(void);
extern void putcSPI_master(unsigned char cData);
extern unsigned char getcSPI_Master(void);

#endif /* SPI_H_ */