///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V3.10.1.201 for STM8                04/Jan/2020  16:18:58
// Copyright 2010-2017 IAR Systems AB.
// Standalone license - IAR Embedded Workbench for STMicroelectronics STM8
//
//    Source file  =  F:\项目存档\2020-01-04 雪花灯STM8\iar\main.c
//    Command line =  
//        -f C:\Users\38263\AppData\Local\Temp\EWAAB3.tmp
//        ("F:\项目存档\2020-01-04 雪花灯STM8\iar\main.c" -e -Oh --code_model
//        small --data_model medium -o "F:\项目存档\2020-01-04
//        雪花灯STM8\iar\Release\Obj" --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\stm8\LIB\dlstm8smn.h" -D NDEBUG -lC
//        "F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List" -lA
//        "F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List" --vregs 16)
//    Locale       =  Chinese (Simplified)_CHN.936
//    List file    =  F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List\main.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__code_model", "small"
        RTMODEL "__core", "stm8"
        RTMODEL "__data_model", "medium"
        RTMODEL "__rt_version", "4"

        EXTERN ?pop_l0
        EXTERN ?pop_l1
        EXTERN ?push_l0
        EXTERN ?push_l1
        EXTERN beep_demo
        EXTERN beep_init
        EXTERN beep_update
        EXTERN ws2812_test

        PUBLIC Fosc_Init
        PUBLIC IWDG_KR
        PUBLIC IWDG_RLR
        PUBLIC TIM1_ARRH
        PUBLIC TIM1_ARRL
        PUBLIC TIM1_OVR_UIF
        PUBLIC TIM1_PSCRH
        PUBLIC TIM1_PSCRL
        PUBLIC UART1_BRR1
        PUBLIC UART1_BRR2
        PUBLIC UART1_DR
        PUBLIC WDT
        PUBLIC WDT_Init
        PUBLIC _A_CLK_CKDIVR
        PUBLIC _A_IWDG_PR
        PUBLIC _A_PA_CR1
        PUBLIC _A_PA_CR2
        PUBLIC _A_PA_DDR
        PUBLIC _A_PA_ODR
        PUBLIC _A_PB_CR1
        PUBLIC _A_PB_CR2
        PUBLIC _A_PB_DDR
        PUBLIC _A_PB_ODR
        PUBLIC _A_PC_CR1
        PUBLIC _A_PC_CR2
        PUBLIC _A_PC_DDR
        PUBLIC _A_PC_ODR
        PUBLIC _A_PD_CR1
        PUBLIC _A_PD_CR2
        PUBLIC _A_PD_DDR
        PUBLIC _A_PD_ODR
        PUBLIC _A_TIM1_CR1
        PUBLIC _A_TIM1_IER
        PUBLIC _A_TIM1_SR1
        PUBLIC _A_UART1_CR1
        PUBLIC _A_UART1_CR2
        PUBLIC _A_UART1_CR3
        PUBLIC _A_UART1_SR
        PUBLIC _interrupt_13
        PUBLIC _interrupt_20
        PUBLIC delay_ms
        PUBLIC gpio_init
        PUBLIC main
        PUBLIC timer_Init
        PUBLIC uart1_init
        PUBLIC uart1_send
        PUBLIC uart1rxd
        
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
        
        
          CFI Common cfiCommon2 Using cfiNames0
          CFI CodeAlign 1
          CFI DataAlign 1
          CFI ReturnAddress PC CODE
          CFI CFA SP+9
          CFI A Frame(CFA, -7)
          CFI XL Frame(CFA, -5)
          CFI XH Frame(CFA, -6)
          CFI YL Frame(CFA, -3)
          CFI YH Frame(CFA, -4)
          CFI CC Frame(CFA, -8)
          CFI PC Frame(CFA, -2)
          CFI PCL Undefined
          CFI PCH Undefined
          CFI PCE Undefined
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
          CFI EndCommon cfiCommon2
        
