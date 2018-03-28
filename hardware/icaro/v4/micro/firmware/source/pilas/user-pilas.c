#include <stdlib.h>
#include<stdio.h>
#include <string.h>

#include "../tmp/usb.h"
#include <usb.c>
/*
void epap_in() { return; }
void epap_out() { return; }
void epapin_init() { return; }
void epapout_init() { return; }
*/
char caracter;
char caracter2;
unsigned char i;void setup()
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

void loop()
{
//~ int valor[8];
//~ int a=0;
//~ u8 buf[80];
//~ for(a=0;a<8;a++)
//~ {
//~ valor[a]=analogread(13+a);
//~ Delayus(1);
//~ }

//~ sprintf(buf, " %i,%i,%i,%i,%i,%i,%i,%i\n\r", valor[0],valor[1],valor[2],valor[3],valor[4],valor[5],valor[6],valor[7]);

    //~ usbsend(buf,39);
    //~ Delayms(1);
if (usbavailable())
{
    caracter= usbread();
    Delayms(1);
    if (caracter=='b')
        {
            usbsend("us",2);
        }
        if (caracter=='s')
        {
            caracter=usbread();
            PORTB=caracter;
            usbsend("ok\n\r",2);
        }else{
            usbsend("er\n\r",2);
            PORTB=0;
            }
}
}
