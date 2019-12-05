#ifndef _LED.H
#define _LED.H

#include "stm8s.h"

#define LED GPIO_PIN_7
#define LED_PORT GPIOD

void LED_ON(void);
void LED_OFF(void);

#endif
