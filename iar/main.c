#include <iostm8s103f3.h>
#include "ws2812.h"
#include "beep.h"

#define        uint         unsigned    int
#define        uchar        unsigned    char
#define        ulong        unsigned    long

void  delay_ms(uchar  ms)
{
    uchar  i,j;
    while(ms--)
    {
        for(i=4;i!=0;i--)
          for(j=100;j!=0;j--);
    }
}

void  gpio_init(void)
{
    PA_DDR = 0<<1|0<<2|1<<3|0<<4|0<<5|0<<6;
    PA_CR1 = 0<<1|0<<2|1<<3|0<<4|0<<5|0<<6;
    PA_CR2 = 0<<1|0<<2|1<<3|0<<4|0<<5|0<<6;
    PA_ODR = 0<<1|0<<2|0<<3|0<<4|0<<5|0<<6;

    PB_DDR = 0<<0|0<<1|0<<2|0<<3|0<<4|1<<5|0<<6|0<<7;
    PB_CR1 = 0<<0|0<<1|0<<2|0<<3|0<<4|1<<5|0<<6|0<<7;
    PB_CR2 = 0<<0|0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
    PB_ODR = 0<<0|0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;

    PC_DDR = 0<<1|0<<2|0<<3|1<<4|1<<5|1<<6|0<<7;
    PC_CR1 = 0<<1|0<<2|1<<3|1<<4|1<<5|1<<6|0<<7;
    PC_CR2 = 0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
    PC_ODR = 0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;

    PD_DDR = 0<<0|0<<1|1<<2|1<<3|1<<4|0<<5|0<<6|0<<7;
    PD_CR1 = 0<<0|0<<1|1<<2|1<<3|1<<4|0<<5|0<<6|0<<7;
    PD_CR2 = 0<<0|0<<1|0<<2|0<<3|1<<4|0<<5|0<<6|0<<7;
    PD_ODR = 0<<0|0<<1|0<<2|0<<3|0<<4|0<<5|0<<6|0<<7;
}

void  WDT_Init(void)
{
    IWDG_KR = 0xCC;       //启动看门狗
    IWDG_KR = 0x55;       //解除写保护
    IWDG_PR = 0x06;       //256分频，最高1.02秒
    IWDG_RLR = 125;       //500ms
    IWDG_KR = 0xAA;       //写保护
}

void  WDT(void)
{
    IWDG_KR = 0xAA;       //喂狗指令WDT();
}

void  Fosc_Init(void)
{
    CLK_CKDIVR_HSIDIV = 0;    //1分频
}

void  uart1_init(void)
{
    UART1_CR1=0x00;
    UART1_CR2=0x00;
    UART1_CR3=0x00;
    UART1_BRR2 = 0x0B;
    UART1_BRR1 = 0x08;     //115200波特率
    UART1_CR2_TEN = 1;     //允许发送
    UART1_CR2_REN = 1;     //允许接收
    UART1_CR2_RIEN = 1;    //接收中断使能
}

void  uart1_send(uchar dat)
{
    while((UART1_SR & 0x80)==0x00);
    UART1_DR = dat;
}

void  timer_Init(void)
{
    TIM1_PSCRH = 0;
    TIM1_PSCRL = 15;          //(15+1)分频为1M
    TIM1_ARRH = 0x27;
    TIM1_ARRL = 0x10;        //每10000us中断一次
    TIM1_IER = 0x01;         //允许更新中断
    TIM1_CR1 = 0x01;         //计数器使能，开始计数

}

void  main(void)
{
    asm("sim");    //关总中断
    gpio_init();
    uart1_init();
    timer_Init();
    WDT_Init();
    Fosc_Init();
    asm("rim");    //开总中断
    
    ws2812_test();
    beep_init();
    beep_demo();
    while(1)
    {
        asm("nop");
        asm("wfi");//等待中断
    }
}

#pragma   vector = UART1_R_RXNE_vector
__interrupt void uart1rxd(void)
{
    //data = UART1_DR;
}

#pragma   vector = TIM1_OVR_UIF_vector
__interrupt void TIM1_OVR_UIF(void)
{
    TIM1_SR1_UIF = 0;
    WDT();
    beep_update();
    //add your code here
}


