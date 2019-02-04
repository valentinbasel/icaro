#include<np05_06.h>
//#include <math.h>
#include "definiciones_icr.c"
//#define ANALOGREAD
#define SERIALPRINTSTRING
#define SERIALPRINTLN 
#define SERIALPRINTF
#define SERIALPRINTNUMBER
#define SERIALREAD
#include <serial.c>
#define __SERIAL__ 


int m1 [4]={1,2,4,8};
int m2 [4]={16,32,64,128};
int cantidad_p=4;
int m1p=0;
int m2p=0;
int t=3;
void at(int p)
	{
	int i=0;
	int n=0;
	for(n=0;n<p;n++){

			PORTB=m2[m2p]+m1[m1p];
			Delayms(t);
			m1p++;
			m2p++;
			if (m1p==cantidad_p){m1p=0;}
			if (m2p==cantidad_p){m2p=0;}
		}
	}

void ad(float p)
	{
	int i=0;
	int n=0;
	for(n=0;n<p;n++){

			PORTB=m2[m2p]+m1[m1p];
			Delayms(t);
			m1p--;
			m2p--;
			if (m1p<0){m1p=cantidad_p-1;}
			if (m2p<0){m2p=cantidad_p-1;}
		}
	}
void iz(float p)
	{
	int i=0;
	int n=0;
	for(n=0;n<p;n++){

			PORTB=m2[m2p]+m1[m1p];
			Delayms(t);
			m1p++;
			m2p--;
			if (m1p==cantidad_p){m1p=0;}
			if (m2p<0){m2p=cantidad_p-1;}
		}
	}
void de(float p)
	{
	int i=0;
	int n=0;
	for(n=0;n<p;n++){

			PORTB=m2[m2p]+m1[m1p];
			Delayms(t);
			m1p--;
			m2p++;
			if (m1p<0){m1p=cantidad_p-1;}
			if (m2p==cantidad_p){m2p=0;}
		}
	}



int convert_ascii(char a)
{
	switch(a)
	{
	case '0':
		return 0;
	case '1':
		return 1;
	case '2':
		return 2;
	case '3':
		return 3;
	case '4':
		return 4;
	case '5':
		return 5;
	case '6':
		return 6;
	case '7':
		return 7;
	case '8':
		return 8;
	case '9':
		return 9;
	default:
		return 255;
	}
}
int pot(int a)
{
	switch(a)
	{
	case 0:
		return 0;
	case 1:
		return 1;
	case 2:
		return 10;
	case 3:
		return 100;
	case 4:
		return 1000;
	default:
		return 0;
	}

}
int convertir_numero()
{
	char b=0;
	int n=0;
	int nn=0;
	int i=0;
	int n_f=0;
	int m[5]={0,0,0,0,0};
	int fin=0;
	while(b!=';' ){//|| b!='\n' || b!='\r'){
		if (Serial_available())
			{
			b=Serial_read();
			//
			if (b==';'){

				for(i=0;i<=n;i++){
					n_f=n_f+m[i]*pot(n-i);//*powf(10,n-i-1);
					
					}
				if(n>2)
					{
					fin=n_f+1;
					}else{	
						fin=n_f;
						}
				n_f=0;
				n=0;
				}else{
					nn=convert_ascii(b);
					if(nn!=255){
						m[n]=nn;
						n++;
						}
					}
			}
		}
//Delayms(1);
return fin;
}
/*funciones*/
void loop()
{
char b=0;
Serial_begin(9600);  
while(1)
{
if (Serial_available())
{
			b=Serial_read();

			switch(b)
			{
			case 'a':
				ad(convertir_numero());
				Serial_putchar('0');
				break;
			case 't':
				at(convertir_numero());
				Serial_putchar('0');
				break;
			case 'd':
				de(convertir_numero());
				Serial_putchar('0');
				break;
			case 'i':
				iz(convertir_numero());
				Serial_putchar('0');
				break;
			case 'l':
				//ServoAttach(10);
				ServoWrite(10,30);
				Delayms(1000);
				Serial_putchar('0');
				PORTB=0;
				break;
			case 'b':
				//ServoAttach(10);
				ServoWrite(10,120);
				Delayms(1000);
				Serial_putchar('0');
				PORTB=0;
				break;
			case 'v':
				t=convertir_numero();
				Serial_putchar('0');
				break;
			case 'c':
				PORTB=0;
				//ServoDetach(10);
				Serial_putchar('0');
				break;
			default:

				PORTB=0;
				Serial_putchar('1');
			}
}

}
}



//Serial_print(" err");
//Delayms(400);
