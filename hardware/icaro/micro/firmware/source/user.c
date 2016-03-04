#include<np05_06.h>
#include "definiciones_icr.c"
/*
/*
la Función "loop", es la parte principal del programa que escribamos con ICARO.
Se encarga de ejecutar todo nuestro codigo fuente y repetirlo.
Internamente, la función loop, esta dentro del archivo user.c, el cual es incluido
en main.c. main es el archivo principal, donde se crean todas las variables de configuración
necesarias para que el micro controlador pueda arrancar. Una ves que main_loop() termina de iniciar 
las variables, entra en un bucle infinito while(True), donde llama a la función loop().

DEFINICION DE LOS CONECTORES DEL HARDWARE:

sensores Analogicos:
sensor =  1  ---> puerto = 13
sensor =  2  ---> puerto = 14
sensor =  3  ---> puerto = 15
sensor =  4  ---> puerto = 16
sensor =  5  ---> puerto = 17
sensor =  6  ---> puerto = 18
sensor =  7  ---> puerto = 19
sensor =  8  ---> puerto = 20

sensores digitales:
sensor =  1  ---> puerto = 21
sensor =  2  ---> puerto = 22
sensor =  3  ---> puerto = 23
sensor =  4  ---> puerto = 24

salidas integrado L293:
salida = 1A ---> PORTD =  32
salida = 2A ---> PORTD =  128
salida = 1B ---> PORTD =  64
salida = 2B ---> PORTD =  16

valores de salida del PORTD para el integrado L293:
MOTOR "A" ADELANTE = 1A = 32
MOTOR "A" ATRAS = 2A = 128
MOTOR "B" ADELANTE = 1B = 64
MOTOR "B" ATRAS = 2B = 16
MOTOR "A+B" ADELANTE = 1A+1B = 96
MOTOR "A+B" ATRAS = 2A+2B =  144
MOTOR "A+B" INVERSION DE GIRO DERECHA = 1A+2B = 48
MOTOR "A+B" INVERSION DE GIRO IZQUIERDA = 2A+1B = 192

salidas para servomotores:
servo 1 ---> puerto = 10
servo 1 ---> puerto = 11
servo 1 ---> puerto = 12
servo 1 ---> puerto = 8
servo 1 ---> puerto = 9

salidas digitales del PORTB (unl2803):
 LED 1  ---> PORTB = 1
 LED 2  ---> PORTB = 2
 LED 3  ---> PORTB = 4
 LED 4  ---> PORTB = 8
 LED 5  ---> PORTB = 16
 LED 6  ---> PORTB = 32
 LED 7  ---> PORTB = 64
 LED 8  ---> PORTB = 128

*/


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