# Mandalorian-Robot
Deliverable for Robotics-2. Includes GUI mouse movement and wireless request program , Arduino wireless input script that moves Servo/DC motors, electronics setup tutorial, link to Leap Motion Controller cursor movement mapper repo.


## Repository to Map Mouse Movement to Leap Motion Controller Hand Inputs
Download and run .exe with Ultra Leap also running
https://github.com/glenmurphy/fingers/releases/tag/v0.9.3

## Ultraleap Gemini
Download and run UltraLeaps software
https://developer.leapmotion.com/tracking-software-download


## Processing GUI
Download and run the .pde file. Ensure both UltraLeap Gemini and Leap Mouse Mapper are running.

## Arduino Script
Download and upload the Arduino code to your Arduino.


## Circuit Setup
You will need:
* 2 XBee Wireless Modules
* 4 Servo Motors
* 1 DC Motor
* Bread Board
* 2 9V Power Supplies
* 1 6V Power Supply
* Arduino
* 4 100uF 25V Capacitors
* 1 MOSFET
* 1 1N4007 Diode
* Lots of Cables

Connect the 4 Servos to the 6V Power Supply. Place a Capacitor after each servo to reduce voltage spikes. Connect the DC Motor to a 9V Power Supply through the MOSFET. Wire up the diode to the MOSFET in parallel. Connect a 9V Power Supply to the Arduino. Power the XBee using the 5V Arduino Pin and data transfer through the TX RX Pins. Connect the PWM Pins to each Servo Motor and MOSFET. Connect each Power Supply to a common ground (Arduino).

![20230409_130049](https://user-images.githubusercontent.com/75023206/230771348-4cdb6f48-1caf-45d1-a5ac-844c75049fc7.jpg)

### Wave infront of the Leap Motion Controller to test the Robot.
The Robot will fire its blaster, wave its lightsaber, and jiggle its body. The planets will also spin. The Robot will do this each time it is waved at.

## References
* Reading mouse movement in Processing https://processing.org/reference/mouseX.html
* Using a timer in Processing https://processing.org/reference/millis_.html

## Demonstration Video


