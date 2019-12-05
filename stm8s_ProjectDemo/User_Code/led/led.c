#include "led.h"

void LED_ON(void)
{
	GPIO_WriteHigh(LED_PORT, LED);
}

void LED_OFF(void)
{
	GPIO_WriteLow(LED_PORT, LED);
}