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
