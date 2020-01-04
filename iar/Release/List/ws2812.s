///////////////////////////////////////////////////////////////////////////////
//
// IAR C/C++ Compiler V3.10.1.201 for STM8                04/Jan/2020  13:49:31
// Copyright 2010-2017 IAR Systems AB.
// Standalone license - IAR Embedded Workbench for STMicroelectronics STM8
//
//    Source file  =  F:\项目存档\2020-01-04 雪花灯STM8\iar\ws2812.c
//    Command line =  
//        -f C:\Users\38263\AppData\Local\Temp\EWD877.tmp
//        ("F:\项目存档\2020-01-04 雪花灯STM8\iar\ws2812.c" -e -Oh --code_model
//        small --data_model medium -o "F:\项目存档\2020-01-04
//        雪花灯STM8\iar\Release\Obj" --dlib_config "C:\Program Files (x86)\IAR
//        Systems\Embedded Workbench 8.0\stm8\LIB\dlstm8smn.h" -D NDEBUG -lC
//        "F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List" -lA
//        "F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List" --vregs 16)
//    Locale       =  Chinese (Simplified)_CHN.936
//    List file    =  
//        F:\项目存档\2020-01-04 雪花灯STM8\iar\Release\List\ws2812.s
//
///////////////////////////////////////////////////////////////////////////////

        RTMODEL "__SystemLibrary", "DLib"
        RTMODEL "__code_model", "small"
        RTMODEL "__core", "stm8"
        RTMODEL "__data_model", "medium"
        RTMODEL "__rt_version", "4"

        EXTERN ?b0
        EXTERN ?b1
        EXTERN ?b3
        EXTERN ?longfarg16_v_w0_a
        EXTERN ?mov_w0_w2
        EXTERN ?w2

        PUBLIC _A_PA_ODR
        PUBLIC ws2812_rainbow
        PUBLIC ws2812_send
        PUBLIC ws2812_send_8bit
        PUBLIC ws2812_send_rgb
        PUBLIC ws2812_test
        PUBLIC ws2812_write_0
        PUBLIC ws2812_write_1
        
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
        
// F:\项目存档\2020-01-04 雪花灯STM8\iar\ws2812.c
//    1 #include "ws2812.h"

        ASEGN `.near.noinit`:DATA:NOROOT,05000H
        SECTION_GROUP _A_PA_ODR
// union <unnamed> volatile _A_PA_ODR
_A_PA_ODR:
        DS8 1
//    2 
//    3 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock0 Using cfiCommon0
          CFI Function ws2812_write_1
        CODE
//    4 void ws2812_write_1(){
//    5   ws2812_input = 1;
ws2812_write_1:
        BSET      L:0x5000, #0x3
//    6   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//    7   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//    8   asm("nop");asm("nop");
        nop
        nop
//    9   ws2812_input = 0;
        BRES      L:0x5000, #0x3
//   10   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//   11   asm("nop");
        nop
//   12   return;
        RET
          CFI EndBlock cfiBlock0
        REQUIRE _A_PA_ODR
//   13 }

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock1 Using cfiCommon0
          CFI Function ws2812_write_0
        CODE
//   14 void ws2812_write_0(){
//   15   ws2812_input = 1;
ws2812_write_0:
        BSET      L:0x5000, #0x3
//   16   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//   17   asm("nop");
        nop
//   18   ws2812_input = 0;
        BRES      L:0x5000, #0x3
//   19   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//   20   asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
        nop
        nop
        nop
        nop
        nop
//   21   asm("nop");asm("nop");
        nop
        nop
//   22   return;
        RET
          CFI EndBlock cfiBlock1
        REQUIRE _A_PA_ODR
//   23 }
//   24 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock2 Using cfiCommon0
          CFI Function ws2812_send_8bit
        CODE
//   25 void ws2812_send_8bit(char color){ //only 16MHZ
ws2812_send_8bit:
        CALL      L:?Subroutine1
