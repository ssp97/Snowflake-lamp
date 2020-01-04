///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V3.10.1.201 for STM8                04/Jan/2020  19:03:24
// Copyright 2010-2017 IAR Systems AB.
// Standalone license - IAR Embedded Workbench for STMicroelectronics STM8
//
//    Source file  =  F:\项目存档\2020-01-04 雪花灯STM8\iar\beep.c
//    Command line =  
//        -f C:\Users\38263\AppData\Local\Temp\EW38B3.tmp
//        ("F:\项目存档\2020-01-04 雪花灯STM8\iar\beep.c" -e -Oh --code_model
//        small --data_model medium -o "F:\项目存档\2020-01-04
//        雪花灯STM8\iar\Release\Obj" --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\stm8\LIB\dlstm8smn.h" -D NDEBUG -lC
//        "F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List" -lA
//        "F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List" --vregs 16)
//    Locale       =  Chinese (Simplified)_CHN.936
//    List file    =  F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List\beep.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__code_model", "small"
        RTMODEL "__core", "stm8"
        RTMODEL "__data_model", "medium"
        RTMODEL "__rt_version", "4"

        EXTERN ?epilogue_w4
        EXTERN ?mov_l1_l0
        EXTERN ?push_w4
        EXTERN ?sdiv32_l0_dl_l1
        EXTERN ?sext32_l0_x
        EXTERN ?w1
        EXTERN ?w4

        PUBLIC MusicPause
        PUBLIC MusicPlay
        PUBLIC MusicStop
        PUBLIC TIM2_ARRH
        PUBLIC TIM2_ARRL
        PUBLIC TIM2_CCR1H
        PUBLIC TIM2_CCR1L
        PUBLIC _A_PD_ODR
        PUBLIC _A_TIM2_CCER1
        PUBLIC _A_TIM2_CCMR1
        PUBLIC _A_TIM2_CR1
        PUBLIC _A_TIM2_PSCR
        PUBLIC bad_apple
        PUBLIC beep_demo
        PUBLIC beep_init
        PUBLIC beep_set
        PUBLIC beep_start
        PUBLIC beep_update
        PUBLIC demo_music
        PUBLIC music
        PUBLIC musicNum
        PUBLIC musicTime
        PUBLIC playStatus
        PUBLIC senbonzakura
        
          CFI Names cfiNames0
          CFI StackFrame CFA SP DATA
          CFI Resource A:8, XL:8, XH:8, YL:8, YH:8, SP:16, CC:8, PC:24, PCL:8
          CFI Resource PCH:8, PCE:8, ?b0:8, ?b1:8, ?b2:8, ?b3:8, ?b4:8, ?b5:8
          CFI Resource ?b6:8, ?b7:8, ?b8:8, ?b9:8, ?b10:8, ?b11:8, ?b12:8, ?b13:8
          CFI Resource ?b14:8, ?b15:8
          CFI ResourceParts PC PCE, PCH, PCL
          CFI EndNames cfiNames0
        
          CFI Common cfiCommon0 Using cfiNames0
          CFI CodeAlign 1
          CFI DataAlign 1
          CFI ReturnAddress PC CODE
          CFI CFA SP+2
          CFI A Undefined
          CFI XL Undefined
          CFI XH Undefined
          CFI YL Undefined
          CFI YH Undefined
          CFI CC Undefined
          CFI PC Concat
          CFI PCL Frame(CFA, 0)
          CFI PCH Frame(CFA, -1)
          CFI PCE SameValue
          CFI ?b0 Undefined
          CFI ?b1 Undefined
          CFI ?b2 Undefined
          CFI ?b3 Undefined
          CFI ?b4 Undefined
          CFI ?b5 Undefined
          CFI ?b6 Undefined
          CFI ?b7 Undefined
          CFI ?b8 SameValue
          CFI ?b9 SameValue
          CFI ?b10 SameValue
          CFI ?b11 SameValue
          CFI ?b12 SameValue
          CFI ?b13 SameValue
          CFI ?b14 SameValue
          CFI ?b15 SameValue
          CFI EndCommon cfiCommon0
        
        
          CFI Common cfiCommon1 Using cfiNames0
          CFI CodeAlign 1
          CFI DataAlign 1
          CFI ReturnAddress PC CODE
          CFI CFA SP+2
          CFI A SameValue
          CFI XL SameValue
          CFI XH SameValue
          CFI YL SameValue
          CFI YH SameValue
          CFI CC Undefined
          CFI PC Concat
          CFI PCL Frame(CFA, 0)
          CFI PCH Frame(CFA, -1)
          CFI PCE SameValue
          CFI ?b0 SameValue
          CFI ?b1 SameValue
          CFI ?b2 SameValue
          CFI ?b3 SameValue
          CFI ?b4 SameValue
          CFI ?b5 SameValue
          CFI ?b6 SameValue
          CFI ?b7 SameValue
          CFI ?b8 SameValue
          CFI ?b9 SameValue
          CFI ?b10 SameValue
          CFI ?b11 SameValue
          CFI ?b12 SameValue
          CFI ?b13 SameValue
          CFI ?b14 SameValue
          CFI ?b15 SameValue
          CFI EndCommon cfiCommon1
        
