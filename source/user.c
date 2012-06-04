float tiempo=0;

float tiempo2=0;

unsigned char i;



void setup()

{

/*

for(i=0;i<8;i++)

{

pinmode(i,OUTPUT);

digitalwrite(i,HIGH);

}*/

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





void loop()

{





int a =0   ;
int  = ;
while(){
if(0  >0  ){
}
if(digitalread(21) ==0 ){
PORTD=64 ;
Delayms(0  );
a++ ;
}
if(digitalread(21) ==1 ){
PORTD=32 ;
Delayms(0  );
}
}
}