// F:\项目存档\2020-01-04 雪花灯STM8\iar\main.c
//    1 #include <iostm8s103f3.h>

        ASEGN `.near.noinit`:DATA:NOROOT,05000H
        SECTION_GROUP _A_PA_ODR
// union <unnamed> volatile _A_PA_ODR
_A_PA_ODR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05002H
        SECTION_GROUP _A_PA_DDR
// union <unnamed> volatile _A_PA_DDR
_A_PA_DDR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05003H
        SECTION_GROUP _A_PA_CR1
// union <unnamed> volatile _A_PA_CR1
_A_PA_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05004H
        SECTION_GROUP _A_PA_CR2
// union <unnamed> volatile _A_PA_CR2
_A_PA_CR2:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05005H
        SECTION_GROUP _A_PB_ODR
// union <unnamed> volatile _A_PB_ODR
_A_PB_ODR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05007H
        SECTION_GROUP _A_PB_DDR
// union <unnamed> volatile _A_PB_DDR
_A_PB_DDR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05008H
        SECTION_GROUP _A_PB_CR1
// union <unnamed> volatile _A_PB_CR1
_A_PB_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05009H
        SECTION_GROUP _A_PB_CR2
// union <unnamed> volatile _A_PB_CR2
_A_PB_CR2:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0500aH
        SECTION_GROUP _A_PC_ODR
// union <unnamed> volatile _A_PC_ODR
_A_PC_ODR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0500cH
        SECTION_GROUP _A_PC_DDR
// union <unnamed> volatile _A_PC_DDR
_A_PC_DDR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0500dH
        SECTION_GROUP _A_PC_CR1
// union <unnamed> volatile _A_PC_CR1
_A_PC_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0500eH
        SECTION_GROUP _A_PC_CR2
// union <unnamed> volatile _A_PC_CR2
_A_PC_CR2:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,0500fH
        SECTION_GROUP _A_PD_ODR
// union <unnamed> volatile _A_PD_ODR
_A_PD_ODR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05011H
        SECTION_GROUP _A_PD_DDR
// union <unnamed> volatile _A_PD_DDR
_A_PD_DDR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05012H
        SECTION_GROUP _A_PD_CR1
// union <unnamed> volatile _A_PD_CR1
_A_PD_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05013H
        SECTION_GROUP _A_PD_CR2
// union <unnamed> volatile _A_PD_CR2
_A_PD_CR2:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,050c6H
        SECTION_GROUP _A_CLK_CKDIVR
// union <unnamed> volatile _A_CLK_CKDIVR
_A_CLK_CKDIVR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,050e0H
        SECTION_GROUP IWDG_KR
// unsigned char volatile IWDG_KR
IWDG_KR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,050e1H
        SECTION_GROUP _A_IWDG_PR
// union <unnamed> volatile _A_IWDG_PR
_A_IWDG_PR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,050e2H
        SECTION_GROUP IWDG_RLR
// unsigned char volatile IWDG_RLR
IWDG_RLR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05230H
        SECTION_GROUP _A_UART1_SR
// union <unnamed> volatile _A_UART1_SR
_A_UART1_SR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05231H
        SECTION_GROUP UART1_DR
// unsigned char volatile UART1_DR
UART1_DR:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05232H
        SECTION_GROUP UART1_BRR1
// unsigned char volatile UART1_BRR1
UART1_BRR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05233H
        SECTION_GROUP UART1_BRR2
// unsigned char volatile UART1_BRR2
UART1_BRR2:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05234H
        SECTION_GROUP _A_UART1_CR1
// union <unnamed> volatile _A_UART1_CR1
_A_UART1_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05235H
        SECTION_GROUP _A_UART1_CR2
// union <unnamed> volatile _A_UART1_CR2
_A_UART1_CR2:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05236H
        SECTION_GROUP _A_UART1_CR3
// union <unnamed> volatile _A_UART1_CR3
_A_UART1_CR3:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05250H
        SECTION_GROUP _A_TIM1_CR1