// F:\项目存档\2020-01-04 雪花灯STM8\iar\beep.c
//    1 #include "beep.h"

        ASEGN `.near.noinit`:DATA:NOROOT,0500fH
        SECTION_GROUP _A_PD_ODR
// union <unnamed> volatile _A_PD_ODR
_A_PD_ODR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05300H
        SECTION_GROUP _A_TIM2_CR1
// union <unnamed> volatile _A_TIM2_CR1
_A_TIM2_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05307H
        SECTION_GROUP _A_TIM2_CCMR1
// union <unnamed> volatile _A_TIM2_CCMR1
_A_TIM2_CCMR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0530aH
        SECTION_GROUP _A_TIM2_CCER1
// union <unnamed> volatile _A_TIM2_CCER1
_A_TIM2_CCER1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0530eH
        SECTION_GROUP _A_TIM2_PSCR
// union <unnamed> volatile _A_TIM2_PSCR
_A_TIM2_PSCR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0530fH
        SECTION_GROUP TIM2_ARRH
// unsigned char volatile TIM2_ARRH
TIM2_ARRH:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05310H
        SECTION_GROUP TIM2_ARRL
// unsigned char volatile TIM2_ARRL
TIM2_ARRL:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05311H
        SECTION_GROUP TIM2_CCR1H
// unsigned char volatile TIM2_CCR1H
TIM2_CCR1H:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05312H
        SECTION_GROUP TIM2_CCR1L
// unsigned char volatile TIM2_CCR1L
TIM2_CCR1L:
        DS8 1
//    2 

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
//    3 unsigned int musicNum = 0;
musicNum:
        DS8 2

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
//    4 unsigned char musicTime = 0;
musicTime:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
//    5 unsigned char playStatus = 0;
playStatus:
        DS8 1

        SECTION `.near.bss`:DATA:REORDER:NOROOT(0)
//    6 const unsigned int * music = 0;
music:
        DS8 2
//    7 

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
//    8 const unsigned int demo_music[] = {
demo_music:
        DC16 392, 20, 392, 20, 440, 40, 392, 40, 523, 40, 494, 80, 392, 20, 392
        DC16 20, 440, 40, 392, 40, 587, 40, 523, 80, 392, 20, 392, 20, 784, 40
        DC16 659, 40, 523, 40, 494, 40, 440, 40, 698, 3, 698, 1, 659, 40, 523
        DC16 40, 587, 40, 523, 40, 10000, 80, 0
