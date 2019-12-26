   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  37                     ; 36 void main(void)
  37                     ; 37 {
  39                     	switch	.text
  40  0000               _main:
  44                     ; 39 	USER_SYSTEM_Config();
  46  0000 cd0000        	call	_USER_SYSTEM_Config
  48                     ; 40 	USER_LED_Init();
  50  0003 cd0000        	call	_USER_LED_Init
  52                     ; 41 	USER_TIM4_Init();
  54  0006 cd0000        	call	_USER_TIM4_Init
  56                     ; 42 	USER_UART2_Init();
  58  0009 cd0000        	call	_USER_UART2_Init
  60                     ; 43 	enableInterrupts();
  63  000c 9a            rim
  65  000d               L12:
  67  000d 20fe          	jra	L12
 102                     ; 66 void assert_failed(u8* file, u32 line)
 102                     ; 67 { 
 103                     	switch	.text
 104  000f               _assert_failed:
 108  000f               L34:
 109  000f 20fe          	jra	L34
 122                     	xdef	_main
 123                     	xref	_USER_TIM4_Init
 124                     	xref	_USER_SYSTEM_Config
 125                     	xref	_USER_UART2_Init
 126                     	xref	_USER_LED_Init
 127                     	xdef	_assert_failed
 146                     	end
