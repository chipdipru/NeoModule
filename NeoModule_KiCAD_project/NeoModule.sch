EESchema Schematic File Version 4
LIBS:NeoModule-cache
EELAYER 26 0
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
L 74xGxx:74AHC1G125 DD3
U 1 1 5BD9BA98
P 9500 3750
F 0 "DD3" H 9600 3900 50  0000 C CNN
F 1 "74AHC1G125" H 9475 3485 50  0001 C CNN
F 2 "NewComponents:SOT-23-5_mm" H 9500 3750 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9500 3750 50  0001 C CNN
	1    9500 3750
	1    0    0    -1  
$EndComp
$Comp
L MCU_ST_STM32F0:STM32F030F4Px DD1
U 1 1 5BD9BBAE
P 5800 3250
F 0 "DD1" H 5500 3950 50  0000 C CNN
F 1 "STM32F030F4Px" H 6150 2450 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-20_4.4x6.5mm_Pitch0.65mm" H 5400 2550 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00088500.pdf" H 5800 3250 50  0001 C CNN
	1    5800 3250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2985-3.3 DA1
U 1 1 5BD9BDB1
P 2000 3550
F 0 "DA1" H 2000 3892 50  0000 C CNN
F 1 "LP2985-3.3" H 2000 3801 50  0000 C CNN
F 2 "NewComponents:SOT-23-5_mm" H 2000 3875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lp2985.pdf" H 2000 3550 50  0001 C CNN
	1    2000 3550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BD9C1B0
P 1350 3750
F 0 "C1" H 1400 3850 50  0000 L CNN
F 1 "2,2мкФ" H 1400 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 1350 3750 50  0001 C CNN
F 3 "~" H 1350 3750 50  0001 C CNN
	1    1350 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5BD9C3E3
P 3050 3750
F 0 "C3" H 3100 3850 50  0000 L CNN
F 1 "2,2мкФ" H 3100 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3050 3750 50  0001 C CNN
F 3 "~" H 3050 3750 50  0001 C CNN
	1    3050 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BD9C42B
P 2550 3750
F 0 "C2" H 2600 3850 50  0000 L CNN
F 1 "0,01мкФ" H 2600 3650 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2550 3750 50  0001 C CNN
F 3 "~" H 2550 3750 50  0001 C CNN
	1    2550 3750
	1    0    0    -1  
$EndComp
Text GLabel 1050 3450 0    50   Input ~ 0
VIN
Text GLabel 1050 4050 0    50   Input ~ 0
GND
Wire Wire Line
	1600 3550 1500 3550
Wire Wire Line
	1500 3550 1500 3450
Connection ~ 1500 3450
Wire Wire Line
	1500 3450 1600 3450
Wire Wire Line
	1350 3650 1350 3450
Connection ~ 1350 3450
Wire Wire Line
	1350 3450 1500 3450
Wire Wire Line
	3050 4050 3050 3850
Wire Wire Line
	2550 3850 2550 4050
Connection ~ 2550 4050
Wire Wire Line
	2550 4050 3050 4050
Wire Wire Line
	2000 3850 2000 4050
Connection ~ 2000 4050
Wire Wire Line
	2000 4050 2550 4050
Wire Wire Line
	1350 3850 1350 4050
Connection ~ 1350 4050
Wire Wire Line
	1350 4050 2000 4050
Wire Wire Line
	2400 3550 2550 3550
Wire Wire Line
	2550 3550 2550 3650
Wire Wire Line
	2400 3450 3050 3450
Wire Wire Line
	3050 3450 3050 3650
Text GLabel 3250 3450 2    50   Input ~ 0
3V3
Wire Wire Line
	3250 3450 3050 3450
Connection ~ 3050 3450
$Comp
L Device:C_Small C4
U 1 1 5BD9F96F
P 4900 2750
F 0 "C4" V 4800 2800 50  0000 L CNN
F 1 "0,1мкФ" V 5000 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4900 2750 50  0001 C CNN
F 3 "~" H 4900 2750 50  0001 C CNN
	1    4900 2750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 XP2
