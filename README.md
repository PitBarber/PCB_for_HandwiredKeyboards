# PCB_for_HandwiredKeyboards
PCB with a neopixel for handwired keybeoards.

### About this repo:
```
Files you can find here are only the kicad project about the PCB design, 
3D design or entirye keyboard firmware will be linked in this description.
```

## What will you find in this project?
In this repo you'll find a kicad project which have 15x15mm PCB, that's the exactly size of a mechanical keyboard switch, making you abailable to handwire keyboards with neopixel lights.

Every PCB has a built in neopixel (SK6812 2040), 100nF capacitor and a 1N4148 for ROW access*.

_*You can find a BOM in this git with links and quantities_

### Why?

This project provides to handwired keyboards a support to have underglow keycaps.
PCBs was designed for keyboard with different form factors, for example: dactyl manuform. It's geometry makes makers hard to desing flexible PCBs, and them could be abailable only for some kind of dactyl manuform, which could me customized by user.
These 15mmx15mm PCBs are near to size of a keyboard Switch, so there can be placed in any custom keyboard, if a switch fits, a PCB will do it so.

### The PCB 

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Front_PCB.jpg" width="300"> <img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Back_PCB.jpg" width="318"> 

Top of the PCB only have de builtin SK6812 4020 neopixel, they can be mounted sized or faceup, it's footprint isn't in kicad's official libraries ( a merge will be done).

Bottom have the 100nF capacitor, necesary for the neopixel, the 1n4148 diode, for ROW to COL wiring ( remember it for the QMK config) and finally, the connection pads:
* VCC: 5v high level voltage node.
* DIN: Data In of the neopixel.
* DOUT: Data Ou of the neopixel.
* GND: Ground node.
* COL: Column node.
* ROW: Row node.

### PCB TECHNICAL INFORMATION:

I will show you some technical data about boad sizes and LED SK6812 footprint:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/PCB_size.jpg" width="500">

Here you can see the size of the pcb, distance between pads and pads size.

Now, important information about SK6812 footprint, pads and sizes:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/SK6812_4020_FootPrint.jpg" width="500">

This information is directly collected from official [SK6812 SIDE 4020 datasheet](http://www.normandled.com/upload/201804/SK6812%204020%20SIDE%20LED%20Datasheet.pdf)

Footprint was designed using the FootPrint editing Tool provided by Kicad.


### Wiring
COL wiring:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Keyboard_Wiring.jpg?raw=true" width="500">

ROW wiring:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/keyboard_wiring3.jpg?raw=true" width="500">

This is the wiring in the lefthand keyboard, the righthand will be the same, but mirrored.

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Keyboard_Wiring2.jpg?raw=true" width="1000">

* Boards Used: Arduino Pro micro in both cases
* [Oficial Dactyl Manuform](https://github.com/abstracthat/dactyl-manuform) - More wiring tips

### Firmware:

[QMK Firmware](https://github.com/qmk/qmk_firmware) - keyboard firmware based on the tmk_keyboard firmware

### Final Results:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Final_Keyboard.jpg?raw=true"  width=400>

![](https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/animations.gif?raw=true)

### Videos: 
Final resoult + ASMR siwtch video.

[![Dactyl Manuform with lights](https://img.youtube.com/vi/vpvnzlDXdoU/0.jpg)](https://www.youtube.com/watch?v=vpvnzlDXdoU)
