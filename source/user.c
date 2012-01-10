float tiempo=0;

float tiempo2=0;

void setup()

{

int i=0;

for(i=0;i<8;i++)

pinmode(i,OUTPUT);



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

void loop()

{



for(tiempo=0;tiempo<100;tiempo++){for(tiempo2=0;tiempo2<0;tiempo2++){PORTD=0;}}
for(tiempo=0;tiempo<100;tiempo++){for(tiempo2=0;tiempo2<0;tiempo2++){PORTD=0;}}
for(tiempo=0;tiempo<100;tiempo++){for(tiempo2=0;tiempo2<0;tiempo2++){PORTD=0;}}
if (digitalread(21)==0 ){
for(tiempo=0;tiempo<100;tiempo++){for(tiempo2=0;tiempo2<0;tiempo2++){PORTD=0;}}
}
}
