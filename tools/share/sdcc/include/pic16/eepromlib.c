// eeprom library pinguino
// Jean-Pierre MANDON 2009

#ifndef __PINGUINOEEPROM
#define __PINGUINOEEPROM

short ee_read(unsigned int address)
{
EEADR=address;
EECON1bits.EEPGD=0;
EECON1bits.CFGS=0;
EECON1bits.RD=1;
return EEDATA;
}

void ee_write(int address,short octet)
{
EEADR=address;
EEDATA=octet;
EECON1bits.EEPGD=0;
EECON1bits.CFGS=0;
EECON1bits.WREN=1;
INTCONbits.GIE=0;
EECON2=0x55;
EECON2=0xAA;
EECON1bits.WR=1;
INTCONbits.GIE=1;
while (!PIR2bits.EEIF);
EECON1bits.WREN=0;
}
#endif
