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
$Comp
L Connector_Generic:Conn_01x20 J2
U 1 1 5EC90BD2
P 3850 3350
F 0 "J2" H 3930 3342 50  0000 L CNN
F 1 "Conn_01x20" H 3930 3251 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 3850 3350 50  0001 C CNN
F 3 "~" H 3850 3350 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x20 J3
U 1 1 5EC8E9AD
P 4250 3350
F 0 "J3" H 4330 3342 50  0000 L CNN
F 1 "Conn_01x20" H 4330 3251 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x20_P2.54mm_Vertical" H 4250 3350 50  0001 C CNN
F 3 "~" H 4250 3350 50  0001 C CNN
	1    4250 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5ECB243E
P 3400 3350
F 0 "R2" H 3332 3304 50  0000 R CNN
F 1 "0" H 3332 3395 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 3440 3340 50  0001 C CNN
F 3 "~" H 3400 3350 50  0001 C CNN
	1    3400 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	5750 3600 5650 3600
Wire Wire Line
	5350 3700 5650 3700
Wire Wire Line
	5350 3300 5350 3700
Wire Wire Line
	5650 3300 5350 3300
$Comp
L Device:CP C2
U 1 1 5EBFCFF3
P 5950 2800
F 0 "C2" V 5695 2800 50  0000 C CNN
F 1 "2.2uF" V 5786 2800 50  0000 C CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 5988 2650 50  0001 C CNN
F 3 "~" H 5950 2800 50  0001 C CNN
	1    5950 2800
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x08_Female J7
U 1 1 5EB22147
P 5450 3700
F 0 "J7" H 5342 3075 50  0000 C CNN
F 1 "Conn_01x08_Female" H 5342 3166 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 5450 3700 50  0001 C CNN
F 3 "~" H 5450 3700 50  0001 C CNN
	1    5450 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 2450 3550 2450
Wire Wire Line
	5650 3400 5950 3400
Wire Wire Line
	5850 3500 5650 3500
Wire Wire Line
	3650 3250 2650 3250
Wire Wire Line
	3650 3350 2750 3350
Wire Wire Line
	3650 3450 2850 3450
$Comp
L Connector:Barrel_Jack_Switch J1
U 1 1 5EB23CB4
P 4450 5550
F 0 "J1" H 4507 5875 50  0000 C CNN
F 1 "Jack-DC" H 4507 5784 50  0000 C CNN
F 2 "Connector_BarrelJack:BarrelJack_Horizontal" H 4500 5510 50  0001 C CNN
F 3 "~" H 4500 5510 50  0001 C CNN
	1    4450 5550
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x08_Female J9
U 1 1 5EB1F9E7
P 6500 3600
F 0 "J9" H 6528 3576 50  0000 L CNN
F 1 "Conn_01x08_Female" H 6528 3485 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 6500 3600 50  0001 C CNN
F 3 "~" H 6500 3600 50  0001 C CNN
	1    6500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3300 5650 2800
Wire Wire Line
	5650 2300 4550 2300
Wire Wire Line
	3550 2300 3550 2450
Connection ~ 5650 3300
Wire Wire Line
	3650 3550 3400 3550
Wire Wire Line
	3400 3550 3400 3500
Wire Wire Line
	3400 3200 3400 2200
Wire Wire Line
	3400 2200 6200 2200
Wire Wire Line
	6100 2800 6200 2800
Connection ~ 6200 2800
Wire Wire Line
	5800 2800 5650 2800
Connection ~ 5650 2800
Wire Wire Line
	5650 2800 5650 2300
Wire Wire Line
	6250 3100 6200 3100
Wire Wire Line
	6200 2800 6200 3100
$Comp
L Device:R_US R8
U 1 1 5ECA129E
P 5650 3100
F 0 "R8" V 5445 3100 50  0000 C CNN
F 1 "0" V 5536 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5690 3090 50  0001 C CNN
F 3 "~" H 5650 3100 50  0001 C CNN
	1    5650 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 3500 6100 3100
Wire Wire Line
	6100 3100 5800 3100
Wire Wire Line
	3650 3850 3550 3850