//    9   L5,20,L5,20,L6,40,L5,40,M1,40,L7,80,
//   10   L5,20,L5,20,L6,40,L5,40,M2,40,M1,80,
//   11   L5,20,L5,20,M5,40,M3,40,M1,40,L7,40,L6,40,
//   12   M4,3,M4,1,M3,40,M1,40,M2,40,M1,40,
//   13   10000,80,0x00,	
//   14 };
//   15 

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
//   16 const unsigned int bad_apple[] ={
bad_apple:
        DC16 440, 20, 494, 20, 523, 20, 587, 20, 659, 40, 880, 20, 784, 20, 659
        DC16 40, 440, 40, 659, 20, 587, 20, 523, 20, 494, 20, 440, 20, 494, 20
        DC16 523, 20, 587, 20, 659, 40, 587, 20, 523, 20, 494, 20, 440, 20, 494
        DC16 20, 523, 20, 494, 20, 440, 20, 392, 20, 494, 20, 440, 20, 494, 20
        DC16 523, 20, 587, 20, 659, 40, 880, 20, 784, 20, 659, 40, 440, 40, 659
        DC16 20, 587, 20, 523, 20, 494, 20, 440, 20, 494, 20, 523, 20, 587, 20
        DC16 659, 40, 587, 20, 523, 20, 494, 20, 523, 20, 523, 20, 587, 20, 587
        DC16 20, 659, 20, 659, 20, 440, 20, 494, 20, 523, 20, 587, 20, 659, 40
        DC16 880, 20, 784, 20, 659, 40, 440, 40, 659, 20, 587, 20, 523, 20, 494
        DC16 20, 440, 20, 494, 20, 523, 20, 587, 20, 659, 40, 587, 20, 523, 20
        DC16 494, 20, 440, 20, 494, 20, 523, 20, 494, 20, 440, 20, 392, 20, 494
        DC16 20, 440, 20, 494, 20, 523, 20, 587, 20, 659, 40, 880, 20, 784, 20
        DC16 659, 40, 440, 40, 659, 20, 587, 20, 523, 20, 494, 20, 440, 20, 494
        DC16 20, 523, 20, 587, 20, 659, 40, 587, 20, 523, 20, 494, 20, 523, 20
        DC16 523, 20, 587, 20, 587, 20, 659, 20, 659, 20, 784, 20, 880, 20, 659
        DC16 20, 587, 20, 659, 40, 587, 20, 659, 20, 784, 20, 880, 20, 659, 20
        DC16 587, 20, 659, 40, 587, 20, 659, 20, 587, 20, 523, 20, 494, 20, 392
        DC16 20, 440, 40, 392, 20, 440, 20, 494, 20, 523, 20, 587, 20, 659, 20
        DC16 440, 40, 659, 20, 784, 20, 784, 20, 880, 20, 659, 20, 587, 20, 659
        DC16 40, 587, 20, 659, 20, 784, 20, 880, 20, 659, 20, 587, 20, 659, 40
        DC16 587, 20, 659, 20, 587, 20, 523, 20, 494, 20, 392, 20, 440, 40, 392
        DC16 20, 440, 20, 494, 20, 523, 20, 587, 20, 659, 20, 440, 40, 659, 20
        DC16 784, 20, 784, 20, 880, 20, 659, 20, 587, 20, 659, 40, 587, 20, 659
        DC16 20, 784, 20, 880, 20, 659, 20, 587, 20, 659, 40, 587, 20, 659, 20
        DC16 587, 20, 523, 20, 494, 20, 392, 20, 440, 40, 392, 20, 440, 20, 494
        DC16 20, 523, 20, 587, 20, 659, 20, 440, 40, 659, 20, 784, 20, 784, 20
        DC16 880, 20, 659, 20, 587, 20, 659, 40, 587, 20, 659, 20, 784, 20, 880
        DC16 20, 659, 20, 587, 20, 659, 40, 880, 20, 988, 20, 1046, 20, 988, 20
        DC16 880, 20, 784, 20, 659, 40, 587, 20, 659, 20, 587, 20, 523, 20, 494
        DC16 20, 392, 20, 440, 40, 659, 20, 784, 20, 784, 20, 880, 20, 659, 20
        DC16 587, 20, 659, 40, 587, 20, 659, 20, 784, 20, 880, 20, 659, 20, 587
        DC16 20, 659, 40, 587, 20, 659, 20, 587, 20, 523, 20, 494, 20, 392, 20
        DC16 440, 40, 392, 20, 440, 20, 494, 20, 523, 20, 587, 20, 659, 20, 440
        DC16 40, 659, 20, 784, 20, 784, 20, 880, 20, 659, 20, 587, 20, 659, 40
        DC16 587, 20, 659, 20, 784, 20, 880, 20, 659, 20, 587, 20, 659, 40, 587
        DC16 20, 659, 20, 587, 20, 523, 20, 494, 20, 392, 20, 440, 40, 392, 20
        DC16 440, 20, 494, 20, 523, 20, 587, 20, 659, 20, 440, 40, 659, 20, 784
        DC16 20, 784, 20, 880, 20, 659, 20, 587, 20, 659, 40, 587, 20, 659, 20
        DC16 784, 20, 880, 20, 659, 20, 587, 20, 659, 40, 587, 20, 659, 20, 587
        DC16 20, 523, 20, 494, 20, 392, 20, 440, 40, 392, 20, 440, 20, 494, 20
        DC16 523, 20, 587, 20, 659, 20, 440, 40, 659, 20, 784, 20, 784, 20, 880
        DC16 20, 659, 20, 587, 20, 659, 40, 587, 20, 659, 20, 784, 20, 880, 20
        DC16 659, 20, 587, 20, 659, 40, 880, 20, 988, 20, 1046, 20, 988, 20
        DC16 880, 20, 784, 20, 659, 40, 587, 20, 659, 20, 587, 20, 523, 20, 494
        DC16 20, 392, 20, 440, 40, 10000, 80, 0
