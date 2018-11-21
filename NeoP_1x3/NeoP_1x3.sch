EESchema Schematic File Version 4
LIBS:NeoP_1x3-cache
EELAYER 26 0
EELAYER END
$Descr User 11693 8442
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
Wire Wire Line
	2600 4850 2800 4850
Wire Wire Line
	2800 4850 2800 4350
Wire Wire Line
	2800 4350 3400 4350
Wire Wire Line
	3300 3650 3300 3850
Wire Wire Line
	3300 4650 3300 4850
Wire Wire Line
	3300 5650 3300 5850
Wire Wire Line
	3700 6150 3700 5850
Wire Wire Line
	3700 5150 3700 4850
Wire Wire Line
	3700 4150 3700 3850
$Comp
L power:GND #PWR011
U 1 1 5BDCD1A4
P 7275 5025
F 0 "#PWR011" H 7275 4775 50  0001 C CNN
F 1 "GND" V 7280 4892 50  0000 R CNN
F 2 "" H 7275 5025 50  0001 C CNN
F 3 "" H 7275 5025 50  0001 C CNN
	1    7275 5025
	0    1    1    0   
$EndComp
Wire Wire Line
	7275 5025 7400 5025
$Comp
L power:+5V #PWR010
U 1 1 5BDCDFA0
P 7225 4900
F 0 "#PWR010" H 7225 4750 50  0001 C CNN
F 1 "+5V" H 7240 5079 50  0000 C CNN
F 2 "" H 7225 4900 50  0001 C CNN
F 3 "" H 7225 4900 50  0001 C CNN
	1    7225 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 4925 7225 4925
Wire Wire Line
	7225 4925 7225 4900
$Comp
L power:GND #PWR06
U 1 1 5BDD01A1
P 4600 3850
F 0 "#PWR06" H 4600 3600 50  0001 C CNN
F 1 "GND" V 4605 3717 50  0000 R CNN
F 2 "" H 4600 3850 50  0001 C CNN
F 3 "" H 4600 3850 50  0001 C CNN
	1    4600 3850
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 3850 4600 3850
$Comp
L power:GND #PWR07
U 1 1 5BDD1872
P 4600 4350
F 0 "#PWR07" H 4600 4100 50  0001 C CNN
F 1 "GND" V 4605 4217 50  0000 R CNN
F 2 "" H 4600 4350 50  0001 C CNN
F 3 "" H 4600 4350 50  0001 C CNN
	1    4600 4350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4400 4350 4600 4350
$Comp
L power:GND #PWR03
U 1 1 5BDD25C6
P 4575 4850
F 0 "#PWR03" H 4575 4600 50  0001 C CNN
F 1 "GND" V 4580 4717 50  0000 R CNN
F 2 "" H 4575 4850 50  0001 C CNN
F 3 "" H 4575 4850 50  0001 C CNN
	1    4575 4850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BDD25F5
P 4575 5350
F 0 "#PWR04" H 4575 5100 50  0001 C CNN
F 1 "GND" V 4580 5217 50  0000 R CNN
F 2 "" H 4575 5350 50  0001 C CNN
F 3 "" H 4575 5350 50  0001 C CNN
	1    4575 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 4850 4575 4850
Wire Wire Line
	4400 5350 4575 5350
$Comp
L power:GND #PWR05
U 1 1 5BDD39B0
P 4575 5850
F 0 "#PWR05" H 4575 5600 50  0001 C CNN
F 1 "GND" V 4580 5717 50  0000 R CNN
F 2 "" H 4575 5850 50  0001 C CNN
F 3 "" H 4575 5850 50  0001 C CNN
	1    4575 5850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5BDD39DF
P 4550 6350
F 0 "#PWR02" H 4550 6100 50  0001 C CNN
F 1 "GND" V 4555 6217 50  0000 R CNN
F 2 "" H 4550 6350 50  0001 C CNN
F 3 "" H 4550 6350 50  0001 C CNN
	1    4550 6350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4100 5850 4575 5850
Wire Wire Line
	4400 6350 4550 6350
Text GLabel 5175 3650 2    50   Input ~ 0
R
Wire Wire Line
	3300 3650 5175 3650
Text GLabel 5150 4650 2    50   Input ~ 0
G
Wire Wire Line
	3300 4650 5150 4650
Text GLabel 5125 5650 2    50   Input ~ 0
B
Wire Wire Line
	3300 5650 5125 5650
Text GLabel 7275 5125 0    50   Input ~ 0
R
Wire Wire Line
	7275 5125 7400 5125
