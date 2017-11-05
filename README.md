# cappy_eyes

Fun little project to create a moving pair of Cappy eyes for a hat.

## 3D Printing

|Part|Count|Material|Print Time|Supports|
|---|---|---|---|---|
|[cappy_eyes.stl](cad/cappy_eyes.stl)|x1|40g|5 hours|No|
|[cappy_eyes_pupil.stl](cad/cappy_eyes_pupil.stl)|x2|2g|1 hour|No|
|[cappy_eyes_pupils_rail.stl](cad/cappy_eyes_pupils_rail.stl)|x1|1g|10 mins|No|
|[cappy_eyes_mount.stl](cad/cappy_eyes_mount.stl)|x1|2g|20 mins|Yes|
|**Total**| |**45g**|**6 hours**|

* Printed on Ultimaker 2 using Polymaker PolyMax PLA.
* 25% infill.

## Assembly

1. If you plan to paint the parts, do so before assembly.
1. Place the pupils rail part into the half-circle holes in the eyes.  It should glide freely left and right in the half-circles.  If not, trim up the edges of the half-circles and/or sand the pegs on the rail.
1. Glue the pupils onto the pegs of the pupil rail, being careful not to accidentally glue the pupils to anything else.  You'll also want to be careful to ensure they're vertically straight or they'll rub on the side of the eyes.
1. Wiring:
   1. Connect the #0 data pin of the Trinket to the orange data wire of the Servo.
   1. Connect the USB+ pin of the Trinket to the red wire of the Servo.
   1. Connect the Gnd pin of the Trinket to the brown wire of the Servo.
   1. Plug the Trinket into your computer or the battery to power it up.
1. Program the Trinket (see [Software](#Software) below).
1. Once everything is working, screw in or glue the servo onto the mount.
1. Calibrate the servo arm:
   1. Place an arm onto the servo.  
   1. While the servo is unpowered, gently move the servo arm clockwise until it can't go any further.  
   1. Re-place the arm so that it's perpendicular to the servo pointing to the left.  
   1. Gently rotate the arm 180 degrees until it stops moving again.  
   1. Check that it's perpendicular in the other direction.  If it swings a little bit further (i.e., the servo has more than 180 degrees of travel), adjust the arm again so that the arm reaches the same angle on both ends of the servo's range.
1. Make a rigid metal pin that's small enough to move freely inside the servo arm.  I used a small paperclip.  Insert the pin into the center of the pupil rail by heating up one end and letting it melt into the rail.
1. Test-fit the mount and servo so that the pin fits into the servo arm and when you move the arm back and forth the rail moves smoothly.  Glue the mount onto the back of the eyes in that position.
1. Power it up and the pupils should move :)

## Software

I used the Adafruit Trinket 5V.  Checkout their guide for how to setup the Arduino IDE to program the device:  https://learn.adafruit.com/introducing-trinket

The Trinket lacks PWM, so I used the Adafruit SoftServo library, but had to modify its parameters to get the OSOYOO MG90S servo to rotate it's full 180 degrees.  The modified library is included in `arduino/Adafruit_SoftServo`.  Load that library into your Arduino IDE for use in the sketch.

Program the trinket using the sketch:  `arduino/cappy_eyes.ino`.

The servo should move to a random position every few seconds.

## Bill of Materials

|Basic Tools & Materials|
|---|
|Soldering Iron and Solder|
|Wire Strippers|
|Wire|
|CA Glue|
|Short USB-A to Micro-USB Cable|
|Heat-Shrink Wire Wrap and Heat Gun (Optional)|

|Item|Count|Unit Price|Total|Link|Notes|
|---|---|---|---|---|---|
|Adafruit Trinket 5V|1|$7|$7|[Adafruit](https://www.adafruit.com/product/1501)||
|Anker Powercore+ Battery|1|$14|$14|[Amazon](https://www.amazon.com/gp/product/B005X1Y7I2/ref=oh_aui_detailpage_o02_s01?ie=UTF8&psc=1)|Overkill for this project, but wanted to use a USB battery to simplify things.|
|Landisun Mario Cap|1|$12|$12|[Amazon](https://www.amazon.com/gp/product/B00NCRBEHG/ref=oh_aui_detailpage_o04_s00?ie=UTF8&psc=1)|Comes with Luigi too, but cheapest option even so.|
|OSOYOO MG90S Servo|1|$3|$3|[Amazon](https://www.amazon.com/OSOYOO-Helicopter-Airplane-Controls-Raspberry/dp/B073B5D5HD/ref=sr_1_6?ie=UTF8&qid=1509844089&sr=8-6&keywords=mg90s)||
|**Total**| | |**$36**|||
