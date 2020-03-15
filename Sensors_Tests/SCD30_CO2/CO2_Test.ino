#include "SparkFun_SCD30_Arduino_Library.h" 

SCD30 airSensor;

void setup() {
  Serial.begin(9600);
  airSensor.begin(); //Readings every two seconds
}

void loop() {
  if (airSensor.dataAvailable()) {
    Serial.print("co2(ppm):");
    Serial.print(airSensor.getCO2());

    Serial.print(" temp(C):");
    Serial.print(airSensor.getTemperature(), 1);

    Serial.print(" humidity(%):");
    Serial.print(airSensor.getHumidity(), 1);

    Serial.println();
  }
  else
    Serial.println("No data");

  delay(1000);
}