U 1 1 5BD9FAB9
P 4550 3300
F 0 "XP2" H 4550 3100 50  0000 C CNN
F 1 "Conn_01x02" H 4630 3201 50  0001 L CNN
F 2 "NewComponents:Pin_Header_Straight_1x02_mm" H 4550 3300 50  0001 C CNN
F 3 "~" H 4550 3300 50  0001 C CNN
	1    4550 3300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 5BD9FBB5
P 4650 2950
F 0 "R1" V 4550 2950 50  0000 C CNN
F 1 "10k" V 4650 2950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4580 2950 50  0001 C CNN
F 3 "~" H 4650 2950 50  0001 C CNN
	1    4650 2950
	0    1    1    0   
$EndComp
Text GLabel 4050 2750 0    50   Input ~ 0
GND
Wire Wire Line
	4050 2750 4400 2750
Wire Wire Line
	4500 2950 4400 2950
Wire Wire Line
	4400 2950 4400 2750
Connection ~ 4400 2750
Wire Wire Line
	4400 2750 4800 2750
Wire Wire Line
	5000 2750 5300 2750
Wire Wire Line
	4800 2950 5200 2950
Wire Wire Line
	4750 3200 5200 3200
Wire Wire Line
	5200 3200 5200 2950
Connection ~ 5200 2950
Wire Wire Line
	5200 2950 5300 2950
Text GLabel 4050 3450 0    50   Input ~ 0
3V3
Wire Wire Line
	4750 3300 5200 3300
Wire Wire Line
	5200 3300 5200 3450
Wire Wire Line
	5200 3450 4150 3450
$Comp
L Connector_Generic:Conn_02x02_Odd_Even XP1
U 1 1 5BDA1E9F
P 4450 3550
F 0 "XP1" H 4500 3350 50  0000 C CNN
F 1 "Conn_02x02_Odd_Even" H 4500 3676 50  0001 C CNN
F 2 "NewComponents:Pin_Header_Straight_2x02_mm" H 4450 3550 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3550 5100 3550
Wire Wire Line
	5300 3650 4900 3650
$Comp
L Device:R R2
U 1 1 5BDA3112
P 4900 3900
F 0 "R2" V 4975 3900 50  0000 C CNN
F 1 "10k" V 4900 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4830 3900 50  0001 C CNN
F 3 "~" H 4900 3900 50  0001 C CNN
	1    4900 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5BDA34DB
P 5100 3900
F 0 "R3" V 5175 3900 50  0000 C CNN
F 1 "10k" V 5100 3900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5030 3900 50  0001 C CNN
F 3 "~" H 5100 3900 50  0001 C CNN
	1    5100 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5100 3750 5100 3550
Connection ~ 5100 3550
Wire Wire Line
	5100 3550 5300 3550
Wire Wire Line
	4900 3750 4900 3650
Connection ~ 4900 3650
Wire Wire Line
	4900 3650 4750 3650
Text GLabel 4800 4150 0    50   Input ~ 0
GND
Wire Wire Line
	4250 3650 4150 3650
Wire Wire Line
	4150 3650 4150 3550
Connection ~ 4150 3450
Wire Wire Line
	4150 3450 4050 3450
Wire Wire Line
	4250 3550 4150 3550
Connection ~ 4150 3550
Wire Wire Line
	4150 3550 4150 3450
Wire Wire Line
	4800 4150 4900 4150
Wire Wire Line
	5800 4150 5800 4050
Wire Wire Line
	5100 4050 5100 4150
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 5800 4150
Wire Wire Line
	4900 4050 4900 4150
Connection ~ 4900 4150
Wire Wire Line
	4900 4150 5100 4150
$Comp
L Device:CP_Small C7
U 1 1 5BDA8D91
P 6950 2200
F 0 "C7" H 7038 2246 50  0000 L CNN
F 1 "10мкФ" H 7038 2155 50  0000 L CNN
F 2 "NewComponents:TantalC_SizeA_EIA-3216_HandSoldering_mm" H 6950 2200 50  0001 C CNN
F 3 "~" H 6950 2200 50  0001 C CNN
	1    6950 2200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5BDA8EA7
