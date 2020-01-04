#include "ws2812.h"


void ws2812_write_1(){
  ws2812_input = 1;
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");
  ws2812_input = 0;
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");
  return;
}
void ws2812_write_0(){
  ws2812_input = 1;
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");
  ws2812_input = 0;
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");asm("nop");asm("nop");asm("nop");
  asm("nop");asm("nop");
  return;
}

void ws2812_send_8bit(char color){ //only 16MHZ
  for(char i=0;i<8;i++){
    if(color&0x80)
      ws2812_write_1();
    else
      ws2812_write_0();
    color = color << 1;
  }
}

void ws2812_send_rgb(rgb888 led){
  ws2812_send_8bit(led.g);
  ws2812_send_8bit(led.r);
  ws2812_send_8bit(led.b);
  return;
}

void ws2812_send(rgb888 *led, char num){
  for(char i=0;i<num;i++){
    ws2812_send_rgb(*led++);
  }
  for(char i=0;i<200;i++){
    asm("nop");asm("nop");asm("nop");
  }
}

void ws2812_rainbow(char num){
  rgb888 test_led;
  if(num < 85){
    test_led.r = num*3;
    test_led.g = 255-num*3;
    test_led.b = 0;
  }else if(num < 170){
    num = num - 85;
    test_led.r = 255-num*3;
    test_led.g = 0;
    test_led.b = num*3;
  }else{
    num = num -170;
    test_led.r = 0;
    test_led.g = num*3;
    test_led.b = 255-num*3;
  }
  ws2812_send(&test_led,1);
}


void ws2812_test(){
    rgb888 test_led;
    test_led.r = 0xff;
    test_led.g = 0xff;
    test_led.b = 0xff;
    ws2812_send(&test_led,1);
    return;
}