Wire Wire Line
	3550 4650 5250 4650
Wire Wire Line
	5250 3800 5650 3800
Wire Wire Line
	6250 3300 6250 3100
Wire Wire Line
	6100 3500 6300 3500
Wire Wire Line
	6300 3600 6250 3600
$Comp
L Device:R_US R1
U 1 1 5ECAEBB0
P 6250 3450
F 0 "R1" V 6045 3450 50  0000 C CNN
F 1 "0" V 6136 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6290 3440 50  0001 C CNN
F 3 "~" H 6250 3450 50  0001 C CNN
	1    6250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3500 5850 4900
Wire Wire Line
	2850 4900 2850 3450
Wire Wire Line
	2850 4900 5850 4900
Wire Wire Line
	5950 3400 5950 5000
Wire Wire Line
	5950 5000 2750 5000
Wire Wire Line
	2750 5000 2750 3350
Wire Wire Line
	2650 3250 2650 5100
Wire Wire Line
	2650 5100 6050 5100
$Comp
L Device:R_US R9
U 1 1 5ECAD1AB
P 5900 3600
F 0 "R9" V 5695 3600 50  0000 C CNN
F 1 "0" V 5786 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5940 3590 50  0001 C CNN
F 3 "~" H 5900 3600 50  0001 C CNN
	1    5900 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 3600 6050 5100
Wire Wire Line
	6200 2200 6200 2800
Wire Wire Line
	5250 3800 5250 4650
Wire Wire Line
	3550 3850 3550 4650
$Comp
L Device:R_US R3
U 1 1 5ECD3E19
P 4350 4650
F 0 "R3" V 4145 4650 50  0000 C CNN
F 1 "0" V 4236 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4390 4640 50  0001 C CNN
F 3 "~" H 4350 4650 50  0001 C CNN
	1    4350 4650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5ECD4381
P 4550 4650
F 0 "R6" V 4345 4650 50  0000 C CNN
F 1 "0" V 4436 4650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4590 4640 50  0001 C CNN
F 3 "~" H 4550 4650 50  0001 C CNN
	1    4550 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 4500 4350 4450
Wire Wire Line
	4350 4450 4050 4450
Wire Wire Line
	4050 4450 4050 4350
Wire Wire Line
	4050 4250 4050 4350
Connection ~ 4050 4350
Wire Wire Line
	4550 4500 4550 4150
Wire Wire Line
	4550 4150 4050 4150
Wire Wire Line
	4050 3750 4550 3750
Wire Wire Line
	4550 3750 4550 4150
Connection ~ 4550 4150
$Comp
L Device:R_US R5
U 1 1 5ECDB1DC
P 4550 3600
F 0 "R5" V 4345 3600 50  0000 C CNN
F 1 "0" V 4436 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4590 3590 50  0001 C CNN
F 3 "~" H 4550 3600 50  0001 C CNN
	1    4550 3600
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 3550 5150 3100
Wire Wire Line
	5150 3100 5500 3100
Wire Wire Line
	4050 3550 5150 3550
Connection ~ 4550 3750
Wire Wire Line
	4550 3450 4050 3450
Wire Wire Line
	4550 3450 4550 2950
Wire Wire Line
	4550 2950 4050 2950
Connection ~ 4550 3450
Wire Wire Line
	4050 2750 4550 2750
Wire Wire Line
	4550 2750 4550 2950
Connection ~ 4550 2950
Wire Wire Line
	4550 2750 4550 2300
Connection ~ 4550 2750
Connection ~ 4550 2300
Wire Wire Line
	4550 2300 3550 2300
Wire Wire Line
	4550 4800 4550 5250
Wire Wire Line
	4350 4800 4350 5250
Text Label 4550 3200 0    50   ~ 0
GND
Text Label 4550 3900 0    50   ~ 0
GND
Text Label 4550 5200 0    50   ~ 0
GND
Text Label 6250 3900 1    50   ~ 0
GND
Wire Wire Line
	6300 3900 6250 3900
Text Label 3550 3150 1    50   ~ 0
GND
Wire Wire Line
	3650 3150 3550 3150
$EndSCHEMATC