//   26   for(char i=0;i<8;i++){
//   27     if(color&0x80)
??CrossCallReturnLabel_4:
        LD        A, S:?b1
        BCP       A, #0x80
        JREQ      L:??ws2812_send_8bit_0
//   28       ws2812_write_1();
        CALL      L:ws2812_write_1
        JRA       L:??ws2812_send_8bit_1
//   29     else
//   30       ws2812_write_0();
??ws2812_send_8bit_0:
        CALL      L:ws2812_write_0
//   31     color = color << 1;
??ws2812_send_8bit_1:
        CALL      L:?Subroutine0
//   32   }
??CrossCallReturnLabel_0:
        JRNE      L:??CrossCallReturnLabel_4
//   33 }
        RET
          CFI EndBlock cfiBlock2

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine1:
          CFI Block cfiCond3 Using cfiCommon0
          CFI Function ws2812_send_8bit
          CFI Conditional ??CrossCallReturnLabel_4
          CFI CFA SP+4
          CFI Block cfiCond4 Using cfiCommon0
          CFI (cfiCond4) Function ws2812_send_rgb
          CFI (cfiCond4) Conditional ??CrossCallReturnLabel_5
          CFI (cfiCond4) CFA SP+4
          CFI Block cfiCond5 Using cfiCommon0
          CFI (cfiCond5) Function ws2812_send_rgb
          CFI (cfiCond5) Conditional ??CrossCallReturnLabel_6
          CFI (cfiCond5) CFA SP+4
          CFI Block cfiCond6 Using cfiCommon0
          CFI (cfiCond6) Function ws2812_send_rgb
          CFI (cfiCond6) Conditional ??CrossCallReturnLabel_7
          CFI (cfiCond6) CFA SP+4
          CFI Block cfiPicker7 Using cfiCommon1
          CFI (cfiPicker7) NoFunction
          CFI (cfiPicker7) Picker
        LD        S:?b1, A
        MOV       S:?b0, #0x8
        RET
          CFI EndBlock cfiCond3
          CFI EndBlock cfiCond4
          CFI EndBlock cfiCond5
          CFI EndBlock cfiCond6
          CFI EndBlock cfiPicker7

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine0:
          CFI Block cfiCond8 Using cfiCommon0
          CFI Function ws2812_send_8bit
          CFI Conditional ??CrossCallReturnLabel_0
          CFI CFA SP+4
          CFI Block cfiCond9 Using cfiCommon0
          CFI (cfiCond9) Function ws2812_send_rgb
          CFI (cfiCond9) Conditional ??CrossCallReturnLabel_1
          CFI (cfiCond9) CFA SP+4
          CFI Block cfiCond10 Using cfiCommon0
          CFI (cfiCond10) Function ws2812_send_rgb
          CFI (cfiCond10) Conditional ??CrossCallReturnLabel_2
          CFI (cfiCond10) CFA SP+4
          CFI Block cfiCond11 Using cfiCommon0
          CFI (cfiCond11) Function ws2812_send_rgb
          CFI (cfiCond11) Conditional ??CrossCallReturnLabel_3
          CFI (cfiCond11) CFA SP+4
          CFI Block cfiPicker12 Using cfiCommon1
          CFI (cfiPicker12) NoFunction
          CFI (cfiPicker12) Picker
        LD        A, S:?b1
        SLL       A
        LD        S:?b1, A
        DEC       S:?b0
        RET
          CFI EndBlock cfiCond8
          CFI EndBlock cfiCond9
          CFI EndBlock cfiCond10
          CFI EndBlock cfiCond11
          CFI EndBlock cfiPicker12
//   34 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock13 Using cfiCommon0
          CFI Function ws2812_send_rgb
        CODE
//   35 void ws2812_send_rgb(rgb888 led){
//   36   ws2812_send_8bit(led.g);
ws2812_send_rgb:
        LD        A, (0x3,SP)
        CALL      L:?Subroutine1