//   17   L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,
//   18   M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
//   19   L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
//   20   L7,20,L6,20,L7,20,M1,20,L7,20,L6,20,L5,20,L7,20,
//   21   
//   22   L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,
//   23   M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
//   24   L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
//   25   L7,20,M1,20,M1,20,M2,20,M2,20,M3,20,M3,20,
//   26   
//   27   L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,  //反复一次
//   28   M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
//   29   L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
//   30   L7,20,L6,20,L7,20,M1,20,L7,20,L6,20,L5,20,L7,20,
//   31   
//   32   L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,
//   33   M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
//   34   L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
//   35   L7,20,M1,20,M1,20,M2,20,M2,20,M3,20,M3,20,
//   36   
//   37   
//   38   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   39   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   40   M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
//   41   L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
//   42   
//   43   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   44   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   45   M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
//   46   L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
//   47   
//   48   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   49   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   50   M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
//   51   L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
//   52   
//   53   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   54   M5,20,M6,20,M3,20,M2,20,M3,40,M6,20,M7,20,
//   55   H1,20,M7,20,M6,20,M5,20,M3,40,M2,20,M3,20,
//   56   M2,20,M1,20,L7,20,L5,20,L6,40,M3,20,M5,20,
//   57   
//   58   
//   59   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,   //反复一次
//   60   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   61   M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
//   62   L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
//   63   
//   64   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   65   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   66   M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
//   67   L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
//   68   
//   69   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   70   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   71   M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
//   72   L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
//   73   
//   74   M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
//   75   M5,20,M6,20,M3,20,M2,20,M3,40,M6,20,M7,20,
//   76   H1,20,M7,20,M6,20,M5,20,M3,40,M2,20,M3,20,
//   77   M2,20,M1,20,L7,20,L5,20,L6,40,/*M3,20,M5,20,*/
//   78   /*
//   79   L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
//   80   L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
//   81   L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
//   82   L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
//   83   */
//   84   
//   85   M_STOP,80,0x00,	
//   86 };
//   87 

        SECTION `.near.rodata`:CONST:REORDER:NOROOT(0)
