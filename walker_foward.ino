#include <Servo.h>

Servo frontServo; 
Servo rearServo; 
int centerPos = 90; 
int frontRightUp = 70; 
int frontLeftUp = 100; 
int backRightForward = 65;

int backLeftForward = 100; 
void moveForward() 
{ 
  frontServo.write( frontRightUp); 
  rearServo.write( backLeftForward); 
  delay( 125); 
  frontServo.write( centerPos); 
  rearServo.write( centerPos); 
  delay( 65); frontServo.write( frontLeftUp); 
  rearServo.write( backRightForward); 
  delay( 125); 
  frontServo.write( centerPos); 
  rearServo.write( centerPos); 
  delay( 65); 
  } 
  void setup() 
  { 
    frontServo.attach(2); 
    rearServo.attach( 3); 
  } 
void loop()
{ 
  moveForward(); 
  delay( 150); 
}

