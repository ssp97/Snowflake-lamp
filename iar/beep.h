#ifndef BEEP__H
#define BEEP__H

#include <iostm8s103f3.h>
#include "music.h"

#define beep_io PD_ODR_ODR4

void beep_init();
void beep_update();
void beep_demo();
#endif