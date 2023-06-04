#define setLevelData
if global.zone = 0
    levelData0()
    
if global.zone = 1
    levelData1()
    
if global.zone = 2
    levelData2()
    
if global.zone = 3
    levelData3()
    
if global.zone = 4
{
    if global.ironman_zone = 0
        levelData4()
    if global.ironman_zone = 1
        levelData1()
    if global.ironman_zone = 100
        levelData100()
}
    
if global.zone = 100
    levelData100()

#define levelData1
global.levelData[1,ldROOM] = rm_Beginner1
global.levelData[1,ldSHIP] = "3"
global.levelData[1,ldLTIME] = 5.509
global.levelData[1,ldGRAV] = 0
global.levelData[1,ldDIR] = -1
global.levelData[1,ldPRES] = 0
global.levelData[1,ldDAM] = 0 
global.levelData[1,ldHP] = 0 
global.levelData[1,ldTAR] = 0

global.levelData[2,ldROOM] = rm_Beginner2
global.levelData[2,ldSHIP] = "5"
global.levelData[2,ldLTIME] = 15.799
global.levelData[2,ldGRAV] = 0
global.levelData[2,ldDIR] = -1
global.levelData[2,ldPRES] = 0
global.levelData[2,ldDAM] = 0 
global.levelData[2,ldHP] = 2
global.levelData[2,ldTAR] = 4

global.levelData[3,ldROOM] = rm_Beginner3
global.levelData[3,ldSHIP] = "7"
global.levelData[3,ldLTIME] = 10.619
global.levelData[3,ldGRAV] = 0
global.levelData[3,ldDIR] = 0
global.levelData[3,ldPRES] = 0
global.levelData[3,ldDAM] = 0 
global.levelData[3,ldHP] = 3
global.levelData[3,ldTAR] = 7

global.levelData[4,ldROOM] = rm_Beginner4
global.levelData[4,ldSHIP] = "5"
global.levelData[4,ldLTIME] = 9.779
global.levelData[4,ldGRAV] = 0
global.levelData[4,ldDIR] = -1
global.levelData[4,ldPRES] = 0
global.levelData[4,ldDAM] = 0 
global.levelData[4,ldHP] = 3 
global.levelData[4,ldTAR] = 6

global.levelData[5,ldROOM] = rm_1_5
global.levelData[5,ldSHIP] = "3"
global.levelData[5,ldLTIME] = 13.619
global.levelData[5,ldGRAV] = 0
global.levelData[5,ldDIR] = -1
global.levelData[5,ldPRES] = 0
global.levelData[5,ldDAM] = 0 
global.levelData[5,ldHP] = 0 
global.levelData[5,ldTAR] = 0

global.levelData[6,ldROOM] = rm_1_8
global.levelData[6,ldSHIP] = "3"
global.levelData[6,ldLTIME] = 21.009
global.levelData[6,ldGRAV] = 0
global.levelData[6,ldDIR] = -1
global.levelData[6,ldPRES] = 0
global.levelData[6,ldDAM] = 0 
global.levelData[6,ldHP] = 1
global.levelData[6,ldTAR] = 4

global.levelData[7,ldROOM] = rm_1_7
global.levelData[7,ldSHIP] = "4"
global.levelData[7,ldLTIME] = 8.249
global.levelData[7,ldGRAV] = 9
global.levelData[7,ldDIR] = 270
global.levelData[7,ldPRES] = 0
global.levelData[7,ldDAM] = 0 
global.levelData[7,ldHP] = 0 
global.levelData[7,ldTAR] = 0

global.levelData[8,ldROOM] = rm_1_8
global.levelData[8,ldSHIP] = "4"
global.levelData[8,ldLTIME] = 14.259
global.levelData[8,ldGRAV] = 9
global.levelData[8,ldDIR] = 270
global.levelData[8,ldPRES] = 0
global.levelData[8,ldDAM] = 0 
global.levelData[8,ldHP] = 0 
global.levelData[8,ldTAR] = 0

global.levelData[9,ldROOM] = rm_1_9
global.levelData[9,ldSHIP] = "4"
global.levelData[9,ldLTIME] = 25.969
global.levelData[9,ldGRAV] = 9
global.levelData[9,ldDIR] = 270
global.levelData[9,ldPRES] = 0
global.levelData[9,ldDAM] = 0 
global.levelData[9,ldHP] = 1 
global.levelData[9,ldTAR] = 5