// union <unnamed> volatile _A_TIM1_CR1
_A_TIM1_CR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05254H
        SECTION_GROUP _A_TIM1_IER
// union <unnamed> volatile _A_TIM1_IER
_A_TIM1_IER:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05255H
        SECTION_GROUP _A_TIM1_SR1
// union <unnamed> volatile _A_TIM1_SR1
_A_TIM1_SR1:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05260H
        SECTION_GROUP TIM1_PSCRH
// unsigned char volatile TIM1_PSCRH
TIM1_PSCRH:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05261H
        SECTION_GROUP TIM1_PSCRL
// unsigned char volatile TIM1_PSCRL
TIM1_PSCRL:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05262H
        SECTION_GROUP TIM1_ARRH
// unsigned char volatile TIM1_ARRH
TIM1_ARRH:
        DS8 1

        ASEGN `.near.noinit`:DATA:NOROOT,05263H
        SECTION_GROUP TIM1_ARRL
// unsigned char volatile TIM1_ARRL
TIM1_ARRL:
        DS8 1
//    2 #include "ws2812.h"
//    3 #include "beep.h"
//    4 
//    5 #define        uint         unsigned    int
//    6 #define        uchar        unsigned    char
//    7 #define        ulong        unsigned    long
//    8 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function delay_ms
        CODE
//    9 void  delay_ms(uchar  ms)
//   10 {
delay_ms:
        JRA       L:??delay_ms_0
//   11     uchar  i,j;
//   12     while(ms--)
??delay_ms_1:
        DEC       A
//   13     {
//   14         for(i=4;i!=0;i--)
//   15           for(j=100;j!=0;j--);
??delay_ms_0:
        TNZ       A
        JRNE      L:??delay_ms_1
//   16     }
//   17 }
        RET
          CFI EndBlock cfiBlock0
//   18 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function gpio_init
        CODE
//   19 void  gpio_init(void)
//   20 {
//   21     PA_DDR = 0<<1|0<<2|1<<3|0<<4|0<<5|0<<6;
gpio_init:
        MOV       L:0x5002, #0x8
//   22     PA_CR1 = 0<<1|0<<2|1<<3|0<<4|0<<5|0<<6;
        MOV       L:0x5003, #0x8
//   23     PA_CR2 = 0<<1|0<<2|1<<3|0<<4|0<<5|0<<6;
        MOV       L:0x5004, #0x8
//   24     PA_ODR = 0<<1|0<<2|0<<3|0<<4|0<<5|0<<6;
        CLR       L:0x5000
//   25 
//   26     PB_DDR = 0<<0|0<<1|0<<2|0<<3|0<<4|1<<5|0<<6|0<<7;
        MOV       L:0x5007, #0x20
//   27     PB_CR1 = 0<<0|0<<1|0<<2|0<<3|0<<4|1<<5|0<<6|0<<7;
        MOV       L:0x5008, #0x20
//   28     PB_CR2 = 0<<0|0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
        CLR       L:0x5009
//   29     PB_ODR = 0<<0|0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
        CLR       L:0x5005
//   30 
//   31     PC_DDR = 0<<1|0<<2|0<<3|1<<4|1<<5|1<<6|0<<7;
        MOV       L:0x500c, #0x70
//   32     PC_CR1 = 0<<1|0<<2|1<<3|1<<4|1<<5|1<<6|0<<7;
        MOV       L:0x500d, #0x78
//   33     PC_CR2 = 0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
        CLR       L:0x500e
//   34     PC_ODR = 0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
        CLR       L:0x500a
//   35 
//   36     PD_DDR = 0<<0|0<<1|1<<2|1<<3|1<<4|0<<5|0<<6|0<<7;
        MOV       L:0x5011, #0x1c
//   37     PD_CR1 = 0<<0|0<<1|1<<2|1<<3|1<<4|0<<5|0<<6|0<<7;
        MOV       L:0x5012, #0x1c
//   38     PD_CR2 = 0<<0|0<<1|0<<2|0<<3|1<<4|0<<5|0<<6|0<<7;
        MOV       L:0x5013, #0x10
