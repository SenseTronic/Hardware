


const int MQ_PIN = A0;                                
int RL_VALUE = 5;                                     
float RO_CLEAN_AIR_FACTOR =9.81;                     
                                                    
 

int CALIBARAION_SAMPLE_TIMES=50;                   
int CALIBRATION_SAMPLE_INTERVAL=500;                
                                                  
int READ_SAMPLE_INTERVAL=50;                       
int READ_SAMPLE_TIMES=5;                             
                                                    
 
/**********************Application Related Macros**********************************/
#define         GAS_LPG             0   
#define         GAS_CO              1   
#define         GAS_CH4             2    
 
/*****************************Globals***********************************************/
float           LPGCurve[3]  =  {2.3,0.3,-0.47};   //wo points are taken from the curve. 
                                                    //with these two points, a line is formed which is "approximately equivalent"
                                                    //to the original curve.t 
                                                    //data format:{ x, y, slope}; point1: (lg200, 0.21), point2: (lg10000, -0.59) 
float           COCurve[3]  =  {2.3,0.23,-0.48};    //two points are taken from the curve. 
                                                    //with these two points, a line is formed which is "approximately equivalent" 
                                                    //to the original curve.
                                                    //data format:{ x, y, slope}; point1: (lg200, 0.72), point2: (lg10000,  0.15) 
float           CH4Curve[3] ={2.3,0.48,-0.37};    //two points are taken from the curve. 
                                                    //with these two points, a line is formed which is "approximately equivalent" 
                                                    //to the original curve.
                                                    //data format:{ x, y, slope}; point1: (lg200, 0.53), point2: (lg10000,  -0.22)                                                     
float           Ro           =  10;                 //Ro is initialized to 10 kilo ohms


void setup()
{ 
  
  Serial.begin(9600);
 // pinMode(calibrationLed,OUTPUT);
//  digitalWrite(calibrationLed,HIGH);
  Serial.print("Calibrating...");                        

  
  Ro = MQCalibration(MQ_PIN);                         //Calibrating the sensor. Please make sure the sensor is in clean air         
  //digitalWrite(calibrationLed,LOW);              
  
  Serial.println("done!");                                 
  Serial.print("Ro= ");
  Serial.print(Ro);
  Serial.println("kohm\n");
  delay(2000);
}
 
void loop()
{  
  long iPPM_LPG = 0;
  long iPPM_CO = 0;
  long iPPM_CH4 = 0;

  iPPM_LPG = MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_LPG);
  iPPM_CO = MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_CO);
  iPPM_CH4 = MQGetGasPercentage(MQRead(MQ_PIN)/Ro,GAS_CH4);
  

   Serial.println("**************************** CONCETRATION OF GASES ****************************");
   

   Serial.print("LPG: ");
   Serial.print(iPPM_LPG);
   Serial.println(" ppm");   
   
   Serial.print("CO: ");
   Serial.print(iPPM_CO);
   Serial.println(" ppm");    

   Serial.print("CH4: ");
   Serial.print(iPPM_CH4);
   Serial.println(" ppm");  
   Serial.println("*******************************************************************************\n");
   Serial.println();

   delay(500);
  }
 

float MQResistanceCalculation(int raw_adc)
{
  
  
  return ( ((float)RL_VALUE*(1023-raw_adc)/raw_adc));
}
 
 

float MQCalibration(int mq_pin)
{
  int i;
  float val=0;

  for (i=0;i<CALIBARAION_SAMPLE_TIMES;i++) {            
    val += MQResistanceCalculation(analogRead(mq_pin));
    delay(CALIBRATION_SAMPLE_INTERVAL);
  }
  
  
  val = val/CALIBARAION_SAMPLE_TIMES;                  
  val = val/RO_CLEAN_AIR_FACTOR;                                                                
  return val;                                                      
}
 
float MQRead(int mq_pin)
{
  int i;
  float rs=0;
 
  for (i=0;i<READ_SAMPLE_TIMES;i++) {
    rs += MQResistanceCalculation(analogRead(mq_pin));
    delay(READ_SAMPLE_INTERVAL);
  }
 
  rs = rs/READ_SAMPLE_TIMES;
 
  return rs;  
}
 
long MQGetGasPercentage(float rs_ro_ratio, int gas_id)
{
  if ( gas_id == GAS_LPG ) {
     return MQGetPercentage(rs_ro_ratio,LPGCurve);
  } else if ( gas_id == GAS_CO ) {
     return MQGetPercentage(rs_ro_ratio,COCurve);
  } else if ( gas_id == GAS_CH4 ) {
     return MQGetPercentage(rs_ro_ratio,CH4Curve);
  }    
 
  return 0;
}
 


long  MQGetPercentage(float rs_ro_ratio, float *pcurve)
{
  return (pow(10,( ((log(rs_ro_ratio)-pcurve[1])/pcurve[2]) + pcurve[0])));
}
