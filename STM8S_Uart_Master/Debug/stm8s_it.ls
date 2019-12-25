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
 670                     ; 410  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 670                     ; 411  {
 671                     	switch	.text
 672  0013               f_UART2_RX_IRQHandler:
 675       00000001      OFST:	set	1
 676  0013 3b0002        	push	c_x+2
 677  0016 be00          	ldw	x,c_x
 678  0018 89            	pushw	x
 679  0019 3b0002        	push	c_y+2
 680  001c be00          	ldw	x,c_y
 681  001e 89            	pushw	x
 682  001f 88            	push	a
 685  0020               L162:
 686                     ; 416 		while((UART2_GetFlagStatus(UART2_FLAG_RXNE)==RESET));
 688  0020 ae0020        	ldw	x,#32
 689  0023 cd0000        	call	_UART2_GetFlagStatus
 691  0026 4d            	tnz	a
 692  0027 27f7          	jreq	L162
 693                     ; 417 		Temp = UART2_ReceiveData8();
 695  0029 cd0000        	call	_UART2_ReceiveData8
 697  002c 6b01          	ld	(OFST+0,sp),a
 698                     ; 418 		UART2_SendData8(Temp);
 700  002e 7b01          	ld	a,(OFST+0,sp)
 701  0030 cd0000        	call	_UART2_SendData8
 703                     ; 419 		UART2_ClearFlag(UART2_FLAG_RXNE);
 705  0033 ae0020        	ldw	x,#32
 706  0036 cd0000        	call	_UART2_ClearFlag
 708                     ; 420 		UART2_ClearITPendingBit(UART2_IT_RXNE);
 710  0039 ae0255        	ldw	x,#597
 711  003c cd0000        	call	_UART2_ClearITPendingBit
 713                     ; 422  }
 716  003f 84            	pop	a
 717  0040 85            	popw	x
 718  0041 bf00          	ldw	c_y,x
 719  0043 320002        	pop	c_y+2
 720  0046 85            	popw	x
 721  0047 bf00          	ldw	c_x,x
 722  0049 320002        	pop	c_x+2
 723  004c 80            	iret
 745                     ; 471  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 745                     ; 472  {
 746                     	switch	.text
 747  004d               f_ADC1_IRQHandler:
 752                     ; 476  }
 755  004d 80            	iret
 781                     ; 497  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 781                     ; 498  {
 782                     	switch	.text
 783  004e               f_TIM4_UPD_OVF_IRQHandler:
 786  004e 3b0002        	push	c_x+2
 787  0051 be00          	ldw	x,c_x
 788  0053 89            	pushw	x
 789  0054 3b0002        	push	c_y+2
 790  0057 be00          	ldw	x,c_y
 791  0059 89            	pushw	x
 794                     ; 509 	if(startflag == 1)
 796  005a b600          	ld	a,_startflag
 797  005c a101          	cp	a,#1
 798  005e 2607          	jrne	L503
 799                     ; 511     timercnt++;
 801  0060 be00          	ldw	x,_timercnt
 802  0062 1c0001        	addw	x,#1
 803  0065 bf00          	ldw	_timercnt,x
 804  0067               L503:
 805                     ; 513   TIM4_ClearITPendingBit(TIM4_IT_UPDATE);   //清除标志位
 807  0067 a601          	ld	a,#1
 808  0069 cd0000        	call	_TIM4_ClearITPendingBit
 810                     ; 515  }
 813  006c 85            	popw	x
 814  006d bf00          	ldw	c_y,x
 815  006f 320002        	pop	c_y+2
 816  0072 85            	popw	x
 817  0073 bf00          	ldw	c_x,x
 818  0075 320002        	pop	c_x+2
 819  0078 80            	iret
 842                     ; 523 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 842                     ; 524 {
 843                     	switch	.text
 844  0079               f_EEPROM_EEC_IRQHandler:
 849                     ; 528 }
 852  0079 80            	iret
 864                     	xref.b	_timercnt
 865                     	xref.b	_startflag
 866                     	xdef	f_EEPROM_EEC_IRQHandler
 867                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 868                     	xdef	f_ADC1_IRQHandler
 869                     	xdef	f_UART2_TX_IRQHandler
 870                     	xdef	f_UART2_RX_IRQHandler
 871                     	xdef	f_I2C_IRQHandler
 872                     	xdef	f_TIM3_CAP_COM_IRQHandler
 873                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 874                     	xdef	f_TIM2_CAP_COM_IRQHandler
 875                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 876                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 877                     	xdef	f_TIM1_CAP_COM_IRQHandler
 878                     	xdef	f_SPI_IRQHandler
 879                     	xdef	f_EXTI_PORTE_IRQHandler
 880                     	xdef	f_EXTI_PORTD_IRQHandler
 881                     	xdef	f_EXTI_PORTC_IRQHandler
 882                     	xdef	f_EXTI_PORTB_IRQHandler
 883                     	xdef	f_EXTI_PORTA_IRQHandler
 884                     	xdef	f_CLK_IRQHandler
 885                     	xdef	f_AWU_IRQHandler
 886                     	xdef	f_TLI_IRQHandler
 887                     	xdef	f_TRAP_IRQHandler
 888                     	xdef	f_NonHandledInterrupt
 889                     	xref	_UART2_ClearITPendingBit
 890                     	xref	_UART2_ClearFlag
 891                     	xref	_UART2_GetFlagStatus
 892                     	xref	_UART2_SendData8
 893                     	xref	_UART2_ReceiveData8
 894                     	xref	_TIM4_ClearITPendingBit
 895                     	xref.b	c_x
 896                     	xref.b	c_y
 915                     	end
