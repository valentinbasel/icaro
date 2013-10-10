#include <stdlib.h>
#include <string.h>

float tiempo=0;
float tiempo2=0;
unsigned char i;
/*void enviarcdcf(int a)
{
    unsigned char cadena[];
    x_ftoa(a,cadena,2,2);
    strcat(cadena,"\n");
    CDCputs(cadena,strlen(cadena));
}*/
/*
//esto no anda bien, hay que revizarlo
unsigned char recibircdc()
{
    unsigned char receivedbyte;
    unsigned char recdc[64];
    while ((receivedbyte=CDCgets(recdc))==0);
    return recdc[0];
}*/

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
void setup()
{
    TRISB=0;
    pinmode(15,INPUT);
    pinmode(21,INPUT);
    pinmode(22,INPUT);
    pinmode(23,INPUT);
    pinmode(24,INPUT);
    pinmode(25,OUTPUT);
    pinmode(26,OUTPUT);
    pinmode(27,OUTPUT);
    pinmode(28,OUTPUT);
    ServoAttach(10);
    ServoAttach(11);
    ServoAttach(12);
    ServoAttach(8);
    ServoAttach(9);
}

unsigned int sensor(int valor)
{
    unsigned int an;
    an=analogread(valor);
    return an;
}

void ServoLento(int servo,int inicial,int final,int tiempo)
{
	int grado=0;
	if (inicial<final)
	{
	for (grado=inicial;grado<final;grado++)
	{
		ServoWrite(servo,grado);
		Delayms(tiempo);
	}
	}
	if (inicial>final)
	{
	for (grado=inicial;grado>final;grado--)
	{
		ServoWrite(servo,grado);
		Delayms(tiempo);
	}
	}
}
/*funciones*/
void loop()
{

while(1 ){
PORTD=144;
Delayms(1000);
PORTD=96;
Delayms(900);
}
}