Text GLabel 7275 5225 0    50   Input ~ 0
G
Text GLabel 7275 5325 0    50   Input ~ 0
B
Wire Wire Line
	7275 5225 7400 5225
Wire Wire Line
	7275 5325 7400 5325
Wire Wire Line
	3800 4350 3900 4350
Wire Wire Line
	3900 4350 3900 4150
Connection ~ 3900 4350
$Comp
L NeoP_1x3-rescue:MMBT2222A-Transistor_BJT-NeoP_6W-rescue-NeoP_1x3-rescue Q4
U 1 1 5BDDE2C1
P 3900 3950
F 0 "Q4" V 4233 3950 50  0000 C CNN
F 1 "MMBT2222A" V 4140 3950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 3875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3900 3950 50  0001 L CNN
	1    3900 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5BDDFE17
P 3500 3850
F 0 "R1" V 3400 3850 50  0000 C CNN
F 1 "47k" V 3500 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 3850 50  0001 C CNN
F 3 "~" H 3500 3850 50  0001 C CNN
	1    3500 3850
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 3850 3350 3850
Wire Wire Line
	3650 3850 3700 3850
Connection ~ 3700 3850
$Comp
L Device:R R4
U 1 1 5BDE1B4D
P 4250 4350
F 0 "R4" V 4040 4350 50  0000 C CNN
F 1 "1,8R" V 4133 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4180 4350 50  0001 C CNN
F 3 "9000079841" H 4250 4350 50  0001 C CNN
	1    4250 4350
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 4350 4100 4350
$Comp
L NeoP_1x3-rescue:IRLML2060TRPBF-NeoP_6W-eagle-import-NeoP_6W-rescue-NeoP_1x3-rescue Q1
U 1 1 5BDE28E1
P 3600 4250
F 0 "Q1" V 3550 4300 42  0000 C CNN
F 1 "IRLML2060TRPBF" V 3650 4700 42  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 4250 50  0001 C CNN
F 3 "" H 3600 4250 50  0001 C CNN
	1    3600 4250
	0    -1   1    0   
$EndComp
$Comp
L NeoP_1x3-rescue:IRLML2060TRPBF-NeoP_6W-eagle-import-NeoP_6W-rescue-NeoP_1x3-rescue Q2
U 1 1 5BDE4E7C
P 3600 5250
F 0 "Q2" V 3500 5300 42  0000 C CNN
F 1 "IRLML2060TRPBF" V 3600 5700 42  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 5250 50  0001 C CNN
F 3 "" H 3600 5250 50  0001 C CNN
	1    3600 5250
	0    -1   1    0   
$EndComp
$Comp
L NeoP_1x3-rescue:MMBT2222A-Transistor_BJT-NeoP_6W-rescue-NeoP_1x3-rescue Q5
U 1 1 5BDE4ED8
P 3900 4950
F 0 "Q5" V 4233 4950 50  0000 C CNN
F 1 "MMBT2222A" V 4140 4950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 4875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3900 4950 50  0001 L CNN
	1    3900 4950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3800 5350 3900 5350
Wire Wire Line
	3900 5150 3900 5350
Connection ~ 3900 5350
$Comp
L Device:R R5
U 1 1 5BDE589D
P 4250 5350
F 0 "R5" V 4040 5350 50  0000 C CNN
F 1 "1,8R" V 4133 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4180 5350 50  0001 C CNN
F 3 "9000079841" H 4250 5350 50  0001 C CNN
	1    4250 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 5350 4100 5350
$Comp
L Device:R R2
U 1 1 5BDE6331
P 3500 4850
F 0 "R2" V 3400 4850 50  0000 C CNN
F 1 "47k" V 3500 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 4850 50  0001 C CNN
F 3 "~" H 3500 4850 50  0001 C CNN
	1    3500 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 4850 3350 4850
Wire Wire Line
	3650 4850 3700 4850
Connection ~ 3700 4850
Wire Wire Line
	3800 6350 3900 6350
$Comp
L NeoP_1x3-rescue:MMBT2222A-Transistor_BJT-NeoP_6W-rescue-NeoP_1x3-rescue Q6
U 1 1 5BDE7A49
P 3900 5950
F 0 "Q6" V 4233 5950 50  0000 C CNN
F 1 "MMBT2222A" V 4140 5950 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4100 5875 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/PN/PN2222A.pdf" H 3900 5950 50  0001 L CNN
	1    3900 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R6
