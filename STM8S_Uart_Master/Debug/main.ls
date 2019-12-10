   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  40                     ; 36 void main(void)
  40                     ; 37 {
  42                     	switch	.text
  43  0000               _main:
  47                     ; 39 	USER_SYSTEM_Config();
  49  0000 cd0000        	call	_USER_SYSTEM_Config
  51                     ; 40 	USER_LED_Init();
  53  0003 cd0000        	call	_USER_LED_Init
  55                     ; 41 	USER_TIM4_Init();
  57  0006 cd0000        	call	_USER_TIM4_Init
  59                     ; 42 	USER_UART1_Init();
  61  0009 cd0000        	call	_USER_UART1_Init
  63                     ; 43 	enableInterrupts();
  66  000c 9a            rim
  68  000d               L12:
  69                     ; 47 		DF_LED_ON;
  71  000d 4b80          	push	#128
  72  000f ae500f        	ldw	x,#20495
  73  0012 cd0000        	call	_GPIO_WriteHigh
  75  0015 84            	pop	a
  76                     ; 49 		delay_ms(1000);
  78  0016 ae03e8        	ldw	x,#1000
  79  0019 cd0000        	call	_delay_ms
  81                     ; 50 		DF_LED_OFF;
  83  001c 4b80          	push	#128
  84  001e ae500f        	ldw	x,#20495
  85  0021 cd0000        	call	_GPIO_WriteLow
  87  0024 84            	pop	a
  88                     ; 52 		delay_ms(1000);
  90  0025 ae03e8        	ldw	x,#1000
  91  0028 cd0000        	call	_delay_ms
  94  002b 20e0          	jra	L12
 129                     ; 66 void assert_failed(u8* file, u32 line)
 129                     ; 67 { 
 130                     	switch	.text
 131  002d               _assert_failed:
 135  002d               L34:
 136  002d 20fe          	jra	L34
 149                     	xdef	_main
 150                     	xref	_USER_TIM4_Init
 151                     	xref	_USER_SYSTEM_Config
 152                     	xref	_delay_ms
 153                     	xref	_USER_UART1_Init
 154                     	xref	_USER_LED_Init
 155                     	xdef	_assert_failed
 156                     	xref	_GPIO_WriteLow
 157                     	xref	_GPIO_WriteHigh
 176                     	end