global.levelData[10,ldROOM] = rm_1_10
global.levelData[10,ldSHIP] = "5"
global.levelData[10,ldLTIME] = 12.039
global.levelData[10,ldGRAV] = 0
global.levelData[10,ldDIR] = -1
global.levelData[10,ldPRES] = 0
global.levelData[10,ldDAM] = 0 
global.levelData[10,ldHP] = 0
global.levelData[10,ldTAR] = 0

global.levelData[11,ldROOM] = rm_1_11
global.levelData[11,ldSHIP] = "5"
global.levelData[11,ldLTIME] = 29.359
global.levelData[11,ldGRAV] = 0
global.levelData[11,ldDIR] = -1
global.levelData[11,ldPRES] = 0
global.levelData[11,ldDAM] = 0 
global.levelData[11,ldHP] = 3
global.levelData[11,ldTAR] = 5

global.levelData[12,ldROOM] = rm_1_12
global.levelData[12,ldSHIP] = "5"
global.levelData[12,ldLTIME] = 19.850
global.levelData[12,ldGRAV] = 0
global.levelData[12,ldDIR] = -1
global.levelData[12,ldPRES] = 0
global.levelData[12,ldDAM] = 0 
global.levelData[12,ldHP] = 1 
global.levelData[12,ldTAR] = 6

global.levelData[13,ldROOM] = rm_1_13
global.levelData[13,ldSHIP] = "6"
global.levelData[13,ldLTIME] = 9.029
global.levelData[13,ldGRAV] = 0
global.levelData[13,ldDIR] = -1
global.levelData[13,ldPRES] = 0
global.levelData[13,ldDAM] = 0 
global.levelData[13,ldHP] = 0 
global.levelData[13,ldTAR] = 0

global.levelData[14,ldROOM] = rm_1_13
global.levelData[14,ldSHIP] = "6"
global.levelData[14,ldLTIME] = 53.099
global.levelData[14,ldGRAV] = 0
global.levelData[14,ldDIR] = -1
global.levelData[14,ldPRES] = 0
global.levelData[14,ldDAM] = 0 
global.levelData[14,ldHP] = 0 
global.levelData[14,ldTAR] = 0

global.levelData[15,ldROOM] = rm_1_15
global.levelData[15,ldSHIP] = "5"
global.levelData[15,ldLTIME] = 25.840
global.levelData[15,ldGRAV] = 13.5
global.levelData[15,ldDIR] = 270
global.levelData[15,ldPRES] = 0
global.levelData[15,ldDAM] = 0 
global.levelData[15,ldHP] = 3
global.levelData[15,ldTAR] = 7

global.levelData[16,ldROOM] = rm_1_16 //Left Gravity, small open 4
global.levelData[16,ldSHIP] = "7"
global.levelData[16,ldLTIME] = 8.039
global.levelData[16,ldGRAV] = 0
global.levelData[16,ldDIR] = -1

global.levelData[17,ldROOM] = rm_1_17 // Right gravity, linear, obstacles 6
global.levelData[17,ldSHIP] = "7"
global.levelData[17,ldLTIME] = 34.029
global.levelData[17,ldGRAV] = 0
global.levelData[17,ldDIR] = -1

global.levelData[18,ldROOM] = rm_1_18
global.levelData[18,ldSHIP] = "3"
global.levelData[18,ldLTIME] = 11.049
global.levelData[18,ldGRAV] = 0
global.levelData[18,ldDIR] = -1

global.levelData[19,ldROOM] = rm_1_18
global.levelData[19,ldSHIP] = "5"
global.levelData[19,ldLTIME] = 11.049
global.levelData[19,ldGRAV] = 0
global.levelData[19,ldDIR] = -1

global.levelData[20,ldROOM] = rm_1_18
global.levelData[20,ldSHIP] = "7"
global.levelData[20,ldLTIME] = 17.049
global.levelData[20,ldGRAV] = 0
global.levelData[20,ldDIR] = -1


#define levelData2
global.levelData[1,ldROOM] = rm_Intermediate1
global.levelData[1,ldSHIP] = "3"
global.levelData[1,ldLTIME] = 15.43
global.levelData[1,ldGRAV] = 0
global.levelData[1,ldDIR] = 0
global.levelData[1,ldHP] = 3 
global.levelData[1,ldTAR] = 4

global.levelData[2,ldROOM] = rm_Intermediate2
global.levelData[2,ldSHIP] = "5"
global.levelData[2,ldLTIME] = 15.43//15.43
global.levelData[2,ldGRAV] = 0
global.levelData[2,ldDIR] = -1
global.levelData[2,ldHP] = 3
global.levelData[2,ldTAR] = 7

