#include "delay.h"

/***********************
*		������delay_ms
*		���ͣ�void
*		������ms
*		����ֵ��void
***********************/

void delay_ms(u32 ms)
{
	u32 i, j;
	for(i = ms; i > 0; i--)
	for(j = 110; j > 0; j--);
}