//   88 const unsigned int senbonzakura[] = {
senbonzakura:
        DC16 440, 10, 440, 10, 392, 10, 440, 10, 440, 10, 392, 10, 440, 10, 440
        DC16 10, 392, 10, 440, 10, 262, 20, 10000, 80, 0
//   89   L6,10,L6,10,L5,10,L6,10,L6,10,L5,10,
//   90   L6,10,L6,10,L5,10,L6,10,L1,20,
//   91   
//   92   M_STOP,80,0x00,
//   93 };
//   94 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function beep_set
        CODE
//   95 void beep_set(int freq){
beep_set:
        CALL      L:?push_w4
          CFI ?b9 Frame(CFA, -2)
          CFI ?b8 Frame(CFA, -3)
          CFI CFA SP+4
        LDW       S:?w4, X
//   96   unsigned int tim_data;
//   97   
//   98   tim_data = 8000000L / freq;
        CALL      L:?sext32_l0_x
        CALL      L:?mov_l1_l0
        CALL      L:?sdiv32_l0_dl_l1
        DATA
        DC32      0x7a1200
        CODE
        LDW       X, S:?w1
//   99   TIM2_ARRH  = tim_data>>8;
        LD        A, XH
        LD        L:0x530f, A
//  100   TIM2_ARRL  = tim_data;
        LD        A, XL
        LD        L:0x5310, A
//  101   tim_data = tim_data / 2;
        SRLW      X
//  102   TIM2_CCR1H = tim_data>>8;
        LD        A, XH
        LD        L:0x5311, A
//  103   TIM2_CCR1L = tim_data;
        LD        A, XL
        LD        L:0x5312, A
//  104   
//  105   TIM2_CR1 = 0x01; //计数器使能，开始计数
        MOV       L:0x5300, #0x1
//  106   if(freq == M_STOP){
        LDW       X, S:?w4
        CPW       X, #0x2710
        JRNE      L:??beep_set_0
//  107     TIM2_CR1 = 0x00; 
        CLR       L:0x5300
//  108     PD_ODR_ODR4 = 0;
        BRES      L:0x500f, #0x4
//  109   }
//  110   
//  111   return;
??beep_set_0:
        JP        L:?epilogue_w4
          CFI EndBlock cfiBlock0
        REQUIRE TIM2_ARRH
        REQUIRE TIM2_ARRL
        REQUIRE TIM2_CCR1H
        REQUIRE TIM2_CCR1L
        REQUIRE _A_TIM2_CR1
        REQUIRE _A_PD_ODR
//  112 }
//  113 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function beep_init
        CODE
//  114 void beep_init(){
//  115   TIM2_PSCR_PSC = 1;          //8MHZ
beep_init:
        CALL      L:?Subroutine0
//  116   TIM2_CCMR1 = 0X70;
//  117   TIM2_CCER1 = 0X01;
//  118   
//  119   music = demo_music;
??CrossCallReturnLabel_0:
        LDW       X, #demo_music
        LDW       L:music, X
//  120 }
        RET
          CFI EndBlock cfiBlock1
        REQUIRE _A_TIM2_PSCR
        REQUIRE _A_TIM2_CCMR1
        REQUIRE _A_TIM2_CCER1

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine0:
          CFI Block cfiCond2 Using cfiCommon0
          CFI Function beep_init
          CFI Conditional ??CrossCallReturnLabel_0
          CFI CFA SP+4
          CFI Block cfiCond3 Using cfiCommon0
          CFI (cfiCond3) Function beep_demo
          CFI (cfiCond3) Conditional ??CrossCallReturnLabel_1
          CFI (cfiCond3) CFA SP+4
          CFI Block cfiPicker4 Using cfiCommon1
          CFI (cfiPicker4) NoFunction
          CFI (cfiPicker4) Picker
        LD        A, L:0x530e
        AND       A, #0xf0
        OR        A, #0x1
        LD        L:0x530e, A
        MOV       L:0x5307, #0x70
        MOV       L:0x530a, #0x1
        RET
          CFI EndBlock cfiCond2
          CFI EndBlock cfiCond3
          CFI EndBlock cfiPicker4
