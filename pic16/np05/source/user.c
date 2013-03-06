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
void loop()
{

PORTD=96;
Delayms(10);
if(sensordigital(24) ==1 ){
PORTD=144;
Delayms(1000);
PORTD=64;
Delayms(600);
}
}