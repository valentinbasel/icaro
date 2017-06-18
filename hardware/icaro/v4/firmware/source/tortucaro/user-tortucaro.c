
#include <stdlib.h>
#include <string.h>
#include <__cdc.c>
#include <np05_06.h>
#define ANALOGREAD
unsigned char i;
unsigned char receivedbyte,receivedbyte2;
unsigned char rxstr[64]="";
unsigned char rxstr2[64]="";
int valor=0;
int caracter;
void digital()
{
int sens=0;
int r=0;
	if (leo_puerto()==1)
		{
	    switch(caracter)
		    {
		    case '1':
				sens=21;
				break;
		    case '2':
				sens=22;
			    break;
		    case '3':
				sens=23;
			    break;
		    case '4':
				sens=24;
			    break;
			}
		}
caracter=0;
receivedbyte=0;
r=digitalread(sens);
if (r==1) 
CDCputs("0",1);
        else 
CDCputs("1",1);
}

void l293d()
{
int val=0;
if(leo_puerto()==1)
    {
	switch(caracter)
		{
		case '1':
		val=ICR_MOTS_AD;
		break;
		case '2':
		val=ICR_MOTS_AT;
		break;
		case '3':
		val=ICR_MOTS_IZ;
		break;
		case '4':
		val=ICR_MOTS_DE;
		break;
		case '5':
		val=0;
		break;
		default:
		val=0;
		}
    }
valor=val;
}
void analogico()
{
float valor=0;
unsigned char chaine[];
unsigned int val=0;
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
//int posic=0;
//int rb=0;
//int resultado=0;
//int	i=1;
	if (leo_puerto()==1)
		{
//        resultado = caracter;
		PORTB=caracter;
        caracter=0;
        receivedbyte=0;
        //~ CDCputs("k\n",2);
		}
}
void servos()
{
int posic=0;
int rb=0;
int resultado=0;
int val=0;
	if (leo_puerto()==1)
		{
	    switch(caracter)
		    {
		    case '1':
			    val=ICR_SRV1;
			    break;
		    case '2':
			    val=ICR_SRV2;
			    break;
		    case '3':
			    val=ICR_SRV3;
			    break;
		    case '4':
			    val=ICR_SRV4;
			    break;
		    case '5':
			    val=ICR_SRV5;
			    break;
		    }
		}
    caracter=0;
	receivedbyte=0;
	if (leo_puerto()==1)
		{
        resultado = caracter;
		ServoWrite(val,resultado);
        caracter=0;
        }
    receivedbyte=0;
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
    PORTD=0;
    PORTB=0;

}

//
//
void comparo()
{
    		if(caracter=='b')
			{
			CDCputs("icaro USB 02 \n",14);
			}
		if(caracter=='m')
			{
			servos();
			}
		if(caracter=='e')
			{
			analogico();
			}
		if(caracter=='l')
			{
			l293d();
			}
		if(caracter=='d')
			{
			digital();
			}
		if(caracter=='s')
			{
			puertob();
			}
}

int leo_puerto()
{
while ((receivedbyte=CDCgets(rxstr))==0);
        rxstr[receivedbyte]=0;
        if (receivedbyte>0)
            {
                caracter=rxstr[0];
                return 1;
            }
                //~ Delayms(10);

        return 0;
}
void loop()
{
/*    int t=0;
    for(t=0;t<20;t++)
    {
        PORTB=1;
        Delayms(1000);
        PORTB=0;
        Delayms(1000);
    }*/
    while(1)
    {
        //Delayms(5);
        PORTD=valor;
            if(leo_puerto()==1)
            {
            comparo();
 
            }
        caracter=0;
        receivedbyte=0;
    }
}
