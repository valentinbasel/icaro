float tiempo=0;

float tiempo2=0;

unsigned char i;

void setup()

{

for(i=0;i<8;i++)

{

pinmode(i,OUTPUT);

digitalwrite(i,LOW);

}

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



int a =1 ;
int ban =0  ;
while(a<10){
ServoWrite(10,10);
Delayms(1000);
ServoWrite(10,100);
Delayms(1000);
a++ ;
}


while(ban==0 ){
if(digitalread(21) ==1 ){
a==1;
ban==1 ;
}
}
}
