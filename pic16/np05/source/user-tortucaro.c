

unsigned char i;
unsigned char receivedbyte,receivedbyte2;
unsigned char rxstr[64]="";
unsigned char rxstr2[64]="";
int valor=0;
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
void sensor()
{
int posic=0;
unsigned int rb=0;
unsigned int valor=0;
unsigned int val=0;
int puerto=0;
int i=0;
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
CDCputs(valor,DEC);
}

void leer()
{
int posic=0;
int rb=0;
int resultado=0;
int	i=1;
	for(;;)
	{
	    receivedbyte2=CDCgets(rxstr2);
		if (receivedbyte2>0)
		{
		rxstr2[receivedbyte2]=0;

			for (posic=0;posic<=7;posic++)
			{
			rb=(rxstr2[posic]);
			i=i*i;// en cada iteracion i se duplica: 1,2,4,8,16,32,64,128
			resultado=resultado+rb;
			}
			/*el tema es que rb tengo que sumarle 177 para que no me queden corridos los bits
			(no se porque creo que es algo con respecto a los codigos ascii)*/
			resultado=resultado;
			PORTB=resultado;// en ves de usar digitalwrite, mando directamente al PORTB
			return;
		}
	}
}
void motors()
{
int posic=0;
int rb=0;
int resultado=0;
int val=0;
	for(;;)
	{
	    receivedbyte2=CDCgets(rxstr2);
		if (receivedbyte2>0)
		{
		if(rxstr2[0]=='1')
			{
			val=10;
			}
		if(rxstr2[0]=='2')
			{
			val=11;
			}
		if(rxstr2[0]=='3')
			{
			val=12;
			}
		if(rxstr2[0]=='4')
			{
			val=8;
			}
		if(rxstr2[0]=='5')
			{
			val=9;
			}
			receivedbyte2=0;
			break;
		}
	}
	for(;;)
	{
	    receivedbyte2=CDCgets(rxstr2);
		if (receivedbyte2>0)
		{
		rxstr2[receivedbyte2]=0;
			for (posic=0;posic<=7;posic++)
			{
			rb=(rxstr2[posic]);
			resultado=resultado+rb;
			}
		ServoWrite(val,resultado);
		receivedbyte2=0;
		return;
		}
	}
}
void setup()
{
pinmode(25,OUTPUT);

pinmode(26,OUTPUT);

pinmode(27,OUTPUT);

pinmode(28,OUTPUT);
ServoAttach(8);
ServoAttach(9);
ServoAttach(10);
ServoAttach(11);
ServoAttach(12);


//
//
}
void loop()
{
    PORTD=valor;
	receivedbyte=CDCgets(rxstr);
	rxstr[receivedbyte]=0;
	if (receivedbyte>0)
		{

		/*leo eel caracter b y devuelvo la bienvenida*/
		if(rxstr[0]=='b')
			{
			CDCputs("icaro USB 01 \n",14);
			}
		if(rxstr[0]=='m')
			{
			motors();
			}
		if(rxstr[0]=='e')
			{
			sensor();
			}
		if(rxstr[0]=='l')
			{
			l293d();
			}
		 }
	receivedbyte=0;
}
