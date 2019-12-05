   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 54 void UART3_DeInit(void)
  33                     ; 55 {
  35                     .text:	section	.text,new
  36  0000               _UART3_DeInit:
  40                     ; 58   (void) UART3->SR;
  42  0000 c65240        	ld	a,21056
  43                     ; 59   (void) UART3->DR;
  45  0003 c65241        	ld	a,21057
  46                     ; 61   UART3->BRR2 = UART3_BRR2_RESET_VALUE; /*Set UART3_BRR2 to reset value 0x00 */
  48  0006 725f5243      	clr	21059
  49                     ; 62   UART3->BRR1 = UART3_BRR1_RESET_VALUE; /*Set UART3_BRR1 to reset value 0x00 */
  51  000a 725f5242      	clr	21058
  52                     ; 64   UART3->CR1 = UART3_CR1_RESET_VALUE;  /*Set UART3_CR1 to reset value 0x00  */
  54  000e 725f5244      	clr	21060
  55                     ; 65   UART3->CR2 = UART3_CR2_RESET_VALUE;  /*Set UART3_CR2 to reset value 0x00  */
  57  0012 725f5245      	clr	21061
  58                     ; 66   UART3->CR3 = UART3_CR3_RESET_VALUE;  /*Set UART3_CR3 to reset value 0x00  */
  60  0016 725f5246      	clr	21062
  61                     ; 67   UART3->CR4 = UART3_CR4_RESET_VALUE;  /*Set UART3_CR4 to reset value 0x00  */
  63  001a 725f5247      	clr	21063
  64                     ; 68   UART3->CR6 = UART3_CR6_RESET_VALUE;  /*Set UART3_CR6 to reset value 0x00  */
  66  001e 725f5249      	clr	21065
  67                     ; 69 }
  70  0022 81            	ret	
 288                     .const:	section	.text
 289  0000               L24:
 290  0000 00098969      	dc.l	625001
 291  0004               L46:
 292  0004 00000064      	dc.l	100
 293                     ; 83 void UART3_Init(uint32_t BaudRate, UART3_WordLength_TypeDef WordLength, 
 293                     ; 84                 UART3_StopBits_TypeDef StopBits, UART3_Parity_TypeDef Parity, 
 293                     ; 85                 UART3_Mode_TypeDef Mode)
 293                     ; 86 {
 294                     .text:	section	.text,new
 295  0000               _UART3_Init:
 297  0000 520e          	subw	sp,#14
 298       0000000e      OFST:	set	14
 301                     ; 87   uint8_t BRR2_1 = 0, BRR2_2 = 0;
 305                     ; 88   uint32_t BaudRate_Mantissa = 0, BaudRate_Mantissa100 = 0;
 307  0002 96            	ldw	x,sp
 308  0003 1c000b        	addw	x,#OFST-3
 309  0006 cd0000        	call	c_ltor
 313  0009 96            	ldw	x,sp
 314  000a 1c0007        	addw	x,#OFST-7
 315  000d cd0000        	call	c_ltor
 317                     ; 91   assert_param(IS_UART3_WORDLENGTH_OK(WordLength));
 319  0010 7b15          	ld	a,(OFST+7,sp)
 320  0012 270a          	jreq	L41
 321  0014 a110          	cp	a,#16
 322  0016 2706          	jreq	L41
 323  0018 ae005b        	ldw	x,#91
 324  001b cd0163        	call	LC001
 325  001e               L41:
 326                     ; 92   assert_param(IS_UART3_STOPBITS_OK(StopBits));
 328  001e 7b16          	ld	a,(OFST+8,sp)
 329  0020 270a          	jreq	L42
 330  0022 a120          	cp	a,#32
 331  0024 2706          	jreq	L42
 332  0026 ae005c        	ldw	x,#92
 333  0029 cd0163        	call	LC001
 334  002c               L42:
 335                     ; 93   assert_param(IS_UART3_PARITY_OK(Parity));
 337  002c 7b17          	ld	a,(OFST+9,sp)
 338  002e 270e          	jreq	L43
 339  0030 a104          	cp	a,#4
 340  0032 270a          	jreq	L43
 341  0034 a106          	cp	a,#6
 342  0036 2706          	jreq	L43
 343  0038 ae005d        	ldw	x,#93
 344  003b cd0163        	call	LC001
 345  003e               L43:
 346                     ; 94   assert_param(IS_UART3_BAUDRATE_OK(BaudRate));
 348  003e 96            	ldw	x,sp
 349  003f 1c0011        	addw	x,#OFST+3
 350  0042 cd0000        	call	c_ltor
 352  0045 ae0000        	ldw	x,#L24
 353  0048 cd0000        	call	c_lcmp
 355  004b 2506          	jrult	L44
 356  004d ae005e        	ldw	x,#94
 357  0050 cd0163        	call	LC001
 358  0053               L44:
 359                     ; 95   assert_param(IS_UART3_MODE_OK((uint8_t)Mode));
 361  0053 7b18          	ld	a,(OFST+10,sp)
 362  0055 a108          	cp	a,#8
 363  0057 2722          	jreq	L45
 364  0059 a140          	cp	a,#64
 365  005b 271e          	jreq	L45
 366  005d a104          	cp	a,#4
 367  005f 271a          	jreq	L45
 368  0061 a180          	cp	a,#128
 369  0063 2716          	jreq	L45
 370  0065 a10c          	cp	a,#12
 371  0067 2712          	jreq	L45
 372  0069 a144          	cp	a,#68
 373  006b 270e          	jreq	L45
 374  006d a1c0          	cp	a,#192
 375  006f 270a          	jreq	L45
 376  0071 a188          	cp	a,#136
 377  0073 2706          	jreq	L45
 378  0075 ae005f        	ldw	x,#95
 379  0078 cd0163        	call	LC001
 380  007b               L45:
 381                     ; 98   UART3->CR1 &= (uint8_t)(~UART3_CR1_M);     
 383  007b 72195244      	bres	21060,#4
 384                     ; 100   UART3->CR1 |= (uint8_t)WordLength; 
 386  007f c65244        	ld	a,21060
 387  0082 1a15          	or	a,(OFST+7,sp)
 388  0084 c75244        	ld	21060,a
 389                     ; 103   UART3->CR3 &= (uint8_t)(~UART3_CR3_STOP);  
 391  0087 c65246        	ld	a,21062
 392  008a a4cf          	and	a,#207
 393  008c c75246        	ld	21062,a
 394                     ; 105   UART3->CR3 |= (uint8_t)StopBits;  
 396  008f c65246        	ld	a,21062
 397  0092 1a16          	or	a,(OFST+8,sp)
 398  0094 c75246        	ld	21062,a
 399                     ; 108   UART3->CR1 &= (uint8_t)(~(UART3_CR1_PCEN | UART3_CR1_PS));  
 401  0097 c65244        	ld	a,21060
 402  009a a4f9          	and	a,#249
 403  009c c75244        	ld	21060,a
 404                     ; 110   UART3->CR1 |= (uint8_t)Parity;     
 406  009f c65244        	ld	a,21060
 407  00a2 1a17          	or	a,(OFST+9,sp)
 408  00a4 c75244        	ld	21060,a
 409                     ; 113   UART3->BRR1 &= (uint8_t)(~UART3_BRR1_DIVM);  
 411  00a7 725f5242      	clr	21058
 412                     ; 115   UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVM);  
 414  00ab c65243        	ld	a,21059
 415  00ae a40f          	and	a,#15
 416  00b0 c75243        	ld	21059,a
 417                     ; 117   UART3->BRR2 &= (uint8_t)(~UART3_BRR2_DIVF);  
 419  00b3 c65243        	ld	a,21059
 420  00b6 a4f0          	and	a,#240
 421  00b8 c75243        	ld	21059,a
 422                     ; 120   BaudRate_Mantissa    = ((uint32_t)CLK_GetClockFreq() / (BaudRate << 4));
 424  00bb 96            	ldw	x,sp
 425  00bc cd016f        	call	LC002
 427  00bf 96            	ldw	x,sp
 428  00c0 5c            	incw	x
 429  00c1 cd0000        	call	c_rtol
 431  00c4 cd0000        	call	_CLK_GetClockFreq
 433  00c7 96            	ldw	x,sp
 434  00c8 5c            	incw	x
 435  00c9 cd0000        	call	c_ludv
 437  00cc 96            	ldw	x,sp
 438  00cd 1c000b        	addw	x,#OFST-3
 439  00d0 cd0000        	call	c_rtol
 441                     ; 121   BaudRate_Mantissa100 = (((uint32_t)CLK_GetClockFreq() * 100) / (BaudRate << 4));
 443  00d3 96            	ldw	x,sp
 444  00d4 cd016f        	call	LC002
 446  00d7 96            	ldw	x,sp
 447  00d8 5c            	incw	x
 448  00d9 cd0000        	call	c_rtol
 450  00dc cd0000        	call	_CLK_GetClockFreq
 452  00df a664          	ld	a,#100
 453  00e1 cd0000        	call	c_smul
 455  00e4 96            	ldw	x,sp
 456  00e5 5c            	incw	x
 457  00e6 cd0000        	call	c_ludv
 459  00e9 96            	ldw	x,sp
 460  00ea 1c0007        	addw	x,#OFST-7
 461  00ed cd0000        	call	c_rtol
 463                     ; 124   BRR2_1 = (uint8_t)((uint8_t)(((BaudRate_Mantissa100 - (BaudRate_Mantissa * 100))
 463                     ; 125                                 << 4) / 100) & (uint8_t)0x0F); 
 465  00f0 96            	ldw	x,sp
 466  00f1 1c000b        	addw	x,#OFST-3
 467  00f4 cd0000        	call	c_ltor
 469  00f7 a664          	ld	a,#100
 470  00f9 cd0000        	call	c_smul
 472  00fc 96            	ldw	x,sp
 473  00fd 5c            	incw	x
 474  00fe cd0000        	call	c_rtol
 476  0101 96            	ldw	x,sp
 477  0102 1c0007        	addw	x,#OFST-7
 478  0105 cd0000        	call	c_ltor
 480  0108 96            	ldw	x,sp
 481  0109 5c            	incw	x
 482  010a cd0000        	call	c_lsub
 484  010d a604          	ld	a,#4
 485  010f cd0000        	call	c_llsh
 487  0112 ae0004        	ldw	x,#L46
 488  0115 cd0000        	call	c_ludv
 490  0118 b603          	ld	a,c_lreg+3
 491  011a a40f          	and	a,#15
 492  011c 6b05          	ld	(OFST-9,sp),a
 493                     ; 126   BRR2_2 = (uint8_t)((BaudRate_Mantissa >> 4) & (uint8_t)0xF0);
 495  011e 96            	ldw	x,sp
 496  011f 1c000b        	addw	x,#OFST-3
 497  0122 cd0000        	call	c_ltor
 499  0125 a604          	ld	a,#4
 500  0127 cd0000        	call	c_lursh
 502  012a b603          	ld	a,c_lreg+3
 503  012c a4f0          	and	a,#240
 504  012e b703          	ld	c_lreg+3,a
 505  0130 3f02          	clr	c_lreg+2
 506  0132 3f01          	clr	c_lreg+1
 507  0134 3f00          	clr	c_lreg
 508  0136 6b06          	ld	(OFST-8,sp),a
 509                     ; 128   UART3->BRR2 = (uint8_t)(BRR2_1 | BRR2_2);
 511  0138 1a05          	or	a,(OFST-9,sp)
 512  013a c75243        	ld	21059,a
 513                     ; 130   UART3->BRR1 = (uint8_t)BaudRate_Mantissa;           
 515  013d 7b0e          	ld	a,(OFST+0,sp)
 516  013f c75242        	ld	21058,a
 517                     ; 132   if ((uint8_t)(Mode & UART3_MODE_TX_ENABLE))
 519  0142 7b18          	ld	a,(OFST+10,sp)
 520  0144 a504          	bcp	a,#4
 521  0146 2706          	jreq	L731
 522                     ; 135     UART3->CR2 |= UART3_CR2_TEN;  
 524  0148 72165245      	bset	21061,#3
 526  014c 2004          	jra	L141
 527  014e               L731:
 528                     ; 140     UART3->CR2 &= (uint8_t)(~UART3_CR2_TEN);  
 530  014e 72175245      	bres	21061,#3
 531  0152               L141:
 532                     ; 142   if ((uint8_t)(Mode & UART3_MODE_RX_ENABLE))
 534  0152 a508          	bcp	a,#8
 535  0154 2706          	jreq	L341
 536                     ; 145     UART3->CR2 |= UART3_CR2_REN;  
 538  0156 72145245      	bset	21061,#2
 540  015a 2004          	jra	L541
 541  015c               L341:
 542                     ; 150     UART3->CR2 &= (uint8_t)(~UART3_CR2_REN);  
 544  015c 72155245      	bres	21061,#2
 545  0160               L541:
 546                     ; 152 }
 549  0160 5b0e          	addw	sp,#14
 550  0162 81            	ret	
 552  0163               LC001:
 553  0163 89            	pushw	x
 554  0164 5f            	clrw	x
 555  0165 89            	pushw	x
 556  0166 ae0008        	ldw	x,#L531
 557  0169 cd0000        	call	_assert_failed
 559  016c 5b04          	addw	sp,#4
 560  016e 81            	ret	
 561  016f               LC002:
 562  016f 1c0011        	addw	x,#OFST+3
 563  0172 cd0000        	call	c_ltor
 565  0175 a604          	ld	a,#4
 566  0177 cc0000        	jp	c_llsh
 620                     ; 160 void UART3_Cmd(FunctionalState NewState)
 620                     ; 161 {
 621                     .text:	section	.text,new
 622  0000               _UART3_Cmd:
 626                     ; 162   if (NewState != DISABLE)
 628  0000 4d            	tnz	a
 629  0001 2705          	jreq	L571
 630                     ; 165     UART3->CR1 &= (uint8_t)(~UART3_CR1_UARTD); 
 632  0003 721b5244      	bres	21060,#5
 635  0007 81            	ret	
 636  0008               L571:
 637                     ; 170     UART3->CR1 |= UART3_CR1_UARTD;  
 639  0008 721a5244      	bset	21060,#5
 640                     ; 172 }
 643  000c 81            	ret	
 772                     ; 189 void UART3_ITConfig(UART3_IT_TypeDef UART3_IT, FunctionalState NewState)
 772                     ; 190 {
 773                     .text:	section	.text,new
 774  0000               _UART3_ITConfig:
 776  0000 89            	pushw	x
 777  0001 89            	pushw	x
 778       00000002      OFST:	set	2
 781                     ; 191   uint8_t uartreg = 0, itpos = 0x00;
 785                     ; 194   assert_param(IS_UART3_CONFIG_IT_OK(UART3_IT));
 787  0002 1e03          	ldw	x,(OFST+1,sp)
 788  0004 a30100        	cpw	x,#256
 789  0007 2724          	jreq	L67
 790  0009 a30277        	cpw	x,#631
 791  000c 271f          	jreq	L67
 792  000e a30266        	cpw	x,#614
 793  0011 271a          	jreq	L67
 794  0013 a30205        	cpw	x,#517
 795  0016 2715          	jreq	L67
 796  0018 a30244        	cpw	x,#580
 797  001b 2710          	jreq	L67
 798  001d a30412        	cpw	x,#1042
 799  0020 270b          	jreq	L67
 800  0022 a30346        	cpw	x,#838
 801  0025 2706          	jreq	L67
 802  0027 ae00c2        	ldw	x,#194
 803  002a cd00b7        	call	LC007
 804  002d               L67:
 805                     ; 195   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 807  002d 7b07          	ld	a,(OFST+5,sp)
 808  002f 2708          	jreq	L601
 809  0031 4a            	dec	a
 810  0032 2705          	jreq	L601
 811  0034 ae00c3        	ldw	x,#195
 812  0037 ad7e          	call	LC007
 813  0039               L601:
 814                     ; 198   uartreg = (uint8_t)((uint16_t)UART3_IT >> 0x08);
 816  0039 7b03          	ld	a,(OFST+1,sp)
 817  003b 6b01          	ld	(OFST-1,sp),a
 818                     ; 201   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
 820  003d 7b04          	ld	a,(OFST+2,sp)
 821  003f a40f          	and	a,#15
 822  0041 5f            	clrw	x
 823  0042 97            	ld	xl,a
 824  0043 a601          	ld	a,#1
 825  0045 5d            	tnzw	x
 826  0046 2704          	jreq	L211
 827  0048               L411:
 828  0048 48            	sll	a
 829  0049 5a            	decw	x
 830  004a 26fc          	jrne	L411
 831  004c               L211:
 832  004c 6b02          	ld	(OFST+0,sp),a
 833                     ; 203   if (NewState != DISABLE)
 835  004e 7b07          	ld	a,(OFST+5,sp)
 836  0050 272a          	jreq	L552
 837                     ; 206     if (uartreg == 0x01)
 839  0052 7b01          	ld	a,(OFST-1,sp)
 840  0054 a101          	cp	a,#1
 841  0056 2607          	jrne	L752
 842                     ; 208       UART3->CR1 |= itpos;
 844  0058 c65244        	ld	a,21060
 845  005b 1a02          	or	a,(OFST+0,sp)
 847  005d 2029          	jp	LC005
 848  005f               L752:
 849                     ; 210     else if (uartreg == 0x02)
 851  005f a102          	cp	a,#2
 852  0061 2607          	jrne	L362
 853                     ; 212       UART3->CR2 |= itpos;
 855  0063 c65245        	ld	a,21061
 856  0066 1a02          	or	a,(OFST+0,sp)
 858  0068 202d          	jp	LC004
 859  006a               L362:
 860                     ; 214     else if (uartreg == 0x03)
 862  006a a103          	cp	a,#3
 863  006c 2607          	jrne	L762
 864                     ; 216       UART3->CR4 |= itpos;
 866  006e c65247        	ld	a,21063
 867  0071 1a02          	or	a,(OFST+0,sp)
 869  0073 2031          	jp	LC006
 870  0075               L762:
 871                     ; 220       UART3->CR6 |= itpos;
 873  0075 c65249        	ld	a,21065
 874  0078 1a02          	or	a,(OFST+0,sp)
 875  007a 2035          	jp	LC003
 876  007c               L552:
 877                     ; 226     if (uartreg == 0x01)
 879  007c 7b01          	ld	a,(OFST-1,sp)
 880  007e a101          	cp	a,#1
 881  0080 260b          	jrne	L572
 882                     ; 228       UART3->CR1 &= (uint8_t)(~itpos);
 884  0082 7b02          	ld	a,(OFST+0,sp)
 885  0084 43            	cpl	a
 886  0085 c45244        	and	a,21060
 887  0088               LC005:
 888  0088 c75244        	ld	21060,a
 890  008b 2027          	jra	L372
 891  008d               L572:
 892                     ; 230     else if (uartreg == 0x02)
 894  008d a102          	cp	a,#2
 895  008f 260b          	jrne	L103
 896                     ; 232       UART3->CR2 &= (uint8_t)(~itpos);
 898  0091 7b02          	ld	a,(OFST+0,sp)
 899  0093 43            	cpl	a
 900  0094 c45245        	and	a,21061
 901  0097               LC004:
 902  0097 c75245        	ld	21061,a
 904  009a 2018          	jra	L372
 905  009c               L103:
 906                     ; 234     else if (uartreg == 0x03)
 908  009c a103          	cp	a,#3
 909  009e 260b          	jrne	L503
 910                     ; 236       UART3->CR4 &= (uint8_t)(~itpos);
 912  00a0 7b02          	ld	a,(OFST+0,sp)
 913  00a2 43            	cpl	a
 914  00a3 c45247        	and	a,21063
 915  00a6               LC006:
 916  00a6 c75247        	ld	21063,a
 918  00a9 2009          	jra	L372
 919  00ab               L503:
 920                     ; 240       UART3->CR6 &= (uint8_t)(~itpos);
 922  00ab 7b02          	ld	a,(OFST+0,sp)
 923  00ad 43            	cpl	a
 924  00ae c45249        	and	a,21065
 925  00b1               LC003:
 926  00b1 c75249        	ld	21065,a
 927  00b4               L372:
 928                     ; 243 }
 931  00b4 5b04          	addw	sp,#4
 932  00b6 81            	ret	
 934  00b7               LC007:
 935  00b7 89            	pushw	x
 936  00b8 5f            	clrw	x
 937  00b9 89            	pushw	x
 938  00ba ae0008        	ldw	x,#L531
 939  00bd cd0000        	call	_assert_failed
 941  00c0 5b04          	addw	sp,#4
 942  00c2 81            	ret	
