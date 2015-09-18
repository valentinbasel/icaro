#include<np05_06.h>
#include <string.h>

#define __UART__
#define __LCD__
#define __PING__

/* Definiciones para implementar comunicación UART*/
#if defined(__UART__)
	#include<uart18f2550.c>
#endif

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
    ServoAttach(13);
    ServoAttach(14);
    ServoAttach(15);
    ServoAttach(16);
    ServoAttach(17);
    #if defined(__LCD__)
	//Uso el PORTB para el LCD (usando los primeros 4bits y los
	// otros dos para RS y E
	lcd(4, 5, 0, 1, 2, 3, 0, 0, 0, 0); // RS, E, D4 ~ D8	
	// Defino el numero de columnas y filas del LCD: 
    	begin(8, 2);
        home();
    #endif
        serial_begin(9600);

}

void mens(int val)
{
	int p[37]={'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9',' '};
	char n[]=" ";
	int i=0;
	for (i=0;i<37;i++)
	{
		if (val==p[i]) 
		{
		n[0]=p[i];
		lcdPrint(n);
		Delayms(1); 
		return;
		}
	}
	if (val=='?') {lcdPrint("?"); Delayms(1);return;}
	if (val=='!') {lcdPrint("!"); Delayms(1);return;}
	if (val=='#') {clear(); Delayms(1);return;}
	if (val=='$') {setCursor(0,1); Delayms(1);return;}
}

/*funciones*/

void caminar(int tiempo,int p, int n)
{
	int pder[4]={10,75,75,10};
	int pizq[4]={65,130,130,65};
	int cder[4]={100,100,45,45};
	int cizq[4]={80,80,130,130};
	int i=0;
	for(i=0;i<4;i++)
	{
		ServoWrite(14,pder[p]);//pie derecho
		ServoWrite(15,pizq[p]);//pie izquierdo
		ServoWrite(16,cder[p]);//cadera derecha
		ServoWrite(17,cizq[p]); //cadera izquierda
		Delayms(tiempo);
		p=p+n;
	}
}

void parado()
{
/*     PARADO   */
	ServoWrite(13,0);//no se usa
	ServoWrite(14,65);//pie derecho
	ServoWrite(15,90);//pie izquierdo
	ServoWrite(16,70);//cadera derecha
	ServoWrite(17,110); //cadera izquierda
}

int caractere;
void loop()
{	
	int valor=0;
	parado();
	Delayms(10);
	if (serial_available())
	{
		if(caractere=='d')
		{

		valor=ping();
		Delayms(100);
		printNumber(valor,10);
		home();
		Delayms(100);
		}
		if(caractere=='a')
		{
		caminar(200,0,1);
		Delayms(100);
		}
		if(caractere=='t')
		{
		caminar(200,3,-1);
		Delayms(100);
		}
		caractere=serial_read();
		if(caractere=='<')
		{
		setCursor(0,0);
		while(caractere!='>')
		{
				caractere=serial_read();
				mens(caractere);
		}
		}	

	}
}