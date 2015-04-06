#include<np05_06.h>
#define __LCD__
#define __PING__

#include <stdlib.h>
#include <string.h>

/* Definiciones para implementar comunicación USB-CDC*/
#if defined(__CDC__)
	#include <__cdc.c>
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
	#define TRIG 0
	#define ECHO 0
#endif

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
    /* si se activa el sensor de ultra sonido, funciona como salida*/
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
    #if defined(__LCD__)
	//Uso el PORTB para el LCD (usando los primeros 4bits y los
	// otros dos para RS y E
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

/*funciones*/
void loop()
{
int a = 0;
home();
PORTD=ICR_MOTS_AD;
Delayms(10);
while(a<5){
printNumber(a,10);
if(ping() <10){
PORTD=ICR_MOTS_AT;
Delayms(800);
PORTD=ICR_MOTS_INV_IZ;
Delayms(500);
a++;
}
}
while(1){
PORTD=0;
Delayms(0);
}
}