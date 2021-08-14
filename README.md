# PCB for Handwired Keyboards

<img src= "https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/MechanicalKeyboards.jpg?raw=true" width = "1000">

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/develop/images/Front_PCB.jpg" width="313"> <img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/develop/images/Back_PCB.jpg" width="300"> 

### About this repo:
```
Files you can find here are only the kicad project about the PCB design, 
3D design or entire keyboard firmware will be linked in this description.
```

### Why?

This project provides to handwired keyboards a support to have underglow keycaps.
PCBs was designed for keyboard with different form factors, for example: dactyl manuform. Its geometry makes makers hard to desing flexible PCBs, and them could be available only for some kind of dactyl manuform.
These 15mmx15mm PCBs are near to size of a keyboard Switch, so there can be placed in any custom keyboard, if a switch fits, a PCB will do it so, this is suitable for customizable keyboards.
Every PCB was designed with a LED neopixel, 100nF capacitor and a 1n4148 diode.

[3D design used in this project](https://github.com/joseandres42/dactyl-manuform-mini-keyboard) - 5x6 dactyl manuform 3D design por 3D printing by @joseandres42


In case you want to use the same design, @joseandres42 has a spanish dvorak layout
for this version of dactyl manuform [right in this forked repo](https://github.com/joseandres42/qmk_firmware/tree/master/keyboards/handwired/dactyl_manuform/5x6/keymaps/joseandres42)  


### The PCB 

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Soldering_PCB_bottom.jpg?raw=true" width="380"> <img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Soldering_PCB_top.jpg?raw=true" width="380"> 

Handsoldering entire PCB is possible and i did it with the 62 PCBs.

Top of the PCB only has the builtin SK6812 4020 neopixel, they can be mounted sized or faceup. Footprint isn't in kicad's official libraries ( a merge will be done).

Bottom has a 100nF capacitor, necesary for the neopixel, a 1n4148 diode, for ROW to COL wiring ( remember it for the QMK config) and finally, the connection pads:
* VCC: 3.3-5v high level voltage node.
* DIN: Data In of the neopixel.
* DOUT: Data Out of the neopixel.
* GND: Ground node.
* COL: Column node.
* ROW: Row node.

### PCB TECHNICAL INFORMATION:

I will show you some technical data about boad sizes and LED SK6812 footprint:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/PCB_size.jpg" width="1000">

Here you can see the size of the pcb, distance between pads and pads size.

Now, important information about SK6812 footprint, pads and sizes:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/SK6812_4020_FootPrint.jpg" width="1000">

This information is directly collected from official [SK6812 SIDE 4020 datasheet](http://www.normandled.com/upload/201804/SK6812%204020%20SIDE%20LED%20Datasheet.pdf)

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/SK6812_Datasheet.jpg" width="1000">


Footprint was designed using the FootPrint editing Tool provided by Kicad.


### Wiring
COL wiring:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Keyboard_Wiring.jpg?raw=true" width="500">

ROW wiring:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/keyboard_wiring3.jpg?raw=true" width="500">

This is the wiring in the lefthand keyboard, the righthand will be the same, but mirrored.

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Keyboard_Wiring2.jpg?raw=true" width="1000">

* Boards Used: Arduino Pro micro in both cases
* [Oficial Dactyl Manuform](https://github.com/abstracthat/dactyl-manuform) - More wiring tips by @abstracthat

About the neopixel wiring, every DOUT is connected to de next DIN PCB node.

Be carefull with VCC and GND propagation, dont do it lineal, i mean, you can connect VCC and GND eachother, no matters the order.
But if you only have one connection to VCC at start and VCC propagates linear througt PCB it will experiment a fall of ~0.3V
that will cause some fliker due to less voltage feeding.

Best light brightness is between 80-110/255 when you config the lights in QMK.

[QMK neopixel documentation](https://github.com/qmk/qmk_firmware/blob/master/docs/feature_rgblight.md)- Neopixel animations and configuration tips

#### Config Example
```
#define DIODE_DIRECTION COL2ROW

// WS2812 RGB LED strip input and number of LEDs
#define	RGB_DI_PIN F4
#define	RGBLED_NUM 31

/* number of backlight levels */
#define RGBLIGHT_LIMIT_VAL 100
#define BACKLIGHT_LEVELS 3
```
More information at the provided link before.

### Firmware:

[QMK Firmware](https://github.com/qmk/qmk_firmware) - keyboard firmware based on the tmk_keyboard firmware

### Final Results:

<img src="https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/Final_Keyboard.jpg?raw=true"  width=400>

![](https://github.com/PitBarber/PCB_for_HandwiredKeyboards/blob/main/images/animations.gif?raw=true) 


### Videos: 
Final result + ASMR siwtch video.

[![Dactyl Manuform with lights](https://img.youtube.com/vi/vpvnzlDXdoU/0.jpg)](https://www.youtube.com/watch?v=vpvnzlDXdoU)
