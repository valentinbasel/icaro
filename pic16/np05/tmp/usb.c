// USB function for Pinguino
// Jean-Pierre MANDON 2008
// modified 08/2010 usbavailable function, USBRX buffer size

// USB

#ifndef __PINGUINOUSB
#define __PINGUINOUSB

#define __USB__

// Size of the power EP application buffer
#define EP1_BUFFER_SIZE 64
#define EP2_BUFFER_SIZE 64

#pragma udata usb_buf TXBuffer
volatile uchar TXBuffer[EP2_BUFFER_SIZE];
#pragma udata usb_buf RXbuffer
volatile uchar RXbuffer[EP1_BUFFER_SIZE];

// pinguino usb buffer
#define USBRXSIZE 64		// size of usb rx buffer
uchar usbrx[USBRXSIZE];		// usb rx buffer pinguino
uchar usbwp,usbrp;		// pointer for USB buffer pinguino

static uchar last_send_was_null;
uint ep2_num_bytes_to_send;
uchar *ep2_source_data;

uchar usbavailable()
{
	return (usbwp!=usbrp);
}

// send to host

void epapin_init(void)
{
EP_IN_BD(2).Stat.uc = BDS_UCPU | BDS_DAT1 | BDS_DTSEN;
UEP2 = EPHSHK_EN | EPINEN_EN |  EPCONDIS_EN;
}

void prepare_ep2_in(void)
{
    last_send_was_null = (ep2_num_bytes_to_send < EP2_BUFFER_SIZE);
    EP_IN_BD(2).Cnt = ep2_num_bytes_to_send;
    EP_IN_BD(2).ADR = (uchar __data *)&TXBuffer;
    fill_in_buffer(2, &ep2_source_data, EP2_BUFFER_SIZE, &ep2_num_bytes_to_send);
    if(EP_IN_BD(2).Stat.DTS == 0)
    {
        EP_IN_BD(2).Stat.uc = BDS_USIE | BDS_DAT1 | BDS_DTSEN;
    }
    else
    {
        EP_IN_BD(2).Stat.uc = BDS_USIE | BDS_DAT0 | BDS_DTSEN;
    }
}

void usbsend(uchar *txpointer,uint length)
{
ep2_source_data=txpointer;
ep2_num_bytes_to_send=length;
prepare_ep2_in();
}

// this function don't work on OSX
/*
void usbsendint(int valeur)
{
ep2_source_data=&valeur;
ep2_num_bytes_to_send=2;
prepare_ep2_in();
}
*/

void epap_in(void)
{
if((ep2_num_bytes_to_send == 0) && last_send_was_null)
	{
        return;
    	}
last_send_was_null = (ep2_num_bytes_to_send < EP2_BUFFER_SIZE);
EP_IN_BD(2).Cnt = ep2_num_bytes_to_send;
fill_in_buffer(2, &ep2_source_data, EP2_BUFFER_SIZE, &ep2_num_bytes_to_send);
if(EP_IN_BD(2).Stat.DTS == 0)
	{
        EP_IN_BD(2).Stat.uc = BDS_USIE | BDS_DAT1 | BDS_DTSEN;
    	}
else
    	{
        EP_IN_BD(2).Stat.uc = BDS_USIE | BDS_DAT0 | BDS_DTSEN;
    	}
}

// receive from host

uchar usbread()
{
uchar caractere=0;

if (usbavailable)
    {
    caractere=usbrx[usbrp++];
    if (usbrp==USBRXSIZE)
	usbrp=1;
    }
return(caractere);
}

void epap_out(void)
{
uchar cpt;
uchar newusbwp;
uchar caractere;

if((EP_OUT_BD(1).Cnt >= 1) && ( EP_OUT_BD(1).Cnt<EP1_BUFFER_SIZE))
	{
	for (cpt=0;cpt<EP_OUT_BD(1).Cnt;cpt++)
		{
		caractere=RXbuffer[cpt];
		if (usbwp!=USBRXSIZE-1) newusbwp=usbwp+1;               
     		else newusbwp=1;
		if (usbrp!=newusbwp) usbrx[usbwp++]=caractere;
     		if (usbwp==USBRXSIZE) usbwp=1;
		}
        EP_OUT_BD(1).Cnt = EP1_BUFFER_SIZE;
        if(EP_OUT_BD(1).Stat.DTS == 0)
        	{
            	EP_OUT_BD(1).Stat.uc = BDS_USIE | BDS_DAT1 | BDS_DTSEN;
        	}
        else
        	{
            	EP_OUT_BD(1).Stat.uc = BDS_USIE | BDS_DAT0 | BDS_DTSEN;
        	}
    }
    else // Raise an error
    {
        EP_OUT_BD(1).Cnt = EP1_BUFFER_SIZE;
        EP_OUT_BD(1).ADR = (uchar __data *)&RXbuffer;
        EP_OUT_BD(1).Stat.uc = BDS_USIE | BDS_BSTALL;
    }
}

void epapout_init(void)
{
    EP_OUT_BD(1).Cnt = EP1_BUFFER_SIZE;
    EP_OUT_BD(1).ADR = (uchar __data *)&RXbuffer;
    EP_OUT_BD(1).Stat.uc = BDS_USIE | BDS_DAT0 | BDS_DTSEN;
    UEP1 = EPHSHK_EN | EPOUTEN_EN | EPCONDIS_EN;       	// Init EPAPPLI as an OUT EP
    usbwp=1;						// init pointer for rx buffer pinguino
    usbrp=1;
}

#endif
