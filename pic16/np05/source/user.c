float tiempo=0;
float tiempo2=0;
unsigned char i;

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
void derecha(){
int texto  =400 ;
ServoWrite(10,140);ServoWrite(11,50);ServoWrite(12,70);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
ServoWrite(10,70);ServoWrite(11,120);ServoWrite(12,140);ServoWrite(8,100);ServoWrite(9,100);
Delayms(texto );
}
void atras(){
int texto  =400 ;
ServoWrite(10,100);ServoWrite(11,60);ServoWrite(12,100);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
ServoWrite(10,70);ServoWrite(11,60);ServoWrite(12,70);ServoWrite(8,100);ServoWrite(9,100);
Delayms(texto );
ServoWrite(10,70);ServoWrite(11,110);ServoWrite(12,70);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
ServoWrite(10,100);ServoWrite(11,110);ServoWrite(12,100);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
}
void adelante(){
int texto  =400 ;
ServoWrite(10,100);ServoWrite(11,110);ServoWrite(12,100);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
ServoWrite(10,70);ServoWrite(11,110);ServoWrite(12,70);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
ServoWrite(10,70);ServoWrite(11,60);ServoWrite(12,70);ServoWrite(8,100);ServoWrite(9,100);
Delayms(texto );
ServoWrite(10,100);ServoWrite(11,60);ServoWrite(12,100);ServoWrite(8,0  );ServoWrite(9,0  );
Delayms(texto );
}
void loop()
{

int a =1 ;
adelante();
if(sensordigital(23) ){
while(a<=5){
atras();
a++;
}
a=1;
while(a<=5){
derecha();
a++;
}
}
}