   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
   5                     	switch	.data
   6  0000               _LED_PORT:
   7  0000 5023          	dc.w	20515
   8  0002 5023          	dc.w	20515
   9  0004 5023          	dc.w	20515
  10  0006 5023          	dc.w	20515
  11                     .const:	section	.text
  12  0000               _LED_PIN:
  13  0000 08            	dc.b	8
  14  0001 04            	dc.b	4
  15  0002 02            	dc.b	2
  16  0003 01            	dc.b	1
  17                     	switch	.data
  18  0008               _BUTTON_PORT:
  19  0008 500a          	dc.w	20490
  20  000a 5005          	dc.w	20485
  21  000c 5005          	dc.w	20485
  22  000e 5005          	dc.w	20485
  23  0010 5005          	dc.w	20485
  24  0012 500f          	dc.w	20495
  25                     	switch	.const
  26  0004               _BUTTON_PIN:
  27  0004 01            	dc.b	1
  28  0005 20            	dc.b	32
  29  0006 10            	dc.b	16
  30  0007 40            	dc.b	64
  31  0008 80            	dc.b	128
  32  0009 80            	dc.b	128
  33  000a               _BUTTON_EXTI:
  34  000a 02            	dc.b	2
  35  000b 01            	dc.b	1
  36  000c 01            	dc.b	1
  37  000d 01            	dc.b	1
  38  000e 01            	dc.b	1
  39  000f 03            	dc.b	3
 125                     ; 106 void STM_EVAL_LEDInit(Led_TypeDef Led)
 125                     ; 107 {
 127                     .text:	section	.text,new
 128  0000               _STM_EVAL_LEDInit:
 130  0000 88            	push	a
 131       00000000      OFST:	set	0
 134                     ; 109   GPIO_Init(LED_PORT[Led], (GPIO_Pin_TypeDef)LED_PIN[Led], GPIO_MODE_OUT_PP_HIGH_FAST);
 136  0001 4bf0          	push	#240
 137  0003 5f            	clrw	x
 138  0004 97            	ld	xl,a
 139  0005 d60000        	ld	a,(_LED_PIN,x)
 140  0008 88            	push	a
 141  0009 7b03          	ld	a,(OFST+3,sp)
 142  000b 5f            	clrw	x
 143  000c 97            	ld	xl,a
 144  000d 58            	sllw	x
 145  000e de0000        	ldw	x,(_LED_PORT,x)
 146  0011 cd0000        	call	_GPIO_Init
 148  0014 85            	popw	x
 149                     ; 110 }
 152  0015 84            	pop	a
 153  0016 81            	ret	
 190                     ; 122 void STM_EVAL_LEDOn(Led_TypeDef Led)
 190                     ; 123 {
 191                     .text:	section	.text,new
 192  0000               _STM_EVAL_LEDOn:
 194  0000 88            	push	a
 195       00000000      OFST:	set	0
 198                     ; 124   LED_PORT[Led]->ODR |= (uint8_t)LED_PIN[Led];
 200  0001 5f            	clrw	x
 201  0002 97            	ld	xl,a
 202  0003 58            	sllw	x
 203  0004 de0000        	ldw	x,(_LED_PORT,x)
 204  0007 7b01          	ld	a,(OFST+1,sp)
 205  0009 905f          	clrw	y
 206  000b 9097          	ld	yl,a
 207  000d f6            	ld	a,(x)
 208  000e 90da0000      	or	a,(_LED_PIN,y)
 209  0012 f7            	ld	(x),a
 210                     ; 125 }
 213  0013 84            	pop	a
 214  0014 81            	ret	
 251                     ; 137 void STM_EVAL_LEDOff(Led_TypeDef Led)
 251                     ; 138 {
 252                     .text:	section	.text,new
 253  0000               _STM_EVAL_LEDOff:
 255  0000 88            	push	a
 256       00000000      OFST:	set	0
 259                     ; 139   LED_PORT[Led]->ODR &= (uint8_t)~LED_PIN[Led];
 261  0001 5f            	clrw	x
 262  0002 97            	ld	xl,a
 263  0003 58            	sllw	x
 264  0004 de0000        	ldw	x,(_LED_PORT,x)
 265  0007 7b01          	ld	a,(OFST+1,sp)
 266  0009 905f          	clrw	y
 267  000b 9097          	ld	yl,a
 268  000d 90d60000      	ld	a,(_LED_PIN,y)
 269  0011 43            	cpl	a
 270  0012 f4            	and	a,(x)
 271  0013 f7            	ld	(x),a
 272                     ; 140 }
 275  0014 84            	pop	a
 276  0015 81            	ret	
 313                     ; 152 void STM_EVAL_LEDToggle(Led_TypeDef Led)
 313                     ; 153 {
 314                     .text:	section	.text,new
 315  0000               _STM_EVAL_LEDToggle:
 317  0000 88            	push	a
 318       00000000      OFST:	set	0
 321                     ; 154   LED_PORT[Led]->ODR ^= (uint8_t)LED_PIN[Led];
 323  0001 5f            	clrw	x
 324  0002 97            	ld	xl,a
 325  0003 58            	sllw	x
 326  0004 de0000        	ldw	x,(_LED_PORT,x)
 327  0007 7b01          	ld	a,(OFST+1,sp)
 328  0009 905f          	clrw	y
 329  000b 9097          	ld	yl,a
 330  000d f6            	ld	a,(x)
 331  000e 90d80000      	xor	a,(_LED_PIN,y)
 332  0012 f7            	ld	(x),a
 333                     ; 155 }
 336  0013 84            	pop	a
 337  0014 81            	ret	
 455                     ; 173 void STM_EVAL_PBInit(Button_TypeDef Button, ButtonMode_TypeDef Button_Mode)
 455                     ; 174 {
 456                     .text:	section	.text,new
 457  0000               _STM_EVAL_PBInit:
 459  0000 89            	pushw	x
 460       00000000      OFST:	set	0
 463                     ; 176   if (Button_Mode == BUTTON_MODE_EXTI)
 465  0001 9f            	ld	a,xl
 466  0002 4a            	dec	a
 467  0003 2626          	jrne	L171
 468                     ; 179     GPIO_Init(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button], GPIO_MODE_IN_FL_IT);
 470  0005 4b20          	push	#32
 471  0007 9e            	ld	a,xh
 472  0008 5f            	clrw	x
 473  0009 97            	ld	xl,a
 474  000a d60004        	ld	a,(_BUTTON_PIN,x)
 475  000d 88            	push	a
 476  000e 7b03          	ld	a,(OFST+3,sp)
 477  0010 5f            	clrw	x
 478  0011 97            	ld	xl,a
 479  0012 58            	sllw	x
 480  0013 de0008        	ldw	x,(_BUTTON_PORT,x)
 481  0016 cd0000        	call	_GPIO_Init
 483  0019 85            	popw	x
 484                     ; 180     EXTI_SetExtIntSensitivity((EXTI_Port_TypeDef)BUTTON_EXTI[Button], EXTI_SENSITIVITY_FALL_LOW);
 486  001a 5f            	clrw	x
 487  001b 7b01          	ld	a,(OFST+1,sp)
 488  001d 905f          	clrw	y
 489  001f 9097          	ld	yl,a
 490  0021 90d6000a      	ld	a,(_BUTTON_EXTI,y)
 491  0025 95            	ld	xh,a
 492  0026 cd0000        	call	_EXTI_SetExtIntSensitivity
 495  0029 2016          	jra	L371
 496  002b               L171:
 497                     ; 184     GPIO_Init(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button], GPIO_MODE_IN_FL_NO_IT);
 499  002b 4b00          	push	#0
 500  002d 7b02          	ld	a,(OFST+2,sp)
 501  002f 5f            	clrw	x
 502  0030 97            	ld	xl,a
 503  0031 d60004        	ld	a,(_BUTTON_PIN,x)
 504  0034 88            	push	a
 505  0035 7b03          	ld	a,(OFST+3,sp)
 506  0037 5f            	clrw	x
 507  0038 97            	ld	xl,a
 508  0039 58            	sllw	x
 509  003a de0008        	ldw	x,(_BUTTON_PORT,x)
 510  003d cd0000        	call	_GPIO_Init
 512  0040 85            	popw	x
 513  0041               L371:
 514                     ; 186 }
 517  0041 85            	popw	x
 518  0042 81            	ret	
 557                     ; 200 uint8_t STM_EVAL_PBGetState(Button_TypeDef Button)
 557                     ; 201 {
 558                     .text:	section	.text,new
 559  0000               _STM_EVAL_PBGetState:
 561  0000 88            	push	a
 562       00000000      OFST:	set	0
 565                     ; 202   return GPIO_ReadInputPin(BUTTON_PORT[Button], (GPIO_Pin_TypeDef)BUTTON_PIN[Button]);
 567  0001 5f            	clrw	x
 568  0002 97            	ld	xl,a
 569  0003 d60004        	ld	a,(_BUTTON_PIN,x)
 570  0006 88            	push	a
 571  0007 7b02          	ld	a,(OFST+2,sp)
 572  0009 5f            	clrw	x
 573  000a 97            	ld	xl,a
 574  000b 58            	sllw	x
 575  000c de0008        	ldw	x,(_BUTTON_PORT,x)
 576  000f cd0000        	call	_GPIO_ReadInputPin
 578  0012 5b02          	addw	sp,#2
 581  0014 81            	ret	
 607                     ; 211 void SD_LowLevel_DeInit(void)
 607                     ; 212 {
 608                     .text:	section	.text,new
 609  0000               _SD_LowLevel_DeInit:
 613                     ; 213   SPI_Cmd(DISABLE); /*!< SD_SPI disable */
 615  0000 4f            	clr	a
 616  0001 cd0000        	call	_SPI_Cmd
 618                     ; 216   CLK_PeripheralClockConfig(SD_SPI_CLK, DISABLE);
 620  0004 5f            	clrw	x
 621  0005 a601          	ld	a,#1
 622  0007 95            	ld	xh,a
 623  0008 cd0000        	call	_CLK_PeripheralClockConfig
 625                     ; 219   GPIO_Init(SD_SPI_SCK_GPIO_PORT, SD_SPI_SCK_PIN, GPIO_MODE_IN_FL_NO_IT);
 627  000b 4b00          	push	#0
 628  000d 4b20          	push	#32
 629  000f ae500a        	ldw	x,#20490
 630  0012 cd0000        	call	_GPIO_Init
 632  0015 85            	popw	x
 633                     ; 222   GPIO_Init(SD_SPI_MISO_GPIO_PORT, SD_SPI_MISO_PIN, GPIO_MODE_IN_FL_NO_IT);
 635  0016 4b00          	push	#0
 636  0018 4b80          	push	#128
 637  001a ae500a        	ldw	x,#20490
 638  001d cd0000        	call	_GPIO_Init
 640  0020 85            	popw	x
 641                     ; 225   GPIO_Init(SD_SPI_MOSI_GPIO_PORT, SD_SPI_MOSI_PIN, GPIO_MODE_IN_FL_NO_IT);
 643  0021 4b00          	push	#0
 644  0023 4b40          	push	#64
 645  0025 ae500a        	ldw	x,#20490
 646  0028 cd0000        	call	_GPIO_Init
 648  002b 85            	popw	x
 649                     ; 228   GPIO_Init(SD_CS_GPIO_PORT, SD_CS_PIN, GPIO_MODE_IN_FL_NO_IT);
 651  002c 4b00          	push	#0
 652  002e 4b20          	push	#32
 653  0030 ae5014        	ldw	x,#20500
 654  0033 cd0000        	call	_GPIO_Init
 656  0036 85            	popw	x
 657                     ; 231   GPIO_Init(SD_DETECT_GPIO_PORT, SD_DETECT_PIN, GPIO_MODE_IN_FL_NO_IT);
 659  0037 4b00          	push	#0
 660  0039 4b10          	push	#16
 661  003b ae5014        	ldw	x,#20500
 662  003e cd0000        	call	_GPIO_Init
 664  0041 85            	popw	x
 665                     ; 232 }
 668  0042 81            	ret	
 696                     ; 239 void SD_LowLevel_Init(void)
 696                     ; 240 {
 697                     .text:	section	.text,new
 698  0000               _SD_LowLevel_Init:
 702                     ; 242   CLK_PeripheralClockConfig(SD_SPI_CLK, ENABLE);
 704  0000 ae0001        	ldw	x,#1
 705  0003 a601          	ld	a,#1
 706  0005 95            	ld	xh,a
 707  0006 cd0000        	call	_CLK_PeripheralClockConfig
 709                     ; 245   GPIO_ExternalPullUpConfig(SD_SPI_SCK_GPIO_PORT, (GPIO_Pin_TypeDef)(SD_SPI_MISO_PIN | SD_SPI_MOSI_PIN | \
 709                     ; 246                             SD_SPI_SCK_PIN), ENABLE);
 711  0009 4b01          	push	#1
 712  000b 4be0          	push	#224
 713  000d ae500a        	ldw	x,#20490
 714  0010 cd0000        	call	_GPIO_ExternalPullUpConfig
 716  0013 85            	popw	x
 717                     ; 249   SPI_Init( SPI_FIRSTBIT_MSB, SPI_BAUDRATEPRESCALER_4, SPI_MODE_MASTER,
 717                     ; 250            SPI_CLOCKPOLARITY_HIGH, SPI_CLOCKPHASE_2EDGE, SPI_DATADIRECTION_2LINES_FULLDUPLEX,
 717                     ; 251            SPI_NSS_SOFT, 0x07);
 719  0014 4b07          	push	#7
 720  0016 4b02          	push	#2
 721  0018 4b00          	push	#0
 722  001a 4b01          	push	#1
 723  001c 4b02          	push	#2
 724  001e 4b04          	push	#4
 725  0020 ae0008        	ldw	x,#8
 726  0023 4f            	clr	a
 727  0024 95            	ld	xh,a
 728  0025 cd0000        	call	_SPI_Init
 730  0028 5b06          	addw	sp,#6
 731                     ; 255   SPI_Cmd( ENABLE);
 733  002a a601          	ld	a,#1
 734  002c cd0000        	call	_SPI_Cmd
 736                     ; 258   GPIO_Init(SD_CS_GPIO_PORT, SD_CS_PIN, GPIO_MODE_OUT_PP_HIGH_SLOW);
 738  002f 4bd0          	push	#208
 739  0031 4b20          	push	#32
 740  0033 ae5014        	ldw	x,#20500
 741  0036 cd0000        	call	_GPIO_Init
 743  0039 85            	popw	x
 744                     ; 259 }
 747  003a 81            	ret	
 775                     ; 266 void sEE_LowLevel_DeInit(void)
 775                     ; 267 {
 776                     .text:	section	.text,new
 777  0000               _sEE_LowLevel_DeInit:
 781                     ; 269   I2C_Cmd(DISABLE);
 783  0000 4f            	clr	a
 784  0001 cd0000        	call	_I2C_Cmd
 786                     ; 272   I2C_DeInit();
 788  0004 cd0000        	call	_I2C_DeInit
 790                     ; 275   CLK_PeripheralClockConfig(sEE_I2C_CLK, DISABLE);
 792  0007 5f            	clrw	x
 793  0008 4f            	clr	a
 794  0009 95            	ld	xh,a
 795  000a cd0000        	call	_CLK_PeripheralClockConfig
 797                     ; 279   GPIO_Init(sEE_I2C_SCL_GPIO_PORT, sEE_I2C_SCL_PIN, GPIO_MODE_IN_PU_NO_IT);
 799  000d 4b40          	push	#64
 800  000f 4b02          	push	#2
 801  0011 ae5014        	ldw	x,#20500
 802  0014 cd0000        	call	_GPIO_Init
 804  0017 85            	popw	x
 805                     ; 282   GPIO_Init(sEE_I2C_SDA_GPIO_PORT, sEE_I2C_SDA_PIN, GPIO_MODE_IN_PU_NO_IT);
 807  0018 4b40          	push	#64
 808  001a 4b04          	push	#4
 809  001c ae5014        	ldw	x,#20500
 810  001f cd0000        	call	_GPIO_Init
 812  0022 85            	popw	x
 813                     ; 283 }
 816  0023 81            	ret	
 840                     ; 290 void sEE_LowLevel_Init(void)
 840                     ; 291 {
 841                     .text:	section	.text,new
 842  0000               _sEE_LowLevel_Init:
 846                     ; 293   CLK_PeripheralClockConfig(sEE_I2C_CLK, ENABLE);
 848  0000 ae0001        	ldw	x,#1
 849  0003 4f            	clr	a
 850  0004 95            	ld	xh,a
 852                     ; 295 }
 855  0005 cc0000        	jp	_CLK_PeripheralClockConfig
 978                     	xdef	_BUTTON_EXTI
 979                     	xdef	_BUTTON_PIN
 980                     	xdef	_BUTTON_PORT
 981                     	xdef	_LED_PIN
 982                     	xdef	_LED_PORT
 983                     	xdef	_sEE_LowLevel_Init
 984                     	xdef	_sEE_LowLevel_DeInit
 985                     	xdef	_SD_LowLevel_Init
 986                     	xdef	_SD_LowLevel_DeInit
 987                     	xdef	_STM_EVAL_PBGetState
 988                     	xdef	_STM_EVAL_PBInit
 989                     	xdef	_STM_EVAL_LEDToggle
 990                     	xdef	_STM_EVAL_LEDOff
 991                     	xdef	_STM_EVAL_LEDOn
 992                     	xdef	_STM_EVAL_LEDInit
 993                     	xref	_SPI_Cmd
 994                     	xref	_SPI_Init
 995                     	xref	_I2C_Cmd
 996                     	xref	_I2C_DeInit
 997                     	xref	_GPIO_ExternalPullUpConfig
 998                     	xref	_GPIO_ReadInputPin
 999                     	xref	_GPIO_Init
1000                     	xref	_EXTI_SetExtIntSensitivity
1001                     	xref	_CLK_PeripheralClockConfig
1020                     	end