global.levelData[3,ldROOM] = rm_Intermediate3
global.levelData[3,ldSHIP] = "7"
global.levelData[3,ldLTIME] = 44.64//44.64
global.levelData[3,ldGRAV] = 0
global.levelData[3,ldDIR] = -1
global.levelData[3,ldHP] = 1
global.levelData[3,ldTAR] = 7

global.levelData[4,ldROOM] = rm_Intermediate4
global.levelData[4,ldSHIP] = "6"
global.levelData[4,ldLTIME] = 15.88
global.levelData[4,ldGRAV] = 0
global.levelData[4,ldDIR] = -1
global.levelData[4,ldHP] = 3 
global.levelData[4,ldTAR] = 6

global.levelData[5,ldROOM] = rm_1_18
global.levelData[5,ldSHIP] = "3"
global.levelData[5,ldLTIME] = 15.66
global.levelData[5,ldGRAV] = 0
global.levelData[5,ldDIR] = -1

global.levelData[6,ldROOM] = rm_2_6
global.levelData[6,ldSHIP] = "9"
global.levelData[6,ldLTIME] = 12.00//30.08
global.levelData[6,ldGRAV] = 0
global.levelData[6,ldDIR] = -1

global.levelData[7,ldROOM] = rm_2_7
global.levelData[7,ldSHIP] = "9"
global.levelData[7,ldLTIME] = 45.00//25.77
global.levelData[7,ldGRAV] = 0
global.levelData[7,ldDIR] = -1

global.levelData[8,ldROOM] = rm_2_3
global.levelData[8,ldSHIP] = "3"
global.levelData[8,ldLTIME] = 9.28
global.levelData[8,ldGRAV] = 0
global.levelData[8,ldDIR] = -1

global.levelData[9,ldROOM] = rm_2_9t
global.levelData[9,ldSHIP] = "12"
global.levelData[9,ldLTIME] = 23.11
global.levelData[9,ldGRAV] = 8
global.levelData[9,ldDIR] = 270

global.levelData[10,ldROOM] = rm_2_11t
global.levelData[10,ldSHIP] = "3"
global.levelData[10,ldLTIME] = 15.88//15.88
global.levelData[10,ldGRAV] = 0
global.levelData[10,ldDIR] = -1

global.levelData[11,ldROOM] = rm_2_11t
global.levelData[11,ldSHIP] = "6"
global.levelData[11,ldLTIME] = 15.88
global.levelData[11,ldGRAV] = 9
global.levelData[11,ldDIR] = 45

global.levelData[12,ldROOM] = rm_2_11t
global.levelData[12,ldSHIP] = "6"
global.levelData[12,ldLTIME] = 15.88
global.levelData[12,ldGRAV] = 9
global.levelData[12,ldDIR] = 45

global.levelData[13,ldROOM] = rm_2_13t
global.levelData[13,ldSHIP] = "3"
global.levelData[13,ldLTIME] = 15.88
global.levelData[13,ldGRAV] = 0
global.levelData[13,ldDIR] = -1

#define levelData3
global.levelData[1,ldROOM] = rm_Advanced1
global.levelData[1,ldSHIP] = "15"
global.levelData[1,ldLTIME] = 34.049
global.levelData[1,ldGRAV] = 0
global.levelData[1,ldDIR] = -1
global.levelData[1,ldPRES] = 0
global.levelData[1,ldDAM] = 0 
global.levelData[1,ldHP] = 0 
global.levelData[1,ldTAR] = 0

global.levelData[2,ldROOM] = rm_Advanced2
global.levelData[2,ldSHIP] = "16"
global.levelData[2,ldLTIME] = 16.579
global.levelData[2,ldGRAV] = 0
global.levelData[2,ldDIR] = -1
global.levelData[2,ldPRES] = 0
global.levelData[2,ldDAM] = 0 
global.levelData[2,ldHP] = 0 
global.levelData[2,ldTAR] = 0

global.levelData[3,ldROOM] = rm_Advanced3
global.levelData[3,ldSHIP] = "15"
global.levelData[3,ldLTIME] = 48.069
global.levelData[3,ldGRAV] = 0
global.levelData[3,ldDIR] = -1
global.levelData[3,ldPRES] = 0
global.levelData[3,ldDAM] = 0 
global.levelData[3,ldHP] = 2
global.levelData[3,ldTAR] = 4