//  121 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock5 Using cfiCommon0
          CFI Function beep_update
        CODE
//  122 void beep_update(){
//  123   if(playStatus == 1){
beep_update:
        LD        A, L:playStatus
        DEC       A
        JRNE      L:??beep_update_0
//  124     if(musicTime == 0){
        LD        A, L:musicTime
        JRNE      L:??beep_update_1
//  125       if(music[musicNum]== 0){
        CALL      L:?Subroutine2
??CrossCallReturnLabel_4:
        JRNE      L:??beep_update_2
//  126         musicNum = 0;
        CLRW      X
        LDW       L:musicNum, X
//  127       }
//  128       beep_set(music[musicNum++]);
??beep_update_2:
        LDW       X, L:musicNum
        LDW       Y, X
        INCW      X
        LDW       L:musicNum, X
        LDW       X, Y
        SLLW      X
        ADDW      X, L:music
        LDW       X, (X)
        CALL      L:beep_set
//  129       musicTime = music[musicNum++];
        CALL      L:?Subroutine2
//  130     }
??CrossCallReturnLabel_5:
        LD        A, XL
        LD        L:musicTime, A
        LDW       X, L:musicNum
        INCW      X
        LDW       L:musicNum, X
//  131     musicTime--;
??beep_update_1:
        DEC       L:musicTime
//  132   }
//  133 }
??beep_update_0:
        RET
          CFI EndBlock cfiBlock5

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine2:
          CFI Block cfiCond6 Using cfiCommon0
          CFI Function beep_update
          CFI Conditional ??CrossCallReturnLabel_4
          CFI CFA SP+4
          CFI Block cfiCond7 Using cfiCommon0
          CFI (cfiCond7) Function beep_update
          CFI (cfiCond7) Conditional ??CrossCallReturnLabel_5
          CFI (cfiCond7) CFA SP+4
          CFI Block cfiPicker8 Using cfiCommon1
          CFI (cfiPicker8) NoFunction
          CFI (cfiPicker8) Picker
        LDW       X, L:musicNum
        SLLW      X
        ADDW      X, L:music
        LDW       X, (X)
        RET
          CFI EndBlock cfiCond6
          CFI EndBlock cfiCond7
          CFI EndBlock cfiPicker8
//  134 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock9 Using cfiCommon0
          CFI Function beep_start
        CODE
//  135 void beep_start(const unsigned int * music_name){
//  136   music = music_name;
beep_start:
        CALL      L:?Subroutine1
//  137   musicTime = 0;
//  138   musicNum = 0;
//  139   playStatus = 1;
//  140 }
??CrossCallReturnLabel_2:
        RET
          CFI EndBlock cfiBlock9

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine1:
          CFI Block cfiCond10 Using cfiCommon0
          CFI Function beep_start
          CFI Conditional ??CrossCallReturnLabel_2
          CFI CFA SP+4
          CFI Block cfiCond11 Using cfiCommon0
          CFI (cfiCond11) Function beep_demo
          CFI (cfiCond11) Conditional ??CrossCallReturnLabel_3
          CFI (cfiCond11) CFA SP+4
          CFI Block cfiPicker12 Using cfiCommon1
          CFI (cfiPicker12) NoFunction
          CFI (cfiPicker12) Picker
        LDW       L:music, X
        CALL      L:?Subroutine4
