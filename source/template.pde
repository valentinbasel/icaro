float tiempo=0;
float tiempo2=0;
unsigned char i;

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