global.levelData[4,ldROOM] = rm_Advanced4
global.levelData[4,ldSHIP] = "16"
global.levelData[4,ldLTIME] = 31.979
global.levelData[4,ldGRAV] = 0
global.levelData[4,ldDIR] = -1
global.levelData[4,ldPRES] = 0
global.levelData[4,ldDAM] = 1 
global.levelData[4,ldHP] = 1 
global.levelData[4,ldTAR] = 4

global.levelData[5,ldROOM] = rm_Advanced5
global.levelData[5,ldSHIP] = "21"
global.levelData[5,ldLTIME] = 19.209
global.levelData[5,ldGRAV] = 0
global.levelData[5,ldDIR] = -1
global.levelData[5,ldPRES] = 0
global.levelData[5,ldDAM] = 0 
global.levelData[5,ldHP] = 0 
global.levelData[5,ldTAR] = 0

global.levelData[6,ldROOM] = rm_100_3
global.levelData[6,ldSHIP] = "5"
global.levelData[6,ldLTIME] = 24.16
global.levelData[6,ldGRAV] = 0
global.levelData[6,ldDIR] = 0
global.levelData[6,ldPRES] = 0
global.levelData[6,ldDAM] = 0 
global.levelData[6,ldHP] = 0 
global.levelData[6,ldTAR] = 0

global.levelData[7,ldROOM] = rm_2_11t
global.levelData[7,ldSHIP] = "6"
global.levelData[7,ldLTIME] = 15.149
global.levelData[7,ldGRAV] = 9
global.levelData[7,ldDIR] = 45
global.levelData[7,ldPRES] = 0
global.levelData[7,ldDAM] = 0 
global.levelData[7,ldHP] = 0 
global.levelData[7,ldTAR] = 0

global.levelData[8,ldROOM] = rm_2_13t
global.levelData[8,ldSHIP] = "3"
global.levelData[8,ldLTIME] = 64.929
global.levelData[8,ldGRAV] = 0
global.levelData[8,ldDIR] = -1
global.levelData[8,ldPRES] = 0
global.levelData[8,ldDAM] = 0 
global.levelData[8,ldHP] = 2 
global.levelData[8,ldTAR] = 6

global.levelData[9,ldROOM] = rm_1_18
global.levelData[9,ldSHIP] = "7"
global.levelData[9,ldLTIME] = 38.259
global.levelData[9,ldGRAV] = 0
global.levelData[9,ldDIR] = -1
global.levelData[9,ldPRES] = 0
global.levelData[9,ldDAM] = 0 
global.levelData[9,ldHP] = 1 
global.levelData[9,ldTAR] = 7

global.levelData[10,ldROOM] = rm_3_4
global.levelData[10,ldSHIP] = "15"
global.levelData[10,ldLTIME] = 11.999
global.levelData[10,ldGRAV] = 0
global.levelData[10,ldDIR] = -1
global.levelData[10,ldPRES] = 0
global.levelData[10,ldDAM] = 0 
global.levelData[10,ldHP] = 0 
global.levelData[10,ldTAR] = 0

global.levelData[11,ldROOM] = rm_3_4
global.levelData[11,ldSHIP] = "16"
global.levelData[11,ldLTIME] = 12.779
global.levelData[11,ldGRAV] = 0
global.levelData[11,ldDIR] = -1
global.levelData[11,ldPRES] = 0
global.levelData[11,ldDAM] = 0 
global.levelData[11,ldHP] = 0 
global.levelData[11,ldTAR] = 0

global.levelData[12,ldROOM] = rm_3_4
global.levelData[12,ldSHIP] = "15"
global.levelData[12,ldLTIME] = 36.309
global.levelData[12,ldGRAV] = 0
global.levelData[12,ldDIR] = -1
global.levelData[12,ldPRES] = 0
global.levelData[12,ldDAM] = 0 
global.levelData[12,ldHP] = 2 
global.levelData[12,ldTAR] = 4

global.levelData[13,ldROOM] = rm_3_4
global.levelData[13,ldSHIP] = "16"
global.levelData[13,ldLTIME] = 36.309
global.levelData[13,ldGRAV] = 0
global.levelData[13,ldDIR] = -1
global.levelData[13,ldPRES] = 0
global.levelData[13,ldDAM] = 0 
global.levelData[13,ldHP] = 0 
global.levelData[13,ldTAR] = 0