??CrossCallReturnLabel_5:
        LD        A, S:?b1
        BCP       A, #0x80
        JREQ      L:??ws2812_send_rgb_0
        CALL      L:ws2812_write_1
        JRA       L:??ws2812_send_rgb_1
??ws2812_send_rgb_0:
        CALL      L:ws2812_write_0
??ws2812_send_rgb_1:
        CALL      L:?Subroutine0
??CrossCallReturnLabel_1:
        JRNE      L:??CrossCallReturnLabel_5
//   37   ws2812_send_8bit(led.r);
        LD        A, (0x4,SP)
        CALL      L:?Subroutine1
??CrossCallReturnLabel_6:
        LD        A, S:?b1
        BCP       A, #0x80
        JREQ      L:??ws2812_send_rgb_2
        CALL      L:ws2812_write_1
        JRA       L:??ws2812_send_rgb_3
??ws2812_send_rgb_2:
        CALL      L:ws2812_write_0
??ws2812_send_rgb_3:
        CALL      L:?Subroutine0
??CrossCallReturnLabel_2:
        JRNE      L:??CrossCallReturnLabel_6
//   38   ws2812_send_8bit(led.b);
        LD        A, (0x5,SP)
        CALL      L:?Subroutine1
??CrossCallReturnLabel_7:
        LD        A, S:?b1
        BCP       A, #0x80
        JREQ      L:??ws2812_send_rgb_4
        CALL      L:ws2812_write_1
        JRA       L:??ws2812_send_rgb_5
??ws2812_send_rgb_4:
        CALL      L:ws2812_write_0
??ws2812_send_rgb_5:
        CALL      L:?Subroutine0
??CrossCallReturnLabel_3:
        JRNE      L:??CrossCallReturnLabel_7
//   39   return;
        RET
//   40 }
          CFI EndBlock cfiBlock13
//   41 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock14 Using cfiCommon0
          CFI Function ws2812_send
        CODE
//   42 void ws2812_send(rgb888 *led, char num){
ws2812_send:
        LDW       S:?w2, X
        LD        S:?b3, A
//   43   for(char i=0;i<num;i++){
        JREQ      L:??ws2812_send_0
//   44     ws2812_send_rgb(*led++);
??ws2812_send_1:
        CALL      L:?mov_w0_w2
        LD        A, #0x3
        CALL      L:?longfarg16_v_w0_a
          CFI CFA SP+5
        CALL      L:ws2812_send_rgb
        ADD       SP, #0x3
          CFI CFA SP+2
        LDW       X, S:?w2
        ADDW      X, #0x3
        LDW       S:?w2, X
//   45   }
        DEC       S:?b3
        JRNE      L:??ws2812_send_1
//   46   for(char i=0;i<200;i++){
??ws2812_send_0:
        LD        A, #0xc8
//   47     asm("nop");asm("nop");asm("nop");
??ws2812_send_2:
        nop
        nop
        nop
//   48   }
        DEC       A
        JRNE      L:??ws2812_send_2
//   49 }
        RET
          CFI EndBlock cfiBlock14
//   50 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock15 Using cfiCommon0
          CFI Function ws2812_rainbow
        CODE
//   51 void ws2812_rainbow(char num){
ws2812_rainbow:
        SUB       SP, #0x3
          CFI CFA SP+5
//   52   rgb888 test_led;
//   53   if(num < 85){
        CP        A, #0x55
        JRNC      L:??ws2812_rainbow_0
//   54     test_led.r = num*3;
        CALL      L:?Subroutine2
??CrossCallReturnLabel_8:
        LD        (0x2,SP), A
//   55     test_led.g = 255-num*3;
        LD        A, #0xff
        SUB       A, S:?b0
        LD        (0x1,SP), A
//   56     test_led.b = 0;
        CLR       (0x3,SP)
        JRA       L:??ws2812_rainbow_1