P 6100 2200
F 0 "C5" H 5975 2125 50  0000 L CNN
F 1 "0,1мкФ" H 5800 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6100 2200 50  0001 C CNN
F 3 "~" H 6100 2200 50  0001 C CNN
	1    6100 2200
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5BDA9278
P 6500 2200
F 0 "C6" H 6375 2125 50  0000 L CNN
F 1 "0,1мкФ" H 6200 2300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 6500 2200 50  0001 C CNN
F 3 "~" H 6500 2200 50  0001 C CNN
	1    6500 2200
	-1   0    0    1   
$EndComp
Text GLabel 10350 2550 2    50   Input ~ 0
3V3
Text GLabel 10350 2950 2    50   Input ~ 0
GND
Wire Wire Line
	5800 2550 5800 2450
Wire Wire Line
	5800 2000 6100 2000
Wire Wire Line
	6950 2100 6950 2000
Connection ~ 6950 2000
Wire Wire Line
	6950 2000 7300 2000
Wire Wire Line
	6500 2100 6500 2000
Connection ~ 6500 2000
Wire Wire Line
	6500 2000 6950 2000
Wire Wire Line
	6100 2100 6100 2000
Connection ~ 6100 2000
Wire Wire Line
	6100 2000 6500 2000
Wire Wire Line
	5900 2550 5900 2450
Wire Wire Line
	5900 2450 5800 2450
Connection ~ 5800 2450
Wire Wire Line
	5800 2450 5800 2000
Wire Wire Line
	6100 2300 6100 2400
Wire Wire Line
	6100 2400 6500 2400
Wire Wire Line
	6950 2300 6950 2400
Connection ~ 6950 2400
Wire Wire Line
	6950 2400 7300 2400
Wire Wire Line
	6500 2300 6500 2400
Connection ~ 6500 2400
Wire Wire Line
	6500 2400 6950 2400
Text GLabel 9900 3750 2    50   Input ~ 0
DOUT
Wire Wire Line
	9750 3750 9900 3750
$Comp
L 74xGxx:74AHC1G125 DD2
U 1 1 5BDB3DAD
P 9450 3200
F 0 "DD2" H 9550 3350 50  0000 C CNN
F 1 "MC74VHC1GT125" H 9425 2935 50  0001 C CNN
F 2 "NewComponents:SOT-23-5_mm" H 9450 3200 50  0001 C CNN
F 3 "http://www.ti.com/lit/sg/scyt129e/scyt129e.pdf" H 9450 3200 50  0001 C CNN
	1    9450 3200
	-1   0    0    -1  
$EndComp
Text GLabel 6700 2750 2    50   Input ~ 0
OUT1
Text GLabel 6700 2850 2    50   Input ~ 0
OUT2
Text GLabel 6700 2950 2    50   Input ~ 0
OUT3
Text GLabel 6700 3050 2    50   Input ~ 0
OUT4
Text GLabel 6700 3250 2    50   Input ~ 0
OUT5
Wire Wire Line
	6300 2750 6700 2750
Wire Wire Line
	6700 2850 6300 2850
Wire Wire Line
	6300 2950 6700 2950
Wire Wire Line
	6700 3050 6300 3050
Wire Wire Line
	6300 3250 6700 3250
Text GLabel 8850 2250 0    50   Input ~ 0
OUT1
Text GLabel 8850 2350 0    50   Input ~ 0
OUT2
Text GLabel 8850 2450 0    50   Input ~ 0
OUT3
Text GLabel 8850 2550 0    50   Input ~ 0
OUT4
Text GLabel 8850 4300 0    50   Input ~ 0
OUT5
Wire Wire Line
	8850 2250 9050 2250
Wire Wire Line
	9050 2350 8850 2350
Wire Wire Line
	8850 2450 9050 2450
Wire Wire Line
	9050 2550 8850 2550
Wire Wire Line
	8850 4300 9050 4300
