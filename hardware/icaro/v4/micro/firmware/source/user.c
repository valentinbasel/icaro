#include <stdlib.h>
#include<stdio.h>
#include <string.h>
#include<np05_06.h>
#include "definiciones_icr.c"
#define LCDI2CHOME
#define LCDI2CINIT
#define LCDI2CCLEAR
#define LCDI2CSETCURSOR
#define LCDI2CNEWCHAR
#define ANALOGREAD
#define LCDI2CBACKLIGHT
#define LCDI2CNOBACKLIGHT
#define LCDI2CPRINTF
#include<lcdi2c.h>
#include<lcdi2c.c>

const int dht_success        = 0;  // read success
const int dht_notconnected   = 1;  // dht not found
const int dht_checksumfailed = 2;  // dht data error

// define the structure to hold the returned data.
// this will only be filled out on a successful reading.
  
struct dht_data { // define dht register structure
  int int_humidity;
  int dec_humidity;
  int int_temperature;
  int dec_temperature;
  int checksum;
  int status; // 0=success, 1=not connected, 2=chksum error, 3=other
};
struct dht_data dht_register;        // Declare dht_register of type dht_data 

int dhtReadByte(int dhtPin)  {
int a=0;
  int i,rbyte = 0;
  pinmode(dhtPin,INPUT);  // Set the DHT_ pin as input
  for (i=0 ; i < 8 ; i++) {
    while(digitalread(dhtPin) == LOW){a++; if(a>100){return rbyte;}} // Wait for input to switch to HIGH
    Delayus(35); // Wait for digital 1 mid-point.
    if (digitalread(dhtPin) == HIGH) {  //  We have a digital 1
      rbyte |= 1 << (7 - i); // Save the bit.
	a=0;
      while(digitalread(dhtPin) == HIGH){a++; if(a>100){return rbyte;}} // wait for HIGH to LOW switch (~ 35us).
    } // end if
  } // end for
  return rbyte;
}    


void dhtRead(int dhtPin) {
    int c,chk1,chk2 = 0;
    int DHT_Array[5]; // local array to hold the 5 DHT_ bytes.
    pinmode(dhtPin, OUTPUT); // Set DHT_ pin as output.
    digitalwrite(dhtPin, LOW); // Drive DHT_ pin LOW to commence start signal
    Delayms(20); // Wait for 20 miliseconds
    digitalwrite(dhtPin,HIGH); // Drive DHT_ pin HIGH
    Delayus(30); // Wait 30 microseconds
    pinmode(dhtPin, INPUT); // Start signal sent, now change DHT_ pin to input.
    
    Delayus(40); // Wait 40us for mid-point of first response bit.
    chk1 = digitalread(dhtPin); // Read bit.  Should be a zero.
    Delayus(80); // Wait 80us for the mid-point of the second bit.
    chk2 = digitalread(dhtPin); // Read bit.  Should be a one.
    Delayus(40); // Wait 40us for end of response signal.
    
    if ((chk1 == 0) && (chk2 == 1)) { // If the response code is valid....
      for (c = 0 ; c < 5 ; c++) {
        DHT_Array[c] = dhtReadByte(dhtPin); // Read five bytes from DHT_
      }
        
      //  checksum is the sum of the lower 8 bits of bytes 1-4.
      if (DHT_Array[4] == ((DHT_Array[0] + DHT_Array[1] + DHT_Array[2] + DHT_Array[3]) & 0xFF)) {
      
        // Checksum passed, so place data into the DHT_register structure
        dht_register.int_humidity = DHT_Array[0];    // integer humidity
        dht_register.dec_humidity = DHT_Array[1];    // decimal humidity (0 on DHT11)
        dht_register.int_temperature = DHT_Array[2]; // integer temperature
        dht_register.dec_temperature = DHT_Array[3]; // decimal temperature (0 on DHT11)
        dht_register.checksum = DHT_Array[4];        // checksum result
        dht_register.status =  dht_success;          // success status
        return;                          // return success code.
      } else {
         dht_register.status = dht_notconnected;          // success status
        return;                     //  Sensor data corrupted.
      } // end if  
      
    } else {
      dht_register.status = dht_checksumfailed;          // success status
      return;                     // No DHT detected.
    } // end if  
}

   
float fahrenheit = 0;
const int dhtPin  = 15; // pin to sensor data line

void loop()
{
int a=0;
u8 buf[80];
u8 buf2[80];
lcdi2c_init(16,2,0x27);
lcdi2c_backlight();
while(1){

lcdi2c_home();
fahrenheit = (dht_register.int_temperature + (dht_register.dec_temperature/100)) * 1.8 + 32.0; 

  Delayms(2000);
  dhtRead(dhtPin);
  if(dht_register.status==dht_success){
  sprintf(buf, "temp: %i.%i",dht_register.int_temperature,dht_register.dec_temperature);
  sprintf(buf2, "hum: %i.%i",dht_register.int_humidity,dht_register.dec_humidity);
  lcdi2c_printf(buf);
  lcdi2c_setCursor(0,1);
  lcdi2c_printf(buf2);
}
}

}