U 1 1 5BDE7A9F
P 4250 6350
F 0 "R6" V 4040 6350 50  0000 C CNN
F 1 "1,8R" V 4133 6350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4180 6350 50  0001 C CNN
F 3 "9000079841" H 4250 6350 50  0001 C CNN
	1    4250 6350
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5BDE7B03
P 3500 5850
F 0 "R3" V 3400 5850 50  0000 C CNN
F 1 "47k" V 3500 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 5850 50  0001 C CNN
F 3 "~" H 3500 5850 50  0001 C CNN
	1    3500 5850
	0    1    1    0   
$EndComp
$Comp
L NeoP_1x3-rescue:IRLML2060TRPBF-NeoP_6W-eagle-import-NeoP_6W-rescue-NeoP_1x3-rescue Q3
U 1 1 5BDE7B69
P 3600 6250
F 0 "Q3" V 3500 6350 42  0000 C CNN
F 1 "IRLML2060TRPBF" V 3600 6650 42  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3600 6250 50  0001 C CNN
F 3 "" H 3600 6250 50  0001 C CNN
	1    3600 6250
	0    -1   1    0   
$EndComp
Wire Wire Line
	3300 5850 3350 5850
Wire Wire Line
	3650 5850 3700 5850
Connection ~ 3700 5850
Wire Wire Line
	3900 6150 3900 6350
Connection ~ 3900 6350
Wire Wire Line
	3900 6350 4100 6350
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5BDF5ACE
P 7600 5225
F 0 "J1" H 7572 5104 50  0000 R CNN
F 1 "Conn_01x06_Male" H 7572 5197 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 7600 5225 50  0001 C CNN
F 3 "~" H 7600 5225 50  0001 C CNN
	1    7600 5225
	-1   0    0    1   
$EndComp
$Comp
L Device:Thermistor_NTC TH1
U 1 1 5BDF7445
P 6400 5975
F 0 "TH1" H 6503 6022 50  0000 L CNN
F 1 "Thermistor_NTC" H 6503 5929 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6400 6025 50  0001 C CNN
F 3 "~" H 6400 6025 50  0001 C CNN
	1    6400 5975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BDF74F5
P 6400 5525
F 0 "R7" H 6330 5478 50  0000 R CNN
F 1 "4,7k" H 6330 5571 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6330 5525 50  0001 C CNN
F 3 "~" H 6400 5525 50  0001 C CNN
	1    6400 5525
	-1   0    0    1   
$EndComp
Wire Wire Line
	6400 5675 6400 5750
$Comp
L power:GND #PWR09
U 1 1 5BDF8CCA
P 6400 6275
F 0 "#PWR09" H 6400 6025 50  0001 C CNN
F 1 "GND" H 6405 6096 50  0000 C CNN
F 2 "" H 6400 6275 50  0001 C CNN
F 3 "" H 6400 6275 50  0001 C CNN
	1    6400 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 6125 6400 6250
$Comp
L power:+5V #PWR08
U 1 1 5BDFBB7F
P 6400 5300
F 0 "#PWR08" H 6400 5150 50  0001 C CNN
F 1 "+5V" H 6415 5479 50  0000 C CNN
F 2 "" H 6400 5300 50  0001 C CNN
F 3 "" H 6400 5300 50  0001 C CNN
	1    6400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5300 6400 5375
Text GLabel 6600 5750 2    50   Input ~ 0
TC
Wire Wire Line
	6600 5750 6400 5750
Connection ~ 6400 5750
Wire Wire Line
	6400 5750 6400 5825
Text GLabel 7275 5425 0    50   Input ~ 0
TC
Wire Wire Line
	7400 5425 7275 5425
$Comp
L Device:CP C1
U 1 1 5BE0622D
P 6000 6000
F 0 "C1" H 6123 6047 50  0000 L CNN
F 1 "4,7uF" H 6123 5954 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 6038 5850 50  0001 C CNN
F 3 "~" H 6000 6000 50  0001 C CNN
	1    6000 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 5750 6000 5750
Wire Wire Line
	6000 5750 6000 5850
Wire Wire Line
	6000 6150 6000 6250
Wire Wire Line
	6000 6250 6400 6250
Connection ~ 6400 6250
Wire Wire Line
	6400 6250 6400 6275