//   39     PD_ODR = 0<<0|0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
        CLR       L:0x500f
//   40 }
        RET
          CFI EndBlock cfiBlock1
        REQUIRE _A_PA_DDR
        REQUIRE _A_PA_CR1
        REQUIRE _A_PA_CR2
        REQUIRE _A_PA_ODR
        REQUIRE _A_PB_DDR
        REQUIRE _A_PB_CR1
        REQUIRE _A_PB_CR2
        REQUIRE _A_PB_ODR
        REQUIRE _A_PC_DDR
        REQUIRE _A_PC_CR1
        REQUIRE _A_PC_CR2
        REQUIRE _A_PC_ODR
        REQUIRE _A_PD_DDR
        REQUIRE _A_PD_CR1
        REQUIRE _A_PD_CR2
        REQUIRE _A_PD_ODR
//   41 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function WDT_Init
        CODE
//   42 void  WDT_Init(void)
//   43 {
//   44     IWDG_KR = 0xCC;       //启动看门狗
WDT_Init:
        CALL      L:?Subroutine1
//   45     IWDG_KR = 0x55;       //解除写保护
//   46     IWDG_PR = 0x06;       //256分频，最高1.02秒
//   47     IWDG_RLR = 125;       //500ms
//   48     IWDG_KR = 0xAA;       //写保护
//   49 }
??CrossCallReturnLabel_2:
        RET
          CFI EndBlock cfiBlock2
        REQUIRE IWDG_KR
        REQUIRE _A_IWDG_PR
        REQUIRE IWDG_RLR

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine1:
          CFI Block cfiCond3 Using cfiCommon0
          CFI Function WDT_Init
          CFI Conditional ??CrossCallReturnLabel_2
          CFI CFA SP+4
          CFI Block cfiCond4 Using cfiCommon0
          CFI (cfiCond4) Function main
          CFI (cfiCond4) Conditional ??CrossCallReturnLabel_3
          CFI (cfiCond4) CFA SP+4
          CFI Block cfiPicker5 Using cfiCommon1
          CFI (cfiPicker5) NoFunction
          CFI (cfiPicker5) Picker
        MOV       L:0x50e0, #0xcc
        MOV       L:0x50e0, #0x55
        MOV       L:0x50e1, #0x6
        MOV       L:0x50e2, #0x7d
        MOV       L:0x50e0, #0xaa
        RET
          CFI EndBlock cfiCond3
          CFI EndBlock cfiCond4
          CFI EndBlock cfiPicker5
//   50 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock6 Using cfiCommon0
          CFI Function WDT
        CODE
//   51 void  WDT(void)
//   52 {
//   53     IWDG_KR = 0xAA;       //喂狗指令WDT();
WDT:
        MOV       L:0x50e0, #0xaa
//   54 }
        RET
          CFI EndBlock cfiBlock6
        REQUIRE IWDG_KR
//   55 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock7 Using cfiCommon0
          CFI Function Fosc_Init
        CODE
//   56 void  Fosc_Init(void)
//   57 {
//   58     CLK_CKDIVR_HSIDIV = 0;    //1分频
Fosc_Init:
        CALL      L:?Subroutine2
//   59 }
??CrossCallReturnLabel_4:
        RET
          CFI EndBlock cfiBlock7
        REQUIRE _A_CLK_CKDIVR

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine2:
          CFI Block cfiCond8 Using cfiCommon0
          CFI Function Fosc_Init
          CFI Conditional ??CrossCallReturnLabel_4
          CFI CFA SP+4
          CFI Block cfiCond9 Using cfiCommon0
          CFI (cfiCond9) Function main
          CFI (cfiCond9) Conditional ??CrossCallReturnLabel_5
          CFI (cfiCond9) CFA SP+4
          CFI Block cfiPicker10 Using cfiCommon1
          CFI (cfiPicker10) NoFunction
          CFI (cfiPicker10) Picker
        LD        A, L:0x50c6
        AND       A, #0xe7
        LD        L:0x50c6, A
        RET
          CFI EndBlock cfiCond8
          CFI EndBlock cfiCond9
          CFI EndBlock cfiPicker10
