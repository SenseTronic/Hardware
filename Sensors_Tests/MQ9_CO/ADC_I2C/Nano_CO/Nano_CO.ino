// Wire Master Reader
// by Nicholas Zambetti <http://www.zambetti.com>

// Demonstrates use of the Wire library
// Reads data from an I2C/TWI slave device
// Refer to the "Wire Slave Sender" example for use with this

// Created 29 March 2006

// This example code is in the public domain.

#include <Wire.h>

#define slave_address_CO 42

void setup() 
{
    
  Wire.begin();        // join i2c bus (address optional for master)
  Serial.begin(9600);  // start serial for output
  
}

void loop() 
{
  char i = 0;
  uint16_t adc_value;
  byte value[2];
  
  Wire.requestFrom(slave_address_CO, 2);  // request 2 bytes from slave device #42
    
  while (Wire.available()) 
  { 
    value[i] = Wire.read(); 
    i++;        
  }

  adc_value = (value[0] << 8) + value[1];

  Serial.print( adc_value );
  
  Serial.println(" ");
  delay(500);
  
}