$Comp
L Connector:Conn_01x03_Female J3
U 1 1 5BEC05C8
P 6250 4475
F 0 "J3" H 6278 4500 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6278 4407 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 6250 4475 50  0001 C CNN
F 3 "~" H 6250 4475 50  0001 C CNN
	1    6250 4475
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 5BEC06C8
P 6250 3975
F 0 "J2" H 6278 4000 50  0000 L CNN
F 1 "Conn_01x03_Female" H 6278 3907 50  0000 L CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03" H 6250 3975 50  0001 C CNN
F 3 "~" H 6250 3975 50  0001 C CNN
	1    6250 3975
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4075 5875 4075
Wire Wire Line
	5875 4075 5875 4575
Wire Wire Line
	5875 4575 6050 4575
$Comp
L power:GND #PWR0101
U 1 1 5BEC1DF0
P 5875 4650
F 0 "#PWR0101" H 5875 4400 50  0001 C CNN
F 1 "GND" H 5880 4471 50  0000 C CNN
F 2 "" H 5875 4650 50  0001 C CNN
F 3 "" H 5875 4650 50  0001 C CNN
	1    5875 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 4575 5875 4650
Connection ~ 5875 4575
$Comp
L power:+5V #PWR0102
U 1 1 5BEC31A8
P 5950 3775
F 0 "#PWR0102" H 5950 3625 50  0001 C CNN
F 1 "+5V" H 5965 3954 50  0000 C CNN
F 2 "" H 5950 3775 50  0001 C CNN
F 3 "" H 5950 3775 50  0001 C CNN
	1    5950 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3775 5950 3975
Wire Wire Line
	5950 4475 6050 4475
Wire Wire Line
	6050 3975 5950 3975
Connection ~ 5950 3975
Wire Wire Line
	5950 3975 5950 4475
$Comp
L Device:LED_PAD D1
U 1 1 5BF1AE66
P 2450 4850
F 0 "D1" H 2300 4725 50  0000 C CNN
F 1 "LED_PAD" H 2450 5129 50  0001 C CNN
F 2 "LED_SMD:LED_1W_3W_R8" H 2450 4850 50  0001 C CNN
F 3 "~" H 2450 4850 50  0001 C CNN
	1    2450 4850
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_PAD D2
U 1 1 5BF2336E
P 2450 5350
F 0 "D2" H 2300 5225 50  0000 C CNN
F 1 "LED_PAD" H 2450 5629 50  0001 C CNN
F 2 "LED_SMD:LED_1W_3W_R8" H 2450 5350 50  0001 C CNN
F 3 "~" H 2450 5350 50  0001 C CNN
	1    2450 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:LED_PAD D3
U 1 1 5BF2342E
P 2450 5850
F 0 "D3" H 2300 5725 50  0000 C CNN
F 1 "LED_PAD" H 2450 6129 50  0001 C CNN
F 2 "LED_SMD:LED_1W_3W_R8" H 2450 5850 50  0001 C CNN
F 3 "~" H 2450 5850 50  0001 C CNN
	1    2450 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	2600 5350 3400 5350
Wire Wire Line
	2600 5850 2800 5850
Wire Wire Line
	2800 5850 2800 6350
Wire Wire Line
	2800 6350 3400 6350
Wire Wire Line
	2300 4850 2225 4850
Wire Wire Line
	2075 4850 2075 5350
Wire Wire Line
	2075 5850 2225 5850
Wire Wire Line
	2300 5350 2225 5350
Connection ~ 2075 5350
Wire Wire Line
	2075 5350 2075 5850
Wire Wire Line
	2450 4650 2450 4600
Wire Wire Line
	2450 4600 2225 4600
Wire Wire Line
	2225 4600 2225 4850
Connection ~ 2225 4850
Wire Wire Line
	2225 4850 2075 4850
Wire Wire Line
	2450 5150 2450 5100
Wire Wire Line
	2450 5100 2225 5100
Wire Wire Line
	2225 5100 2225 5350
Connection ~ 2225 5350
Wire Wire Line
	2225 5350 2075 5350
Wire Wire Line
	2450 5650 2450 5575
Wire Wire Line
	2450 5575 2225 5575
Wire Wire Line
	2225 5575 2225 5850
Connection ~ 2225 5850
Wire Wire Line
	2225 5850 2300 5850
$Comp
L power:+5V #PWR0103
U 1 1 5BF2CF5F
P 1800 5250
F 0 "#PWR0103" H 1800 5100 50  0001 C CNN
F 1 "+5V" H 1815 5429 50  0000 C CNN
F 2 "" H 1800 5250 50  0001 C CNN
F 3 "" H 1800 5250 50  0001 C CNN
	1    1800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2075 5350 1800 5350
Wire Wire Line
	1800 5350 1800 5250
$EndSCHEMATC