//   60 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock11 Using cfiCommon0
          CFI Function uart1_init
        CODE
//   61 void  uart1_init(void)
//   62 {
//   63     UART1_CR1=0x00;
uart1_init:
        CLR       L:0x5234
//   64     UART1_CR2=0x00;
        CLR       L:0x5235
//   65     UART1_CR3=0x00;
        CLR       L:0x5236
//   66     UART1_BRR2 = 0x0B;
        MOV       L:0x5233, #0xb
//   67     UART1_BRR1 = 0x08;     //115200波特率
        MOV       L:0x5232, #0x8
//   68     UART1_CR2_TEN = 1;     //允许发送
        BSET      L:0x5235, #0x3
//   69     UART1_CR2_REN = 1;     //允许接收
        BSET      L:0x5235, #0x2
//   70     UART1_CR2_RIEN = 1;    //接收中断使能
        BSET      L:0x5235, #0x5
//   71 }
        RET
          CFI EndBlock cfiBlock11
        REQUIRE _A_UART1_CR1
        REQUIRE _A_UART1_CR2
        REQUIRE _A_UART1_CR3
        REQUIRE UART1_BRR2
        REQUIRE UART1_BRR1
//   72 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock12 Using cfiCommon0
          CFI Function uart1_send
        CODE
//   73 void  uart1_send(uchar dat)
//   74 {
//   75     while((UART1_SR & 0x80)==0x00);
uart1_send:
??uart1_send_0:
        BTJF      L:0x5230, #0x7, L:??uart1_send_0
//   76     UART1_DR = dat;
        LD        L:0x5231, A
//   77 }
        RET
          CFI EndBlock cfiBlock12
        REQUIRE _A_UART1_SR
        REQUIRE UART1_DR
//   78 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function timer_Init
        CODE
//   79 void  timer_Init(void)
//   80 {
//   81     TIM1_PSCRH = 0;
timer_Init:
        CALL      L:?Subroutine0
//   82     TIM1_PSCRL = 15;          //(15+1)分频为1M
//   83     TIM1_ARRH = 0x27;
//   84     TIM1_ARRL = 0x10;        //每10000us中断一次
//   85     TIM1_IER = 0x01;         //允许更新中断
//   86     TIM1_CR1 = 0x01;         //计数器使能，开始计数
//   87 
//   88 }
??CrossCallReturnLabel_0:
        RET
          CFI EndBlock cfiBlock13
        REQUIRE TIM1_PSCRH
        REQUIRE TIM1_PSCRL
        REQUIRE TIM1_ARRH
        REQUIRE TIM1_ARRL
        REQUIRE _A_TIM1_IER
        REQUIRE _A_TIM1_CR1

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine0:
          CFI Block cfiCond14 Using cfiCommon0
          CFI Function timer_Init
          CFI Conditional ??CrossCallReturnLabel_0
          CFI CFA SP+4
          CFI Block cfiCond15 Using cfiCommon0
          CFI (cfiCond15) Function main
          CFI (cfiCond15) Conditional ??CrossCallReturnLabel_1
          CFI (cfiCond15) CFA SP+4
          CFI Block cfiPicker16 Using cfiCommon1
          CFI (cfiPicker16) NoFunction
          CFI (cfiPicker16) Picker
        CLR       L:0x5260
        MOV       L:0x5261, #0xf
        MOV       L:0x5262, #0x27
        MOV       L:0x5263, #0x10
        MOV       L:0x5254, #0x1
        MOV       L:0x5250, #0x1
        RET
          CFI EndBlock cfiCond14
          CFI EndBlock cfiCond15
          CFI EndBlock cfiPicker16
//   89 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock17 Using cfiCommon0
          CFI Function main
        CODE
//   90 void  main(void)
//   91 {
//   92     asm("sim");    //关总中断
main:
        sim