??CrossCallReturnLabel_9:
        MOV       L:playStatus, #0x1
        RET
          CFI EndBlock cfiCond10
          CFI EndBlock cfiCond11
          CFI EndBlock cfiPicker12

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine4:
          CFI Block cfiCond13 Using cfiCommon0
          CFI Function MusicStop
          CFI Conditional ??CrossCallReturnLabel_8
          CFI CFA SP+4
          CFI Block cfiCond14 Using cfiCommon0
          CFI (cfiCond14) Function beep_start
          CFI (cfiCond14) Conditional ??CrossCallReturnLabel_9, ??CrossCallReturnLabel_2
          CFI (cfiCond14) CFA SP+6
          CFI Block cfiCond15 Using cfiCommon0
          CFI (cfiCond15) Function beep_demo
          CFI (cfiCond15) Conditional ??CrossCallReturnLabel_9, ??CrossCallReturnLabel_3
          CFI (cfiCond15) CFA SP+6
          CFI Block cfiPicker16 Using cfiCommon1
          CFI (cfiPicker16) NoFunction
          CFI (cfiPicker16) Picker
        CLR       L:musicTime
        CLRW      X
        LDW       L:musicNum, X
        RET
          CFI EndBlock cfiCond13
          CFI EndBlock cfiCond14
          CFI EndBlock cfiCond15
          CFI EndBlock cfiPicker16

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function MusicPause
        CODE
//  141 void MusicPause(){
//  142   TIM2_CR1 = 0x00; 
MusicPause:
        CALL      L:?Subroutine3
//  143   playStatus = 0;
//  144 }
??CrossCallReturnLabel_6:
        RET
          CFI EndBlock cfiBlock17
        REQUIRE _A_TIM2_CR1

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine3:
          CFI Block cfiCond18 Using cfiCommon0
          CFI Function MusicPause
          CFI Conditional ??CrossCallReturnLabel_6
          CFI CFA SP+4
          CFI Block cfiCond19 Using cfiCommon0
          CFI (cfiCond19) Function MusicStop
          CFI (cfiCond19) Conditional ??CrossCallReturnLabel_7
          CFI (cfiCond19) CFA SP+4
          CFI Block cfiPicker20 Using cfiCommon1
          CFI (cfiPicker20) NoFunction
          CFI (cfiPicker20) Picker
        CLR       L:0x5300
        CLR       L:playStatus
        RET
          CFI EndBlock cfiCond18
          CFI EndBlock cfiCond19
          CFI EndBlock cfiPicker20

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock21 Using cfiCommon0
          CFI Function MusicPlay
        CODE
//  145 void MusicPlay(){
//  146   TIM2_CR1 = 0x01; 
MusicPlay:
        MOV       L:0x5300, #0x1
//  147   playStatus = 1;
        MOV       L:playStatus, #0x1
//  148 }
        RET
          CFI EndBlock cfiBlock21
        REQUIRE _A_TIM2_CR1

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock22 Using cfiCommon0
          CFI Function MusicStop
        CODE
//  149 void MusicStop(){
//  150   musicTime = 0;
MusicStop:
        CALL      L:?Subroutine4
//  151   musicNum = 0;
//  152   TIM2_CR1 = 0x00; 
??CrossCallReturnLabel_8:
        CALL      L:?Subroutine3
//  153   playStatus = 0;
//  154 }
??CrossCallReturnLabel_7:
        RET
          CFI EndBlock cfiBlock22
        REQUIRE _A_TIM2_CR1
//  155 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock23 Using cfiCommon0
          CFI Function beep_demo
        CODE
//  156 void beep_demo(){
//  157   beep_init();
beep_demo:
        CALL      L:?Subroutine0
//  158   beep_start(senbonzakura);
??CrossCallReturnLabel_1:
        LDW       X, #senbonzakura
        CALL      L:?Subroutine1
//  159 }
??CrossCallReturnLabel_3:
        RET
          CFI EndBlock cfiBlock23
        REQUIRE _A_TIM2_PSCR
        REQUIRE _A_TIM2_CCMR1
        REQUIRE _A_TIM2_CCER1

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
//     6 bytes in section .near.bss
//     9 bytes in section .near.noinit    (abs)
// 1 490 bytes in section .near.rodata
//   219 bytes in section .near_func.text
// 
//   219 bytes of CODE  memory
// 1 490 bytes of CONST memory
//     6 bytes of DATA  memory (+ 9 bytes shared)
//
//Errors: none
//Warnings: none
