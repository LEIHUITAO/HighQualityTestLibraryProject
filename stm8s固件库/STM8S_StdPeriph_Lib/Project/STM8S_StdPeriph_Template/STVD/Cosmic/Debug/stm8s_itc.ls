   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 50 uint8_t ITC_GetCPUCC(void)
  33                     ; 51 {
  35                     .text:	section	.text,new
  36  0000               _ITC_GetCPUCC:
  40                     ; 53   _asm("push cc");
  43  0000 8a            	push	cc
  45                     ; 54   _asm("pop a");
  48  0001 84            	pop	a
  50                     ; 55   return; /* Ignore compiler warning, the returned value is in A register */
  53  0002 81            	ret	
  76                     ; 80 void ITC_DeInit(void)
  76                     ; 81 {
  77                     .text:	section	.text,new
  78  0000               _ITC_DeInit:
  82                     ; 82   ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
  84  0000 35ff7f70      	mov	32624,#255
  85                     ; 83   ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
  87  0004 35ff7f71      	mov	32625,#255
  88                     ; 84   ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
  90  0008 35ff7f72      	mov	32626,#255
  91                     ; 85   ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
  93  000c 35ff7f73      	mov	32627,#255
  94                     ; 86   ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
  96  0010 35ff7f74      	mov	32628,#255
  97                     ; 87   ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
  99  0014 35ff7f75      	mov	32629,#255
 100                     ; 88   ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
 102  0018 35ff7f76      	mov	32630,#255
 103                     ; 89   ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
 105  001c 35ff7f77      	mov	32631,#255
 106                     ; 90 }
 109  0020 81            	ret	
 134                     ; 97 uint8_t ITC_GetSoftIntStatus(void)
 134                     ; 98 {
 135                     .text:	section	.text,new
 136  0000               _ITC_GetSoftIntStatus:
 140                     ; 99   return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
 142  0000 cd0000        	call	_ITC_GetCPUCC
 144  0003 a428          	and	a,#40
 147  0005 81            	ret	
 393                     .const:	section	.text
 394  0000               L23:
 395  0000 0037          	dc.w	L14
 396  0002 0037          	dc.w	L14
 397  0004 0037          	dc.w	L14
 398  0006 0037          	dc.w	L14
 399  0008 003c          	dc.w	L34
 400  000a 003c          	dc.w	L34
 401  000c 003c          	dc.w	L34
 402  000e 003c          	dc.w	L34
 403  0010 005c          	dc.w	L102
 404  0012 005c          	dc.w	L102
 405  0014 0041          	dc.w	L54
 406  0016 0041          	dc.w	L54
 407  0018 0046          	dc.w	L74
 408  001a 0046          	dc.w	L74
 409  001c 0046          	dc.w	L74
 410  001e 0046          	dc.w	L74
 411  0020 004b          	dc.w	L15
 412  0022 005c          	dc.w	L102
 413  0024 005c          	dc.w	L102
 414  0026 004b          	dc.w	L15
 415  0028 0050          	dc.w	L35
 416  002a 0050          	dc.w	L35
 417  002c 0050          	dc.w	L35
 418  002e 0050          	dc.w	L35
 419  0030 0055          	dc.w	L55
 420                     ; 107 ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
 420                     ; 108 {
 421                     .text:	section	.text,new
 422  0000               _ITC_GetSoftwarePriority:
 424  0000 88            	push	a
 425  0001 89            	pushw	x
 426       00000002      OFST:	set	2
 429                     ; 109   uint8_t Value = 0;
 431  0002 0f02          	clr	(OFST+0,sp)
 432                     ; 110   uint8_t Mask = 0;
 434                     ; 113   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 436  0004 7b03          	ld	a,(OFST+1,sp)
 437  0006 a119          	cp	a,#25
 438  0008 2510          	jrult	L02
 439  000a ae0071        	ldw	x,#113
 440  000d 89            	pushw	x
 441  000e 5f            	clrw	x
 442  000f 89            	pushw	x
 443  0010 ae0064        	ldw	x,#L571
 444  0013 cd0000        	call	_assert_failed
 446  0016 5b04          	addw	sp,#4
 447  0018 7b03          	ld	a,(OFST+1,sp)
 448  001a               L02:
 449                     ; 116   Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
 451  001a a403          	and	a,#3
 452  001c 48            	sll	a
 453  001d 5f            	clrw	x
 454  001e 97            	ld	xl,a
 455  001f a603          	ld	a,#3
 456  0021 5d            	tnzw	x
 457  0022 2704          	jreq	L42
 458  0024               L62:
 459  0024 48            	sll	a
 460  0025 5a            	decw	x
 461  0026 26fc          	jrne	L62
 462  0028               L42:
 463  0028 6b01          	ld	(OFST-1,sp),a
 464                     ; 118   switch (IrqNum)
 466  002a 7b03          	ld	a,(OFST+1,sp)
 468                     ; 198   default:
 468                     ; 199     break;
 469  002c a119          	cp	a,#25
 470  002e 242c          	jruge	L102
 471  0030 5f            	clrw	x
 472  0031 97            	ld	xl,a
 473  0032 58            	sllw	x
 474  0033 de0000        	ldw	x,(L23,x)
 475  0036 fc            	jp	(x)
 476  0037               L14:
 477                     ; 120   case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
 477                     ; 121   case ITC_IRQ_AWU:
 477                     ; 122   case ITC_IRQ_CLK:
 477                     ; 123   case ITC_IRQ_PORTA:
 477                     ; 124     Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
 479  0037 c67f70        	ld	a,32624
 480                     ; 125     break;
 482  003a 201c          	jp	LC001
 483  003c               L34:
 484                     ; 127   case ITC_IRQ_PORTB:
 484                     ; 128   case ITC_IRQ_PORTC:
 484                     ; 129   case ITC_IRQ_PORTD:
 484                     ; 130   case ITC_IRQ_PORTE:
 484                     ; 131     Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
 486  003c c67f71        	ld	a,32625
 487                     ; 132     break;
 489  003f 2017          	jp	LC001
 490  0041               L54:
 491                     ; 141   case ITC_IRQ_SPI:
 491                     ; 142   case ITC_IRQ_TIM1_OVF:
 491                     ; 143     Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
 493  0041 c67f72        	ld	a,32626
 494                     ; 144     break;
 496  0044 2012          	jp	LC001
 497  0046               L74:
 498                     ; 146   case ITC_IRQ_TIM1_CAPCOM:
 498                     ; 147 #if defined (STM8S903) || defined (STM8AF622x)
 498                     ; 148   case ITC_IRQ_TIM5_OVFTRI:
 498                     ; 149   case ITC_IRQ_TIM5_CAPCOM:
 498                     ; 150 #else
 498                     ; 151   case ITC_IRQ_TIM2_OVF:
 498                     ; 152   case ITC_IRQ_TIM2_CAPCOM:
 498                     ; 153 #endif /* STM8S903 or STM8AF622x*/
 498                     ; 154   case ITC_IRQ_TIM3_OVF:
 498                     ; 155     Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
 500  0046 c67f73        	ld	a,32627
 501                     ; 156     break;
 503  0049 200d          	jp	LC001
 504  004b               L15:
 505                     ; 158   case ITC_IRQ_TIM3_CAPCOM:
 505                     ; 159 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 505                     ; 160     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 505                     ; 161   case ITC_IRQ_UART1_TX:
 505                     ; 162   case ITC_IRQ_UART1_RX:
 505                     ; 163 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 505                     ; 164 #if defined(STM8AF622x)
 505                     ; 165   case ITC_IRQ_UART4_TX:
 505                     ; 166   case ITC_IRQ_UART4_RX:
 505                     ; 167 #endif /*STM8AF622x */
 505                     ; 168   case ITC_IRQ_I2C:
 505                     ; 169     Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
 507  004b c67f74        	ld	a,32628
 508                     ; 170     break;
 510  004e 2008          	jp	LC001
 511  0050               L35:
 512                     ; 173   case ITC_IRQ_UART2_TX:
 512                     ; 174   case ITC_IRQ_UART2_RX:
 512                     ; 175 #endif /*STM8S105 or STM8AF626x*/
 512                     ; 176 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 512                     ; 177     defined(STM8AF62Ax)
 512                     ; 178   case ITC_IRQ_UART3_TX:
 512                     ; 179   case ITC_IRQ_UART3_RX:
 512                     ; 180   case ITC_IRQ_ADC2:
 512                     ; 181 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 512                     ; 182 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 512                     ; 183     defined(STM8S903) || defined(STM8AF626x) || defined(STM8AF622x)
 512                     ; 184   case ITC_IRQ_ADC1:
 512                     ; 185 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 512                     ; 186 #if defined (STM8S903) || defined (STM8AF622x)
 512                     ; 187   case ITC_IRQ_TIM6_OVFTRI:
 512                     ; 188 #else
 512                     ; 189   case ITC_IRQ_TIM4_OVF:
 512                     ; 190 #endif /*STM8S903 or STM8AF622x */
 512                     ; 191     Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
 514  0050 c67f75        	ld	a,32629
 515                     ; 192     break;
 517  0053 2003          	jp	LC001
 518  0055               L55:
 519                     ; 194   case ITC_IRQ_EEPROM_EEC:
 519                     ; 195     Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
 521  0055 c67f76        	ld	a,32630
 522  0058               LC001:
 523  0058 1401          	and	a,(OFST-1,sp)
 524  005a 6b02          	ld	(OFST+0,sp),a
 525                     ; 196     break;
 527                     ; 198   default:
 527                     ; 199     break;
 529  005c               L102:
 530                     ; 202   Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
 532  005c 7b03          	ld	a,(OFST+1,sp)
 533  005e a403          	and	a,#3
 534  0060 48            	sll	a
 535  0061 5f            	clrw	x
 536  0062 97            	ld	xl,a
 537  0063 7b02          	ld	a,(OFST+0,sp)
 538  0065 5d            	tnzw	x
 539  0066 2704          	jreq	L43
 540  0068               L63:
 541  0068 44            	srl	a
 542  0069 5a            	decw	x
 543  006a 26fc          	jrne	L63
 544  006c               L43:
 545                     ; 204   return((ITC_PriorityLevel_TypeDef)Value);
 549  006c 5b03          	addw	sp,#3
 550  006e 81            	ret	
 612                     	switch	.const
 613  0032               L201:
 614  0032 0067          	dc.w	L302
 615  0034 0067          	dc.w	L302
 616  0036 0067          	dc.w	L302
 617  0038 0067          	dc.w	L302
 618  003a 0079          	dc.w	L502
 619  003c 0079          	dc.w	L502
 620  003e 0079          	dc.w	L502
 621  0040 0079          	dc.w	L502
 622  0042 00e3          	dc.w	L352
 623  0044 00e3          	dc.w	L352
 624  0046 008b          	dc.w	L702
 625  0048 008b          	dc.w	L702
 626  004a 009d          	dc.w	L112
 627  004c 009d          	dc.w	L112
 628  004e 009d          	dc.w	L112
 629  0050 009d          	dc.w	L112
 630  0052 00af          	dc.w	L312
 631  0054 00e3          	dc.w	L352
 632  0056 00e3          	dc.w	L352
 633  0058 00af          	dc.w	L312
 634  005a 00c1          	dc.w	L512
 635  005c 00c1          	dc.w	L512
 636  005e 00c1          	dc.w	L512
 637  0060 00c1          	dc.w	L512
 638  0062 00d3          	dc.w	L712
 639                     ; 220 void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
 639                     ; 221 {
 640                     .text:	section	.text,new
 641  0000               _ITC_SetSoftwarePriority:
 643  0000 89            	pushw	x
 644  0001 89            	pushw	x
 645       00000002      OFST:	set	2
 648                     ; 222   uint8_t Mask = 0;
 650                     ; 223   uint8_t NewPriority = 0;
 652                     ; 226   assert_param(IS_ITC_IRQ_OK((uint8_t)IrqNum));
 654  0002 7b03          	ld	a,(OFST+1,sp)
 655  0004 a119          	cp	a,#25
 656  0006 2506          	jrult	L44
 657  0008 ae00e2        	ldw	x,#226
 658  000b cd00e6        	call	LC002
 659  000e               L44:
 660                     ; 227   assert_param(IS_ITC_PRIORITY_OK(PriorityValue));
 662  000e 7b04          	ld	a,(OFST+2,sp)
 663  0010 a102          	cp	a,#2
 664  0012 2711          	jreq	L45
 665  0014 4a            	dec	a
 666  0015 270e          	jreq	L45
 667  0017 7b04          	ld	a,(OFST+2,sp)
 668  0019 270a          	jreq	L45
 669  001b a103          	cp	a,#3
 670  001d 2706          	jreq	L45
 671  001f ae00e3        	ldw	x,#227
 672  0022 cd00e6        	call	LC002
 673  0025               L45:
 674                     ; 230   assert_param(IS_ITC_INTERRUPTS_DISABLED);
 676  0025 cd0000        	call	_ITC_GetSoftIntStatus
 678  0028 a128          	cp	a,#40
 679  002a 2706          	jreq	L46
 680  002c ae00e6        	ldw	x,#230
 681  002f cd00e6        	call	LC002
 682  0032               L46:
 683                     ; 234   Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
 685  0032 7b03          	ld	a,(OFST+1,sp)
 686  0034 a403          	and	a,#3
 687  0036 48            	sll	a
 688  0037 5f            	clrw	x
 689  0038 97            	ld	xl,a
 690  0039 a603          	ld	a,#3
 691  003b 5d            	tnzw	x
 692  003c 2704          	jreq	L07
 693  003e               L27:
 694  003e 48            	sll	a
 695  003f 5a            	decw	x
 696  0040 26fc          	jrne	L27
 697  0042               L07:
 698  0042 43            	cpl	a
 699  0043 6b01          	ld	(OFST-1,sp),a
 700                     ; 237   NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
 702  0045 7b03          	ld	a,(OFST+1,sp)
 703  0047 a403          	and	a,#3
 704  0049 48            	sll	a
 705  004a 5f            	clrw	x
 706  004b 97            	ld	xl,a
 707  004c 7b04          	ld	a,(OFST+2,sp)
 708  004e 5d            	tnzw	x
 709  004f 2704          	jreq	L47
 710  0051               L67:
 711  0051 48            	sll	a
 712  0052 5a            	decw	x
 713  0053 26fc          	jrne	L67
 714  0055               L47:
 715  0055 6b02          	ld	(OFST+0,sp),a
 716                     ; 239   switch (IrqNum)
 718  0057 7b03          	ld	a,(OFST+1,sp)
 720                     ; 329   default:
 720                     ; 330     break;
 721  0059 a119          	cp	a,#25
 722  005b 2503cc00e3    	jruge	L352
 723  0060 5f            	clrw	x
 724  0061 97            	ld	xl,a
 725  0062 58            	sllw	x
 726  0063 de0032        	ldw	x,(L201,x)
 727  0066 fc            	jp	(x)
 728  0067               L302:
 729                     ; 241   case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
 729                     ; 242   case ITC_IRQ_AWU:
 729                     ; 243   case ITC_IRQ_CLK:
 729                     ; 244   case ITC_IRQ_PORTA:
 729                     ; 245     ITC->ISPR1 &= Mask;
 731  0067 c67f70        	ld	a,32624
 732  006a 1401          	and	a,(OFST-1,sp)
 733  006c c77f70        	ld	32624,a
 734                     ; 246     ITC->ISPR1 |= NewPriority;
 736  006f c67f70        	ld	a,32624
 737  0072 1a02          	or	a,(OFST+0,sp)
 738  0074 c77f70        	ld	32624,a
 739                     ; 247     break;
 741  0077 206a          	jra	L352
 742  0079               L502:
 743                     ; 249   case ITC_IRQ_PORTB:
 743                     ; 250   case ITC_IRQ_PORTC:
 743                     ; 251   case ITC_IRQ_PORTD:
 743                     ; 252   case ITC_IRQ_PORTE:
 743                     ; 253     ITC->ISPR2 &= Mask;
 745  0079 c67f71        	ld	a,32625
 746  007c 1401          	and	a,(OFST-1,sp)
 747  007e c77f71        	ld	32625,a
 748                     ; 254     ITC->ISPR2 |= NewPriority;
 750  0081 c67f71        	ld	a,32625
 751  0084 1a02          	or	a,(OFST+0,sp)
 752  0086 c77f71        	ld	32625,a
 753                     ; 255     break;
 755  0089 2058          	jra	L352
 756  008b               L702:
 757                     ; 264   case ITC_IRQ_SPI:
 757                     ; 265   case ITC_IRQ_TIM1_OVF:
 757                     ; 266     ITC->ISPR3 &= Mask;
 759  008b c67f72        	ld	a,32626
 760  008e 1401          	and	a,(OFST-1,sp)
 761  0090 c77f72        	ld	32626,a
 762                     ; 267     ITC->ISPR3 |= NewPriority;
 764  0093 c67f72        	ld	a,32626
 765  0096 1a02          	or	a,(OFST+0,sp)
 766  0098 c77f72        	ld	32626,a
 767                     ; 268     break;
 769  009b 2046          	jra	L352
 770  009d               L112:
 771                     ; 270   case ITC_IRQ_TIM1_CAPCOM:
 771                     ; 271 #if defined(STM8S903) || defined(STM8AF622x) 
 771                     ; 272   case ITC_IRQ_TIM5_OVFTRI:
 771                     ; 273   case ITC_IRQ_TIM5_CAPCOM:
 771                     ; 274 #else
 771                     ; 275   case ITC_IRQ_TIM2_OVF:
 771                     ; 276   case ITC_IRQ_TIM2_CAPCOM:
 771                     ; 277 #endif /*STM8S903 or STM8AF622x */
 771                     ; 278   case ITC_IRQ_TIM3_OVF:
 771                     ; 279     ITC->ISPR4 &= Mask;
 773  009d c67f73        	ld	a,32627
 774  00a0 1401          	and	a,(OFST-1,sp)
 775  00a2 c77f73        	ld	32627,a
 776                     ; 280     ITC->ISPR4 |= NewPriority;
 778  00a5 c67f73        	ld	a,32627
 779  00a8 1a02          	or	a,(OFST+0,sp)
 780  00aa c77f73        	ld	32627,a
 781                     ; 281     break;
 783  00ad 2034          	jra	L352
 784  00af               L312:
 785                     ; 283   case ITC_IRQ_TIM3_CAPCOM:
 785                     ; 284 #if defined(STM8S208) ||defined(STM8S207) || defined (STM8S007) || defined(STM8S103) || \
 785                     ; 285     defined(STM8S003) ||defined(STM8S903) || defined (STM8AF52Ax) || defined (STM8AF62Ax)
 785                     ; 286   case ITC_IRQ_UART1_TX:
 785                     ; 287   case ITC_IRQ_UART1_RX:
 785                     ; 288 #endif /*STM8S208 or STM8S207 or STM8S007 or STM8S103 or STM8S003 or STM8S903 or STM8AF52Ax or STM8AF62Ax */ 
 785                     ; 289 #if defined(STM8AF622x)
 785                     ; 290   case ITC_IRQ_UART4_TX:
 785                     ; 291   case ITC_IRQ_UART4_RX:
 785                     ; 292 #endif /*STM8AF622x */
 785                     ; 293   case ITC_IRQ_I2C:
 785                     ; 294     ITC->ISPR5 &= Mask;
 787  00af c67f74        	ld	a,32628
 788  00b2 1401          	and	a,(OFST-1,sp)
 789  00b4 c77f74        	ld	32628,a
 790                     ; 295     ITC->ISPR5 |= NewPriority;
 792  00b7 c67f74        	ld	a,32628
 793  00ba 1a02          	or	a,(OFST+0,sp)
 794  00bc c77f74        	ld	32628,a
 795                     ; 296     break;
 797  00bf 2022          	jra	L352
 798  00c1               L512:
 799                     ; 299   case ITC_IRQ_UART2_TX:
 799                     ; 300   case ITC_IRQ_UART2_RX:
 799                     ; 301 #endif /*STM8S105 or STM8AF626x */
 799                     ; 302     
 799                     ; 303 #if defined(STM8S208) || defined(STM8S207) || defined(STM8S007) || defined(STM8AF52Ax) || \
 799                     ; 304     defined(STM8AF62Ax)
 799                     ; 305   case ITC_IRQ_UART3_TX:
 799                     ; 306   case ITC_IRQ_UART3_RX:
 799                     ; 307   case ITC_IRQ_ADC2:
 799                     ; 308 #endif /*STM8S208 or STM8S207 or STM8AF52Ax or STM8AF62Ax */
 799                     ; 309     
 799                     ; 310 #if defined(STM8S105) || defined(STM8S005) || defined(STM8S103) || defined(STM8S003) || \
 799                     ; 311     defined(STM8S903) || defined(STM8AF626x) || defined (STM8AF622x)
 799                     ; 312   case ITC_IRQ_ADC1:
 799                     ; 313 #endif /*STM8S105, STM8S005, STM8S103 or STM8S003 or STM8S903 or STM8AF626x or STM8AF622x */
 799                     ; 314     
 799                     ; 315 #if defined (STM8S903) || defined (STM8AF622x)
 799                     ; 316   case ITC_IRQ_TIM6_OVFTRI:
 799                     ; 317 #else
 799                     ; 318   case ITC_IRQ_TIM4_OVF:
 799                     ; 319 #endif /* STM8S903 or STM8AF622x */
 799                     ; 320     ITC->ISPR6 &= Mask;
 801  00c1 c67f75        	ld	a,32629
 802  00c4 1401          	and	a,(OFST-1,sp)
 803  00c6 c77f75        	ld	32629,a
 804                     ; 321     ITC->ISPR6 |= NewPriority;
 806  00c9 c67f75        	ld	a,32629
 807  00cc 1a02          	or	a,(OFST+0,sp)
 808  00ce c77f75        	ld	32629,a
 809                     ; 322     break;
 811  00d1 2010          	jra	L352
 812  00d3               L712:
 813                     ; 324   case ITC_IRQ_EEPROM_EEC:
 813                     ; 325     ITC->ISPR7 &= Mask;
 815  00d3 c67f76        	ld	a,32630
 816  00d6 1401          	and	a,(OFST-1,sp)
 817  00d8 c77f76        	ld	32630,a
 818                     ; 326     ITC->ISPR7 |= NewPriority;
 820  00db c67f76        	ld	a,32630
 821  00de 1a02          	or	a,(OFST+0,sp)
 822  00e0 c77f76        	ld	32630,a
 823                     ; 327     break;
 825                     ; 329   default:
 825                     ; 330     break;
 827  00e3               L352:
 828                     ; 332 }
 831  00e3 5b04          	addw	sp,#4
 832  00e5 81            	ret	
 834  00e6               LC002:
 835  00e6 89            	pushw	x
 836  00e7 5f            	clrw	x
 837  00e8 89            	pushw	x
 838  00e9 ae0064        	ldw	x,#L571
 839  00ec cd0000        	call	_assert_failed
 841  00ef 5b04          	addw	sp,#4
 842  00f1 81            	ret	
 854                     	xdef	_ITC_GetSoftwarePriority
 855                     	xdef	_ITC_SetSoftwarePriority
 856                     	xdef	_ITC_GetSoftIntStatus
 857                     	xdef	_ITC_DeInit
 858                     	xdef	_ITC_GetCPUCC
 859                     	xref	_assert_failed
 860                     	switch	.const
 861  0064               L571:
 862  0064 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 863  0076 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 864  0088 685f64726976  	dc.b	"h_driver\src\stm8s"
 865  009a 5f6974632e63  	dc.b	"_itc.c",0
 885                     	end