1001                     ; 252 void UART3_LINBreakDetectionConfig(UART3_LINBreakDetectionLength_TypeDef UART3_LINBreakDetectionLength)
1001                     ; 253 {
1002                     .text:	section	.text,new
1003  0000               _UART3_LINBreakDetectionConfig:
1005  0000 88            	push	a
1006       00000000      OFST:	set	0
1009                     ; 255   assert_param(IS_UART3_LINBREAKDETECTIONLENGTH_OK(UART3_LINBreakDetectionLength));
1011  0001 4d            	tnz	a
1012  0002 2711          	jreq	L421
1013  0004 4a            	dec	a
1014  0005 270e          	jreq	L421
1015  0007 ae00ff        	ldw	x,#255
1016  000a 89            	pushw	x
1017  000b 5f            	clrw	x
1018  000c 89            	pushw	x
1019  000d ae0008        	ldw	x,#L531
1020  0010 cd0000        	call	_assert_failed
1022  0013 5b04          	addw	sp,#4
1023  0015               L421:
1024                     ; 257   if (UART3_LINBreakDetectionLength != UART3_LINBREAKDETECTIONLENGTH_10BITS)
1026  0015 7b01          	ld	a,(OFST+1,sp)
1027  0017 2706          	jreq	L733
1028                     ; 259     UART3->CR4 |= UART3_CR4_LBDL;
1030  0019 721a5247      	bset	21063,#5
1032  001d 2004          	jra	L143
1033  001f               L733:
1034                     ; 263     UART3->CR4 &= ((uint8_t)~UART3_CR4_LBDL);
1036  001f 721b5247      	bres	21063,#5
1037  0023               L143:
1038                     ; 265 }
1041  0023 84            	pop	a
1042  0024 81            	ret	
1164                     ; 277 void UART3_LINConfig(UART3_LinMode_TypeDef UART3_Mode,
1164                     ; 278                      UART3_LinAutosync_TypeDef UART3_Autosync, 
1164                     ; 279                      UART3_LinDivUp_TypeDef UART3_DivUp)
1164                     ; 280 {
1165                     .text:	section	.text,new
1166  0000               _UART3_LINConfig:
1168  0000 89            	pushw	x
1169       00000000      OFST:	set	0
1172                     ; 282   assert_param(IS_UART3_SLAVE_OK(UART3_Mode));
1174  0001 9e            	ld	a,xh
1175  0002 4d            	tnz	a
1176  0003 2709          	jreq	L631
1177  0005 9e            	ld	a,xh
1178  0006 4a            	dec	a
1179  0007 2705          	jreq	L631
1180  0009 ae011a        	ldw	x,#282
1181  000c ad46          	call	LC008
1182  000e               L631:
1183                     ; 283   assert_param(IS_UART3_AUTOSYNC_OK(UART3_Autosync));
1185  000e 7b02          	ld	a,(OFST+2,sp)
1186  0010 4a            	dec	a
1187  0011 2709          	jreq	L641
1188  0013 7b02          	ld	a,(OFST+2,sp)
1189  0015 2705          	jreq	L641
1190  0017 ae011b        	ldw	x,#283
1191  001a ad38          	call	LC008
1192  001c               L641:
1193                     ; 284   assert_param(IS_UART3_DIVUP_OK(UART3_DivUp));
1195  001c 7b05          	ld	a,(OFST+5,sp)
1196  001e 2708          	jreq	L651
1197  0020 4a            	dec	a
1198  0021 2705          	jreq	L651
1199  0023 ae011c        	ldw	x,#284
1200  0026 ad2c          	call	LC008
1201  0028               L651:
1202                     ; 286   if (UART3_Mode != UART3_LIN_MODE_MASTER)
1204  0028 7b01          	ld	a,(OFST+1,sp)
1205  002a 2706          	jreq	L124
1206                     ; 288     UART3->CR6 |=  UART3_CR6_LSLV;
1208  002c 721a5249      	bset	21065,#5
1210  0030 2004          	jra	L324
1211  0032               L124:
1212                     ; 292     UART3->CR6 &= ((uint8_t)~UART3_CR6_LSLV);
1214  0032 721b5249      	bres	21065,#5
1215  0036               L324:
1216                     ; 295   if (UART3_Autosync != UART3_LIN_AUTOSYNC_DISABLE)
1218  0036 7b02          	ld	a,(OFST+2,sp)
1219  0038 2706          	jreq	L524
1220                     ; 297     UART3->CR6 |=  UART3_CR6_LASE ;
1222  003a 72185249      	bset	21065,#4
1224  003e 2004          	jra	L724
1225  0040               L524:
1226                     ; 301     UART3->CR6 &= ((uint8_t)~ UART3_CR6_LASE );
1228  0040 72195249      	bres	21065,#4
1229  0044               L724:
1230                     ; 304   if (UART3_DivUp != UART3_LIN_DIVUP_LBRR1)
1232  0044 7b05          	ld	a,(OFST+5,sp)
1233  0046 2706          	jreq	L134
1234                     ; 306     UART3->CR6 |=  UART3_CR6_LDUM;
1236  0048 721e5249      	bset	21065,#7
1238  004c 2004          	jra	L334
1239  004e               L134:
1240                     ; 310     UART3->CR6 &= ((uint8_t)~ UART3_CR6_LDUM);
1242  004e 721f5249      	bres	21065,#7
1243  0052               L334:
1244                     ; 312 }
1247  0052 85            	popw	x
1248  0053 81            	ret	
1250  0054               LC008:
1251  0054 89            	pushw	x
1252  0055 5f            	clrw	x
1253  0056 89            	pushw	x
1254  0057 ae0008        	ldw	x,#L531
1255  005a cd0000        	call	_assert_failed
1257  005d 5b04          	addw	sp,#4
1258  005f 81            	ret	
1293                     ; 320 void UART3_LINCmd(FunctionalState NewState)
1293                     ; 321 {
1294                     .text:	section	.text,new
1295  0000               _UART3_LINCmd:
1297  0000 88            	push	a
1298       00000000      OFST:	set	0
1301                     ; 323   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1303  0001 4d            	tnz	a
1304  0002 2711          	jreq	L071
1305  0004 4a            	dec	a
1306  0005 270e          	jreq	L071
1307  0007 ae0143        	ldw	x,#323
1308  000a 89            	pushw	x
1309  000b 5f            	clrw	x
1310  000c 89            	pushw	x
1311  000d ae0008        	ldw	x,#L531
1312  0010 cd0000        	call	_assert_failed
1314  0013 5b04          	addw	sp,#4
1315  0015               L071:
1316                     ; 325   if (NewState != DISABLE)
1318  0015 7b01          	ld	a,(OFST+1,sp)
1319  0017 2706          	jreq	L354
1320                     ; 328     UART3->CR3 |= UART3_CR3_LINEN;
1322  0019 721c5246      	bset	21062,#6
1324  001d 2004          	jra	L554
1325  001f               L354:
1326                     ; 333     UART3->CR3 &= ((uint8_t)~UART3_CR3_LINEN);
1328  001f 721d5246      	bres	21062,#6
1329  0023               L554:
1330                     ; 335 }
1333  0023 84            	pop	a
1334  0024 81            	ret	
1392                     ; 343 void UART3_WakeUpConfig(UART3_WakeUp_TypeDef UART3_WakeUp)
1392                     ; 344 {
1393                     .text:	section	.text,new
1394  0000               _UART3_WakeUpConfig:
1396  0000 88            	push	a
1397       00000000      OFST:	set	0
1400                     ; 346   assert_param(IS_UART3_WAKEUP_OK(UART3_WakeUp));
1402  0001 4d            	tnz	a
1403  0002 2712          	jreq	L202
1404  0004 a108          	cp	a,#8
1405  0006 270e          	jreq	L202
1406  0008 ae015a        	ldw	x,#346
1407  000b 89            	pushw	x
1408  000c 5f            	clrw	x
1409  000d 89            	pushw	x
1410  000e ae0008        	ldw	x,#L531
1411  0011 cd0000        	call	_assert_failed
1413  0014 5b04          	addw	sp,#4
1414  0016               L202:
1415                     ; 348   UART3->CR1 &= ((uint8_t)~UART3_CR1_WAKE);
1417  0016 72175244      	bres	21060,#3
1418                     ; 349   UART3->CR1 |= (uint8_t)UART3_WakeUp;
1420  001a c65244        	ld	a,21060
1421  001d 1a01          	or	a,(OFST+1,sp)
1422  001f c75244        	ld	21060,a
1423                     ; 350 }
1426  0022 84            	pop	a
1427  0023 81            	ret	
1464                     ; 358 void UART3_ReceiverWakeUpCmd(FunctionalState NewState)
1464                     ; 359 {
1465                     .text:	section	.text,new
1466  0000               _UART3_ReceiverWakeUpCmd:
1468  0000 88            	push	a
1469       00000000      OFST:	set	0
1472                     ; 361   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1474  0001 4d            	tnz	a
1475  0002 2711          	jreq	L412
1476  0004 4a            	dec	a
1477  0005 270e          	jreq	L412
1478  0007 ae0169        	ldw	x,#361
1479  000a 89            	pushw	x
1480  000b 5f            	clrw	x
1481  000c 89            	pushw	x
1482  000d ae0008        	ldw	x,#L531
1483  0010 cd0000        	call	_assert_failed
1485  0013 5b04          	addw	sp,#4
1486  0015               L412:
1487                     ; 363   if (NewState != DISABLE)
1489  0015 7b01          	ld	a,(OFST+1,sp)
1490  0017 2706          	jreq	L325
1491                     ; 366     UART3->CR2 |= UART3_CR2_RWU;
1493  0019 72125245      	bset	21061,#1
1495  001d 2004          	jra	L525
1496  001f               L325:
1497                     ; 371     UART3->CR2 &= ((uint8_t)~UART3_CR2_RWU);
1499  001f 72135245      	bres	21061,#1
1500  0023               L525:
1501                     ; 373 }
1504  0023 84            	pop	a
1505  0024 81            	ret	
1528                     ; 380 uint8_t UART3_ReceiveData8(void)
1528                     ; 381 {
1529                     .text:	section	.text,new
1530  0000               _UART3_ReceiveData8:
1534                     ; 382   return ((uint8_t)UART3->DR);
1536  0000 c65241        	ld	a,21057
1539  0003 81            	ret	
1571                     ; 390 uint16_t UART3_ReceiveData9(void)
1571                     ; 391 {
1572                     .text:	section	.text,new
1573  0000               _UART3_ReceiveData9:
1575  0000 89            	pushw	x
1576       00000002      OFST:	set	2
1579                     ; 392   uint16_t temp = 0;
1581                     ; 394   temp = (uint16_t)(((uint16_t)((uint16_t)UART3->CR1 & (uint16_t)UART3_CR1_R8)) << 1);
1583  0001 c65244        	ld	a,21060
1584  0004 a480          	and	a,#128
1585  0006 5f            	clrw	x
1586  0007 02            	rlwa	x,a
1587  0008 58            	sllw	x
1588  0009 1f01          	ldw	(OFST-1,sp),x
1589                     ; 395   return (uint16_t)((((uint16_t)UART3->DR) | temp) & ((uint16_t)0x01FF));
1591  000b c65241        	ld	a,21057
1592  000e 5f            	clrw	x
1593  000f 97            	ld	xl,a
1594  0010 01            	rrwa	x,a
1595  0011 1a02          	or	a,(OFST+0,sp)
1596  0013 01            	rrwa	x,a
1597  0014 1a01          	or	a,(OFST-1,sp)
1598  0016 a401          	and	a,#1
1599  0018 01            	rrwa	x,a
1602  0019 5b02          	addw	sp,#2
1603  001b 81            	ret	
1635                     ; 403 void UART3_SendData8(uint8_t Data)
1635                     ; 404 {
1636                     .text:	section	.text,new
1637  0000               _UART3_SendData8:
1641                     ; 406   UART3->DR = Data;
1643  0000 c75241        	ld	21057,a
1644                     ; 407 }
1647  0003 81            	ret	
1679                     ; 414 void UART3_SendData9(uint16_t Data)
1679                     ; 415 {
1680                     .text:	section	.text,new
1681  0000               _UART3_SendData9:
1683  0000 89            	pushw	x
1684       00000000      OFST:	set	0
1687                     ; 417   UART3->CR1 &= ((uint8_t)~UART3_CR1_T8);                  
1689  0001 721d5244      	bres	21060,#6
1690                     ; 420   UART3->CR1 |= (uint8_t)(((uint8_t)(Data >> 2)) & UART3_CR1_T8); 
1692  0005 54            	srlw	x
1693  0006 54            	srlw	x
1694  0007 9f            	ld	a,xl
1695  0008 a440          	and	a,#64
1696  000a ca5244        	or	a,21060
1697  000d c75244        	ld	21060,a
1698                     ; 423   UART3->DR   = (uint8_t)(Data);                    
1700  0010 7b02          	ld	a,(OFST+2,sp)
1701  0012 c75241        	ld	21057,a
1702                     ; 424 }
1705  0015 85            	popw	x
1706  0016 81            	ret	
1729                     ; 431 void UART3_SendBreak(void)
1729                     ; 432 {
1730                     .text:	section	.text,new
1731  0000               _UART3_SendBreak:
1735                     ; 433   UART3->CR2 |= UART3_CR2_SBK;
1737  0000 72105245      	bset	21061,#0
1738                     ; 434 }
1741  0004 81            	ret	
1774                     ; 441 void UART3_SetAddress(uint8_t UART3_Address)
1774                     ; 442 {
1775                     .text:	section	.text,new
1776  0000               _UART3_SetAddress:
1778  0000 88            	push	a
1779       00000000      OFST:	set	0
1782                     ; 444   assert_param(IS_UART3_ADDRESS_OK(UART3_Address));
1784  0001 a110          	cp	a,#16
1785  0003 250e          	jrult	L632
1786  0005 ae01bc        	ldw	x,#444
1787  0008 89            	pushw	x
1788  0009 5f            	clrw	x
1789  000a 89            	pushw	x
1790  000b ae0008        	ldw	x,#L531
1791  000e cd0000        	call	_assert_failed
1793  0011 5b04          	addw	sp,#4
1794  0013               L632:
1795                     ; 447   UART3->CR4 &= ((uint8_t)~UART3_CR4_ADD);
1797  0013 c65247        	ld	a,21063
1798  0016 a4f0          	and	a,#240
1799  0018 c75247        	ld	21063,a
1800                     ; 449   UART3->CR4 |= UART3_Address;
1802  001b c65247        	ld	a,21063
1803  001e 1a01          	or	a,(OFST+1,sp)
1804  0020 c75247        	ld	21063,a
1805                     ; 450 }
1808  0023 84            	pop	a
1809  0024 81            	ret	
1967                     ; 458 FlagStatus UART3_GetFlagStatus(UART3_Flag_TypeDef UART3_FLAG)
1967                     ; 459 {
1968                     .text:	section	.text,new
1969  0000               _UART3_GetFlagStatus:
1971  0000 89            	pushw	x
1972  0001 88            	push	a
1973       00000001      OFST:	set	1
1976                     ; 460   FlagStatus status = RESET;
1978  0002 0f01          	clr	(OFST+0,sp)
1979                     ; 463   assert_param(IS_UART3_FLAG_OK(UART3_FLAG));
1981  0004 a30080        	cpw	x,#128
1982  0007 2745          	jreq	L052
1983  0009 a30040        	cpw	x,#64
1984  000c 2740          	jreq	L052
1985  000e a30020        	cpw	x,#32
1986  0011 273b          	jreq	L052
1987  0013 a30010        	cpw	x,#16
1988  0016 2736          	jreq	L052
1989  0018 a30008        	cpw	x,#8
1990  001b 2731          	jreq	L052
1991  001d a30004        	cpw	x,#4
1992  0020 272c          	jreq	L052
1993  0022 a30002        	cpw	x,#2
1994  0025 2727          	jreq	L052
1995  0027 a30001        	cpw	x,#1
1996  002a 2722          	jreq	L052
1997  002c a30101        	cpw	x,#257
1998  002f 271d          	jreq	L052
1999  0031 a30301        	cpw	x,#769
2000  0034 2718          	jreq	L052
2001  0036 a30302        	cpw	x,#770
2002  0039 2713          	jreq	L052
2003  003b a30210        	cpw	x,#528
2004  003e 270e          	jreq	L052
2005  0040 ae01cf        	ldw	x,#463
2006  0043 89            	pushw	x
2007  0044 5f            	clrw	x
2008  0045 89            	pushw	x
2009  0046 ae0008        	ldw	x,#L531
2010  0049 cd0000        	call	_assert_failed
2012  004c 5b04          	addw	sp,#4
2013  004e               L052:
2014                     ; 466   if (UART3_FLAG == UART3_FLAG_LBDF)
2016  004e 1e02          	ldw	x,(OFST+1,sp)
2017  0050 a30210        	cpw	x,#528
2018  0053 2609          	jrne	L517
2019                     ; 468     if ((UART3->CR4 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2021  0055 c65247        	ld	a,21063
2022  0058 1503          	bcp	a,(OFST+2,sp)
2023  005a 2725          	jreq	L147
2024                     ; 471       status = SET;
2026  005c 201f          	jp	LC010
2027                     ; 476       status = RESET;
2028  005e               L517:
2029                     ; 479   else if (UART3_FLAG == UART3_FLAG_SBK)
2031  005e a30101        	cpw	x,#257
2032  0061 2609          	jrne	L527
2033                     ; 481     if ((UART3->CR2 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2035  0063 c65245        	ld	a,21061
2036  0066 1503          	bcp	a,(OFST+2,sp)
2037  0068 2717          	jreq	L147
2038                     ; 484       status = SET;
2040  006a 2011          	jp	LC010
2041                     ; 489       status = RESET;
2042  006c               L527:
2043                     ; 492   else if ((UART3_FLAG == UART3_FLAG_LHDF) || (UART3_FLAG == UART3_FLAG_LSF))
2045  006c a30302        	cpw	x,#770
2046  006f 2705          	jreq	L737
2048  0071 a30301        	cpw	x,#769
2049  0074 260f          	jrne	L537
2050  0076               L737:
2051                     ; 494     if ((UART3->CR6 & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2053  0076 c65249        	ld	a,21065
2054  0079 1503          	bcp	a,(OFST+2,sp)
2055  007b 2704          	jreq	L147
2056                     ; 497       status = SET;
2058  007d               LC010:
2062  007d a601          	ld	a,#1
2064  007f 2001          	jra	L327
2065  0081               L147:
2066                     ; 502       status = RESET;
2071  0081 4f            	clr	a
2072  0082               L327:
2073                     ; 520   return  status;
2077  0082 5b03          	addw	sp,#3
2078  0084 81            	ret	
2079  0085               L537:
2080                     ; 507     if ((UART3->SR & (uint8_t)UART3_FLAG) != (uint8_t)0x00)
2082  0085 c65240        	ld	a,21056
2083  0088 1503          	bcp	a,(OFST+2,sp)
2084  008a 27f5          	jreq	L147
2085                     ; 510       status = SET;
2087  008c 20ef          	jp	LC010
2088                     ; 515       status = RESET;
2124                     ; 551 void UART3_ClearFlag(UART3_Flag_TypeDef UART3_FLAG)
2124                     ; 552 {
2125                     .text:	section	.text,new
2126  0000               _UART3_ClearFlag:
2128  0000 89            	pushw	x
2129       00000000      OFST:	set	0
2132                     ; 554   assert_param(IS_UART3_CLEAR_FLAG_OK(UART3_FLAG));
2134  0001 a30020        	cpw	x,#32
2135  0004 271d          	jreq	L262
2136  0006 a30302        	cpw	x,#770
2137  0009 2718          	jreq	L262
2138  000b a30301        	cpw	x,#769
2139  000e 2713          	jreq	L262
2140  0010 a30210        	cpw	x,#528
2141  0013 270e          	jreq	L262
2142  0015 ae022a        	ldw	x,#554
2143  0018 89            	pushw	x
2144  0019 5f            	clrw	x
2145  001a 89            	pushw	x
2146  001b ae0008        	ldw	x,#L531
2147  001e cd0000        	call	_assert_failed
2149  0021 5b04          	addw	sp,#4
2150  0023               L262:
2151                     ; 557   if (UART3_FLAG == UART3_FLAG_RXNE)
2153  0023 1e01          	ldw	x,(OFST+1,sp)
2154  0025 a30020        	cpw	x,#32
2155  0028 2606          	jrne	L177
2156                     ; 559     UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2158  002a 35df5240      	mov	21056,#223
2160  002e 201a          	jra	L377
2161  0030               L177:
2162                     ; 562   else if (UART3_FLAG == UART3_FLAG_LBDF)
2164  0030 a30210        	cpw	x,#528
2165  0033 2606          	jrne	L577
2166                     ; 564     UART3->CR4 &= (uint8_t)(~UART3_CR4_LBDF);
2168  0035 72195247      	bres	21063,#4
2170  0039 200f          	jra	L377
2171  003b               L577:
2172                     ; 567   else if (UART3_FLAG == UART3_FLAG_LHDF)
2174  003b a30302        	cpw	x,#770
2175  003e 2606          	jrne	L1001
2176                     ; 569     UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2178  0040 72135249      	bres	21065,#1
2180  0044 2004          	jra	L377
2181  0046               L1001:
2182                     ; 574     UART3->CR6 &= (uint8_t)(~UART3_CR6_LSF);
2184  0046 72115249      	bres	21065,#0
2185  004a               L377:
2186                     ; 576 }
2189  004a 85            	popw	x
2190  004b 81            	ret	
2265                     ; 591 ITStatus UART3_GetITStatus(UART3_IT_TypeDef UART3_IT)
2265                     ; 592 {
2266                     .text:	section	.text,new
2267  0000               _UART3_GetITStatus:
2269  0000 89            	pushw	x
2270  0001 89            	pushw	x
2271       00000002      OFST:	set	2
2274                     ; 593   ITStatus pendingbitstatus = RESET;
2276                     ; 594   uint8_t itpos = 0;
2278                     ; 595   uint8_t itmask1 = 0;
2280                     ; 596   uint8_t itmask2 = 0;
2282                     ; 597   uint8_t enablestatus = 0;
2284                     ; 600   assert_param(IS_UART3_GET_IT_OK(UART3_IT));
2286  0002 1e03          	ldw	x,(OFST+1,sp)
2287  0004 a30277        	cpw	x,#631
2288  0007 2731          	jreq	L472
2289  0009 a30266        	cpw	x,#614
2290  000c 272c          	jreq	L472
2291  000e a30255        	cpw	x,#597
2292  0011 2727          	jreq	L472
2293  0013 a30244        	cpw	x,#580
2294  0016 2722          	jreq	L472
2295  0018 a30235        	cpw	x,#565
2296  001b 271d          	jreq	L472
2297  001d a30346        	cpw	x,#838
2298  0020 2718          	jreq	L472
2299  0022 a30412        	cpw	x,#1042
2300  0025 2713          	jreq	L472
2301  0027 a30100        	cpw	x,#256
2302  002a 270e          	jreq	L472
2303  002c ae0258        	ldw	x,#600
2304  002f 89            	pushw	x
2305  0030 5f            	clrw	x
2306  0031 89            	pushw	x
2307  0032 ae0008        	ldw	x,#L531
2308  0035 cd0000        	call	_assert_failed
2310  0038 5b04          	addw	sp,#4
2311  003a               L472:
2312                     ; 603   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)UART3_IT & (uint8_t)0x0F));
2314  003a 7b04          	ld	a,(OFST+2,sp)
2315  003c a40f          	and	a,#15
2316  003e 5f            	clrw	x
2317  003f 97            	ld	xl,a
2318  0040 a601          	ld	a,#1
2319  0042 5d            	tnzw	x
2320  0043 2704          	jreq	L003
2321  0045               L203:
2322  0045 48            	sll	a
2323  0046 5a            	decw	x
2324  0047 26fc          	jrne	L203
2325  0049               L003:
2326  0049 6b01          	ld	(OFST-1,sp),a
2327                     ; 605   itmask1 = (uint8_t)((uint8_t)UART3_IT >> (uint8_t)4);
2329  004b 7b04          	ld	a,(OFST+2,sp)
2330  004d 4e            	swap	a
2331  004e a40f          	and	a,#15
2332  0050 6b02          	ld	(OFST+0,sp),a
2333                     ; 607   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
2335  0052 5f            	clrw	x
2336  0053 97            	ld	xl,a
2337  0054 a601          	ld	a,#1
2338  0056 5d            	tnzw	x
2339  0057 2704          	jreq	L403
2340  0059               L603:
2341  0059 48            	sll	a
2342  005a 5a            	decw	x
2343  005b 26fc          	jrne	L603
2344  005d               L403:
2345  005d 6b02          	ld	(OFST+0,sp),a
2346                     ; 610   if (UART3_IT == UART3_IT_PE)
2348  005f 1e03          	ldw	x,(OFST+1,sp)
2349  0061 a30100        	cpw	x,#256
2350  0064 260c          	jrne	L7301
2351                     ; 613     enablestatus = (uint8_t)((uint8_t)UART3->CR1 & itmask2);
2353  0066 c65244        	ld	a,21060
2354  0069 1402          	and	a,(OFST+0,sp)
2355  006b 6b02          	ld	(OFST+0,sp),a
2356                     ; 616     if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2358  006d c65240        	ld	a,21056
2360                     ; 619       pendingbitstatus = SET;
2362  0070 2020          	jp	LC013
2363                     ; 624       pendingbitstatus = RESET;
2364  0072               L7301:
2365                     ; 627   else if (UART3_IT == UART3_IT_LBDF)
2367  0072 a30346        	cpw	x,#838
2368  0075 260c          	jrne	L7401
2369                     ; 630     enablestatus = (uint8_t)((uint8_t)UART3->CR4 & itmask2);
2371  0077 c65247        	ld	a,21063
2372  007a 1402          	and	a,(OFST+0,sp)
2373  007c 6b02          	ld	(OFST+0,sp),a
2374                     ; 632     if (((UART3->CR4 & itpos) != (uint8_t)0x00) && enablestatus)
2376  007e c65247        	ld	a,21063
2378                     ; 635       pendingbitstatus = SET;
2380  0081 200f          	jp	LC013
2381                     ; 640       pendingbitstatus = RESET;
2382  0083               L7401:
2383                     ; 643   else if (UART3_IT == UART3_IT_LHDF)
2385  0083 a30412        	cpw	x,#1042
2386  0086 2616          	jrne	L7501
2387                     ; 646     enablestatus = (uint8_t)((uint8_t)UART3->CR6 & itmask2);
2389  0088 c65249        	ld	a,21065
2390  008b 1402          	and	a,(OFST+0,sp)
2391  008d 6b02          	ld	(OFST+0,sp),a
2392                     ; 648     if (((UART3->CR6 & itpos) != (uint8_t)0x00) && enablestatus)
2394  008f c65249        	ld	a,21065
2396  0092               LC013:
2397  0092 1501          	bcp	a,(OFST-1,sp)
2398  0094 271a          	jreq	L7601
2399  0096 7b02          	ld	a,(OFST+0,sp)
2400  0098 2716          	jreq	L7601
2401                     ; 651       pendingbitstatus = SET;
2403  009a               LC012:
2407  009a a601          	ld	a,#1
2409  009c 2013          	jra	L5401
2410                     ; 656       pendingbitstatus = RESET;
2411  009e               L7501:
2412                     ; 662     enablestatus = (uint8_t)((uint8_t)UART3->CR2 & itmask2);
2414  009e c65245        	ld	a,21061
2415  00a1 1402          	and	a,(OFST+0,sp)
2416  00a3 6b02          	ld	(OFST+0,sp),a
2417                     ; 664     if (((UART3->SR & itpos) != (uint8_t)0x00) && enablestatus)
2419  00a5 c65240        	ld	a,21056
2420  00a8 1501          	bcp	a,(OFST-1,sp)
2421  00aa 2704          	jreq	L7601
2423  00ac 7b02          	ld	a,(OFST+0,sp)
2424                     ; 667       pendingbitstatus = SET;
2426  00ae 26ea          	jrne	LC012
2427  00b0               L7601:
2428                     ; 672       pendingbitstatus = RESET;
2433  00b0 4f            	clr	a
2434  00b1               L5401:
2435                     ; 676   return  pendingbitstatus;
2439  00b1 5b04          	addw	sp,#4
2440  00b3 81            	ret	
2477                     ; 706 void UART3_ClearITPendingBit(UART3_IT_TypeDef UART3_IT)
2477                     ; 707 {
2478                     .text:	section	.text,new
2479  0000               _UART3_ClearITPendingBit:
2481  0000 89            	pushw	x
2482       00000000      OFST:	set	0
2485                     ; 709   assert_param(IS_UART3_CLEAR_IT_OK(UART3_IT));
2487  0001 a30255        	cpw	x,#597
2488  0004 2718          	jreq	L613
2489  0006 a30412        	cpw	x,#1042
2490  0009 2713          	jreq	L613
2491  000b a30346        	cpw	x,#838
2492  000e 270e          	jreq	L613
2493  0010 ae02c5        	ldw	x,#709
2494  0013 89            	pushw	x
2495  0014 5f            	clrw	x
2496  0015 89            	pushw	x
2497  0016 ae0008        	ldw	x,#L531
2498  0019 cd0000        	call	_assert_failed
2500  001c 5b04          	addw	sp,#4
2501  001e               L613:
2502                     ; 712   if (UART3_IT == UART3_IT_RXNE)
2504  001e 1e01          	ldw	x,(OFST+1,sp)
2505  0020 a30255        	cpw	x,#597
2506  0023 2606          	jrne	L1111
2507                     ; 714     UART3->SR = (uint8_t)~(UART3_SR_RXNE);
2509  0025 35df5240      	mov	21056,#223
2511  0029 200f          	jra	L3111
2512  002b               L1111:
2513                     ; 717   else if (UART3_IT == UART3_IT_LBDF)
2515  002b a30346        	cpw	x,#838
2516  002e 2606          	jrne	L5111
2517                     ; 719     UART3->CR4 &= (uint8_t)~(UART3_CR4_LBDF);
2519  0030 72195247      	bres	21063,#4
2521  0034 2004          	jra	L3111
2522  0036               L5111:
2523                     ; 724     UART3->CR6 &= (uint8_t)(~UART3_CR6_LHDF);
2525  0036 72135249      	bres	21065,#1
2526  003a               L3111:
2527                     ; 726 }
2530  003a 85            	popw	x
2531  003b 81            	ret	
2544                     	xdef	_UART3_ClearITPendingBit
2545                     	xdef	_UART3_GetITStatus
2546                     	xdef	_UART3_ClearFlag
2547                     	xdef	_UART3_GetFlagStatus
2548                     	xdef	_UART3_SetAddress
2549                     	xdef	_UART3_SendBreak
2550                     	xdef	_UART3_SendData9
2551                     	xdef	_UART3_SendData8
2552                     	xdef	_UART3_ReceiveData9
2553                     	xdef	_UART3_ReceiveData8
2554                     	xdef	_UART3_WakeUpConfig
2555                     	xdef	_UART3_ReceiverWakeUpCmd
2556                     	xdef	_UART3_LINCmd
2557                     	xdef	_UART3_LINConfig
2558                     	xdef	_UART3_LINBreakDetectionConfig
2559                     	xdef	_UART3_ITConfig
2560                     	xdef	_UART3_Cmd
2561                     	xdef	_UART3_Init
2562                     	xdef	_UART3_DeInit
2563                     	xref	_assert_failed
2564                     	xref	_CLK_GetClockFreq
2565                     	switch	.const
2566  0008               L531:
2567  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2568  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2569  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
2570  003e 5f7561727433  	dc.b	"_uart3.c",0
2571                     	xref.b	c_lreg
2591                     	xref	c_lursh
2592                     	xref	c_lsub
2593                     	xref	c_smul
2594                     	xref	c_ludv
2595                     	xref	c_rtol
2596                     	xref	c_llsh
2597                     	xref	c_lcmp
2598                     	xref	c_ltor
2599                     	end
