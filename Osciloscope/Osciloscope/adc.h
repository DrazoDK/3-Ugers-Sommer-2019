#ifndef adc_H_
#define adc_H_

#include <avr/io.h>
#include <stdio.h>
#include <avr/interrupt.h>
#define F_CPU 16000000UL

void init_adc(char ADC_channel);

#endif