//   93     gpio_init();
        CALL      L:gpio_init
//   94     uart1_init();
        CALL      L:uart1_init
//   95     timer_Init();
        CALL      L:?Subroutine0
//   96     WDT_Init();
??CrossCallReturnLabel_1:
        CALL      L:?Subroutine1
//   97     Fosc_Init();
??CrossCallReturnLabel_3:
        CALL      L:?Subroutine2
//   98     asm("rim");    //开总中断
??CrossCallReturnLabel_5:
        rim
//   99     
//  100     ws2812_test();
        CALL      L:ws2812_test
//  101     beep_init();
        CALL      L:beep_init
//  102     beep_demo();
        CALL      L:beep_demo
//  103     while(1)
//  104     {
//  105         asm("nop");
??main_0:
        nop
//  106         asm("wfi");//等待中断
        wfi
        JRA       L:??main_0
          CFI EndBlock cfiBlock17
        REQUIRE _A_CLK_CKDIVR
        REQUIRE IWDG_KR
        REQUIRE _A_IWDG_PR
        REQUIRE IWDG_RLR
        REQUIRE TIM1_PSCRH
        REQUIRE TIM1_PSCRL
        REQUIRE TIM1_ARRH
        REQUIRE TIM1_ARRL
        REQUIRE _A_TIM1_IER
        REQUIRE _A_TIM1_CR1
//  107     }
//  108 }
//  109 
//  110 #pragma   vector = UART1_R_RXNE_vector

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock18 Using cfiCommon2
          CFI Function uart1rxd
        CODE
//  111 __interrupt void uart1rxd(void)
//  112 {
//  113     //data = UART1_DR;
//  114 }
uart1rxd:
_interrupt_20:
        IRET
          CFI EndBlock cfiBlock18
//  115 
//  116 #pragma   vector = TIM1_OVR_UIF_vector

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock19 Using cfiCommon2
          CFI Function TIM1_OVR_UIF
        CODE
//  117 __interrupt void TIM1_OVR_UIF(void)
//  118 {
TIM1_OVR_UIF:
_interrupt_13:
        PUSH      CC
          CFI CFA SP+10
        POP       A
          CFI CFA SP+9
        AND       A, #0xbf
        PUSH      A
          CFI CFA SP+10
        POP       CC
          CFI CFA SP+9
        CALL      L:?push_l0
          CFI ?b3 Frame(CFA, -9)
          CFI ?b2 Frame(CFA, -10)
          CFI ?b1 Frame(CFA, -11)
          CFI ?b0 Frame(CFA, -12)
          CFI CFA SP+13
        CALL      L:?push_l1
          CFI ?b7 Frame(CFA, -13)
          CFI ?b6 Frame(CFA, -14)
          CFI ?b5 Frame(CFA, -15)
          CFI ?b4 Frame(CFA, -16)
          CFI CFA SP+17
//  119     TIM1_SR1_UIF = 0;
        BRES      L:0x5255, #0x0
//  120     WDT();
        MOV       L:0x50e0, #0xaa
//  121     beep_update();
        CALL      L:beep_update
//  122     //add your code here
//  123 }
        CALL      L:?pop_l1
          CFI ?b4 SameValue
          CFI ?b5 SameValue
          CFI ?b6 SameValue
          CFI ?b7 SameValue
          CFI CFA SP+13
        CALL      L:?pop_l0
          CFI ?b0 SameValue
          CFI ?b1 SameValue
          CFI ?b2 SameValue
          CFI ?b3 SameValue
          CFI CFA SP+9
        IRET
          CFI EndBlock cfiBlock19
        REQUIRE _A_TIM1_SR1
        REQUIRE IWDG_KR

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
//  124 
//  125 
// 
//  34 bytes in section .near.noinit    (abs)
// 247 bytes in section .near_func.text
// 
// 247 bytes of CODE memory
//   0 bytes of DATA memory (+ 34 bytes shared)
//
//Errors: none
//Warnings: none
