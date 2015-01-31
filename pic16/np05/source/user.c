#include<np05_06.h>
#define __CDC__

#include <stdlib.h>
#include <string.h>

/* Definiciones para implementar comunicación USB-CDC*/
#if defined(__CDC__)
	#include <__cdc.c>
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

/* Configuración de pines de entrada/salida */
void setup()
{
    TRISB=0;
    pinmode(ICR_DIG1,INPUT);
    pinmode(ICR_DIG2,INPUT);
    pinmode(ICR_DIG3,INPUT);
    pinmode(ICR_DIG4,TRIG);
    pinmode(24,ECHO);
    pinmode(ICR_l293_P1,OUTPUT);
    pinmode(ICR_l293_P2,OUTPUT);
    pinmode(ICR_l293_P3,OUTPUT);
    pinmode(ICR_l293_P4,OUTPUT);
    ServoAttach(ICR_SRV1);
    ServoAttach(ICR_SRV2);
    ServoAttach(ICR_SRV3);
    ServoAttach(ICR_SRV4);
    ServoAttach(ICR_SRV5);
}

/*funciones*/
void loop()
{
env_cdc(analogread(13) );
Delayms(100);
}