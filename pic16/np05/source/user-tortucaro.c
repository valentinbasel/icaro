
#include <stdlib.h>
#include <string.h>
#include <__cdc.c>
unsigned char i;
unsigned char receivedbyte,receivedbyte2;
unsigned char rxstr[64]="";
unsigned char rxstr2[64]="";
int valor=0;
void digital()
{
int sens=0;
while ((receivedbyte=CDCgets(rxstr))==0);
rxstr[receivedbyte]=0;
if (receivedbyte>0)
{
if(rxstr[0]=='4')
    sens=21;
if(rxstr[0]=='3')
    sens=22;
if(rxstr[0]=='2')
    sens=23;
if(rxstr[0]=='1')
    sens=24;
}
rxstr[0]=0;
receivedbyte=0;
if (digitalread(sens)) 
CDCputs("0",1);
        else 
CDCputs("1",1);
}

void l293d()
{
int posic=0;
int rb=0;
int resultado=0;
int val=0;
int a=0;
	for(;;)
	{
	    receivedbyte2=CDCgets(rxstr2);
		if (receivedbyte2>0)
		{
		if(rxstr2[0]=='1')
			{
			val=96;
			}
		if(rxstr2[0]=='2')
			{
			val=144;
			}
		if(rxstr2[0]=='3')
			{
			val=64;
			}
		if(rxstr2[0]=='4')
			{
			val=32;
			}
		if(rxstr2[0]=='5')
			{
			val=0;
			}
			receivedbyte2=0;
			break;
		}
	}

valor=val;

}
void analogico()
{
//int posic=0;
//unsigned int rb=0;
float valor=0;
unsigned char chaine[];
unsigned int val=0;
//int puerto=0;
int i=0;
int tam=0;
	for(;;)
	{
	    receivedbyte2=CDCgets(rxstr2);
		if (receivedbyte2>0)
		{
		if(rxstr2[0]=='1')
			{
			val=13;
			}
		if(rxstr2[0]=='2')
			{
			val=14;
			}
		if(rxstr2[0]=='3')
			{
			val=15;
			}
		if(rxstr2[0]=='4')
			{
			val=16;
			}
		if(rxstr2[0]=='5')
			{
			val=17;
			}
		if(rxstr2[0]=='6')
			{
			val=18;
			}
		if(rxstr2[0]=='7')
			{
			val=19;
			}
		if(rxstr2[0]=='8')
			{
			val=20;
			}
			receivedbyte2=0;
			break;
		}
	}
valor=analogread(val);
x_ftoa(valor,chaine,2,2);
strcat(chaine,"f\n");
tam=strlen(chaine);
CDCputs(chaine,tam);
}

void puertob()
{
int posic=0;
int rb=0;
int resultado=0;
int	i=1;

	while ((receivedbyte=CDCgets(rxstr))==0);

	rxstr[receivedbyte]=0;
	if (receivedbyte>0)
		{

        resultado = rxstr[0];
        rxstr[receivedbyte]=0;
		PORTB=resultado;
		}
		

	
}
void servos()
{
int posic=0;
int rb=0;
int resultado=0;
int val=0;

	while ((receivedbyte=CDCgets(rxstr))==0);
	rxstr[receivedbyte]=0;
	if (receivedbyte>0)
		{
		if(rxstr[0]=='1')
			{
			val=10;
			}
		if(rxstr[0]=='2')
			{
			val=11;
			}
		if(rxstr[0]=='3')
			{
			val=12;
			}
		if(rxstr[0]=='4')
			{
			val=8;
			}
		if(rxstr[0]=='5')
			{
			val=9;
			}
		}
    rxstr[0]=0;
	receivedbyte=0;
	while ((receivedbyte=CDCgets(rxstr))==0);
	rxstr[receivedbyte]=0;
	if (receivedbyte>0)
		{
		//rxstr[receivedbyte]=0;
/*			for (posic=0;posic<=7;posic++)
			{
			rb=(rxstr[posic]);
			resultado=resultado+rb;
			}*/
        resultado = rxstr[0];
        rxstr[receivedbyte]=0;
		ServoWrite(val,resultado);
		}
rxstr[0]=0;
receivedbyte=0;
//CDCputs(resultado,DEC);

		return;

}
void setup()
{
TRISB=0;
pinmode(21,INPUT);
pinmode(22,INPUT);
pinmode(23,INPUT);
pinmode(24,INPUT);

pinmode(25,OUTPUT);
pinmode(26,OUTPUT);
pinmode(27,OUTPUT);
pinmode(28,OUTPUT);

ServoAttach(8);
ServoAttach(9);
ServoAttach(10);
ServoAttach(11);
ServoAttach(12);
}

//
//
void comparo()
{
    		if(rxstr[0]=='b')
			{
			CDCputs("icaro USB 02 \n",14);
			}
		if(rxstr[0]=='m')
			{
			servos();
			}
		if(rxstr[0]=='e')
			{
			analogico();
			}
		if(rxstr[0]=='l')
			{
			l293d();
			}
		if(rxstr[0]=='d')
			{
			digital();
			}
		if(rxstr[0]=='s')
			{
			puertob();
			}
}
void loop()
{
    PORTD=valor;
    Delayms(10);
	while ((receivedbyte=CDCgets(rxstr))==0);
	rxstr[receivedbyte]=0;
	if (receivedbyte>0)
		{
        comparo();
		 }
    rxstr[0]=0;
	receivedbyte=0;

}
