import processing.serial.*;

Serial connexion;
int lastPosition = 0;
int wait;
int timer = 2000;
boolean repeatMove = false;
boolean repeatStop = false;

//Setup Wireless communication and timers for inactivity
public void setup(){
  String portName = Serial.list()[0];
  connexion = new Serial(this, portName, 9600);
  size(1560, 780, JAVA2D);
  wait = millis();
}

public void draw(){
  
  //Setup background and mouse character
  PImage Dathomir = loadImage("C:\\Users\\micha\\OneDrive\\Documents\\Computer Science Degree Files\\Year 3\\Robotics\\Project 2\\Robotics 2 Scripts\\databank_dathomir_01_169_304c5db2.jpeg");
  
  background(Dathomir);
  
  PImage Grogu = loadImage("C:\\Users\\micha\\OneDrive\\Documents\\Computer Science Degree Files\\Year 3\\Robotics\\Project 2\\Robotics 2 Scripts\\Star-Wars-Cute-Baby-Yoda-Transparent-PNG.png");

  //Mouse visualiser
  image(Grogu, mouseX - 200, mouseY - 200, 400, 400);


  //Position change
  int difference = mouseX - lastPosition;
  
  //Send messages to arduino based on action
  if ((difference < 0 && repeatMove == false) || (difference > 0 && repeatMove == false)) {
    println("Moving");
    connexion.write("1");
    repeatMove = true;
    repeatStop = false;
  } else if((millis() - wait >= timer) && difference == 0 && repeatStop == false) {
    println("Stopping");
    connexion.write("2");
    //Reset timer
    wait = millis();
    repeatMove = false;
    repeatStop = true;
  }

  //Refresh mouse
  lastPosition = mouseX;
  
}
