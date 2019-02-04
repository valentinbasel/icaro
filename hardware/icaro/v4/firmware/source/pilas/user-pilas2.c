/*
 * user-pilas2.c
 * 
 * Copyright 2016 valentin basel <vbasel@valentin.basel>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


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
int valor[8];
int a=0;
u8 buf[80];
for(a=0;a<8;a++)
{
valor[a]=analogread(13+a);
Delayus(1);
}

sprintf(buf, " %i,%i,%i,%i,%i,%i,%i,%i\n\r", valor[0],valor[1],valor[2],valor[3],valor[4],valor[5],valor[6],valor[7]);

    usbsend(buf,39);
    Delayms(1);
}


