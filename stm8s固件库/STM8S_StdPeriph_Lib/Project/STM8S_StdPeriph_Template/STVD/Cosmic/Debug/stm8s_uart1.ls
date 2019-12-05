   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 53 void UART1_DeInit(void)
  33                     ; 54 {
  35                     .text:	section	.text,new
  36  0000               _UART1_DeInit:
  40                     ; 57   (void)UART1->SR;
  42  0000 c65230        	ld	a,21040
  43                     ; 58   (void)UART1->DR;
  45  0003 c65231        	ld	a,21041
  46                     ; 60   UART1->BRR2 = UART1_BRR2_RESET_VALUE;  /* Set UART1_BRR2 to reset value 0x00 */
  48  0006 725f5233      	clr	21043
  49                     ; 61   UART1->BRR1 = UART1_BRR1_RESET_VALUE;  /* Set UART1_BRR1 to reset value 0x00 */
  51  000a 725f5232      	clr	21042
  52                     ; 63   UART1->CR1 = UART1_CR1_RESET_VALUE;  /* Set UART1_CR1 to reset value 0x00 */
  54  000e 725f5234      	clr	21044
  55                     ; 64   UART1->CR2 = UART1_CR2_RESET_VALUE;  /* Set UART1_CR2 to reset value 0x00 */
  57  0012 725f5235      	clr	21045
  58                     ; 65   UART1->CR3 = UART1_CR3_RESET_VALUE;  /* Set UART1_CR3 to reset value 0x00 */
  60  0016 725f5236      	clr	21046
  61                     ; 66   UART1->CR4 = UART1_CR4_RESET_VALUE;  /* Set UART1_CR4 to reset value 0x00 */
  63  001a 725f5237      	clr	21047
  64                     ; 67   UART1->CR5 = UART1_CR5_RESET_VALUE;  /* Set UART1_CR5 to reset value 0x00 */
  66  001e 725f5238      	clr	21048
  67                     ; 69   UART1->GTR = UART1_GTR_RESET_VALUE;
  69  0022 725f5239      	clr	21049
  70                     ; 70   UART1->PSCR = UART1_PSCR_RESET_VALUE;
  72  0026 725f523a      	clr	21050
  73                     ; 71 }
  76  002a 81            	ret	
 374                     .const:	section	.text
 375  0000               L21:
 376  0000 00098969      	dc.l	625001
 377  0004               L27:
 378  0004 00000064      	dc.l	100
 379                     ; 90 void UART1_Init(uint32_t BaudRate, UART1_WordLength_TypeDef WordLength, 
 379                     ; 91                 UART1_StopBits_TypeDef StopBits, UART1_Parity_TypeDef Parity, 
 379                     ; 92                 UART1_SyncMode_TypeDef SyncMode, UART1_Mode_TypeDef Mode)
 379                     ; 93 {
 380                     .text:	section	.text,new
 381  0000               _UART1_Init:
 383  0000 520c          	subw	sp,#12
 384       0000000c      OFST:	set	12
 387                     ; 94   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 389  0002 96            	ldw	x,sp
 390  0003 1c0009        	addw	x,#OFST-3
 391  0006 cd0000        	call	c_ltor
 395  0009 96            	ldw	x,sp
 396  000a 1c0005        	addw	x,#OFST-7
 397  000d cd0000        	call	c_ltor
 399                     ; 97   assert_param(IS_UART1_BAUDRATE_OK(BaudRate));
 401  0010 96            	ldw	x,sp
 402  0011 1c000f        	addw	x,#OFST+3
 403  0014 cd0000        	call	c_ltor
 405  0017 ae0000        	ldw	x,#L21
 406  001a cd0000        	call	c_lcmp
 408  001d 2506          	jrult	L41
 409  001f ae0061        	ldw	x,#97
 410  0022 cd01c3        	call	LC001
 411  0025               L41:
 412                     ; 98   assert_param(IS_UART1_WORDLENGTH_OK(WordLength));
 414  0025 7b13          	ld	a,(OFST+7,sp)
 415  0027 270a          	jreq	L42
 416  0029 a110          	cp	a,#16
 417  002b 2706          	jreq	L42
 418  002d ae0062        	ldw	x,#98
 419  0030 cd01c3        	call	LC001
 420  0033               L42:
 421                     ; 99   assert_param(IS_UART1_STOPBITS_OK(StopBits));
 423  0033 7b14          	ld	a,(OFST+8,sp)
 424  0035 2712          	jreq	L43
 425  0037 a110          	cp	a,#16
 426  0039 270e          	jreq	L43
 427  003b a120          	cp	a,#32
 428  003d 270a          	jreq	L43
 429  003f a130          	cp	a,#48
 430  0041 2706          	jreq	L43
 431  0043 ae0063        	ldw	x,#99
 432  0046 cd01c3        	call	LC001
 433  0049               L43:
 434                     ; 100   assert_param(IS_UART1_PARITY_OK(Parity));
 436  0049 7b15          	ld	a,(OFST+9,sp)
 437  004b 270e          	jreq	L44
 438  004d a104          	cp	a,#4
 439  004f 270a          	jreq	L44
 440  0051 a106          	cp	a,#6
 441  0053 2706          	jreq	L44
 442  0055 ae0064        	ldw	x,#100
 443  0058 cd01c3        	call	LC001
 444  005b               L44:
 445                     ; 101   assert_param(IS_UART1_MODE_OK((uint8_t)Mode));
 447  005b 7b17          	ld	a,(OFST+11,sp)
 448  005d a108          	cp	a,#8
 449  005f 2722          	jreq	L45
 450  0061 a140          	cp	a,#64
 451  0063 271e          	jreq	L45
 452  0065 a104          	cp	a,#4
 453  0067 271a          	jreq	L45
 454  0069 a180          	cp	a,#128
 455  006b 2716          	jreq	L45
 456  006d a10c          	cp	a,#12
 457  006f 2712          	jreq	L45
 458  0071 a144          	cp	a,#68
 459  0073 270e          	jreq	L45
 460  0075 a1c0          	cp	a,#192
 461  0077 270a          	jreq	L45
 462  0079 a188          	cp	a,#136
 463  007b 2706          	jreq	L45
 464  007d ae0065        	ldw	x,#101
 465  0080 cd01c3        	call	LC001
 466  0083               L45:
 467                     ; 102   assert_param(IS_UART1_SYNCMODE_OK((uint8_t)SyncMode));
 469  0083 7b16          	ld	a,(OFST+10,sp)
 470  0085 a488          	and	a,#136
 471  0087 a188          	cp	a,#136
 472  0089 2718          	jreq	L06
 473  008b 7b16          	ld	a,(OFST+10,sp)
 474  008d a444          	and	a,#68
 475  008f a144          	cp	a,#68
 476  0091 2710          	jreq	L06
 477  0093 7b16          	ld	a,(OFST+10,sp)
 478  0095 a422          	and	a,#34
 479  0097 a122          	cp	a,#34
 480  0099 2708          	jreq	L06
 481  009b 7b16          	ld	a,(OFST+10,sp)
 482  009d a411          	and	a,#17
 483  009f a111          	cp	a,#17
 484  00a1 2606          	jrne	L26
 485  00a3               L06:
 486  00a3 ae0066        	ldw	x,#102
 487  00a6 cd01c3        	call	LC001
 488  00a9               L26:
 489                     ; 105   UART1->CR1 &= (uint8_t)(~UART1_CR1_M);  
 491  00a9 72195234      	bres	21044,#4
 492                     ; 108   UART1->CR1 |= (uint8_t)WordLength;
 494  00ad c65234        	ld	a,21044
 495  00b0 1a13          	or	a,(OFST+7,sp)
 496  00b2 c75234        	ld	21044,a
 497                     ; 111   UART1->CR3 &= (uint8_t)(~UART1_CR3_STOP);  
 499  00b5 c65236        	ld	a,21046
 500  00b8 a4cf          	and	a,#207
 501  00ba c75236        	ld	21046,a
 502                     ; 113   UART1->CR3 |= (uint8_t)StopBits;  
 504  00bd c65236        	ld	a,21046
 505  00c0 1a14          	or	a,(OFST+8,sp)
 506  00c2 c75236        	ld	21046,a
 507                     ; 116   UART1->CR1 &= (uint8_t)(~(UART1_CR1_PCEN | UART1_CR1_PS  ));  
 509  00c5 c65234        	ld	a,21044
 510  00c8 a4f9          	and	a,#249
 511  00ca c75234        	ld	21044,a
 512                     ; 118   UART1->CR1 |= (uint8_t)Parity;  
 514  00cd c65234        	ld	a,21044
 515  00d0 1a15          	or	a,(OFST+9,sp)
 516  00d2 c75234        	ld	21044,a
 517                     ; 121   UART1->BRR1 &= (uint8_t)(~UART1_BRR1_DIVM);  
 519  00d5 725f5232      	clr	21042
 520                     ; 123   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVM);  
 522  00d9 c65233        	ld	a,21043
 523  00dc a40f          	and	a,#15
 524  00de c75233        	ld	21043,a
 525                     ; 125   UART1->BRR2 &= (uint8_t)(~UART1_BRR2_DIVF);  
 527  00e1 c65233        	ld	a,21043
 528  00e4 a4f0          	and	a,#240
 529  00e6 c75233        	ld	21043,a
 530                     ; 128   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 532  00e9 96            	ldw	x,sp
 533  00ea cd01cf        	call	LC002
 535  00ed 96            	ldw	x,sp
 536  00ee 5c            	incw	x
 537  00ef cd0000        	call	c_rtol
 539  00f2 cd0000        	call	_CLK_GetClockFreq
 541  00f5 96            	ldw	x,sp
 542  00f6 5c            	incw	x
 543  00f7 cd0000        	call	c_ludv
 545  00fa 96            	ldw	x,sp
 546  00fb 1c0009        	addw	x,#OFST-3
 547  00fe cd0000        	call	c_rtol
 549                     ; 129   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 551  0101 96            	ldw	x,sp
 552  0102 cd01cf        	call	LC002
 554  0105 96            	ldw	x,sp
 555  0106 5c            	incw	x
 556  0107 cd0000        	call	c_rtol
 558  010a cd0000        	call	_CLK_GetClockFreq
 560  010d a664          	ld	a,#100
 561  010f cd0000        	call	c_smul
 563  0112 96            	ldw	x,sp
 564  0113 5c            	incw	x
 565  0114 cd0000        	call	c_ludv
 567  0117 96            	ldw	x,sp
 568  0118 1c0005        	addw	x,#OFST-7
 569  011b cd0000        	call	c_rtol
 571                     ; 131   UART1->BRR2 |= (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100)) << 4) / 100) & (uint8_t)0x0F); 
 573  011e 96            	ldw	x,sp
 574  011f 1c0009        	addw	x,#OFST-3
 575  0122 cd0000        	call	c_ltor
 577  0125 a664          	ld	a,#100
 578  0127 cd0000        	call	c_smul
 580  012a 96            	ldw	x,sp
 581  012b 5c            	incw	x
 582  012c cd0000        	call	c_rtol
 584  012f 96            	ldw	x,sp
 585  0130 1c0005        	addw	x,#OFST-7
 586  0133 cd0000        	call	c_ltor
 588  0136 96            	ldw	x,sp
 589  0137 5c            	incw	x
 590  0138 cd0000        	call	c_lsub
 592  013b a604          	ld	a,#4
 593  013d cd0000        	call	c_llsh
 595  0140 ae0004        	ldw	x,#L27
 596  0143 cd0000        	call	c_ludv
 598  0146 b603          	ld	a,c_lreg+3
 599  0148 a40f          	and	a,#15
 600  014a ca5233        	or	a,21043
 601  014d c75233        	ld	21043,a
 602                     ; 133   UART1->BRR2 |= (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0); 
 604  0150 96            	ldw	x,sp
 605  0151 1c0009        	addw	x,#OFST-3
 606  0154 cd0000        	call	c_ltor
 608  0157 a604          	ld	a,#4
 609  0159 cd0000        	call	c_lursh
 611  015c b603          	ld	a,c_lreg+3
 612  015e a4f0          	and	a,#240
 613  0160 b703          	ld	c_lreg+3,a
 614  0162 3f02          	clr	c_lreg+2
 615  0164 3f01          	clr	c_lreg+1
 616  0166 3f00          	clr	c_lreg
 617  0168 ca5233        	or	a,21043
 618  016b c75233        	ld	21043,a
 619                     ; 135   UART1->BRR1 |= (uint8_t)BaudRate_Mantissa;           
 621  016e c65232        	ld	a,21042
 622  0171 1a0c          	or	a,(OFST+0,sp)
 623  0173 c75232        	ld	21042,a
 624                     ; 138   UART1->CR2 &= (uint8_t)~(UART1_CR2_TEN | UART1_CR2_REN); 
 626  0176 c65235        	ld	a,21045
 627  0179 a4f3          	and	a,#243
 628  017b c75235        	ld	21045,a
 629                     ; 140   UART1->CR3 &= (uint8_t)~(UART1_CR3_CPOL | UART1_CR3_CPHA | UART1_CR3_LBCL); 
 631  017e c65236        	ld	a,21046
 632  0181 a4f8          	and	a,#248
 633  0183 c75236        	ld	21046,a
 634                     ; 142   UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & (uint8_t)(UART1_CR3_CPOL | 
 634                     ; 143                                                         UART1_CR3_CPHA | UART1_CR3_LBCL));  
 636  0186 7b16          	ld	a,(OFST+10,sp)
 637  0188 a407          	and	a,#7
 638  018a ca5236        	or	a,21046
 639  018d c75236        	ld	21046,a
 640                     ; 145   if ((uint8_t)(Mode & UART1_MODE_TX_ENABLE))
 642  0190 7b17          	ld	a,(OFST+11,sp)
 643  0192 a504          	bcp	a,#4
 644  0194 2706          	jreq	L761
 645                     ; 148     UART1->CR2 |= (uint8_t)UART1_CR2_TEN;  
 647  0196 72165235      	bset	21045,#3
 649  019a 2004          	jra	L171
 650  019c               L761:
 651                     ; 153     UART1->CR2 &= (uint8_t)(~UART1_CR2_TEN);  
 653  019c 72175235      	bres	21045,#3
 654  01a0               L171:
 655                     ; 155   if ((uint8_t)(Mode & UART1_MODE_RX_ENABLE))
 657  01a0 a508          	bcp	a,#8
 658  01a2 2706          	jreq	L371
 659                     ; 158     UART1->CR2 |= (uint8_t)UART1_CR2_REN;  
 661  01a4 72145235      	bset	21045,#2
 663  01a8 2004          	jra	L571
 664  01aa               L371:
 665                     ; 163     UART1->CR2 &= (uint8_t)(~UART1_CR2_REN);  
 667  01aa 72155235      	bres	21045,#2
 668  01ae               L571:
 669                     ; 167   if ((uint8_t)(SyncMode & UART1_SYNCMODE_CLOCK_DISABLE))
 671  01ae 7b16          	ld	a,(OFST+10,sp)
 672  01b0 2a06          	jrpl	L771
 673                     ; 170     UART1->CR3 &= (uint8_t)(~UART1_CR3_CKEN); 
 675  01b2 72175236      	bres	21046,#3
 677  01b6 2008          	jra	L102
 678  01b8               L771:
 679                     ; 174     UART1->CR3 |= (uint8_t)((uint8_t)SyncMode & UART1_CR3_CKEN);
 681  01b8 a408          	and	a,#8
 682  01ba ca5236        	or	a,21046
 683  01bd c75236        	ld	21046,a
 684  01c0               L102:
 685                     ; 176 }
 688  01c0 5b0c          	addw	sp,#12
 689  01c2 81            	ret	
 691  01c3               LC001:
 692  01c3 89            	pushw	x
 693  01c4 5f            	clrw	x
 694  01c5 89            	pushw	x
 695  01c6 ae0008        	ldw	x,#L561
 696  01c9 cd0000        	call	_assert_failed
 698  01cc 5b04          	addw	sp,#4
 699  01ce 81            	ret	
 700  01cf               LC002:
 701  01cf 1c000f        	addw	x,#OFST+3
 702  01d2 cd0000        	call	c_ltor
 704  01d5 a604          	ld	a,#4
 705  01d7 cc0000        	jp	c_llsh
 759                     ; 184 void UART1_Cmd(FunctionalState NewState)
 759                     ; 185 {
 760                     .text:	section	.text,new
 761  0000               _UART1_Cmd:
 765                     ; 186   if (NewState != DISABLE)
 767  0000 4d            	tnz	a
 768  0001 2705          	jreq	L132
 769                     ; 189     UART1->CR1 &= (uint8_t)(~UART1_CR1_UARTD); 
 771  0003 721b5234      	bres	21044,#5
 774  0007 81            	ret	
 775  0008               L132:
 776                     ; 194     UART1->CR1 |= UART1_CR1_UARTD;  
 778  0008 721a5234      	bset	21044,#5
 779                     ; 196 }
 782  000c 81            	ret	
 904                     ; 211 void UART1_ITConfig(UART1_IT_TypeDef UART1_IT, FunctionalState NewState)
 904                     ; 212 {
 905                     .text:	section	.text,new
 906  0000               _UART1_ITConfig:
 908  0000 89            	pushw	x
 909  0001 89            	pushw	x
 910       00000002      OFST:	set	2
 913                     ; 213   uint8_t uartreg = 0, itpos = 0x00;
 917                     ; 216   assert_param(IS_UART1_CONFIG_IT_OK(UART1_IT));
 919  0002 1e03          	ldw	x,(OFST+1,sp)
 920  0004 a30100        	cpw	x,#256
 921  0007 271e          	jreq	L401
 922  0009 a30277        	cpw	x,#631
 923  000c 2719          	jreq	L401
 924  000e a30266        	cpw	x,#614
 925  0011 2714          	jreq	L401
 926  0013 a30205        	cpw	x,#517
 927  0016 270f          	jreq	L401
 928  0018 a30244        	cpw	x,#580
 929  001b 270a          	jreq	L401
 930  001d a30346        	cpw	x,#838
 931  0020 2705          	jreq	L401
 932  0022 ae00d8        	ldw	x,#216
 933  0025 ad70          	call	LC006
 934  0027               L401:
 935                     ; 217   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 937  0027 7b07          	ld	a,(OFST+5,sp)
 938  0029 2708          	jreq	L411
 939  002b 4a            	dec	a
 940  002c 2705          	jreq	L411
 941  002e ae00d9        	ldw	x,#217
 942  0031 ad64          	call	LC006
 943  0033               L411:
 944                     ; 220   uartreg = (uint8_t)((uint16_t)UART1_IT >> 0x08);
 946  0033 7b03          	ld	a,(OFST+1,sp)
 947  0035 6b01          	ld	(OFST-1,sp),a
 948                     ; 222   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
 950  0037 7b04          	ld	a,(OFST+2,sp)
 951  0039 a40f          	and	a,#15
 952  003b 5f            	clrw	x
 953  003c 97            	ld	xl,a
 954  003d a601          	ld	a,#1
 955  003f 5d            	tnzw	x
 956  0040 2704          	jreq	L021
 957  0042               L221:
 958  0042 48            	sll	a
 959  0043 5a            	decw	x
 960  0044 26fc          	jrne	L221
 961  0046               L021:
 962  0046 6b02          	ld	(OFST+0,sp),a
 963                     ; 224   if (NewState != DISABLE)
 965  0048 7b07          	ld	a,(OFST+5,sp)
 966  004a 271f          	jreq	L703
 967                     ; 227     if (uartreg == 0x01)
 969  004c 7b01          	ld	a,(OFST-1,sp)
 970  004e a101          	cp	a,#1
 971  0050 2607          	jrne	L113
 972                     ; 229       UART1->CR1 |= itpos;
 974  0052 c65234        	ld	a,21044
 975  0055 1a02          	or	a,(OFST+0,sp)
 977  0057 201e          	jp	LC004
 978  0059               L113:
 979                     ; 231     else if (uartreg == 0x02)
 981  0059 a102          	cp	a,#2
 982  005b 2607          	jrne	L513
 983                     ; 233       UART1->CR2 |= itpos;
 985  005d c65235        	ld	a,21045
 986  0060 1a02          	or	a,(OFST+0,sp)
 988  0062 2022          	jp	LC005
 989  0064               L513:
 990                     ; 237       UART1->CR4 |= itpos;
 992  0064 c65237        	ld	a,21047
 993  0067 1a02          	or	a,(OFST+0,sp)
 994  0069 2026          	jp	LC003
 995  006b               L703:
 996                     ; 243     if (uartreg == 0x01)
 998  006b 7b01          	ld	a,(OFST-1,sp)
 999  006d a101          	cp	a,#1
1000  006f 260b          	jrne	L323
1001                     ; 245       UART1->CR1 &= (uint8_t)(~itpos);
1003  0071 7b02          	ld	a,(OFST+0,sp)
1004  0073 43            	cpl	a
1005  0074 c45234        	and	a,21044
1006  0077               LC004:
1007  0077 c75234        	ld	21044,a
1009  007a 2018          	jra	L123
1010  007c               L323:
1011                     ; 247     else if (uartreg == 0x02)
1013  007c a102          	cp	a,#2
1014  007e 260b          	jrne	L723
1015                     ; 249       UART1->CR2 &= (uint8_t)(~itpos);
1017  0080 7b02          	ld	a,(OFST+0,sp)
1018  0082 43            	cpl	a
1019  0083 c45235        	and	a,21045
1020  0086               LC005:
1021  0086 c75235        	ld	21045,a
1023  0089 2009          	jra	L123
1024  008b               L723:
1025                     ; 253       UART1->CR4 &= (uint8_t)(~itpos);
1027  008b 7b02          	ld	a,(OFST+0,sp)
1028  008d 43            	cpl	a
1029  008e c45237        	and	a,21047
1030  0091               LC003:
1031  0091 c75237        	ld	21047,a
1032  0094               L123:
1033                     ; 257 }
1036  0094 5b04          	addw	sp,#4
1037  0096 81            	ret	
1039  0097               LC006:
1040  0097 89            	pushw	x
1041  0098 5f            	clrw	x
1042  0099 89            	pushw	x
1043  009a ae0008        	ldw	x,#L561
1044  009d cd0000        	call	_assert_failed
1046  00a0 5b04          	addw	sp,#4
1047  00a2 81            	ret	
1083                     ; 265 void UART1_HalfDuplexCmd(FunctionalState NewState)
1083                     ; 266 {
1084                     .text:	section	.text,new
1085  0000               _UART1_HalfDuplexCmd:
1087  0000 88            	push	a
1088       00000000      OFST:	set	0
1091                     ; 267   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1093  0001 4d            	tnz	a
1094  0002 2711          	jreq	L231
1095  0004 4a            	dec	a
1096  0005 270e          	jreq	L231
1097  0007 ae010b        	ldw	x,#267
1098  000a 89            	pushw	x
1099  000b 5f            	clrw	x
1100  000c 89            	pushw	x
1101  000d ae0008        	ldw	x,#L561
1102  0010 cd0000        	call	_assert_failed
1104  0013 5b04          	addw	sp,#4
1105  0015               L231:
1106                     ; 269   if (NewState != DISABLE)
1108  0015 7b01          	ld	a,(OFST+1,sp)
1109  0017 2706          	jreq	L153
1110                     ; 271     UART1->CR5 |= UART1_CR5_HDSEL;  /**< UART1 Half Duplex Enable  */
1112  0019 72165238      	bset	21048,#3
1114  001d 2004          	jra	L353
1115  001f               L153:
1116                     ; 275     UART1->CR5 &= (uint8_t)~UART1_CR5_HDSEL; /**< UART1 Half Duplex Disable */
1118  001f 72175238      	bres	21048,#3
1119  0023               L353:
1120                     ; 277 }
1123  0023 84            	pop	a
1124  0024 81            	ret	
1182                     ; 285 void UART1_IrDAConfig(UART1_IrDAMode_TypeDef UART1_IrDAMode)
1182                     ; 286 {
1183                     .text:	section	.text,new
1184  0000               _UART1_IrDAConfig:
1186  0000 88            	push	a
1187       00000000      OFST:	set	0
1190                     ; 287   assert_param(IS_UART1_IRDAMODE_OK(UART1_IrDAMode));
1192  0001 a101          	cp	a,#1
1193  0003 2711          	jreq	L441
1194  0005 4d            	tnz	a
1195  0006 270e          	jreq	L441
1196  0008 ae011f        	ldw	x,#287
1197  000b 89            	pushw	x
1198  000c 5f            	clrw	x
1199  000d 89            	pushw	x
1200  000e ae0008        	ldw	x,#L561
1201  0011 cd0000        	call	_assert_failed
1203  0014 5b04          	addw	sp,#4
1204  0016               L441:
1205                     ; 289   if (UART1_IrDAMode != UART1_IRDAMODE_NORMAL)
1207  0016 7b01          	ld	a,(OFST+1,sp)
1208  0018 2706          	jreq	L304
1209                     ; 291     UART1->CR5 |= UART1_CR5_IRLP;
1211  001a 72145238      	bset	21048,#2
1213  001e 2004          	jra	L504
1214  0020               L304:
1215                     ; 295     UART1->CR5 &= ((uint8_t)~UART1_CR5_IRLP);
1217  0020 72155238      	bres	21048,#2
1218  0024               L504:
1219                     ; 297 }
1222  0024 84            	pop	a
1223  0025 81            	ret	
1259                     ; 305 void UART1_IrDACmd(FunctionalState NewState)
1259                     ; 306 {
1260                     .text:	section	.text,new
1261  0000               _UART1_IrDACmd:
1263  0000 88            	push	a
1264       00000000      OFST:	set	0
1267                     ; 308   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1269  0001 4d            	tnz	a
1270  0002 2711          	jreq	L651
1271  0004 4a            	dec	a
1272  0005 270e          	jreq	L651
1273  0007 ae0134        	ldw	x,#308
1274  000a 89            	pushw	x
1275  000b 5f            	clrw	x
1276  000c 89            	pushw	x
1277  000d ae0008        	ldw	x,#L561
1278  0010 cd0000        	call	_assert_failed
1280  0013 5b04          	addw	sp,#4
1281  0015               L651:
1282                     ; 310   if (NewState != DISABLE)
1284  0015 7b01          	ld	a,(OFST+1,sp)
1285  0017 2706          	jreq	L524
1286                     ; 313     UART1->CR5 |= UART1_CR5_IREN;
1288  0019 72125238      	bset	21048,#1
1290  001d 2004          	jra	L724
1291  001f               L524:
1292                     ; 318     UART1->CR5 &= ((uint8_t)~UART1_CR5_IREN);
1294  001f 72135238      	bres	21048,#1
1295  0023               L724:
1296                     ; 320 }
1299  0023 84            	pop	a
1300  0024 81            	ret	
1360                     ; 329 void UART1_LINBreakDetectionConfig(UART1_LINBreakDetectionLength_TypeDef UART1_LINBreakDetectionLength)
1360                     ; 330 {
1361                     .text:	section	.text,new
1362  0000               _UART1_LINBreakDetectionConfig:
1364  0000 88            	push	a
1365       00000000      OFST:	set	0
1368                     ; 331   assert_param(IS_UART1_LINBREAKDETECTIONLENGTH_OK(UART1_LINBreakDetectionLength));
1370  0001 4d            	tnz	a
1371  0002 2711          	jreq	L071
1372  0004 4a            	dec	a
1373  0005 270e          	jreq	L071
1374  0007 ae014b        	ldw	x,#331
1375  000a 89            	pushw	x
1376  000b 5f            	clrw	x
1377  000c 89            	pushw	x
1378  000d ae0008        	ldw	x,#L561
1379  0010 cd0000        	call	_assert_failed
1381  0013 5b04          	addw	sp,#4
1382  0015               L071:
1383                     ; 333   if (UART1_LINBreakDetectionLength != UART1_LINBREAKDETECTIONLENGTH_10BITS)
1385  0015 7b01          	ld	a,(OFST+1,sp)
1386  0017 2706          	jreq	L754
1387                     ; 335     UART1->CR4 |= UART1_CR4_LBDL;
1389  0019 721a5237      	bset	21047,#5
1391  001d 2004          	jra	L164
1392  001f               L754:
1393                     ; 339     UART1->CR4 &= ((uint8_t)~UART1_CR4_LBDL);
1395  001f 721b5237      	bres	21047,#5
1396  0023               L164:
1397                     ; 341 }
1400  0023 84            	pop	a
1401  0024 81            	ret	
1437                     ; 349 void UART1_LINCmd(FunctionalState NewState)
1437                     ; 350 {
1438                     .text:	section	.text,new
1439  0000               _UART1_LINCmd:
1441  0000 88            	push	a
1442       00000000      OFST:	set	0
1445                     ; 351   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1447  0001 4d            	tnz	a
1448  0002 2711          	jreq	L202
1449  0004 4a            	dec	a
1450  0005 270e          	jreq	L202
1451  0007 ae015f        	ldw	x,#351
1452  000a 89            	pushw	x
1453  000b 5f            	clrw	x
1454  000c 89            	pushw	x
1455  000d ae0008        	ldw	x,#L561
1456  0010 cd0000        	call	_assert_failed
1458  0013 5b04          	addw	sp,#4
1459  0015               L202:
1460                     ; 353   if (NewState != DISABLE)
1462  0015 7b01          	ld	a,(OFST+1,sp)
1463  0017 2706          	jreq	L105
1464                     ; 356     UART1->CR3 |= UART1_CR3_LINEN;
1466  0019 721c5236      	bset	21046,#6
1468  001d 2004          	jra	L305
1469  001f               L105:
1470                     ; 361     UART1->CR3 &= ((uint8_t)~UART1_CR3_LINEN);
1472  001f 721d5236      	bres	21046,#6
1473  0023               L305:
1474                     ; 363 }
1477  0023 84            	pop	a
1478  0024 81            	ret	
1514                     ; 371 void UART1_SmartCardCmd(FunctionalState NewState)
1514                     ; 372 {
1515                     .text:	section	.text,new
1516  0000               _UART1_SmartCardCmd:
1518  0000 88            	push	a
1519       00000000      OFST:	set	0
1522                     ; 373   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1524  0001 4d            	tnz	a
1525  0002 2711          	jreq	L412
1526  0004 4a            	dec	a
1527  0005 270e          	jreq	L412
1528  0007 ae0175        	ldw	x,#373
1529  000a 89            	pushw	x
1530  000b 5f            	clrw	x
1531  000c 89            	pushw	x
1532  000d ae0008        	ldw	x,#L561
1533  0010 cd0000        	call	_assert_failed
1535  0013 5b04          	addw	sp,#4
1536  0015               L412:
1537                     ; 375   if (NewState != DISABLE)
1539  0015 7b01          	ld	a,(OFST+1,sp)
1540  0017 2706          	jreq	L325
1541                     ; 378     UART1->CR5 |= UART1_CR5_SCEN;
1543  0019 721a5238      	bset	21048,#5
1545  001d 2004          	jra	L525
1546  001f               L325:
1547                     ; 383     UART1->CR5 &= ((uint8_t)(~UART1_CR5_SCEN));
1549  001f 721b5238      	bres	21048,#5
1550  0023               L525:
1551                     ; 385 }
1554  0023 84            	pop	a
1555  0024 81            	ret	
1592                     ; 394 void UART1_SmartCardNACKCmd(FunctionalState NewState)
1592                     ; 395 {
1593                     .text:	section	.text,new
1594  0000               _UART1_SmartCardNACKCmd:
1596  0000 88            	push	a
1597       00000000      OFST:	set	0
1600                     ; 396   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1602  0001 4d            	tnz	a
1603  0002 2711          	jreq	L622
1604  0004 4a            	dec	a
1605  0005 270e          	jreq	L622
1606  0007 ae018c        	ldw	x,#396
1607  000a 89            	pushw	x
1608  000b 5f            	clrw	x
1609  000c 89            	pushw	x
1610  000d ae0008        	ldw	x,#L561
1611  0010 cd0000        	call	_assert_failed
1613  0013 5b04          	addw	sp,#4
1614  0015               L622:
1615                     ; 398   if (NewState != DISABLE)
1617  0015 7b01          	ld	a,(OFST+1,sp)
1618  0017 2706          	jreq	L545
1619                     ; 401     UART1->CR5 |= UART1_CR5_NACK;
1621  0019 72185238      	bset	21048,#4
1623  001d 2004          	jra	L745
1624  001f               L545:
1625                     ; 406     UART1->CR5 &= ((uint8_t)~(UART1_CR5_NACK));
1627  001f 72195238      	bres	21048,#4
1628  0023               L745:
1629                     ; 408 }
1632  0023 84            	pop	a
1633  0024 81            	ret	
1691                     ; 416 void UART1_WakeUpConfig(UART1_WakeUp_TypeDef UART1_WakeUp)
1691                     ; 417 {
1692                     .text:	section	.text,new
1693  0000               _UART1_WakeUpConfig:
1695  0000 88            	push	a
1696       00000000      OFST:	set	0
1699                     ; 418   assert_param(IS_UART1_WAKEUP_OK(UART1_WakeUp));
1701  0001 4d            	tnz	a
1702  0002 2712          	jreq	L042
1703  0004 a108          	cp	a,#8
1704  0006 270e          	jreq	L042
1705  0008 ae01a2        	ldw	x,#418
1706  000b 89            	pushw	x
1707  000c 5f            	clrw	x
1708  000d 89            	pushw	x
1709  000e ae0008        	ldw	x,#L561
1710  0011 cd0000        	call	_assert_failed
1712  0014 5b04          	addw	sp,#4
1713  0016               L042:
1714                     ; 420   UART1->CR1 &= ((uint8_t)~UART1_CR1_WAKE);
1716  0016 72175234      	bres	21044,#3
1717                     ; 421   UART1->CR1 |= (uint8_t)UART1_WakeUp;
1719  001a c65234        	ld	a,21044
1720  001d 1a01          	or	a,(OFST+1,sp)
1721  001f c75234        	ld	21044,a
1722                     ; 422 }
1725  0022 84            	pop	a
1726  0023 81            	ret	
1763                     ; 430 void UART1_ReceiverWakeUpCmd(FunctionalState NewState)
1763                     ; 431 {
1764                     .text:	section	.text,new
1765  0000               _UART1_ReceiverWakeUpCmd:
1767  0000 88            	push	a
1768       00000000      OFST:	set	0
1771                     ; 432   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1773  0001 4d            	tnz	a
1774  0002 2711          	jreq	L252
1775  0004 4a            	dec	a
1776  0005 270e          	jreq	L252
1777  0007 ae01b0        	ldw	x,#432
1778  000a 89            	pushw	x
1779  000b 5f            	clrw	x
1780  000c 89            	pushw	x
1781  000d ae0008        	ldw	x,#L561
1782  0010 cd0000        	call	_assert_failed
1784  0013 5b04          	addw	sp,#4
1785  0015               L252:
1786                     ; 434   if (NewState != DISABLE)
1788  0015 7b01          	ld	a,(OFST+1,sp)
1789  0017 2706          	jreq	L516
1790                     ; 437     UART1->CR2 |= UART1_CR2_RWU;
1792  0019 72125235      	bset	21045,#1
1794  001d 2004          	jra	L716
1795  001f               L516:
1796                     ; 442     UART1->CR2 &= ((uint8_t)~UART1_CR2_RWU);
1798  001f 72135235      	bres	21045,#1
1799  0023               L716:
1800                     ; 444 }
1803  0023 84            	pop	a
1804  0024 81            	ret	
1827                     ; 451 uint8_t UART1_ReceiveData8(void)
1827                     ; 452 {
1828                     .text:	section	.text,new
1829  0000               _UART1_ReceiveData8:
1833                     ; 453   return ((uint8_t)UART1->DR);
1835  0000 c65231        	ld	a,21041
1838  0003 81            	ret	
1870                     ; 461 uint16_t UART1_ReceiveData9(void)
1870                     ; 462 {
1871                     .text:	section	.text,new
1872  0000               _UART1_ReceiveData9:
1874  0000 89            	pushw	x
1875       00000002      OFST:	set	2
1878                     ; 463   uint16_t temp = 0;
1880                     ; 465   temp = (uint16_t)(((uint16_t)( (uint16_t)UART1->CR1 & (uint16_t)UART1_CR1_R8)) << 1);
1882  0001 c65234        	ld	a,21044
1883  0004 a480          	and	a,#128
1884  0006 5f            	clrw	x
1885  0007 02            	rlwa	x,a
1886  0008 58            	sllw	x
1887  0009 1f01          	ldw	(OFST-1,sp),x
1888                     ; 466   return (uint16_t)( (((uint16_t) UART1->DR) | temp ) & ((uint16_t)0x01FF));
1890  000b c65231        	ld	a,21041
1891  000e 5f            	clrw	x
1892  000f 97            	ld	xl,a
1893  0010 01            	rrwa	x,a
1894  0011 1a02          	or	a,(OFST+0,sp)
1895  0013 01            	rrwa	x,a
1896  0014 1a01          	or	a,(OFST-1,sp)
1897  0016 a401          	and	a,#1
1898  0018 01            	rrwa	x,a
1901  0019 5b02          	addw	sp,#2
1902  001b 81            	ret	
1934                     ; 474 void UART1_SendData8(uint8_t Data)
1934                     ; 475 {
1935                     .text:	section	.text,new
1936  0000               _UART1_SendData8:
1940                     ; 477   UART1->DR = Data;
1942  0000 c75231        	ld	21041,a
1943                     ; 478 }
1946  0003 81            	ret	
1978                     ; 486 void UART1_SendData9(uint16_t Data)
1978                     ; 487 {
1979                     .text:	section	.text,new
1980  0000               _UART1_SendData9:
1982  0000 89            	pushw	x
1983       00000000      OFST:	set	0
1986                     ; 489   UART1->CR1 &= ((uint8_t)~UART1_CR1_T8);
1988  0001 721d5234      	bres	21044,#6
1989                     ; 491   UART1->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART1_CR1_T8);
1991  0005 54            	srlw	x
1992  0006 54            	srlw	x
1993  0007 9f            	ld	a,xl
1994  0008 a440          	and	a,#64
1995  000a ca5234        	or	a,21044
1996  000d c75234        	ld	21044,a
1997                     ; 493   UART1->DR   = (uint8_t)(Data);
1999  0010 7b02          	ld	a,(OFST+2,sp)
2000  0012 c75231        	ld	21041,a
2001                     ; 494 }
2004  0015 85            	popw	x
2005  0016 81            	ret	
2028                     ; 501 void UART1_SendBreak(void)
2028                     ; 502 {
2029                     .text:	section	.text,new
2030  0000               _UART1_SendBreak:
2034                     ; 503   UART1->CR2 |= UART1_CR2_SBK;
2036  0000 72105235      	bset	21045,#0
2037                     ; 504 }
2040  0004 81            	ret	
2073                     ; 511 void UART1_SetAddress(uint8_t UART1_Address)
2073                     ; 512 {
2074                     .text:	section	.text,new
2075  0000               _UART1_SetAddress:
2077  0000 88            	push	a
2078       00000000      OFST:	set	0
2081                     ; 514   assert_param(IS_UART1_ADDRESS_OK(UART1_Address));
2083  0001 a110          	cp	a,#16
2084  0003 250e          	jrult	L472
2085  0005 ae0202        	ldw	x,#514
2086  0008 89            	pushw	x
2087  0009 5f            	clrw	x
2088  000a 89            	pushw	x
2089  000b ae0008        	ldw	x,#L561
2090  000e cd0000        	call	_assert_failed
2092  0011 5b04          	addw	sp,#4
2093  0013               L472:
2094                     ; 517   UART1->CR4 &= ((uint8_t)~UART1_CR4_ADD);
2096  0013 c65237        	ld	a,21047
2097  0016 a4f0          	and	a,#240
2098  0018 c75237        	ld	21047,a
2099                     ; 519   UART1->CR4 |= UART1_Address;
2101  001b c65237        	ld	a,21047
2102  001e 1a01          	or	a,(OFST+1,sp)
2103  0020 c75237        	ld	21047,a
2104                     ; 520 }
2107  0023 84            	pop	a
2108  0024 81            	ret	
2140                     ; 528 void UART1_SetGuardTime(uint8_t UART1_GuardTime)
2140                     ; 529 {
2141                     .text:	section	.text,new
2142  0000               _UART1_SetGuardTime:
2146                     ; 531   UART1->GTR = UART1_GuardTime;
2148  0000 c75239        	ld	21049,a
2149                     ; 532 }
2152  0003 81            	ret	
2184                     ; 556 void UART1_SetPrescaler(uint8_t UART1_Prescaler)
2184                     ; 557 {
2185                     .text:	section	.text,new
2186  0000               _UART1_SetPrescaler:
2190                     ; 559   UART1->PSCR = UART1_Prescaler;
2192  0000 c7523a        	ld	21050,a
2193                     ; 560 }
2196  0003 81            	ret	
2340                     ; 568 FlagStatus UART1_GetFlagStatus(UART1_Flag_TypeDef UART1_FLAG)
2340                     ; 569 {
2341                     .text:	section	.text,new
2342  0000               _UART1_GetFlagStatus:
2344  0000 89            	pushw	x
2345  0001 88            	push	a
2346       00000001      OFST:	set	1
2349                     ; 570   FlagStatus status = RESET;
2351  0002 0f01          	clr	(OFST+0,sp)
2352                     ; 573   assert_param(IS_UART1_FLAG_OK(UART1_FLAG));
2354  0004 a30080        	cpw	x,#128
2355  0007 273b          	jreq	L213
2356  0009 a30040        	cpw	x,#64
2357  000c 2736          	jreq	L213
2358  000e a30020        	cpw	x,#32
2359  0011 2731          	jreq	L213
2360  0013 a30010        	cpw	x,#16
2361  0016 272c          	jreq	L213
2362  0018 a30008        	cpw	x,#8
2363  001b 2727          	jreq	L213
2364  001d a30004        	cpw	x,#4
2365  0020 2722          	jreq	L213
2366  0022 a30002        	cpw	x,#2
2367  0025 271d          	jreq	L213
2368  0027 a30001        	cpw	x,#1
2369  002a 2718          	jreq	L213
2370  002c a30101        	cpw	x,#257
2371  002f 2713          	jreq	L213
2372  0031 a30210        	cpw	x,#528
2373  0034 270e          	jreq	L213
2374  0036 ae023d        	ldw	x,#573
2375  0039 89            	pushw	x
2376  003a 5f            	clrw	x
2377  003b 89            	pushw	x
2378  003c ae0008        	ldw	x,#L561
2379  003f cd0000        	call	_assert_failed
2381  0042 5b04          	addw	sp,#4
2382  0044               L213:
2383                     ; 577   if (UART1_FLAG == UART1_FLAG_LBDF)
2385  0044 1e02          	ldw	x,(OFST+1,sp)
2386  0046 a30210        	cpw	x,#528
2387  0049 2605          	jrne	L3301
2388                     ; 579     if ((UART1->CR4 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2390  004b c65237        	ld	a,21047
2391                     ; 582       status = SET;
2393  004e 2008          	jp	LC009
2394                     ; 587       status = RESET;
2395  0050               L3301:
2396                     ; 590   else if (UART1_FLAG == UART1_FLAG_SBK)
2398  0050 a30101        	cpw	x,#257
2399  0053 260b          	jrne	L3401
2400                     ; 592     if ((UART1->CR2 & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2402  0055 c65235        	ld	a,21045
2403  0058               LC009:
2404  0058 1503          	bcp	a,(OFST+2,sp)
2405  005a 270b          	jreq	L3501
2406                     ; 595       status = SET;
2408  005c               LC008:
2411  005c a601          	ld	a,#1
2413  005e 2008          	jra	L1401
2414                     ; 600       status = RESET;
2415  0060               L3401:
2416                     ; 605     if ((UART1->SR & (uint8_t)UART1_FLAG) != (uint8_t)0x00)
2418  0060 c65230        	ld	a,21040
2419  0063 1503          	bcp	a,(OFST+2,sp)
2420                     ; 608       status = SET;
2422  0065 26f5          	jrne	LC008
2423  0067               L3501:
2424                     ; 613       status = RESET;
2428  0067 4f            	clr	a
2429  0068               L1401:
2430                     ; 617   return status;
2434  0068 5b03          	addw	sp,#3
2435  006a 81            	ret	
2471                     ; 646 void UART1_ClearFlag(UART1_Flag_TypeDef UART1_FLAG)
2471                     ; 647 {
2472                     .text:	section	.text,new
2473  0000               _UART1_ClearFlag:
2475  0000 89            	pushw	x
2476       00000000      OFST:	set	0
2479                     ; 648   assert_param(IS_UART1_CLEAR_FLAG_OK(UART1_FLAG));
2481  0001 a30020        	cpw	x,#32
2482  0004 2713          	jreq	L423
2483  0006 a30210        	cpw	x,#528
2484  0009 270e          	jreq	L423
2485  000b ae0288        	ldw	x,#648
2486  000e 89            	pushw	x
2487  000f 5f            	clrw	x
2488  0010 89            	pushw	x
2489  0011 ae0008        	ldw	x,#L561
2490  0014 cd0000        	call	_assert_failed
2492  0017 5b04          	addw	sp,#4
2493  0019               L423:
2494                     ; 651   if (UART1_FLAG == UART1_FLAG_RXNE)
2496  0019 1e01          	ldw	x,(OFST+1,sp)
2497  001b a30020        	cpw	x,#32
2498  001e 2606          	jrne	L5701
2499                     ; 653     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2501  0020 35df5230      	mov	21040,#223
2503  0024 2004          	jra	L7701
2504  0026               L5701:
2505                     ; 658     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2507  0026 72195237      	bres	21047,#4
2508  002a               L7701:
2509                     ; 660 }
2512  002a 85            	popw	x
2513  002b 81            	ret	
2588                     ; 675 ITStatus UART1_GetITStatus(UART1_IT_TypeDef UART1_IT)
2588                     ; 676 {
2589                     .text:	section	.text,new
2590  0000               _UART1_GetITStatus:
2592  0000 89            	pushw	x
2593  0001 89            	pushw	x
2594       00000002      OFST:	set	2
2597                     ; 677   ITStatus pendingbitstatus = RESET;
2599                     ; 678   uint8_t itpos = 0;
2601                     ; 679   uint8_t itmask1 = 0;
2603                     ; 680   uint8_t itmask2 = 0;
2605                     ; 681   uint8_t enablestatus = 0;
2607                     ; 684   assert_param(IS_UART1_GET_IT_OK(UART1_IT));
2609  0002 1e03          	ldw	x,(OFST+1,sp)
2610  0004 a30277        	cpw	x,#631
2611  0007 272c          	jreq	L633
2612  0009 a30266        	cpw	x,#614
2613  000c 2727          	jreq	L633
2614  000e a30255        	cpw	x,#597
2615  0011 2722          	jreq	L633
2616  0013 a30244        	cpw	x,#580
2617  0016 271d          	jreq	L633
2618  0018 a30235        	cpw	x,#565
2619  001b 2718          	jreq	L633
2620  001d a30346        	cpw	x,#838
2621  0020 2713          	jreq	L633
2622  0022 a30100        	cpw	x,#256
2623  0025 270e          	jreq	L633
2624  0027 ae02ac        	ldw	x,#684
2625  002a 89            	pushw	x
2626  002b 5f            	clrw	x
2627  002c 89            	pushw	x
2628  002d ae0008        	ldw	x,#L561
2629  0030 cd0000        	call	_assert_failed
2631  0033 5b04          	addw	sp,#4
2632  0035               L633:
2633                     ; 687   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART1_IT & (uint8_t)0x0F));
2635  0035 7b04          	ld	a,(OFST+2,sp)
2636  0037 a40f          	and	a,#15
2637  0039 5f            	clrw	x
2638  003a 97            	ld	xl,a
2639  003b a601          	ld	a,#1
2640  003d 5d            	tnzw	x
2641  003e 2704          	jreq	L243
2642  0040               L443:
2643  0040 48            	sll	a
2644  0041 5a            	decw	x
2645  0042 26fc          	jrne	L443
2646  0044               L243:
2647  0044 6b01          	ld	(OFST-1,sp),a
2648                     ; 689   itmask1 = (uint8_t)((uint8_t)UART1_IT >> (uint8_t)4);
2650  0046 7b04          	ld	a,(OFST+2,sp)
2651  0048 4e            	swap	a
2652  0049 a40f          	and	a,#15
2653  004b 6b02          	ld	(OFST+0,sp),a
2654                     ; 691   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2656  004d 5f            	clrw	x
2657  004e 97            	ld	xl,a
2658  004f a601          	ld	a,#1
2659  0051 5d            	tnzw	x
2660  0052 2704          	jreq	L643
2661  0054               L053:
2662  0054 48            	sll	a
2663  0055 5a            	decw	x
2664  0056 26fc          	jrne	L053
2665  0058               L643:
2666  0058 6b02          	ld	(OFST+0,sp),a
2667                     ; 695   if (UART1_IT == UART1_IT_PE)
2669  005a 1e03          	ldw	x,(OFST+1,sp)
2670  005c a30100        	cpw	x,#256
2671  005f 260c          	jrne	L3311
2672                     ; 698     enablestatus = (uint8_t)((uint8_t)UART1->CR1 & itmask2);
2674  0061 c65234        	ld	a,21044
2675  0064 1402          	and	a,(OFST+0,sp)
2676  0066 6b02          	ld	(OFST+0,sp),a
2677                     ; 701     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2679  0068 c65230        	ld	a,21040
2681                     ; 704       pendingbitstatus = SET;
2683  006b 200f          	jp	LC012
2684                     ; 709       pendingbitstatus = RESET;
2685  006d               L3311:
2686                     ; 713   else if (UART1_IT == UART1_IT_LBDF)
2688  006d a30346        	cpw	x,#838
2689  0070 2616          	jrne	L3411
2690                     ; 716     enablestatus = (uint8_t)((uint8_t)UART1->CR4 & itmask2);
2692  0072 c65237        	ld	a,21047
2693  0075 1402          	and	a,(OFST+0,sp)
2694  0077 6b02          	ld	(OFST+0,sp),a
2695                     ; 718     if (((UART1->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2697  0079 c65237        	ld	a,21047
2699  007c               LC012:
2700  007c 1501          	bcp	a,(OFST-1,sp)
2701  007e 271a          	jreq	L3511
2702  0080 7b02          	ld	a,(OFST+0,sp)
2703  0082 2716          	jreq	L3511
2704                     ; 721       pendingbitstatus = SET;
2706  0084               LC011:
2709  0084 a601          	ld	a,#1
2711  0086 2013          	jra	L1411
2712                     ; 726       pendingbitstatus = RESET;
2713  0088               L3411:
2714                     ; 732     enablestatus = (uint8_t)((uint8_t)UART1->CR2 & itmask2);
2716  0088 c65235        	ld	a,21045
2717  008b 1402          	and	a,(OFST+0,sp)
2718  008d 6b02          	ld	(OFST+0,sp),a
2719                     ; 734     if (((UART1->SR & itpos) != (uint8_t)0x00) && enablestatus)
2721  008f c65230        	ld	a,21040
2722  0092 1501          	bcp	a,(OFST-1,sp)
2723  0094 2704          	jreq	L3511
2725  0096 7b02          	ld	a,(OFST+0,sp)
2726                     ; 737       pendingbitstatus = SET;
2728  0098 26ea          	jrne	LC011
2729  009a               L3511:
2730                     ; 742       pendingbitstatus = RESET;
2734  009a 4f            	clr	a
2735  009b               L1411:
2736                     ; 747   return  pendingbitstatus;
2740  009b 5b04          	addw	sp,#4
2741  009d 81            	ret	
2778                     ; 775 void UART1_ClearITPendingBit(UART1_IT_TypeDef UART1_IT)
2778                     ; 776 {
2779                     .text:	section	.text,new
2780  0000               _UART1_ClearITPendingBit:
2782  0000 89            	pushw	x
2783       00000000      OFST:	set	0
2786                     ; 777   assert_param(IS_UART1_CLEAR_IT_OK(UART1_IT));
2788  0001 a30255        	cpw	x,#597
2789  0004 2713          	jreq	L063
2790  0006 a30346        	cpw	x,#838
2791  0009 270e          	jreq	L063
2792  000b ae0309        	ldw	x,#777
2793  000e 89            	pushw	x
2794  000f 5f            	clrw	x
2795  0010 89            	pushw	x
2796  0011 ae0008        	ldw	x,#L561
2797  0014 cd0000        	call	_assert_failed
2799  0017 5b04          	addw	sp,#4
2800  0019               L063:
2801                     ; 780   if (UART1_IT == UART1_IT_RXNE)
2803  0019 1e01          	ldw	x,(OFST+1,sp)
2804  001b a30255        	cpw	x,#597
2805  001e 2606          	jrne	L5711
2806                     ; 782     UART1->SR = (uint8_t)~(UART1_SR_RXNE);
2808  0020 35df5230      	mov	21040,#223
2810  0024 2004          	jra	L7711
2811  0026               L5711:
2812                     ; 787     UART1->CR4 &= (uint8_t)~(UART1_CR4_LBDF);
2814  0026 72195237      	bres	21047,#4
2815  002a               L7711:
2816                     ; 789 }
2819  002a 85            	popw	x
2820  002b 81            	ret	
2833                     	xdef	_UART1_ClearITPendingBit
2834                     	xdef	_UART1_GetITStatus
2835                     	xdef	_UART1_ClearFlag
2836                     	xdef	_UART1_GetFlagStatus
2837                     	xdef	_UART1_SetPrescaler
2838                     	xdef	_UART1_SetGuardTime
2839                     	xdef	_UART1_SetAddress
2840                     	xdef	_UART1_SendBreak
2841                     	xdef	_UART1_SendData9
2842                     	xdef	_UART1_SendData8
2843                     	xdef	_UART1_ReceiveData9
2844                     	xdef	_UART1_ReceiveData8
2845                     	xdef	_UART1_ReceiverWakeUpCmd
2846                     	xdef	_UART1_WakeUpConfig
2847                     	xdef	_UART1_SmartCardNACKCmd
2848                     	xdef	_UART1_SmartCardCmd
2849                     	xdef	_UART1_LINCmd
2850                     	xdef	_UART1_LINBreakDetectionConfig
2851                     	xdef	_UART1_IrDACmd
2852                     	xdef	_UART1_IrDAConfig
2853                     	xdef	_UART1_HalfDuplexCmd
2854                     	xdef	_UART1_ITConfig
2855                     	xdef	_UART1_Cmd
2856                     	xdef	_UART1_Init
2857                     	xdef	_UART1_DeInit
2858                     	xref	_assert_failed
2859                     	xref	_CLK_GetClockFreq
2860                     	switch	.const
2861  0008               L561:
2862  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2863  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2864  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2865  003e 5f7561727431  	dc.b	"_uart1.c",0
2866                     	xref.b	c_lreg
2886                     	xref	c_lursh
2887                     	xref	c_lsub
2888                     	xref	c_smul
2889                     	xref	c_ludv
2890                     	xref	c_rtol
2891                     	xref	c_llsh
2892                     	xref	c_lcmp
2893                     	xref	c_ltor
2894                     	end
