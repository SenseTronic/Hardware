#include <TinyWire.h>

#define own_address 42  // I2C address 42
#define adc_Pin A2      // ADC2


void setup() 
{
  // config TinyWire library for I2C slave functionality
  TinyWire.begin( own_address );
  
  // register a handler function in case of a request from a master
  TinyWire.onRequest( onI2CRequest );
}

void loop() 
{

}


void onI2CRequest()     // ISR for I2C request
{
  
  uint16_t CO_ADCvalue; // 16 bit unsigned integer
  
  CO_ADCvalue = analogRead( adc_Pin );       // 10 bit ADC
                                             
  TinyWire.send( (byte)(CO_ADCvalue >> 8) ); // Send first 2 bits (1st byte)
  TinyWire.send( (byte)CO_ADCvalue );        // send next  8 bits (2nd byte)
    
}