global.levelData[14,ldROOM] = rm_100_1
global.levelData[14,ldSHIP] = "6"
global.levelData[14,ldLTIME] = 83.669
global.levelData[14,ldGRAV] = 0
global.levelData[14,ldDIR] = -1
global.levelData[14,ldPRES] = 0
global.levelData[14,ldDAM] = 0 
global.levelData[14,ldHP] = 3 
global.levelData[14,ldTAR] = 6

global.levelData[15,ldROOM] = rm_3_4
global.levelData[15,ldSHIP] = "21"
global.levelData[15,ldLTIME] = 15.809
global.levelData[15,ldGRAV] = 0
global.levelData[15,ldDIR] = -1
global.levelData[15,ldPRES] = 0
global.levelData[15,ldDAM] = 0 
global.levelData[15,ldHP] = 0 
global.levelData[15,ldTAR] = 0

#define levelData4
global.levelData[1,ldROOM] = rm_1_1
global.levelData[1,ldSHIP] = "1"
global.levelData[1,ldLTIME] = 99999
global.levelData[1,ldGRAV] = 0
global.levelData[1,ldDIR] = -1

global.levelData[2,ldROOM] = rm_1_18
global.levelData[2,ldSHIP] = "5"
global.levelData[2,ldLTIME] = 99999
global.levelData[2,ldGRAV] = 0
global.levelData[2,ldDIR] = -1

global.levelData[3,ldROOM] = rm_1_1
global.levelData[3,ldSHIP] = "1"
global.levelData[3,ldLTIME] = 99999
global.levelData[3,ldGRAV] = 0
global.levelData[3,ldDIR] = -1

#define levelData0
global.levelData[1,ldROOM] = rm_sandbox4
global.levelData[1,ldLTIME] = 5.74
global.levelData[1,ldGRAV] = 0
global.levelData[1,ldDIR] = -1

global.levelData[2,ldROOM] = rm_sandbox2
global.levelData[2,ldLTIME] = 5.74
global.levelData[2,ldGRAV] = 0
global.levelData[2,ldDIR] = -1

global.levelData[3,ldROOM] = rm_sandbox3
global.levelData[3,ldLTIME] = 5.74
global.levelData[3,ldGRAV] = 0
global.levelData[3,ldDIR] = -1

global.levelData[4,ldROOM] = rm_sandbox4
global.levelData[4,ldLTIME] = 5.74
global.levelData[4,ldGRAV] = 0
global.levelData[4,ldDIR] = -1

#define levelData100
global.levelData[1,ldROOM] = rm_1_18
global.levelData[1,ldSHIP] = "5"
global.levelData[1,ldLTIME] = 34.049
global.levelData[1,ldGRAV] = 0
global.levelData[1,ldDIR] = -1
global.levelData[1,ldPRES] = 0
global.levelData[1,ldDAM] = 0 
global.levelData[1,ldHP] = 2 
global.levelData[1,ldTAR] = 6


global.levelData[2,ldROOM] = rm_2_1
global.levelData[2,ldSHIP] = "7"
global.levelData[2,ldLTIME] = 16.579
global.levelData[2,ldGRAV] = 0
global.levelData[2,ldDIR] = -1
global.levelData[2,ldPRES] = 0
global.levelData[2,ldDAM] = 0 
global.levelData[2,ldHP] = 0 
global.levelData[2,ldTAR] = 0

global.levelData[3,ldROOM] = rm_2_3
global.levelData[3,ldSHIP] = "3"
global.levelData[3,ldLTIME] = 48.069
global.levelData[3,ldGRAV] = 0
global.levelData[3,ldDIR] = -1
global.levelData[3,ldPRES] = 0
global.levelData[3,ldDAM] = 0 
global.levelData[3,ldHP] = 3 
global.levelData[3,ldTAR] = 4

global.levelData[4,ldROOM] = rm_1_18
global.levelData[4,ldSHIP] = "3"
global.levelData[4,ldLTIME] = 31.979
global.levelData[4,ldGRAV] = 0
global.levelData[4,ldDIR] = -1
global.levelData[4,ldPRES] = 0
global.levelData[4,ldDAM] = 1 
global.levelData[4,ldHP] = 0 
global.levelData[4,ldTAR] = 0

global.levelData[5,ldROOM] = rm_100_1
global.levelData[5,ldSHIP] = "3"
global.levelData[5,ldLTIME] = 19.209
global.levelData[5,ldGRAV] = 13.5
global.levelData[5,ldDIR] = 180
global.levelData[5,ldPRES] = 0
global.levelData[5,ldDAM] = 0 
global.levelData[5,ldHP] = 0 
global.levelData[5,ldTAR] = 0

