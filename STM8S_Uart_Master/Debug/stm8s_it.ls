   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  33                     ; 56 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  33                     ; 57 {
  34                     	switch	.text
  35  0000               f_NonHandledInterrupt:
  40                     ; 61 }
  43  0000 80            	iret
  65                     ; 69 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  65                     ; 70 {
  66                     	switch	.text
  67  0001               f_TRAP_IRQHandler:
  72                     ; 74 }
  75  0001 80            	iret
  97                     ; 81 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  97                     ; 82 
  97                     ; 83 {
  98                     	switch	.text
  99  0002               f_TLI_IRQHandler:
 104                     ; 87 }
 107  0002 80            	iret
 129                     ; 94 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 129                     ; 95 {
 130                     	switch	.text
 131  0003               f_AWU_IRQHandler:
 136                     ; 99 }
 139  0003 80            	iret
 161                     ; 106 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 161                     ; 107 {
 162                     	switch	.text
 163  0004               f_CLK_IRQHandler:
 168                     ; 111 }
 171  0004 80            	iret
 194                     ; 118 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 194                     ; 119 {
 195                     	switch	.text
 196  0005               f_EXTI_PORTA_IRQHandler:
 201                     ; 123 }
 204  0005 80            	iret
 227                     ; 130 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 227                     ; 131 {
 228                     	switch	.text
 229  0006               f_EXTI_PORTB_IRQHandler:
 234                     ; 135 }
 237  0006 80            	iret
 260                     ; 142 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 260                     ; 143 {
 261                     	switch	.text
 262  0007               f_EXTI_PORTC_IRQHandler:
 267                     ; 147 }
 270  0007 80            	iret
 293                     ; 154 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 293                     ; 155 {
 294                     	switch	.text
 295  0008               f_EXTI_PORTD_IRQHandler:
 300                     ; 159 }
 303  0008 80            	iret
 326                     ; 166 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 326                     ; 167 {
 327                     	switch	.text
 328  0009               f_EXTI_PORTE_IRQHandler:
 333                     ; 171 }
 336  0009 80            	iret
 358                     ; 218 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 358                     ; 219 {
 359                     	switch	.text
 360  000a               f_SPI_IRQHandler:
 365                     ; 223 }
 368  000a 80            	iret
 391                     ; 230 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 391                     ; 231 {
 392                     	switch	.text
 393  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 398                     ; 235 }
 401  000b 80            	iret
 424                     ; 242 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 424                     ; 243 {
 425                     	switch	.text
 426  000c               f_TIM1_CAP_COM_IRQHandler:
 431                     ; 247 }
 434  000c 80            	iret
 457                     ; 280  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 457                     ; 281  {
 458                     	switch	.text
 459  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 464                     ; 285  }
 467  000d 80            	iret
 490                     ; 292  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 490                     ; 293  {
 491                     	switch	.text
 492  000e               f_TIM2_CAP_COM_IRQHandler:
 497                     ; 297  }
 500  000e 80            	iret
 523                     ; 307  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 523                     ; 308  {
 524                     	switch	.text
 525  000f               f_TIM3_UPD_OVF_BRK_IRQHandler:
 530                     ; 312  }
 533  000f 80            	iret
 556                     ; 319  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 556                     ; 320  {
 557                     	switch	.text
 558  0010               f_TIM3_CAP_COM_IRQHandler:
 563                     ; 324  }
 566  0010 80            	iret
 588                     ; 385 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 588                     ; 386 {
 589                     	switch	.text
 590  0011               f_I2C_IRQHandler:
 595                     ; 390 }
 598  0011 80            	iret
 621                     ; 398  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 621                     ; 399  {
 622                     	switch	.text
 623  0012               f_UART2_TX_IRQHandler:
 628                     ; 403  }
 631  0012 80            	iret
 672                     ; 410  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 672                     ; 411  {
 673                     	switch	.text
 674  0013               f_UART2_RX_IRQHandler:
 677       00000001      OFST:	set	1
 678  0013 3b0002        	push	c_x+2
 679  0016 be00          	ldw	x,c_x
 680  0018 89            	pushw	x
 681  0019 3b0002        	push	c_y+2
 682  001c be00          	ldw	x,c_y
 683  001e 89            	pushw	x
 684  001f 88            	push	a
 687  0020               L162:
 688                     ; 416 		while((UART2_GetFlagStatus(UART2_FLAG_RXNE)==RESET));
 690  0020 ae0020        	ldw	x,#32
 691  0023 cd0000        	call	_UART2_GetFlagStatus
 693  0026 4d            	tnz	a
 694  0027 27f7          	jreq	L162
 695                     ; 417 		Temp = UART2_ReceiveData8();
 697  0029 cd0000        	call	_UART2_ReceiveData8
 699  002c 6b01          	ld	(OFST+0,sp),a
 700                     ; 418 		if(Temp == LED_STATE_ON)
 702  002e 7b01          	ld	a,(OFST+0,sp)
 703  0030 a101          	cp	a,#1
 704  0032 2611          	jrne	L562
 705                     ; 420 			DF_LED_ON;
 707  0034 4b80          	push	#128
 708  0036 ae500f        	ldw	x,#20495
 709  0039 cd0000        	call	_GPIO_WriteHigh
 711  003c 84            	pop	a
 712                     ; 421 			UART2_Printf((uint8_t *)"LEDµÆÁÁ£¡");
 714  003d ae0011        	ldw	x,#L762
 715  0040 cd0000        	call	_UART2_Printf
 718  0043 2013          	jra	L172
 719  0045               L562:
 720                     ; 423 		else if(Temp == LED_STATE_OFF)
 722  0045 0d01          	tnz	(OFST+0,sp)
 723  0047 261d          	jrne	L372
 724                     ; 425 			DF_LED_OFF;
 726  0049 4b80          	push	#128
 727  004b ae500f        	ldw	x,#20495
 728  004e cd0000        	call	_GPIO_WriteLow
 730  0051 84            	pop	a
 731                     ; 426 			UART2_Printf((uint8_t *)"LEDµÆÃð£¡");
 733  0052 ae0007        	ldw	x,#L572
 734  0055 cd0000        	call	_UART2_Printf
 737  0058               L172:
 738                     ; 436 		UART2_ClearFlag(UART2_FLAG_RXNE);
 740  0058 ae0020        	ldw	x,#32
 741  005b cd0000        	call	_UART2_ClearFlag
 743                     ; 437 		UART2_ClearITPendingBit(UART2_IT_RXNE);
 745  005e ae0255        	ldw	x,#597
 746  0061 cd0000        	call	_UART2_ClearITPendingBit
 748                     ; 439  }
 750  0064 2012          	jra	L45
 751  0066               L372:
 752                     ; 430 			UART2_Printf((uint8_t *)"´íÎó£¡");
 754  0066 ae0000        	ldw	x,#L103
 755  0069 cd0000        	call	_UART2_Printf
 757                     ; 431 			UART2_ClearFlag(UART2_FLAG_RXNE);
 759  006c ae0020        	ldw	x,#32
 760  006f cd0000        	call	_UART2_ClearFlag
 762                     ; 432 			UART2_ClearITPendingBit(UART2_IT_RXNE);
 764  0072 ae0255        	ldw	x,#597
 765  0075 cd0000        	call	_UART2_ClearITPendingBit
 767                     ; 433 			return;
 768  0078               L45:
 771  0078 84            	pop	a
 772  0079 85            	popw	x
 773  007a bf00          	ldw	c_y,x
 774  007c 320002        	pop	c_y+2
 775  007f 85            	popw	x
 776  0080 bf00          	ldw	c_x,x
 777  0082 320002        	pop	c_x+2
 778  0085 80            	iret
 800                     ; 488  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 800                     ; 489  {
 801                     	switch	.text
 802  0086               f_ADC1_IRQHandler:
 807                     ; 493  }
 810  0086 80            	iret
 836                     ; 514  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 836                     ; 515  {
 837                     	switch	.text
 838  0087               f_TIM4_UPD_OVF_IRQHandler:
 841  0087 3b0002        	push	c_x+2
 842  008a be00          	ldw	x,c_x
 843  008c 89            	pushw	x
 844  008d 3b0002        	push	c_y+2
 845  0090 be00          	ldw	x,c_y
 846  0092 89            	pushw	x
 849                     ; 526 	if(startflag == 1)
 851  0093 b600          	ld	a,_startflag
 852  0095 a101          	cp	a,#1
 853  0097 2607          	jrne	L323
 854                     ; 528     timercnt++;
 856  0099 be00          	ldw	x,_timercnt
 857  009b 1c0001        	addw	x,#1
 858  009e bf00          	ldw	_timercnt,x
 859  00a0               L323:
 860                     ; 530   TIM4_ClearITPendingBit(TIM4_IT_UPDATE);   //Çå³ý±êÖ¾Î»
 862  00a0 a601          	ld	a,#1
 863  00a2 cd0000        	call	_TIM4_ClearITPendingBit
 865                     ; 532  }
 868  00a5 85            	popw	x
 869  00a6 bf00          	ldw	c_y,x
 870  00a8 320002        	pop	c_y+2
 871  00ab 85            	popw	x
 872  00ac bf00          	ldw	c_x,x
 873  00ae 320002        	pop	c_x+2
 874  00b1 80            	iret
 897                     ; 540 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 897                     ; 541 {
 898                     	switch	.text
 899  00b2               f_EEPROM_EEC_IRQHandler:
 904                     ; 545 }
 907  00b2 80            	iret
 919                     	xref.b	_timercnt
 920                     	xref.b	_startflag
 921                     	xref	_UART2_Printf
 922                     	xdef	f_EEPROM_EEC_IRQHandler
 923                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 924                     	xdef	f_ADC1_IRQHandler
 925                     	xdef	f_UART2_TX_IRQHandler
 926                     	xdef	f_UART2_RX_IRQHandler
 927                     	xdef	f_I2C_IRQHandler
 928                     	xdef	f_TIM3_CAP_COM_IRQHandler
 929                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 930                     	xdef	f_TIM2_CAP_COM_IRQHandler
 931                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 932                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 933                     	xdef	f_TIM1_CAP_COM_IRQHandler
 934                     	xdef	f_SPI_IRQHandler
 935                     	xdef	f_EXTI_PORTE_IRQHandler
 936                     	xdef	f_EXTI_PORTD_IRQHandler
 937                     	xdef	f_EXTI_PORTC_IRQHandler
 938                     	xdef	f_EXTI_PORTB_IRQHandler
 939                     	xdef	f_EXTI_PORTA_IRQHandler
 940                     	xdef	f_CLK_IRQHandler
 941                     	xdef	f_AWU_IRQHandler
 942                     	xdef	f_TLI_IRQHandler
 943                     	xdef	f_TRAP_IRQHandler
 944                     	xdef	f_NonHandledInterrupt
 945                     	xref	_UART2_ClearITPendingBit
 946                     	xref	_UART2_ClearFlag
 947                     	xref	_UART2_GetFlagStatus
 948                     	xref	_UART2_ReceiveData8
 949                     	xref	_TIM4_ClearITPendingBit
 950                     	xref	_GPIO_WriteLow
 951                     	xref	_GPIO_WriteHigh
 952                     .const:	section	.text
 953  0000               L103:
 954  0000 b4edcef3a3a1  	dc.b	180,237,206,243,163,161,0
 955  0007               L572:
 956  0007 4c4544b5      	dc.b	"LED",181
 957  000b c6c3f0a3a100  	dc.b	198,195,240,163,161,0
 958  0011               L762:
 959  0011 4c4544b5      	dc.b	"LED",181
 960  0015 c6c1c1a3a100  	dc.b	198,193,193,163,161,0
 961                     	xref.b	c_x
 962                     	xref.b	c_y
 982                     	end
