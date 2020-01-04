#include "beep.h"

unsigned int musicNum = 0;
unsigned char musicTime = 0;
unsigned char playStatus = 0;
const unsigned int * music = 0;

const unsigned int demo_music[] = {
  L5,20,L5,20,L6,40,L5,40,M1,40,L7,80,
  L5,20,L5,20,L6,40,L5,40,M2,40,M1,80,
  L5,20,L5,20,M5,40,M3,40,M1,40,L7,40,L6,40,
  M4,3,M4,1,M3,40,M1,40,M2,40,M1,40,
  10000,80,0x00,	
};

const unsigned int bad_apple[] ={
  L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,
  M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
  L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
  L7,20,L6,20,L7,20,M1,20,L7,20,L6,20,L5,20,L7,20,
  
  L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,
  M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
  L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
  L7,20,M1,20,M1,20,M2,20,M2,20,M3,20,M3,20,
  
  L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,  //反复一次
  M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
  L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
  L7,20,L6,20,L7,20,M1,20,L7,20,L6,20,L5,20,L7,20,
  
  L6,20,L7,20,M1,20,M2,20,M3,40,M6,20,M5,20,
  M3,40,L6,40,M3,20,M2,20,M1,20,L7,20,
  L6,20,L7,20,M1,20,M2,20,M3,40,M2,20,M1,20,
  L7,20,M1,20,M1,20,M2,20,M2,20,M3,20,M3,20,
  
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
  L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
  L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
  L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M6,20,M7,20,
  H1,20,M7,20,M6,20,M5,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,M3,20,M5,20,
  
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,   //反复一次
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
  L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
  L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,L5,20,L6,20,
  L7,20,M1,20,M2,20,M3,20,L6,40,M3,20,M5,20,
  
  M5,20,M6,20,M3,20,M2,20,M3,40,M2,20,M3,20,
  M5,20,M6,20,M3,20,M2,20,M3,40,M6,20,M7,20,
  H1,20,M7,20,M6,20,M5,20,M3,40,M2,20,M3,20,
  M2,20,M1,20,L7,20,L5,20,L6,40,/*M3,20,M5,20,*/
  /*
  L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
  L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
  L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
  L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,L6,19,10000,1,
  */
  
  M_STOP,80,0x00,	
};

const unsigned int senbonzakura[] = {
  L6,10,L6,10,L5,10,L6,10,L6,10,L5,10,
  L6,10,L6,10,L5,10,L6,10,L1,20,
  
  M_STOP,80,0x00,
};

void beep_set(int freq){
  unsigned int tim_data;
  
  tim_data = 8000000L / freq;
  TIM2_ARRH  = tim_data>>8;
  TIM2_ARRL  = tim_data;
  tim_data = tim_data / 2;
  TIM2_CCR1H = tim_data>>8;
  TIM2_CCR1L = tim_data;
  
  TIM2_CR1 = 0x01; //计数器使能，开始计数
  if(freq == M_STOP){
    TIM2_CR1 = 0x00; 
    PD_ODR_ODR4 = 0;
  }
  
  return;
}

void beep_init(){
  TIM2_PSCR_PSC = 1;          //8MHZ
  TIM2_CCMR1 = 0X70;
  TIM2_CCER1 = 0X01;
  
  music = demo_music;
}

void beep_update(){
  if(playStatus == 1){
    if(musicTime == 0){
      if(music[musicNum]== 0){
        musicNum = 0;
      }
      beep_set(music[musicNum++]);
      musicTime = music[musicNum++];
    }
    musicTime--;
  }
}

void beep_start(const unsigned int * music_name){
  music = music_name;
  musicTime = 0;
  musicNum = 0;
  playStatus = 1;
}
void MusicPause(){
  TIM2_CR1 = 0x00; 
  playStatus = 0;
}
void MusicPlay(){
  TIM2_CR1 = 0x01; 
  playStatus = 1;
}
void MusicStop(){
  musicTime = 0;
  musicNum = 0;
  TIM2_CR1 = 0x00; 
  playStatus = 0;
}

void beep_demo(){
  beep_init();
  beep_start(bad_apple);
}