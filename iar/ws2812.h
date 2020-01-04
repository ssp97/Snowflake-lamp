#ifndef WS2812__H
#define WS2812__H

#include <iostm8s103f3.h>

typedef struct TYPE_RGB888{
    char g,r,b;
}rgb888;


#define ws2812_input PA_ODR_ODR3


void ws2812_test();

#endif