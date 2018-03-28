/*
 * definiciones_icr.c
 * 
 * Copyright 2015 valentin basel <vbasel@localhost.localdomain>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */
#include<np05_06.h>

#include <stdlib.h>
#include <string.h>
//~ //#include <analog.c>
/* Definiciones para implementar comunicación USB-CDC*/
#if defined(__CDC__)
	#include <__cdc.c>
	// funciones especificas de ICARO
	void env_cdc(int valor)
	{
		unsigned char chaine[];
		int tam=0;
		itoa(valor,chaine,10);
		if (valor<1000) tam=4;
		if (valor<100) tam=3;
		if (valor<10) tam=2;
		strcat(chaine,"\n");
		CDCputs(chaine,tam);
		Delayms(10);
	}
#endif
/* Definiciones para implementar la USART*/
#if defined(__USART__)
	#include<uart18f2550.c>
#endif

/* Definiciones para implementar comunicación USB-CDC*/
#if defined(__LCD__)
	#include <lcdlib.c>
#endif

/* Definiciones para sensor de ultrasonido*/
#if defined(__PING__)
    #include<sensores.h>
	#define TRIG 0
	#define ECHO 1
#else
	#define TRIG 1
	#define ECHO 1
#endif

/*
#ifndef __USB__
void epap_in() { return; }
void epap_out() { return; }
void epapin_init() { return; }
void epapout_init() { return; }
#endif
*/

/* Variables globales*/
int _i=0;

/* Configuración de pines de entrada/salida */
void setup()
{
    TRISB=0; //defino PORTB como salida
    PORTB=0; 
    PORTD=0;
    pinmode(ICR_DIG1,INPUT);
    pinmode(ICR_DIG2,INPUT);
    //~ /* si se activa el sensor de ultra sonido, funciona como salida*/
    pinmode(ICR_DIG3,TRIG);
    pinmode(ICR_DIG4,ECHO);
    pinmode(ICR_l293_P1,OUTPUT);
    pinmode(ICR_l293_P2,OUTPUT);
    pinmode(ICR_l293_P3,OUTPUT);
    pinmode(ICR_l293_P4,OUTPUT);
    ServoAttach(ICR_SRV1);
    ServoAttach(ICR_SRV2);
    ServoAttach(ICR_SRV3);
    ServoAttach(ICR_SRV4);
    ServoAttach(ICR_SRV5);
    #if defined(__USART__)
    serial_begin(9600);  
    Delayms(1000);
    #endif
    #if defined(__LCD__)
	//~ //Uso el PORTB para el LCD (usando los primeros 4bits y los
	//~ // otros dos para RS y E
	lcd(4, 5, 0, 1, 2, 3, 0, 0, 0, 0); // RS, E, D4 ~ D8	
	// Defino el numero de columnas y filas del LCD: 
    	begin(8, 2);
        home();
    #endif
}

int sensordigital(int valor)
{
/*funcion para cambiar el valor de los sens digitales (estan invertidos con respecto a la placa)*/
	int temp=0;
	temp=digitalread(valor);
	if (temp==0)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}




