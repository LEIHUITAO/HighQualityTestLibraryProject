   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  37                     ; 36 void main(void)
  37                     ; 37 {
  39                     	switch	.text
  40  0000               _main:
  44                     ; 39 	GPIO_DeInit(LED_PORT);
  46  0000 ae500f        	ldw	x,#20495
  47  0003 cd0000        	call	_GPIO_DeInit
  49                     ; 40 	GPIO_Init(LED_PORT, LED, GPIO_MODE_OUT_PP_LOW_FAST);
  51  0006 4be0          	push	#224
  52  0008 4b80          	push	#128
  53  000a ae500f        	ldw	x,#20495
  54  000d cd0000        	call	_GPIO_Init
  56  0010 85            	popw	x
  57  0011               L12:
  58                     ; 43 		LED_OFF();
  60  0011 cd0000        	call	_LED_OFF
  62                     ; 44 		delay_ms(500);
  64  0014 ae01f4        	ldw	x,#500
  65  0017 89            	pushw	x
  66  0018 ae0000        	ldw	x,#0
  67  001b 89            	pushw	x
  68  001c cd0000        	call	_delay_ms
  70  001f 5b04          	addw	sp,#4
  71                     ; 45 		LED_ON();
  73  0021 cd0000        	call	_LED_ON
  75                     ; 46 		delay_ms(500);
  77  0024 ae01f4        	ldw	x,#500
  78  0027 89            	pushw	x
  79  0028 ae0000        	ldw	x,#0
  80  002b 89            	pushw	x
  81  002c cd0000        	call	_delay_ms
  83  002f 5b04          	addw	sp,#4
  85  0031 20de          	jra	L12
 120                     ; 60 void assert_failed(u8* file, u32 line)
 120                     ; 61 { 
 121                     	switch	.text
 122  0033               _assert_failed:
 126  0033               L34:
 127  0033 20fe          	jra	L34
 140                     	xdef	_main
 141                     	xref	_LED_OFF
 142                     	xref	_LED_ON
 143                     	xref	_delay_ms
 144                     	xdef	_assert_failed
 145                     	xref	_GPIO_Init
 146                     	xref	_GPIO_DeInit
 165                     	end