global.levelData[6,ldROOM] = rm_100_3
global.levelData[6,ldSHIP] = "5"
global.levelData[6,ldLTIME] = 24.16
global.levelData[6,ldGRAV] = 0
global.levelData[6,ldDIR] = 0
global.levelData[6,ldPRES] = 0
global.levelData[6,ldDAM] = 0 
global.levelData[6,ldHP] = 0 
global.levelData[6,ldTAR] = 0

global.levelData[7,ldROOM] = rm_2_11t
global.levelData[7,ldSHIP] = "6"
global.levelData[7,ldLTIME] = 15.149
global.levelData[7,ldGRAV] = 9
global.levelData[7,ldDIR] = 45
global.levelData[7,ldPRES] = 0
global.levelData[7,ldDAM] = 0 
global.levelData[7,ldHP] = 0 
global.levelData[7,ldTAR] = 0

global.levelData[8,ldROOM] = rm_2_13t
global.levelData[8,ldSHIP] = "3"
global.levelData[8,ldLTIME] = 64.929
global.levelData[8,ldGRAV] = 0
global.levelData[8,ldDIR] = -1
global.levelData[8,ldPRES] = 0
global.levelData[8,ldDAM] = 0 
global.levelData[8,ldHP] = 2 
global.levelData[8,ldTAR] = 6

global.levelData[9,ldROOM] = rm_1_18
global.levelData[9,ldSHIP] = "7"
global.levelData[9,ldLTIME] = 38.259
global.levelData[9,ldGRAV] = 0
global.levelData[9,ldDIR] = -1
global.levelData[9,ldPRES] = 0
global.levelData[9,ldDAM] = 0 
global.levelData[9,ldHP] = 1 
global.levelData[9,ldTAR] = 7

global.levelData[10,ldROOM] = rm_3_4
global.levelData[10,ldSHIP] = "15"
global.levelData[10,ldLTIME] = 11.999
global.levelData[10,ldGRAV] = 0
global.levelData[10,ldDIR] = -1
global.levelData[10,ldPRES] = 0
global.levelData[10,ldDAM] = 0 
global.levelData[10,ldHP] = 0 
global.levelData[10,ldTAR] = 0

global.levelData[11,ldROOM] = rm_3_4
global.levelData[11,ldSHIP] = "16"
global.levelData[11,ldLTIME] = 12.779
global.levelData[11,ldGRAV] = 0
global.levelData[11,ldDIR] = -1
global.levelData[11,ldPRES] = 0
global.levelData[11,ldDAM] = 0 
global.levelData[11,ldHP] = 0 
global.levelData[11,ldTAR] = 0

global.levelData[12,ldROOM] = rm_3_4
global.levelData[12,ldSHIP] = "15"
global.levelData[12,ldLTIME] = 36.309
global.levelData[12,ldGRAV] = 0
global.levelData[12,ldDIR] = -1
global.levelData[12,ldPRES] = 0
global.levelData[12,ldDAM] = 0 
global.levelData[12,ldHP] = 2 
global.levelData[12,ldTAR] = 4

global.levelData[13,ldROOM] = rm_3_4
global.levelData[13,ldSHIP] = "16"
global.levelData[13,ldLTIME] = 36.309
global.levelData[13,ldGRAV] = 0
global.levelData[13,ldDIR] = -1
global.levelData[13,ldPRES] = 0
global.levelData[13,ldDAM] = 0 
global.levelData[13,ldHP] = 0 
global.levelData[13,ldTAR] = 0

global.levelData[14,ldROOM] = rm_100_1
global.levelData[14,ldSHIP] = "6"
global.levelData[14,ldLTIME] = 83.669
global.levelData[14,ldGRAV] = 0
global.levelData[14,ldDIR] = -1
global.levelData[14,ldPRES] = 0
global.levelData[14,ldDAM] = 0 
global.levelData[14,ldHP] = 3 
global.levelData[14,ldTAR] = 6

global.levelData[15,ldROOM] = rm_3_4
global.levelData[15,ldSHIP] = "21"
global.levelData[15,ldLTIME] = 15.809
global.levelData[15,ldGRAV] = 0
global.levelData[15,ldDIR] = -1
global.levelData[15,ldPRES] = 0
global.levelData[15,ldDAM] = 0 
global.levelData[15,ldHP] = 0 
global.levelData[15,ldTAR] = 0