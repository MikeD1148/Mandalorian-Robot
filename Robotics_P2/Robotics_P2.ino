#include <Servo.h>
#include <SoftwareSerial.h>

//Initialise Servos Wireless and DC Motor
Servo servo1;
Servo servo2;
Servo servo3;
Servo servo4;

SoftwareSerial xbee(0, 1);

void setup() {
  xbee.begin(9600);
  Serial.begin(9600);

  servo1.attach(11);
  servo2.attach(10);
  servo3.attach(6);
  servo4.attach(3);
  pinMode(5, OUTPUT);

  //Confirm stopped
  servo1.write(48);
  servo2.write(48);
  servo3.write(48);
  servo4.write(48);
}

char message;

void loop() {
  
  //Get command from xbee
  if (xbee.available() > 0) 
  {
    message = xbee.read();
  }


  if (message == '1') {

    //Fire blaster bolt
    analogWrite(5, 255);
    delay(200);
    analogWrite(5, 0);

    //Jiggle body, wave, and move planets
    for (int i = 0; i < 3; i++) {
      servo1.write(41);
      servo2.write(41);
      servo3.write(41);
      servo4.write(41);

      delay(300);

      servo1.write(55);
      servo3.write(55);

      delay(200);
    }

    //Rest State
    servo1.write(48);
    servo2.write(48);
    servo3.write(48);
    servo4.write(48);

    delay(1000);
  }
}
