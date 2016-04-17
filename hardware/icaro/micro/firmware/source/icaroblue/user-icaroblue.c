#define __USART__
#include<np05_06.h>
#include "definiciones_icr.c"
#include <stdlib.h>
#include <string.h>
int caracter;
int valor=0;
void puertob()
{
	caracter=serial_read();
	PORTB=caracter;
}



void l293d()
{
	int val=0;
	caracter=serial_read();
	switch(caracter)
		{
		case '1':
		val=96;
		break;
		case '2':
		val=144;
		break;
		case '3':
		val=64;
		break;
		case '4':
		val=32;
		break;
		case '5':
		val=0;
		break;
		default:
		val=0;
		}
	valor=val;
}

void analogico()
{
	unsigned char chaine[];
	float valor=0;
	int val=0;
	caracter=serial_read();
	switch(caracter)
		{
		case '1':
		val=13;
		break;
		case '2':
		val=14;
		break;
		case '3':
		val=15;
		break;
		case '4':
		val=16;
		break;
		case '5':
		val=17;
		break;
		case '6':
		val=18;
		break;
		case '7':
		val=19;
		break;
		case '8':
		val=20;
		break;
		}
	valor=analogread(val);
	x_ftoa(valor,chaine,2,2);
	strcat(chaine,"f\n");
	serial_printf(chaine);
}



void digital()
{
	int sens=0;
	caracter=serial_read();
	switch(caracter)
		{
		case '4':
		sens=21;
		break;
		case '3':
		sens=22;
		break;
		case '2':
		sens=23;
		break;
		case '1':
		sens=24;
		break;
		}
	if (digitalread(sens)) 
		serial_printf("0");
		else 
			serial_printf("1");
}



void servos()
{
	int resultado=0;
	int val=0;
	caracter=serial_read();
	switch(caracter)
		{
		case '1':
			val=10;
			break;
		case '2':
			val=11;
			break;
		case '3':
			val=12;
			break;
		case '4':
			val=8;
			break;
		case '5':
			val=9;
			break;
		}
	resultado=serial_read();
	ServoWrite(val,resultado);
}



void comparo()
{
    		if(caracter=='b')
			{
			serial_printf("icaro USART 01 \n");
			}
        
		if(caracter=='m')
			{
			servos();
			}
	
		if(caracter=='d')
			{
			digital();
			}
        
		if(caracter=='e')
			{
			analogico();
			}

		if(caracter=='l')
			{
			l293d();
			}
		if(caracter=='s')
			{
			puertob();
			}
}
void loop()
{
    PORTD=valor;
    Delayms(10);
    if (serial_available())
		{
        caracter=serial_read();
        comparo();
		 }
}
