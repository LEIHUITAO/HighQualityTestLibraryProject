   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  33                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  33                     ; 54 {
  34                     	switch	.text
  35  0000               f_NonHandledInterrupt:
  40                     ; 58 }
  43  0000 80            	iret
  65                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  65                     ; 67 {
  66                     	switch	.text
  67  0001               f_TRAP_IRQHandler:
  72                     ; 71 }
  75  0001 80            	iret
  97                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  97                     ; 79 
  97                     ; 80 {
  98                     	switch	.text
  99  0002               f_TLI_IRQHandler:
 104                     ; 84 }
 107  0002 80            	iret
 129                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 129                     ; 92 {
 130                     	switch	.text
 131  0003               f_AWU_IRQHandler:
 136                     ; 96 }
 139  0003 80            	iret
 161                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 161                     ; 104 {
 162                     	switch	.text
 163  0004               f_CLK_IRQHandler:
 168                     ; 108 }
 171  0004 80            	iret
 194                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 194                     ; 116 {
 195                     	switch	.text
 196  0005               f_EXTI_PORTA_IRQHandler:
 201                     ; 120 }
 204  0005 80            	iret
 227                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 227                     ; 128 {
 228                     	switch	.text
 229  0006               f_EXTI_PORTB_IRQHandler:
 234                     ; 132 }
 237  0006 80            	iret
 260                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 260                     ; 140 {
 261                     	switch	.text
 262  0007               f_EXTI_PORTC_IRQHandler:
 267                     ; 144 }
 270  0007 80            	iret
 293                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 293                     ; 152 {
 294                     	switch	.text
 295  0008               f_EXTI_PORTD_IRQHandler:
 300                     ; 156 }
 303  0008 80            	iret
 326                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 326                     ; 164 {
 327                     	switch	.text
 328  0009               f_EXTI_PORTE_IRQHandler:
 333                     ; 168 }
 336  0009 80            	iret
 358                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 358                     ; 216 {
 359                     	switch	.text
 360  000a               f_SPI_IRQHandler:
 365                     ; 220 }
 368  000a 80            	iret
 391                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 391                     ; 228 {
 392                     	switch	.text
 393  000b               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 398                     ; 232 }
 401  000b 80            	iret
 424                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 424                     ; 240 {
 425                     	switch	.text
 426  000c               f_TIM1_CAP_COM_IRQHandler:
 431                     ; 244 }
 434  000c 80            	iret
 457                     ; 277  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 457                     ; 278  {
 458                     	switch	.text
 459  000d               f_TIM2_UPD_OVF_BRK_IRQHandler:
 464                     ; 282  }
 467  000d 80            	iret
 490                     ; 289  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 490                     ; 290  {
 491                     	switch	.text
 492  000e               f_TIM2_CAP_COM_IRQHandler:
 497                     ; 294  }
 500  000e 80            	iret
 523                     ; 304  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 523                     ; 305  {
 524                     	switch	.text
 525  000f               f_TIM3_UPD_OVF_BRK_IRQHandler:
 530                     ; 309  }
 533  000f 80            	iret
 556                     ; 316  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 556                     ; 317  {
 557                     	switch	.text
 558  0010               f_TIM3_CAP_COM_IRQHandler:
 563                     ; 321  }
 566  0010 80            	iret
 588                     ; 382 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 588                     ; 383 {
 589                     	switch	.text
 590  0011               f_I2C_IRQHandler:
 595                     ; 387 }
 598  0011 80            	iret
 621                     ; 395  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 621                     ; 396  {
 622                     	switch	.text
 623  0012               f_UART2_TX_IRQHandler:
 628                     ; 400  }
 631  0012 80            	iret
 654                     ; 407  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 654                     ; 408  {
 655                     	switch	.text
 656  0013               f_UART2_RX_IRQHandler:
 661                     ; 412  }
 664  0013 80            	iret
 686                     ; 461  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 686                     ; 462  {
 687                     	switch	.text
 688  0014               f_ADC1_IRQHandler:
 693                     ; 466  }
 696  0014 80            	iret
 719                     ; 487  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 719                     ; 488  {
 720                     	switch	.text
 721  0015               f_TIM4_UPD_OVF_IRQHandler:
 726                     ; 492  }
 729  0015 80            	iret
 752                     ; 500 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 752                     ; 501 {
 753                     	switch	.text
 754  0016               f_EEPROM_EEC_IRQHandler:
 759                     ; 505 }
 762  0016 80            	iret
 774                     	xdef	f_EEPROM_EEC_IRQHandler
 775                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 776                     	xdef	f_ADC1_IRQHandler
 777                     	xdef	f_UART2_TX_IRQHandler
 778                     	xdef	f_UART2_RX_IRQHandler
 779                     	xdef	f_I2C_IRQHandler
 780                     	xdef	f_TIM3_CAP_COM_IRQHandler
 781                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 782                     	xdef	f_TIM2_CAP_COM_IRQHandler
 783                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 784                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 785                     	xdef	f_TIM1_CAP_COM_IRQHandler
 786                     	xdef	f_SPI_IRQHandler
 787                     	xdef	f_EXTI_PORTE_IRQHandler
 788                     	xdef	f_EXTI_PORTD_IRQHandler
 789                     	xdef	f_EXTI_PORTC_IRQHandler
 790                     	xdef	f_EXTI_PORTB_IRQHandler
 791                     	xdef	f_EXTI_PORTA_IRQHandler
 792                     	xdef	f_CLK_IRQHandler
 793                     	xdef	f_AWU_IRQHandler
 794                     	xdef	f_TLI_IRQHandler
 795                     	xdef	f_TRAP_IRQHandler
 796                     	xdef	f_NonHandledInterrupt
 815                     	end
