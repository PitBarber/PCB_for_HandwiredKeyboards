EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 3650 3550 2    50   ~ 0
DOUT
$Comp
L Device:C C1
U 1 1 604BD4CF
P 2350 3600
F 0 "C1" H 2465 3646 50  0000 L CNN
F 1 "0.1uF" H 2465 3555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric" H 2388 3450 50  0001 C CNN
F 3 "~" H 2350 3600 50  0001 C CNN
	1    2350 3600
	1    0    0    -1  
$EndComp
Text Label 2950 3950 0    50   ~ 0
GND
Text Label 2950 3550 0    50   ~ 0
DIN
Text Label 2900 3200 0    50   ~ 0
VCC
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 60553595
P 2750 3950
F 0 "J3" H 2642 3817 50  0000 C CNN
F 1 "Conn_01x01_Female" V 2687 3998 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 2750 3950 50  0001 C CNN
F 3 "~" H 2750 3950 50  0001 C CNN
	1    2750 3950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 60553AA1
P 2750 3550
F 0 "J2" H 2642 3417 50  0000 C CNN
F 1 "Conn_01x01_Female" V 2687 3598 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 2750 3550 50  0001 C CNN
F 3 "~" H 2750 3550 50  0001 C CNN
	1    2750 3550
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 60553D99
P 2700 3200
F 0 "J1" H 2592 3067 50  0000 C CNN
F 1 "Conn_01x01_Female" V 2637 3248 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 2700 3200 50  0001 C CNN
F 3 "~" H 2700 3200 50  0001 C CNN
	1    2700 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2950 3550 3050 3550
$Comp
L Connector:Conn_01x01_Female J6
U 1 1 6055F2B5
P 3950 3950
F 0 "J6" H 3780 3930 50  0000 L CNN
F 1 "Conn_01x01_Female" V 3887 3998 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 3950 3950 50  0001 C CNN
F 3 "~" H 3950 3950 50  0001 C CNN
	1    3950 3950
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J5
U 1 1 6055F6F8
P 3950 3550
F 0 "J5" H 3780 3661 50  0000 L CNN
F 1 "Conn_01x01_Female" V 3887 3598 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 3950 3550 50  0001 C CNN
F 3 "~" H 3950 3550 50  0001 C CNN
	1    3950 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3200 3750 3200
Wire Wire Line
	3650 3550 3750 3550
Wire Wire Line
	2950 3950 3350 3950
Wire Wire Line
	3350 3200 3350 3250
Connection ~ 3350 3200
Connection ~ 3350 3950
Wire Wire Line
	3350 3950 3750 3950
$Comp
L power:GND #PWR01
U 1 1 60573D28
P 3350 4050
F 0 "#PWR01" H 3350 3800 50  0001 C CNN
F 1 "GND" H 3355 3877 50  0000 C CNN
F 2 "" H 3350 4050 50  0001 C CNN
F 3 "" H 3350 4050 50  0001 C CNN
	1    3350 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4050 3350 3950
Wire Wire Line
	2350 3750 2350 3900
Wire Wire Line
	2350 3450 2350 3300
Text Label 2350 3350 2    50   ~ 0
VCC
Text Label 2350 3850 2    50   ~ 0
GND
Wire Wire Line
	2900 3200 3350 3200
Wire Wire Line
	3350 3850 3350 3950
Wire Wire Line
	4700 3350 4700 3250
Wire Wire Line
	4650 3350 4700 3350
Wire Wire Line
	5550 3250 5400 3250
$Comp
L Switch:SW_Push_Open SW1
U 1 1 605DB0B6
P 4900 3250
F 0 "SW1" H 4900 3465 50  0000 C CNN
F 1 "SW_Push_Open" H 4900 3374 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 4900 3450 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J4
U 1 1 6055FBC7
P 3950 3200
F 0 "J4" H 3858 3336 50  0000 C CNN
F 1 "Conn_01x01_Female" V 3887 3248 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 3950 3200 50  0001 C CNN
F 3 "~" H 3950 3200 50  0001 C CNN
	1    3950 3200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4148 D1
U 1 1 6059A657
P 5250 3250
F 0 "D1" V 5296 3170 50  0000 R CNN
F 1 "1N4148" V 5205 3170 50  0000 R CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 5250 3075 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/1N4148_1N4448.pdf" H 5250 3250 50  0001 C CNN
	1    5250 3250
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J10
U 1 1 6062AF6E
P 5550 3050
F 0 "J10" H 5578 3030 50  0000 L CNN
F 1 "Conn_01x01_Female" V 5487 3098 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 5550 3050 50  0001 C CNN
F 3 "~" H 5550 3050 50  0001 C CNN
	1    5550 3050
	0    -1   -1   0   
$EndComp
$Comp
L LED:SK6812MINI D2
U 1 1 606412E2
P 3350 3550
F 0 "D2" H 3694 3596 50  0000 L CNN
F 1 "SK6812MINI" H 3694 3505 50  0000 L CNN
F 2 "LED_SMD:LED_SK6812MINI_PLCC4_3.5x3.5mm_P1.75mm" H 3400 3250 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/product-files/2686/SK6812MINI_REV.01-1-2.pdf" H 3450 3175 50  0001 L TNN
	1    3350 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J8
U 1 1 6059A672
P 4950 3500
F 0 "J8" V 4842 3412 50  0000 R CNN
F 1 "Conn_01x01_Female" V 4887 3548 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" V 4797 3412 50  0001 R CNN
F 3 "~" H 4950 3500 50  0001 C CNN
	1    4950 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J9
U 1 1 6059A66C
P 4350 3500
F 0 "J9" V 4242 3548 50  0000 L CNN
F 1 "Conn_01x01_Female" V 4287 3548 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 4350 3500 50  0001 C CNN
F 3 "~" H 4350 3500 50  0001 C CNN
	1    4350 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3350
Connection ~ 4650 3500
Wire Wire Line
	4650 3500 4550 3500
Connection ~ 5550 3250
$Comp
L Connector:Conn_01x01_Female J7
U 1 1 6059A666
P 5550 3450
F 0 "J7" H 5442 3317 50  0000 C CNN
F 1 "Conn_01x01_Female" V 5487 3498 50  0001 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_1x2mm" H 5442 3316 50  0001 C CNN
F 3 "~" H 5550 3450 50  0001 C CNN
	1    5550 3450
	0    1    1    0   
$EndComp
Text Label 5550 3250 0    50   ~ 0
ROW
Text Label 4650 3500 3    50   ~ 0
COL
$EndSCHEMATC
