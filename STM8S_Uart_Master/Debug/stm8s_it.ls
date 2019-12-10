   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  33                     ; 55 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  33                     ; 56 {
  34                     	switch	.text
  35  0000               f_NonHandledInterrupt:
  40                     ; 60 }
  43  0000 80            	iret
  65                     ; 68 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  65                     ; 69 {
  66                     	switch	.text
  67  0001               f_TRAP_IRQHandler:
  72                     ; 73 }
  75  0001 80            	iret
  97                     ; 80 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  97                     ; 81 
  97                     ; 82 {
  98                     	switch	.text
  99  0002               f_TLI_IRQHandler:
 104                     ; 86 }
 107  0002 80            	iret
 129                     ; 93 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 129                     ; 94 {
 130                     	switch	.text
 131  0003               f_AWU_IRQHandler:
 136                     ; 98 }
 139  0003 80            	iret
 161                     ; 105 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 161                     ; 106 {
 162                     	switch	.text
 163  0004               f_CLK_IRQHandler:
 168                     ; 110 }
 171  0004 80            	iret
 194                     ; 117 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 194                     ; 118 {
 195                     	switch	.text
 196  0005               f_EXTI_PORTA_IRQHandler:
 201                     ; 122 }
 204  0005 80            	iret
 227                     ; 129 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 227                     ; 130 {
 228                     	switch	.text
 229  0006               f_EXTI_PORTB_IRQHandler:
 234                     ; 134 }
 237  0006 80            	iret
 260                     ; 141 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 260                     ; 142 {
 261                     	switch	.text
 262  0007               f_EXTI_PORTC_IRQHandler:
 267                     ; 146 }
 270  0007 80            	iret
 293                     ; 153 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 293                     ; 154 {
 294                     	switch	.text
 295  0008               f_EXTI_PORTD_IRQHandler:
 300                     ; 158 }
 303  0008 80            	iret
 326                     ; 165 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 326                     ; 166 {
 327                     	switch	.text
 328  0009               f_EXTI_PORTE_IRQHandler:
 333                     ; 170 }
 336  0009 80            	iret
 358                     ; 217 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 358                     ; 218 {
 359                     	switch	.text
 360  000a               f_SPI_IRQHandler:
 365                     ; 222 }
 368  000a 80            	iret
 391                     ; 229 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 391                     ; 230 {
 392                     	switch	.text
 393  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 398                     ; 234 }
 401  000b 80            	iret
 424                     ; 241 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 424                     ; 242 {
 425                     	switch	.text
 426  000c               f_TIM1_CAP_COM_IRQHandler:
 431                     ; 246 }
 434  000c 80            	iret
 457                     ; 279  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 457                     ; 280  {
 458                     	switch	.text
 459  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 464                     ; 284  }
 467  000d 80            	iret
 490                     ; 291  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 490                     ; 292  {
 491                     	switch	.text
 492  000e               f_TIM2_CAP_COM_IRQHandler:
 497                     ; 296  }
 500  000e 80            	iret
 523                     ; 306  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 523                     ; 307  {
 524                     	switch	.text
 525  000f               f_TIM3_UPD_OVF_BRK_IRQHandler:
 530                     ; 311  }
 533  000f 80            	iret
 556                     ; 318  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 556                     ; 319  {
 557                     	switch	.text
 558  0010               f_TIM3_CAP_COM_IRQHandler:
 563                     ; 323  }
 566  0010 80            	iret
 588                     ; 384 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 588                     ; 385 {
 589                     	switch	.text
 590  0011               f_I2C_IRQHandler:
 595                     ; 389 }
 598  0011 80            	iret
 621                     ; 397  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 621                     ; 398  {
 622                     	switch	.text
 623  0012               f_UART2_TX_IRQHandler:
 628                     ; 402  }
 631  0012 80            	iret
 654                     ; 409  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 654                     ; 410  {
 655                     	switch	.text
 656  0013               f_UART2_RX_IRQHandler:
 661                     ; 414  }
 664  0013 80            	iret
 686                     ; 463  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 686                     ; 464  {
 687                     	switch	.text
 688  0014               f_ADC1_IRQHandler:
 693                     ; 468  }
 696  0014 80            	iret
 722                     ; 489  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 722                     ; 490  {
 723                     	switch	.text
 724  0015               f_TIM4_UPD_OVF_IRQHandler:
 727  0015 3b0002        	push	c_x+2
 728  0018 be00          	ldw	x,c_x
 729  001a 89            	pushw	x
 730  001b 3b0002        	push	c_y+2
 731  001e be00          	ldw	x,c_y
 732  0020 89            	pushw	x
 735                     ; 501 	if(startflag == 1)
 737  0021 b600          	ld	a,_startflag
 738  0023 a101          	cp	a,#1
 739  0025 2607          	jrne	L172
 740                     ; 503     timercnt++;
 742  0027 be00          	ldw	x,_timercnt
 743  0029 1c0001        	addw	x,#1
 744  002c bf00          	ldw	_timercnt,x
 745  002e               L172:
 746                     ; 505   TIM4_ClearITPendingBit(TIM4_IT_UPDATE);   //清除标志位
 748  002e a601          	ld	a,#1
 749  0030 cd0000        	call	_TIM4_ClearITPendingBit
 751                     ; 507  }
 754  0033 85            	popw	x
 755  0034 bf00          	ldw	c_y,x
 756  0036 320002        	pop	c_y+2
 757  0039 85            	popw	x
 758  003a bf00          	ldw	c_x,x
 759  003c 320002        	pop	c_x+2
 760  003f 80            	iret
 783                     ; 515 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 783                     ; 516 {
 784                     	switch	.text
 785  0040               f_EEPROM_EEC_IRQHandler:
 790                     ; 520 }
 793  0040 80            	iret
 805                     	xref.b	_timercnt
 806                     	xref.b	_startflag
 807                     	xdef	f_EEPROM_EEC_IRQHandler
 808                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 809                     	xdef	f_ADC1_IRQHandler
 810                     	xdef	f_UART2_TX_IRQHandler
 811                     	xdef	f_UART2_RX_IRQHandler
 812                     	xdef	f_I2C_IRQHandler
 813                     	xdef	f_TIM3_CAP_COM_IRQHandler
 814                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 815                     	xdef	f_TIM2_CAP_COM_IRQHandler
 816                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 817                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 818                     	xdef	f_TIM1_CAP_COM_IRQHandler
 819                     	xdef	f_SPI_IRQHandler
 820                     	xdef	f_EXTI_PORTE_IRQHandler
 821                     	xdef	f_EXTI_PORTD_IRQHandler
 822                     	xdef	f_EXTI_PORTC_IRQHandler
 823                     	xdef	f_EXTI_PORTB_IRQHandler
 824                     	xdef	f_EXTI_PORTA_IRQHandler
 825                     	xdef	f_CLK_IRQHandler
 826                     	xdef	f_AWU_IRQHandler
 827                     	xdef	f_TLI_IRQHandler
 828                     	xdef	f_TRAP_IRQHandler
 829                     	xdef	f_NonHandledInterrupt
 830                     	xref	_TIM4_ClearITPendingBit
 831                     	xref.b	c_x
 832                     	xref.b	c_y
 851                     	end