Text GLabel 6700 3150 2    50   Input ~ 0
OUT6
Wire Wire Line
	6300 3150 6700 3150
Text GLabel 8850 4400 0    50   Input ~ 0
OUT6
Wire Wire Line
	8850 4400 9050 4400
Text GLabel 6700 3350 2    50   Input ~ 0
LED_IN
Wire Wire Line
	6700 3350 6300 3350
Text GLabel 6700 3450 2    50   Input ~ 0
LED_OUT
Wire Wire Line
	6700 3450 6300 3450
Text GLabel 8850 3200 0    50   Input ~ 0
LED_IN
Text GLabel 8850 3750 0    50   Input ~ 0
LED_OUT
Text GLabel 9900 3200 2    50   Input ~ 0
DIN
Wire Wire Line
	9750 3200 9900 3200
Wire Wire Line
	9200 3200 8850 3200
Wire Wire Line
	8850 3750 9200 3750
Text GLabel 9550 3500 2    50   Input ~ 0
GND
Text GLabel 9550 2950 2    50   Input ~ 0
GND
Wire Wire Line
	9450 3000 9450 2950
Wire Wire Line
	9450 2950 9550 2950
Wire Wire Line
	9500 3550 9500 3500
Wire Wire Line
	9500 3500 9550 3500
Text GLabel 6700 3550 2    50   Input ~ 0
OUT7_TX
Text GLabel 6700 3650 2    50   Input ~ 0
OUT8_RX
Wire Wire Line
	6300 3550 6700 3550
Wire Wire Line
	6700 3650 6300 3650
Text GLabel 8850 4500 0    50   Input ~ 0
OUT7_TX
Text GLabel 8850 4600 0    50   Input ~ 0
OUT8_RX
Text GLabel 8850 4700 0    50   Input ~ 0
GND
Wire Wire Line
	8850 4500 9050 4500
Wire Wire Line
	9050 4600 8850 4600
Wire Wire Line
	8850 4700 9050 4700
Wire Wire Line
	9050 4800 8850 4800
Text GLabel 6700 3750 2    50   Input ~ 0
SWDIO
Text GLabel 6700 3850 2    50   Input ~ 0
SWDCLK
Wire Wire Line
	6700 3850 6300 3850
Wire Wire Line
	6700 3750 6300 3750
$Comp
L Device:C_Small C8
U 1 1 5BDB673C
P 10100 2750
F 0 "C8" H 9975 2675 50  0000 L CNN
F 1 "0,1мкФ" H 9800 2850 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10100 2750 50  0001 C CNN
F 3 "~" H 10100 2750 50  0001 C CNN
	1    10100 2750
	-1   0    0    1   
$EndComp
Text GLabel 10550 3650 2    50   Input ~ 0
GND
$Comp
L Device:C_Small C9
U 1 1 5BDBB463
P 10100 3450
F 0 "C9" H 9975 3375 50  0000 L CNN
F 1 "0,1мкФ" H 9800 3550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 10100 3450 50  0001 C CNN
F 3 "~" H 10100 3450 50  0001 C CNN
	1    10100 3450
	-1   0    0    1   
$EndComp
Text GLabel 10550 3250 2    50   Input ~ 0
VIN
Wire Wire Line
	10350 2550 10100 2550
Wire Wire Line
	10100 2550 10100 2650
Wire Wire Line
	10100 2850 10100 2950
Wire Wire Line
	10100 2950 10350 2950
Wire Wire Line
	10550 3250 10450 3250
Wire Wire Line
	10100 3250 10100 3350
Wire Wire Line
	10100 3550 10100 3650
Wire Wire Line
	10100 3650 10450 3650
$Comp
L Device:CP_Small C10
U 1 1 5BDC8E3D
P 10450 3450
F 0 "C10" H 10538 3496 50  0000 L CNN
F 1 "10мкФ" H 10538 3405 50  0000 L CNN
F 2 "NewComponents:TantalC_SizeA_EIA-3216_HandSoldering_mm" H 10450 3450 50  0001 C CNN
F 3 "~" H 10450 3450 50  0001 C CNN
	1    10450 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 3350 10450 3250
