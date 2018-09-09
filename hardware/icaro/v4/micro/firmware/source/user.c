 
#include<np05_06.h>
#define __LCD__
#define __PING__
#include "definiciones_icr.c"
#define ANALOGREAD
//variables globales
int contador=0;
int dist=0;
void enojado()
{
		lcd_setCursor(0,0);
		lcd_print(" <.><.> ");
		lcd_setCursor(0,1);
		lcd_print("  ####  ");
}
void contento()
{

		lcd_setCursor(0,0);
		lcd_print(" (.)(.) ");
		lcd_setCursor(0,1);
		lcd_print("  ----  ");
}



void mostrar_datos()
{
	int a=0;
	Delayms(500);
	while(analogread(15)>0)
	{
	//for (a=0;a<150;a++)
	//{
		lcd_home();
		lcd_print("a1:");
		lcd_setCursor(3,0); 
		lcd_printNumber(analogread(13),10);
		lcd_setCursor(0,1);
		lcd_print("hc:");
		lcd_setCursor(3,1);
		dist=ping();
		if (dist<16){
		lcd_printNumber(dist,10);
		}else
		{
		lcd_print("nnn");
		}
		Delayms(300);
		lcd_clear();
	//}
	}
}
/*funciones*/
void seg_lineas()
{
	int distancia=0;
	int a=0;
	for (a=0;a<6;a++)
	{
		lcd_home();
		lcd_printNumber(a,10);
		Delayms(1000);
	}
	contento();

	while(analogread(15)>0)
	{
	distancia=analogread(13);
		PORTD=ICR_MOTS_IZ;
		if(distancia<100)
		{
		PORTD=ICR_MOTS_DE;
		}
	}
}
void robot2()
{
	int dist=1;
	int distancia_a1 =0;
	int band=0;
	int a =0;
	int contador_t=0;
	for (a=0;a<6;a++)
	{
		lcd_home();
		lcd_printNumber(a,10);
		Delayms(1000);
	}

	while(analogread(15)>0)
	{
		dist=ping();
		//lcd_home();
		//lcd_printNumber(dist,10);
		//lcd_setCursor(0,1);
		//lcd_printNumber(analogread(13),10);
		enojado();
		PORTD=ICR_MOTS_INV_DE;
		Delayms(1);

		contador_t++;
		if (contador_t>50)
		{
			lcd_clear();
			contador_t=0;
		}
		if (dist<23 && dist>0)
		{
			lcd_home();
			lcd_print("matar!");
			band=0;
			while(band<10)
			{
				lcd_home();
				lcd_print("matar!");
				lcd_setCursor(0,1);
				lcd_printNumber(band,10);
				distancia_a1=analogread(13);
				PORTD=ICR_MOTS_AD;
				if (distancia_a1<50)
				{
					PORTD=ICR_MOTS_AT;
					Delayms(300);
					PORTD=ICR_MOTS_INV_DE;
					Delayms(600);
					band++;
					lcd_clear();
				}
			}
		}	
	}
}

void robot()
{
	int dist=1;
	int distancia_a1 =0;
	int band=0;
	int a =0;
	int contador_t=0;
	for (a=0;a<6;a++)
	{
		lcd_home();
		lcd_printNumber(a,10);
		Delayms(1000);
	}

	while(analogread(15)>0)
	{
		dist=ping();
		//lcd_home();
		//lcd_printNumber(dist,10);
		//lcd_setCursor(0,1);
		//lcd_printNumber(analogread(13),10);
		enojado();
		PORTD=ICR_MOTS_INV_DE;
		Delayms(1);

		contador_t++;
		if (contador_t>50)
		{
			lcd_clear();
			contador_t=0;
		}
		if (dist<23 && dist>0)
		{
			lcd_home();
			lcd_print("matar!");
			band=0;
			while(band<10)
			{
				lcd_home();
				lcd_print("matar!");
				lcd_setCursor(0,1);
				lcd_printNumber(band,10);
				distancia_a1=analogread(13);
				PORTD=ICR_MOTS_AD;
				if (distancia_a1>140)
				{
					PORTD=ICR_MOTS_AT;
					Delayms(300);
					PORTD=ICR_MOTS_INV_DE;
					Delayms(600);
					band++;
					lcd_clear();
				}
			}
		}	
	}
}

void menu()
{
	int output_b=0;
	int sw=0;
	while(1)
	{
		output_b=analogread(14);
		sw=analogread(15);
		if(output_b==0)
		{
		lcd_clear();
		contador++;
		Delayms(10);
		if(contador>4)contador=0;
		}
		lcd_print("prg: ");
		lcd_setCursor(6,0);
		lcd_printNumber(contador,10);
		lcd_setCursor(0,1);

		switch(contador)
		{
		case 0:
		lcd_print("menu ");
		break;
		case 1:
		lcd_print("sumo bl ");
		break;
		case 2:
		lcd_print("sumo ng");
		break;
		case 3:
		lcd_print("seg_line ");
		break;
		case 4:
		lcd_print("test");
		break;
		default:
		lcd_printNumber(contador,10);
		break;
		}
		
		lcd_home();

		
		if(sw==0)
		{
		return ;
		}
	}
}
void loop()
{
menu();
switch(contador)
{

case 1:
	lcd_clear();
	robot();
	contador=0;
	PORTD=0;
	break;
case 2:
	lcd_clear();
	robot2();
	contador=0;
	PORTD=0;
	break;
case 3:
	lcd_clear();
	seg_lineas();
	PORTD=0;
	contador=0;
	break;
case 4:
	lcd_clear();
	mostrar_datos();
	contador=0;
	break;

default:
	menu();
}
}