//   57   }else if(num < 170){
??ws2812_rainbow_0:
        CP        A, #0xaa
        JRNC      L:??ws2812_rainbow_2
//   58     num = num - 85;
        ADD       A, #0xab
//   59     test_led.r = 255-num*3;
        CALL      L:?Subroutine2
??CrossCallReturnLabel_9:
        LD        A, #0xff
        SUB       A, S:?b0
        LD        (0x2,SP), A
//   60     test_led.g = 0;
        CLR       (0x1,SP)
//   61     test_led.b = num*3;
        LD        A, S:?b0
        JRA       L:??ws2812_rainbow_3
//   62   }else{
//   63     num = num -170;
??ws2812_rainbow_2:
        ADD       A, #0x56
//   64     test_led.r = 0;
        CLR       (0x2,SP)
//   65     test_led.g = num*3;
        CALL      L:?Subroutine2
??CrossCallReturnLabel_10:
        LD        (0x1,SP), A
//   66     test_led.b = 255-num*3;
        LD        A, #0xff
        SUB       A, S:?b0
??ws2812_rainbow_3:
        LD        (0x3,SP), A
//   67   }
//   68   ws2812_send(&test_led,1);
??ws2812_rainbow_1:
        LD        A, #0x1
        LDW       X, SP
        INCW      X
        CALL      L:ws2812_send
//   69 }
        ADD       SP, #0x3
          CFI CFA SP+2
        RET
          CFI EndBlock cfiBlock15

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
?Subroutine2:
          CFI Block cfiCond16 Using cfiCommon0
          CFI Function ws2812_rainbow
          CFI Conditional ??CrossCallReturnLabel_8
          CFI CFA SP+7
          CFI Block cfiCond17 Using cfiCommon0
          CFI (cfiCond17) Function ws2812_rainbow
          CFI (cfiCond17) Conditional ??CrossCallReturnLabel_9
          CFI (cfiCond17) CFA SP+7
          CFI Block cfiCond18 Using cfiCommon0
          CFI (cfiCond18) Function ws2812_rainbow
          CFI (cfiCond18) Conditional ??CrossCallReturnLabel_10
          CFI (cfiCond18) CFA SP+7
          CFI Block cfiPicker19 Using cfiCommon1
          CFI (cfiPicker19) NoFunction
          CFI (cfiPicker19) Picker
        LDW       X, #0x3
        MUL       X, A
        EXG       A, XL
        LD        S:?b0, A
        RET
          CFI EndBlock cfiCond16
          CFI EndBlock cfiCond17
          CFI EndBlock cfiCond18
          CFI EndBlock cfiPicker19
//   70 
//   71 

        SECTION `.near_func.text`:CODE:REORDER:NOROOT(0)
          CFI Block cfiBlock20 Using cfiCommon0
          CFI Function ws2812_test
        CODE
//   72 void ws2812_test(){
ws2812_test:
        SUB       SP, #0x3
          CFI CFA SP+5
//   73     rgb888 test_led;
//   74     test_led.r = 0xff;
        LD        A, #0xff
        LD        (0x2,SP), A
//   75     test_led.g = 0xff;
        LD        (0x1,SP), A
//   76     test_led.b = 0xff;
        LD        (0x3,SP), A
//   77     ws2812_send(&test_led,1);
        LD        A, #0x1
        LDW       X, SP
        INCW      X
        CALL      L:ws2812_send
//   78     return;
        ADD       SP, #0x3
          CFI CFA SP+2
        RET
//   79 }
          CFI EndBlock cfiBlock20

        SECTION VREGS:DATA:REORDER:NOROOT(0)

        END
// 
//   1 byte  in section .near.noinit    (abs)
// 299 bytes in section .near_func.text
// 
// 299 bytes of CODE memory
//   0 bytes of DATA memory (+ 1 byte shared)
//
//Errors: none
//Warnings: none
