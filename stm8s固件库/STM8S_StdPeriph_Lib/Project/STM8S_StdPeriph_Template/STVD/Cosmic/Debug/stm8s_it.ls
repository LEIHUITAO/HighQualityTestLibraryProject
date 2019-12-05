   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  34                     ; 53 INTERRUPT_HANDLER(NonHandledInterrupt, 25)
  34                     ; 54 {
  35                     .text:	section	.text,new
  36  0000               f_NonHandledInterrupt:
  41                     ; 58 }
  44  0000 80            	iret	
  66                     ; 66 INTERRUPT_HANDLER_TRAP(TRAP_IRQHandler)
  66                     ; 67 {
  67                     .text:	section	.text,new
  68  0000               f_TRAP_IRQHandler:
  73                     ; 71 }
  76  0000 80            	iret	
  98                     ; 78 INTERRUPT_HANDLER(TLI_IRQHandler, 0)
  98                     ; 79 
  98                     ; 80 {
  99                     .text:	section	.text,new
 100  0000               f_TLI_IRQHandler:
 105                     ; 84 }
 108  0000 80            	iret	
 130                     ; 91 INTERRUPT_HANDLER(AWU_IRQHandler, 1)
 130                     ; 92 {
 131                     .text:	section	.text,new
 132  0000               f_AWU_IRQHandler:
 137                     ; 96 }
 140  0000 80            	iret	
 162                     ; 103 INTERRUPT_HANDLER(CLK_IRQHandler, 2)
 162                     ; 104 {
 163                     .text:	section	.text,new
 164  0000               f_CLK_IRQHandler:
 169                     ; 108 }
 172  0000 80            	iret	
 195                     ; 115 INTERRUPT_HANDLER(EXTI_PORTA_IRQHandler, 3)
 195                     ; 116 {
 196                     .text:	section	.text,new
 197  0000               f_EXTI_PORTA_IRQHandler:
 202                     ; 120 }
 205  0000 80            	iret	
 228                     ; 127 INTERRUPT_HANDLER(EXTI_PORTB_IRQHandler, 4)
 228                     ; 128 {
 229                     .text:	section	.text,new
 230  0000               f_EXTI_PORTB_IRQHandler:
 235                     ; 132 }
 238  0000 80            	iret	
 261                     ; 139 INTERRUPT_HANDLER(EXTI_PORTC_IRQHandler, 5)
 261                     ; 140 {
 262                     .text:	section	.text,new
 263  0000               f_EXTI_PORTC_IRQHandler:
 268                     ; 144 }
 271  0000 80            	iret	
 294                     ; 151 INTERRUPT_HANDLER(EXTI_PORTD_IRQHandler, 6)
 294                     ; 152 {
 295                     .text:	section	.text,new
 296  0000               f_EXTI_PORTD_IRQHandler:
 301                     ; 156 }
 304  0000 80            	iret	
 327                     ; 163 INTERRUPT_HANDLER(EXTI_PORTE_IRQHandler, 7)
 327                     ; 164 {
 328                     .text:	section	.text,new
 329  0000               f_EXTI_PORTE_IRQHandler:
 334                     ; 168 }
 337  0000 80            	iret	
 359                     ; 215 INTERRUPT_HANDLER(SPI_IRQHandler, 10)
 359                     ; 216 {
 360                     .text:	section	.text,new
 361  0000               f_SPI_IRQHandler:
 366                     ; 220 }
 369  0000 80            	iret	
 392                     ; 227 INTERRUPT_HANDLER(TIM1_UPD_OVF_TRG_BRK_IRQHandler, 11)
 392                     ; 228 {
 393                     .text:	section	.text,new
 394  0000               f_TIM1_UPD_OVF_TRG_BRK_IRQHandler:
 399                     ; 232 }
 402  0000 80            	iret	
 425                     ; 239 INTERRUPT_HANDLER(TIM1_CAP_COM_IRQHandler, 12)
 425                     ; 240 {
 426                     .text:	section	.text,new
 427  0000               f_TIM1_CAP_COM_IRQHandler:
 432                     ; 244 }
 435  0000 80            	iret	
 458                     ; 277  INTERRUPT_HANDLER(TIM2_UPD_OVF_BRK_IRQHandler, 13)
 458                     ; 278  {
 459                     .text:	section	.text,new
 460  0000               f_TIM2_UPD_OVF_BRK_IRQHandler:
 465                     ; 282  }
 468  0000 80            	iret	
 491                     ; 289  INTERRUPT_HANDLER(TIM2_CAP_COM_IRQHandler, 14)
 491                     ; 290  {
 492                     .text:	section	.text,new
 493  0000               f_TIM2_CAP_COM_IRQHandler:
 498                     ; 294  }
 501  0000 80            	iret	
 524                     ; 304  INTERRUPT_HANDLER(TIM3_UPD_OVF_BRK_IRQHandler, 15)
 524                     ; 305  {
 525                     .text:	section	.text,new
 526  0000               f_TIM3_UPD_OVF_BRK_IRQHandler:
 531                     ; 309  }
 534  0000 80            	iret	
 557                     ; 316  INTERRUPT_HANDLER(TIM3_CAP_COM_IRQHandler, 16)
 557                     ; 317  {
 558                     .text:	section	.text,new
 559  0000               f_TIM3_CAP_COM_IRQHandler:
 564                     ; 321  }
 567  0000 80            	iret	
 589                     ; 382 INTERRUPT_HANDLER(I2C_IRQHandler, 19)
 589                     ; 383 {
 590                     .text:	section	.text,new
 591  0000               f_I2C_IRQHandler:
 596                     ; 387 }
 599  0000 80            	iret	
 622                     ; 395  INTERRUPT_HANDLER(UART2_TX_IRQHandler, 20)
 622                     ; 396  {
 623                     .text:	section	.text,new
 624  0000               f_UART2_TX_IRQHandler:
 629                     ; 400  }
 632  0000 80            	iret	
 655                     ; 407  INTERRUPT_HANDLER(UART2_RX_IRQHandler, 21)
 655                     ; 408  {
 656                     .text:	section	.text,new
 657  0000               f_UART2_RX_IRQHandler:
 662                     ; 412  }
 665  0000 80            	iret	
 687                     ; 461  INTERRUPT_HANDLER(ADC1_IRQHandler, 22)
 687                     ; 462  {
 688                     .text:	section	.text,new
 689  0000               f_ADC1_IRQHandler:
 694                     ; 466  }
 697  0000 80            	iret	
 720                     ; 487  INTERRUPT_HANDLER(TIM4_UPD_OVF_IRQHandler, 23)
 720                     ; 488  {
 721                     .text:	section	.text,new
 722  0000               f_TIM4_UPD_OVF_IRQHandler:
 727                     ; 492  }
 730  0000 80            	iret	
 753                     ; 500 INTERRUPT_HANDLER(EEPROM_EEC_IRQHandler, 24)
 753                     ; 501 {
 754                     .text:	section	.text,new
 755  0000               f_EEPROM_EEC_IRQHandler:
 760                     ; 505 }
 763  0000 80            	iret	
 775                     	xdef	f_EEPROM_EEC_IRQHandler
 776                     	xdef	f_TIM4_UPD_OVF_IRQHandler
 777                     	xdef	f_ADC1_IRQHandler
 778                     	xdef	f_UART2_TX_IRQHandler
 779                     	xdef	f_UART2_RX_IRQHandler
 780                     	xdef	f_I2C_IRQHandler
 781                     	xdef	f_TIM3_CAP_COM_IRQHandler
 782                     	xdef	f_TIM3_UPD_OVF_BRK_IRQHandler
 783                     	xdef	f_TIM2_CAP_COM_IRQHandler
 784                     	xdef	f_TIM2_UPD_OVF_BRK_IRQHandler
 785                     	xdef	f_TIM1_UPD_OVF_TRG_BRK_IRQHandler
 786                     	xdef	f_TIM1_CAP_COM_IRQHandler
 787                     	xdef	f_SPI_IRQHandler
 788                     	xdef	f_EXTI_PORTE_IRQHandler
 789                     	xdef	f_EXTI_PORTD_IRQHandler
 790                     	xdef	f_EXTI_PORTC_IRQHandler
 791                     	xdef	f_EXTI_PORTB_IRQHandler
 792                     	xdef	f_EXTI_PORTA_IRQHandler
 793                     	xdef	f_CLK_IRQHandler
 794                     	xdef	f_AWU_IRQHandler
 795                     	xdef	f_TLI_IRQHandler
 796                     	xdef	f_TRAP_IRQHandler
 797                     	xdef	f_NonHandledInterrupt
 816                     	end
