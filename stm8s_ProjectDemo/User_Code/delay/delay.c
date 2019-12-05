#include "delay.h"

/***********************
*		函数：delay_ms
*		类型：void
*		参数：ms
*		返回值：void
***********************/

void delay_ms(u32 ms)
{
	u32 i, j;
	for(i = ms; i > 0; i--)
	for(j = 110; j > 0; j--);
}



