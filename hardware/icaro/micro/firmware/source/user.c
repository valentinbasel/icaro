#include<np05_06.h>

#include "definiciones_icr.c"
/*funciones*/
void loop()
{
int a = 1;
for(_i=0;_i<255;_i++){
PORTB=a;
Delayms(100);
a++;
}
}