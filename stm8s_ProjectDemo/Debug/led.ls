   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  33                     ; 3 void LED_ON(void)
  33                     ; 4 {
  35                     	switch	.text
  36  0000               _LED_ON:
  40                     ; 5 	GPIO_WriteHigh(LED_PORT, LED);
  42  0000 4b80          	push	#128
  43  0002 ae500f        	ldw	x,#20495
  44  0005 cd0000        	call	_GPIO_WriteHigh
  46  0008 84            	pop	a
  47                     ; 6 }
  50  0009 81            	ret
  74                     ; 8 void LED_OFF(void)
  74                     ; 9 {
  75                     	switch	.text
  76  000a               _LED_OFF:
  80                     ; 10 	GPIO_WriteLow(LED_PORT, LED);
  82  000a 4b80          	push	#128
  83  000c ae500f        	ldw	x,#20495
  84  000f cd0000        	call	_GPIO_WriteLow
  86  0012 84            	pop	a
  87                     ; 11 }
  90  0013 81            	ret
 103                     	xdef	_LED_OFF
 104                     	xdef	_LED_ON
 105                     	xref	_GPIO_WriteLow
 106                     	xref	_GPIO_WriteHigh
 125                     	end
