#include<np05_06.h>

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
int a = 1;
for(_i=0;_i<255;_i++){
PORTB=a;
Delayms(100);
a++;
}
for(_i=0;_i<255;_i++){
PORTB=a;
Delayms(100);
a--;
}
}