Connection ~ 10450 3250
Wire Wire Line
	10450 3250 10100 3250
Wire Wire Line
	10450 3550 10450 3650
Connection ~ 10450 3650
Wire Wire Line
	10450 3650 10550 3650
Text GLabel 7300 2000 2    50   Input ~ 0
3V3
Text GLabel 7300 2400 2    50   Input ~ 0
GND
$Comp
L Connector_Generic:Conn_01x03 XP6
U 1 1 5BDB91F9
P 10500 4600
F 0 "XP6" H 10450 4800 50  0000 L CNN
F 1 "Conn_01x03" H 10580 4551 50  0001 L CNN
F 2 "NewComponents:Pin_Header_Straight_1x03_mm" H 10500 4600 50  0001 C CNN
F 3 "~" H 10500 4600 50  0001 C CNN
	1    10500 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 XP7
U 1 1 5BDB94B3
P 10500 5200
F 0 "XP7" H 10450 5400 50  0000 L CNN
F 1 "Conn_01x03" H 10580 5151 50  0001 L CNN
F 2 "NewComponents:Pin_Header_Straight_1x03_mm" H 10500 5200 50  0001 C CNN
F 3 "~" H 10500 5200 50  0001 C CNN
	1    10500 5200
	1    0    0    -1  
$EndComp
Text GLabel 10100 4700 0    50   Input ~ 0
GND
Text GLabel 10100 5300 0    50   Input ~ 0
GND
Text GLabel 10100 4500 0    50   Input ~ 0
DIN
Text GLabel 10100 5100 0    50   Input ~ 0
DOUT
Text GLabel 10100 4600 0    50   Input ~ 0
VIN
Text GLabel 10100 5200 0    50   Input ~ 0
VIN
Wire Wire Line
	10100 4500 10300 4500
Wire Wire Line
	10300 4600 10100 4600
Wire Wire Line
	10100 4700 10300 4700
Wire Wire Line
	10300 5100 10100 5100
Wire Wire Line
	10100 5200 10300 5200
Wire Wire Line
	10300 5300 10100 5300
Wire Wire Line
	1050 3450 1350 3450
Wire Wire Line
	1050 4050 1350 4050
$Comp
L Connector_Generic:Conn_01x02 XP5
U 1 1 5BDD2A5B
P 9250 5100
F 0 "XP5" H 9250 5200 50  0000 C CNN
F 1 "Conn_01x02" H 9330 5001 50  0001 L CNN
F 2 "NewComponents:Pin_Header_Straight_1x02_mm" H 9250 5100 50  0001 C CNN
F 3 "~" H 9250 5100 50  0001 C CNN
	1    9250 5100
	1    0    0    -1  
$EndComp
Text GLabel 8850 5100 0    50   Input ~ 0
SWDIO
Text GLabel 8850 5200 0    50   Input ~ 0
SWDCLK
Wire Wire Line
	8850 5100 9050 5100
Wire Wire Line
	9050 5200 8850 5200
$Comp
L Connector_Generic:Conn_01x04 XP3
U 1 1 5BDBB45F
P 9250 2450
F 0 "XP3" H 9200 2150 50  0000 L CNN
F 1 "Conn_01x04" H 9330 2351 50  0001 L CNN
F 2 "NewComponents:Pin_Header_Straight_1x04_mm" H 9250 2450 50  0001 C CNN
F 3 "~" H 9250 2450 50  0001 C CNN
	1    9250 2450
	1    0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x06 XP4
U 1 1 5BDC1C33
P 9250 4500
F 0 "XP4" H 9200 4800 50  0000 L CNN
F 1 "Conn_01x06" H 9330 4401 50  0001 L CNN
F 2 "NewComponents:Pin_Header_Straight_1x06_mm" H 9250 4500 50  0001 C CNN
F 3 "~" H 9250 4500 50  0001 C CNN
	1    9250 4500
	1    0    0    -1  
$EndComp
Text GLabel 8850 4800 0    50   Input ~ 0
VIN
$EndSCHEMATC
