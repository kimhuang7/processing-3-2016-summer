#include <Servo.h>
Servo myServo;


 void setup() {
  myServo.attach(2);
  
 
}

void loop() 
{
  myServo.write(90);
  delay (500);
  myServo.write(0);
  delay (500);
  myServo.write(90);
  delay (500);
  myServo.write(0);
  delay (500);
  myServo.write(90);
  delay (500);
  myServo.write(0);
  delay (500);
  
}
