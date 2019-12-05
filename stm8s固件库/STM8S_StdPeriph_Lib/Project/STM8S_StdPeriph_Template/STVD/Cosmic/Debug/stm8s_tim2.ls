   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 52 void TIM2_DeInit(void)
  33                     ; 53 {
  35                     .text:	section	.text,new
  36  0000               _TIM2_DeInit:
  40                     ; 54   TIM2->CR1 = (uint8_t)TIM2_CR1_RESET_VALUE;
  42  0000 725f5300      	clr	21248
  43                     ; 55   TIM2->IER = (uint8_t)TIM2_IER_RESET_VALUE;
  45  0004 725f5301      	clr	21249
  46                     ; 56   TIM2->SR2 = (uint8_t)TIM2_SR2_RESET_VALUE;
  48  0008 725f5303      	clr	21251
  49                     ; 59   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  51  000c 725f5308      	clr	21256
  52                     ; 60   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  54  0010 725f5309      	clr	21257
  55                     ; 64   TIM2->CCER1 = (uint8_t)TIM2_CCER1_RESET_VALUE;
  57  0014 725f5308      	clr	21256
  58                     ; 65   TIM2->CCER2 = (uint8_t)TIM2_CCER2_RESET_VALUE;
  60  0018 725f5309      	clr	21257
  61                     ; 66   TIM2->CCMR1 = (uint8_t)TIM2_CCMR1_RESET_VALUE;
  63  001c 725f5305      	clr	21253
  64                     ; 67   TIM2->CCMR2 = (uint8_t)TIM2_CCMR2_RESET_VALUE;
  66  0020 725f5306      	clr	21254
  67                     ; 68   TIM2->CCMR3 = (uint8_t)TIM2_CCMR3_RESET_VALUE;
  69  0024 725f5307      	clr	21255
  70                     ; 69   TIM2->CNTRH = (uint8_t)TIM2_CNTRH_RESET_VALUE;
  72  0028 725f530a      	clr	21258
  73                     ; 70   TIM2->CNTRL = (uint8_t)TIM2_CNTRL_RESET_VALUE;
  75  002c 725f530b      	clr	21259
  76                     ; 71   TIM2->PSCR = (uint8_t)TIM2_PSCR_RESET_VALUE;
  78  0030 725f530c      	clr	21260
  79                     ; 72   TIM2->ARRH  = (uint8_t)TIM2_ARRH_RESET_VALUE;
  81  0034 35ff530d      	mov	21261,#255
  82                     ; 73   TIM2->ARRL  = (uint8_t)TIM2_ARRL_RESET_VALUE;
  84  0038 35ff530e      	mov	21262,#255
  85                     ; 74   TIM2->CCR1H = (uint8_t)TIM2_CCR1H_RESET_VALUE;
  87  003c 725f530f      	clr	21263
  88                     ; 75   TIM2->CCR1L = (uint8_t)TIM2_CCR1L_RESET_VALUE;
  90  0040 725f5310      	clr	21264
  91                     ; 76   TIM2->CCR2H = (uint8_t)TIM2_CCR2H_RESET_VALUE;
  93  0044 725f5311      	clr	21265
  94                     ; 77   TIM2->CCR2L = (uint8_t)TIM2_CCR2L_RESET_VALUE;
  96  0048 725f5312      	clr	21266
  97                     ; 78   TIM2->CCR3H = (uint8_t)TIM2_CCR3H_RESET_VALUE;
  99  004c 725f5313      	clr	21267
 100                     ; 79   TIM2->CCR3L = (uint8_t)TIM2_CCR3L_RESET_VALUE;
 102  0050 725f5314      	clr	21268
 103                     ; 80   TIM2->SR1 = (uint8_t)TIM2_SR1_RESET_VALUE;
 105  0054 725f5302      	clr	21250
 106                     ; 81 }
 109  0058 81            	ret	
 275                     ; 89 void TIM2_TimeBaseInit( TIM2_Prescaler_TypeDef TIM2_Prescaler,
 275                     ; 90                         uint16_t TIM2_Period)
 275                     ; 91 {
 276                     .text:	section	.text,new
 277  0000               _TIM2_TimeBaseInit:
 279  0000 88            	push	a
 280       00000000      OFST:	set	0
 283                     ; 93   TIM2->PSCR = (uint8_t)(TIM2_Prescaler);
 285  0001 c7530c        	ld	21260,a
 286                     ; 95   TIM2->ARRH = (uint8_t)(TIM2_Period >> 8);
 288  0004 7b04          	ld	a,(OFST+4,sp)
 289  0006 c7530d        	ld	21261,a
 290                     ; 96   TIM2->ARRL = (uint8_t)(TIM2_Period);
 292  0009 7b05          	ld	a,(OFST+5,sp)
 293  000b c7530e        	ld	21262,a
 294                     ; 97 }
 297  000e 84            	pop	a
 298  000f 81            	ret	
 454                     ; 108 void TIM2_OC1Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 454                     ; 109                   TIM2_OutputState_TypeDef TIM2_OutputState,
 454                     ; 110                   uint16_t TIM2_Pulse,
 454                     ; 111                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 454                     ; 112 {
 455                     .text:	section	.text,new
 456  0000               _TIM2_OC1Init:
 458  0000 89            	pushw	x
 459  0001 88            	push	a
 460       00000001      OFST:	set	1
 463                     ; 114   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 465  0002 9e            	ld	a,xh
 466  0003 4d            	tnz	a
 467  0004 271e          	jreq	L61
 468  0006 9e            	ld	a,xh
 469  0007 a110          	cp	a,#16
 470  0009 2719          	jreq	L61
 471  000b 9e            	ld	a,xh
 472  000c a120          	cp	a,#32
 473  000e 2714          	jreq	L61
 474  0010 9e            	ld	a,xh
 475  0011 a130          	cp	a,#48
 476  0013 270f          	jreq	L61
 477  0015 9e            	ld	a,xh
 478  0016 a160          	cp	a,#96
 479  0018 270a          	jreq	L61
 480  001a 9e            	ld	a,xh
 481  001b a170          	cp	a,#112
 482  001d 2705          	jreq	L61
 483  001f ae0072        	ldw	x,#114
 484  0022 ad4b          	call	LC001
 485  0024               L61:
 486                     ; 115   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 488  0024 7b03          	ld	a,(OFST+2,sp)
 489  0026 2709          	jreq	L62
 490  0028 a111          	cp	a,#17
 491  002a 2705          	jreq	L62
 492  002c ae0073        	ldw	x,#115
 493  002f ad3e          	call	LC001
 494  0031               L62:
 495                     ; 116   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 497  0031 7b08          	ld	a,(OFST+7,sp)
 498  0033 2709          	jreq	L63
 499  0035 a122          	cp	a,#34
 500  0037 2705          	jreq	L63
 501  0039 ae0074        	ldw	x,#116
 502  003c ad31          	call	LC001
 503  003e               L63:
 504                     ; 119   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC1E | TIM2_CCER1_CC1P));
 506  003e c65308        	ld	a,21256
 507  0041 a4fc          	and	a,#252
 508  0043 c75308        	ld	21256,a
 509                     ; 121   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER1_CC1E ) | 
 509                     ; 122                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC1P));
 511  0046 7b08          	ld	a,(OFST+7,sp)
 512  0048 a402          	and	a,#2
 513  004a 6b01          	ld	(OFST+0,sp),a
 514  004c 7b03          	ld	a,(OFST+2,sp)
 515  004e a401          	and	a,#1
 516  0050 1a01          	or	a,(OFST+0,sp)
 517  0052 ca5308        	or	a,21256
 518  0055 c75308        	ld	21256,a
 519                     ; 125   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM)) |
 519                     ; 126                           (uint8_t)TIM2_OCMode);
 521  0058 c65305        	ld	a,21253
 522  005b a48f          	and	a,#143
 523  005d 1a02          	or	a,(OFST+1,sp)
 524  005f c75305        	ld	21253,a
 525                     ; 129   TIM2->CCR1H = (uint8_t)(TIM2_Pulse >> 8);
 527  0062 7b06          	ld	a,(OFST+5,sp)
 528  0064 c7530f        	ld	21263,a
 529                     ; 130   TIM2->CCR1L = (uint8_t)(TIM2_Pulse);
 531  0067 7b07          	ld	a,(OFST+6,sp)
 532  0069 c75310        	ld	21264,a
 533                     ; 131 }
 536  006c 5b03          	addw	sp,#3
 537  006e 81            	ret	
 539  006f               LC001:
 540  006f 89            	pushw	x
 541  0070 5f            	clrw	x
 542  0071 89            	pushw	x
 543  0072 ae0000        	ldw	x,#L302
 544  0075 cd0000        	call	_assert_failed
 546  0078 5b04          	addw	sp,#4
 547  007a 81            	ret	
 609                     ; 142 void TIM2_OC2Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 609                     ; 143                   TIM2_OutputState_TypeDef TIM2_OutputState,
 609                     ; 144                   uint16_t TIM2_Pulse,
 609                     ; 145                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 609                     ; 146 {
 610                     .text:	section	.text,new
 611  0000               _TIM2_OC2Init:
 613  0000 89            	pushw	x
 614  0001 88            	push	a
 615       00000001      OFST:	set	1
 618                     ; 148   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 620  0002 9e            	ld	a,xh
 621  0003 4d            	tnz	a
 622  0004 271e          	jreq	L05
 623  0006 9e            	ld	a,xh
 624  0007 a110          	cp	a,#16
 625  0009 2719          	jreq	L05
 626  000b 9e            	ld	a,xh
 627  000c a120          	cp	a,#32
 628  000e 2714          	jreq	L05
 629  0010 9e            	ld	a,xh
 630  0011 a130          	cp	a,#48
 631  0013 270f          	jreq	L05
 632  0015 9e            	ld	a,xh
 633  0016 a160          	cp	a,#96
 634  0018 270a          	jreq	L05
 635  001a 9e            	ld	a,xh
 636  001b a170          	cp	a,#112
 637  001d 2705          	jreq	L05
 638  001f ae0094        	ldw	x,#148
 639  0022 ad4b          	call	LC002
 640  0024               L05:
 641                     ; 149   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 643  0024 7b03          	ld	a,(OFST+2,sp)
 644  0026 2709          	jreq	L06
 645  0028 a111          	cp	a,#17
 646  002a 2705          	jreq	L06
 647  002c ae0095        	ldw	x,#149
 648  002f ad3e          	call	LC002
 649  0031               L06:
 650                     ; 150   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 652  0031 7b08          	ld	a,(OFST+7,sp)
 653  0033 2709          	jreq	L07
 654  0035 a122          	cp	a,#34
 655  0037 2705          	jreq	L07
 656  0039 ae0096        	ldw	x,#150
 657  003c ad31          	call	LC002
 658  003e               L07:
 659                     ; 154   TIM2->CCER1 &= (uint8_t)(~( TIM2_CCER1_CC2E |  TIM2_CCER1_CC2P ));
 661  003e c65308        	ld	a,21256
 662  0041 a4cf          	and	a,#207
 663  0043 c75308        	ld	21256,a
 664                     ; 156   TIM2->CCER1 |= (uint8_t)((uint8_t)(TIM2_OutputState  & TIM2_CCER1_CC2E ) |
 664                     ; 157                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER1_CC2P));
 666  0046 7b08          	ld	a,(OFST+7,sp)
 667  0048 a420          	and	a,#32
 668  004a 6b01          	ld	(OFST+0,sp),a
 669  004c 7b03          	ld	a,(OFST+2,sp)
 670  004e a410          	and	a,#16
 671  0050 1a01          	or	a,(OFST+0,sp)
 672  0052 ca5308        	or	a,21256
 673  0055 c75308        	ld	21256,a
 674                     ; 161   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM)) | 
 674                     ; 162                           (uint8_t)TIM2_OCMode);
 676  0058 c65306        	ld	a,21254
 677  005b a48f          	and	a,#143
 678  005d 1a02          	or	a,(OFST+1,sp)
 679  005f c75306        	ld	21254,a
 680                     ; 166   TIM2->CCR2H = (uint8_t)(TIM2_Pulse >> 8);
 682  0062 7b06          	ld	a,(OFST+5,sp)
 683  0064 c75311        	ld	21265,a
 684                     ; 167   TIM2->CCR2L = (uint8_t)(TIM2_Pulse);
 686  0067 7b07          	ld	a,(OFST+6,sp)
 687  0069 c75312        	ld	21266,a
 688                     ; 168 }
 691  006c 5b03          	addw	sp,#3
 692  006e 81            	ret	
 694  006f               LC002:
 695  006f 89            	pushw	x
 696  0070 5f            	clrw	x
 697  0071 89            	pushw	x
 698  0072 ae0000        	ldw	x,#L302
 699  0075 cd0000        	call	_assert_failed
 701  0078 5b04          	addw	sp,#4
 702  007a 81            	ret	
 764                     ; 179 void TIM2_OC3Init(TIM2_OCMode_TypeDef TIM2_OCMode,
 764                     ; 180                   TIM2_OutputState_TypeDef TIM2_OutputState,
 764                     ; 181                   uint16_t TIM2_Pulse,
 764                     ; 182                   TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
 764                     ; 183 {
 765                     .text:	section	.text,new
 766  0000               _TIM2_OC3Init:
 768  0000 89            	pushw	x
 769  0001 88            	push	a
 770       00000001      OFST:	set	1
 773                     ; 185   assert_param(IS_TIM2_OC_MODE_OK(TIM2_OCMode));
 775  0002 9e            	ld	a,xh
 776  0003 4d            	tnz	a
 777  0004 271e          	jreq	L201
 778  0006 9e            	ld	a,xh
 779  0007 a110          	cp	a,#16
 780  0009 2719          	jreq	L201
 781  000b 9e            	ld	a,xh
 782  000c a120          	cp	a,#32
 783  000e 2714          	jreq	L201
 784  0010 9e            	ld	a,xh
 785  0011 a130          	cp	a,#48
 786  0013 270f          	jreq	L201
 787  0015 9e            	ld	a,xh
 788  0016 a160          	cp	a,#96
 789  0018 270a          	jreq	L201
 790  001a 9e            	ld	a,xh
 791  001b a170          	cp	a,#112
 792  001d 2705          	jreq	L201
 793  001f ae00b9        	ldw	x,#185
 794  0022 ad4b          	call	LC003
 795  0024               L201:
 796                     ; 186   assert_param(IS_TIM2_OUTPUT_STATE_OK(TIM2_OutputState));
 798  0024 7b03          	ld	a,(OFST+2,sp)
 799  0026 2709          	jreq	L211
 800  0028 a111          	cp	a,#17
 801  002a 2705          	jreq	L211
 802  002c ae00ba        	ldw	x,#186
 803  002f ad3e          	call	LC003
 804  0031               L211:
 805                     ; 187   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
 807  0031 7b08          	ld	a,(OFST+7,sp)
 808  0033 2709          	jreq	L221
 809  0035 a122          	cp	a,#34
 810  0037 2705          	jreq	L221
 811  0039 ae00bb        	ldw	x,#187
 812  003c ad31          	call	LC003
 813  003e               L221:
 814                     ; 189   TIM2->CCER2 &= (uint8_t)(~( TIM2_CCER2_CC3E  | TIM2_CCER2_CC3P));
 816  003e c65309        	ld	a,21257
 817  0041 a4fc          	and	a,#252
 818  0043 c75309        	ld	21257,a
 819                     ; 191   TIM2->CCER2 |= (uint8_t)((uint8_t)(TIM2_OutputState & TIM2_CCER2_CC3E) |  
 819                     ; 192                            (uint8_t)(TIM2_OCPolarity & TIM2_CCER2_CC3P));
 821  0046 7b08          	ld	a,(OFST+7,sp)
 822  0048 a402          	and	a,#2
 823  004a 6b01          	ld	(OFST+0,sp),a
 824  004c 7b03          	ld	a,(OFST+2,sp)
 825  004e a401          	and	a,#1
 826  0050 1a01          	or	a,(OFST+0,sp)
 827  0052 ca5309        	or	a,21257
 828  0055 c75309        	ld	21257,a
 829                     ; 195   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM)) |
 829                     ; 196                           (uint8_t)TIM2_OCMode);
 831  0058 c65307        	ld	a,21255
 832  005b a48f          	and	a,#143
 833  005d 1a02          	or	a,(OFST+1,sp)
 834  005f c75307        	ld	21255,a
 835                     ; 199   TIM2->CCR3H = (uint8_t)(TIM2_Pulse >> 8);
 837  0062 7b06          	ld	a,(OFST+5,sp)
 838  0064 c75313        	ld	21267,a
 839                     ; 200   TIM2->CCR3L = (uint8_t)(TIM2_Pulse);
 841  0067 7b07          	ld	a,(OFST+6,sp)
 842  0069 c75314        	ld	21268,a
 843                     ; 201 }
 846  006c 5b03          	addw	sp,#3
 847  006e 81            	ret	
 849  006f               LC003:
 850  006f 89            	pushw	x
 851  0070 5f            	clrw	x
 852  0071 89            	pushw	x
 853  0072 ae0000        	ldw	x,#L302
 854  0075 cd0000        	call	_assert_failed
 856  0078 5b04          	addw	sp,#4
 857  007a 81            	ret	
1048                     ; 212 void TIM2_ICInit(TIM2_Channel_TypeDef TIM2_Channel,
1048                     ; 213                  TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1048                     ; 214                  TIM2_ICSelection_TypeDef TIM2_ICSelection,
1048                     ; 215                  TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1048                     ; 216                  uint8_t TIM2_ICFilter)
1048                     ; 217 {
1049                     .text:	section	.text,new
1050  0000               _TIM2_ICInit:
1052  0000 89            	pushw	x
1053       00000000      OFST:	set	0
1056                     ; 219   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
1058  0001 9e            	ld	a,xh
1059  0002 4d            	tnz	a
1060  0003 270f          	jreq	L431
1061  0005 9e            	ld	a,xh
1062  0006 4a            	dec	a
1063  0007 270b          	jreq	L431
1064  0009 9e            	ld	a,xh
1065  000a a102          	cp	a,#2
1066  000c 2706          	jreq	L431
1067  000e ae00db        	ldw	x,#219
1068  0011 cd0097        	call	LC004
1069  0014               L431:
1070                     ; 220   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1072  0014 7b02          	ld	a,(OFST+2,sp)
1073  0016 2709          	jreq	L441
1074  0018 a144          	cp	a,#68
1075  001a 2705          	jreq	L441
1076  001c ae00dc        	ldw	x,#220
1077  001f ad76          	call	LC004
1078  0021               L441:
1079                     ; 221   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1081  0021 7b05          	ld	a,(OFST+5,sp)
1082  0023 a101          	cp	a,#1
1083  0025 270d          	jreq	L451
1084  0027 a102          	cp	a,#2
1085  0029 2709          	jreq	L451
1086  002b a103          	cp	a,#3
1087  002d 2705          	jreq	L451
1088  002f ae00dd        	ldw	x,#221
1089  0032 ad63          	call	LC004
1090  0034               L451:
1091                     ; 222   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1093  0034 7b06          	ld	a,(OFST+6,sp)
1094  0036 2711          	jreq	L461
1095  0038 a104          	cp	a,#4
1096  003a 270d          	jreq	L461
1097  003c a108          	cp	a,#8
1098  003e 2709          	jreq	L461
1099  0040 a10c          	cp	a,#12
1100  0042 2705          	jreq	L461
1101  0044 ae00de        	ldw	x,#222
1102  0047 ad4e          	call	LC004
1103  0049               L461:
1104                     ; 223   assert_param(IS_TIM2_IC_FILTER_OK(TIM2_ICFilter));
1106  0049 7b07          	ld	a,(OFST+7,sp)
1107  004b a110          	cp	a,#16
1108  004d 2505          	jrult	L271
1109  004f ae00df        	ldw	x,#223
1110  0052 ad43          	call	LC004
1111  0054               L271:
1112                     ; 225   if (TIM2_Channel == TIM2_CHANNEL_1)
1114  0054 7b01          	ld	a,(OFST+1,sp)
1115  0056 2614          	jrne	L173
1116                     ; 228     TI1_Config((uint8_t)TIM2_ICPolarity,
1116                     ; 229                (uint8_t)TIM2_ICSelection,
1116                     ; 230                (uint8_t)TIM2_ICFilter);
1118  0058 7b07          	ld	a,(OFST+7,sp)
1119  005a 88            	push	a
1120  005b 7b06          	ld	a,(OFST+6,sp)
1121  005d 97            	ld	xl,a
1122  005e 7b03          	ld	a,(OFST+3,sp)
1123  0060 95            	ld	xh,a
1124  0061 cd0000        	call	L3_TI1_Config
1126  0064 84            	pop	a
1127                     ; 233     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1129  0065 7b06          	ld	a,(OFST+6,sp)
1130  0067 cd0000        	call	_TIM2_SetIC1Prescaler
1133  006a 2029          	jra	L373
1134  006c               L173:
1135                     ; 235   else if (TIM2_Channel == TIM2_CHANNEL_2)
1137  006c 4a            	dec	a
1138  006d 2614          	jrne	L573
1139                     ; 238     TI2_Config((uint8_t)TIM2_ICPolarity,
1139                     ; 239                (uint8_t)TIM2_ICSelection,
1139                     ; 240                (uint8_t)TIM2_ICFilter);
1141  006f 7b07          	ld	a,(OFST+7,sp)
1142  0071 88            	push	a
1143  0072 7b06          	ld	a,(OFST+6,sp)
1144  0074 97            	ld	xl,a
1145  0075 7b03          	ld	a,(OFST+3,sp)
1146  0077 95            	ld	xh,a
1147  0078 cd0000        	call	L5_TI2_Config
1149  007b 84            	pop	a
1150                     ; 243     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1152  007c 7b06          	ld	a,(OFST+6,sp)
1153  007e cd0000        	call	_TIM2_SetIC2Prescaler
1156  0081 2012          	jra	L373
1157  0083               L573:
1158                     ; 248     TI3_Config((uint8_t)TIM2_ICPolarity,
1158                     ; 249                (uint8_t)TIM2_ICSelection,
1158                     ; 250                (uint8_t)TIM2_ICFilter);
1160  0083 7b07          	ld	a,(OFST+7,sp)
1161  0085 88            	push	a
1162  0086 7b06          	ld	a,(OFST+6,sp)
1163  0088 97            	ld	xl,a
1164  0089 7b03          	ld	a,(OFST+3,sp)
1165  008b 95            	ld	xh,a
1166  008c cd0000        	call	L7_TI3_Config
1168  008f 84            	pop	a
1169                     ; 253     TIM2_SetIC3Prescaler(TIM2_ICPrescaler);
1171  0090 7b06          	ld	a,(OFST+6,sp)
1172  0092 cd0000        	call	_TIM2_SetIC3Prescaler
1174  0095               L373:
1175                     ; 255 }
1178  0095 85            	popw	x
1179  0096 81            	ret	
1181  0097               LC004:
1182  0097 89            	pushw	x
1183  0098 5f            	clrw	x
1184  0099 89            	pushw	x
1185  009a ae0000        	ldw	x,#L302
1186  009d cd0000        	call	_assert_failed
1188  00a0 5b04          	addw	sp,#4
1189  00a2 81            	ret	
1279                     ; 266 void TIM2_PWMIConfig(TIM2_Channel_TypeDef TIM2_Channel,
1279                     ; 267                      TIM2_ICPolarity_TypeDef TIM2_ICPolarity,
1279                     ; 268                      TIM2_ICSelection_TypeDef TIM2_ICSelection,
1279                     ; 269                      TIM2_ICPSC_TypeDef TIM2_ICPrescaler,
1279                     ; 270                      uint8_t TIM2_ICFilter)
1279                     ; 271 {
1280                     .text:	section	.text,new
1281  0000               _TIM2_PWMIConfig:
1283  0000 89            	pushw	x
1284  0001 89            	pushw	x
1285       00000002      OFST:	set	2
1288                     ; 272   uint8_t icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1290                     ; 273   uint8_t icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1292                     ; 276   assert_param(IS_TIM2_PWMI_CHANNEL_OK(TIM2_Channel));
1294  0002 7b03          	ld	a,(OFST+1,sp)
1295  0004 2709          	jreq	L022
1296  0006 4a            	dec	a
1297  0007 2706          	jreq	L022
1298  0009 ae0114        	ldw	x,#276
1299  000c cd00b2        	call	LC005
1300  000f               L022:
1301                     ; 277   assert_param(IS_TIM2_IC_POLARITY_OK(TIM2_ICPolarity));
1303  000f 7b04          	ld	a,(OFST+2,sp)
1304  0011 270a          	jreq	L032
1305  0013 a144          	cp	a,#68
1306  0015 2706          	jreq	L032
1307  0017 ae0115        	ldw	x,#277
1308  001a cd00b2        	call	LC005
1309  001d               L032:
1310                     ; 278   assert_param(IS_TIM2_IC_SELECTION_OK(TIM2_ICSelection));
1312  001d 7b07          	ld	a,(OFST+5,sp)
1313  001f a101          	cp	a,#1
1314  0021 270e          	jreq	L042
1315  0023 a102          	cp	a,#2
1316  0025 270a          	jreq	L042
1317  0027 a103          	cp	a,#3
1318  0029 2706          	jreq	L042
1319  002b ae0116        	ldw	x,#278
1320  002e cd00b2        	call	LC005
1321  0031               L042:
1322                     ; 279   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_ICPrescaler));
1324  0031 7b08          	ld	a,(OFST+6,sp)
1325  0033 2711          	jreq	L052
1326  0035 a104          	cp	a,#4
1327  0037 270d          	jreq	L052
1328  0039 a108          	cp	a,#8
1329  003b 2709          	jreq	L052
1330  003d a10c          	cp	a,#12
1331  003f 2705          	jreq	L052
1332  0041 ae0117        	ldw	x,#279
1333  0044 ad6c          	call	LC005
1334  0046               L052:
1335                     ; 282   if (TIM2_ICPolarity != TIM2_ICPOLARITY_FALLING)
1337  0046 7b04          	ld	a,(OFST+2,sp)
1338  0048 a144          	cp	a,#68
1339  004a 2706          	jreq	L144
1340                     ; 284     icpolarity = (uint8_t)TIM2_ICPOLARITY_FALLING;
1342  004c a644          	ld	a,#68
1343  004e 6b01          	ld	(OFST-1,sp),a
1345  0050 2002          	jra	L344
1346  0052               L144:
1347                     ; 288     icpolarity = (uint8_t)TIM2_ICPOLARITY_RISING;
1349  0052 0f01          	clr	(OFST-1,sp)
1350  0054               L344:
1351                     ; 292   if (TIM2_ICSelection == TIM2_ICSELECTION_DIRECTTI)
1353  0054 7b07          	ld	a,(OFST+5,sp)
1354  0056 4a            	dec	a
1355  0057 2604          	jrne	L544
1356                     ; 294     icselection = (uint8_t)TIM2_ICSELECTION_INDIRECTTI;
1358  0059 a602          	ld	a,#2
1360  005b 2002          	jra	L744
1361  005d               L544:
1362                     ; 298     icselection = (uint8_t)TIM2_ICSELECTION_DIRECTTI;
1364  005d a601          	ld	a,#1
1365  005f               L744:
1366  005f 6b02          	ld	(OFST+0,sp),a
1367                     ; 301   if (TIM2_Channel == TIM2_CHANNEL_1)
1369  0061 7b03          	ld	a,(OFST+1,sp)
1370  0063 2626          	jrne	L154
1371                     ; 304     TI1_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1371                     ; 305                (uint8_t)TIM2_ICFilter);
1373  0065 7b09          	ld	a,(OFST+7,sp)
1374  0067 88            	push	a
1375  0068 7b08          	ld	a,(OFST+6,sp)
1376  006a 97            	ld	xl,a
1377  006b 7b05          	ld	a,(OFST+3,sp)
1378  006d 95            	ld	xh,a
1379  006e cd0000        	call	L3_TI1_Config
1381  0071 84            	pop	a
1382                     ; 308     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1384  0072 7b08          	ld	a,(OFST+6,sp)
1385  0074 cd0000        	call	_TIM2_SetIC1Prescaler
1387                     ; 311     TI2_Config(icpolarity, icselection, TIM2_ICFilter);
1389  0077 7b09          	ld	a,(OFST+7,sp)
1390  0079 88            	push	a
1391  007a 7b03          	ld	a,(OFST+1,sp)
1392  007c 97            	ld	xl,a
1393  007d 7b02          	ld	a,(OFST+0,sp)
1394  007f 95            	ld	xh,a
1395  0080 cd0000        	call	L5_TI2_Config
1397  0083 84            	pop	a
1398                     ; 314     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1400  0084 7b08          	ld	a,(OFST+6,sp)
1401  0086 cd0000        	call	_TIM2_SetIC2Prescaler
1404  0089 2024          	jra	L354
1405  008b               L154:
1406                     ; 319     TI2_Config((uint8_t)TIM2_ICPolarity, (uint8_t)TIM2_ICSelection,
1406                     ; 320                (uint8_t)TIM2_ICFilter);
1408  008b 7b09          	ld	a,(OFST+7,sp)
1409  008d 88            	push	a
1410  008e 7b08          	ld	a,(OFST+6,sp)
1411  0090 97            	ld	xl,a
1412  0091 7b05          	ld	a,(OFST+3,sp)
1413  0093 95            	ld	xh,a
1414  0094 cd0000        	call	L5_TI2_Config
1416  0097 84            	pop	a
1417                     ; 323     TIM2_SetIC2Prescaler(TIM2_ICPrescaler);
1419  0098 7b08          	ld	a,(OFST+6,sp)
1420  009a cd0000        	call	_TIM2_SetIC2Prescaler
1422                     ; 326     TI1_Config((uint8_t)icpolarity, icselection, (uint8_t)TIM2_ICFilter);
1424  009d 7b09          	ld	a,(OFST+7,sp)
1425  009f 88            	push	a
1426  00a0 7b03          	ld	a,(OFST+1,sp)
1427  00a2 97            	ld	xl,a
1428  00a3 7b02          	ld	a,(OFST+0,sp)
1429  00a5 95            	ld	xh,a
1430  00a6 cd0000        	call	L3_TI1_Config
1432  00a9 84            	pop	a
1433                     ; 329     TIM2_SetIC1Prescaler(TIM2_ICPrescaler);
1435  00aa 7b08          	ld	a,(OFST+6,sp)
1436  00ac cd0000        	call	_TIM2_SetIC1Prescaler
1438  00af               L354:
1439                     ; 331 }
1442  00af 5b04          	addw	sp,#4
1443  00b1 81            	ret	
1445  00b2               LC005:
1446  00b2 89            	pushw	x
1447  00b3 5f            	clrw	x
1448  00b4 89            	pushw	x
1449  00b5 ae0000        	ldw	x,#L302
1450  00b8 cd0000        	call	_assert_failed
1452  00bb 5b04          	addw	sp,#4
1453  00bd 81            	ret	
1508                     ; 339 void TIM2_Cmd(FunctionalState NewState)
1508                     ; 340 {
1509                     .text:	section	.text,new
1510  0000               _TIM2_Cmd:
1512  0000 88            	push	a
1513       00000000      OFST:	set	0
1516                     ; 342   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1518  0001 4d            	tnz	a
1519  0002 2711          	jreq	L203
1520  0004 4a            	dec	a
1521  0005 270e          	jreq	L203
1522  0007 ae0156        	ldw	x,#342
1523  000a 89            	pushw	x
1524  000b 5f            	clrw	x
1525  000c 89            	pushw	x
1526  000d ae0000        	ldw	x,#L302
1527  0010 cd0000        	call	_assert_failed
1529  0013 5b04          	addw	sp,#4
1530  0015               L203:
1531                     ; 345   if (NewState != DISABLE)
1533  0015 7b01          	ld	a,(OFST+1,sp)
1534  0017 2706          	jreq	L305
1535                     ; 347     TIM2->CR1 |= (uint8_t)TIM2_CR1_CEN;
1537  0019 72105300      	bset	21248,#0
1539  001d 2004          	jra	L505
1540  001f               L305:
1541                     ; 351     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_CEN);
1543  001f 72115300      	bres	21248,#0
1544  0023               L505:
1545                     ; 353 }
1548  0023 84            	pop	a
1549  0024 81            	ret	
1629                     ; 368 void TIM2_ITConfig(TIM2_IT_TypeDef TIM2_IT, FunctionalState NewState)
1629                     ; 369 {
1630                     .text:	section	.text,new
1631  0000               _TIM2_ITConfig:
1633  0000 89            	pushw	x
1634       00000000      OFST:	set	0
1637                     ; 371   assert_param(IS_TIM2_IT_OK(TIM2_IT));
1639  0001 9e            	ld	a,xh
1640  0002 4d            	tnz	a
1641  0003 2705          	jreq	L013
1642  0005 9e            	ld	a,xh
1643  0006 a110          	cp	a,#16
1644  0008 2505          	jrult	L213
1645  000a               L013:
1646  000a ae0173        	ldw	x,#371
1647  000d ad22          	call	LC006
1648  000f               L213:
1649                     ; 372   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1651  000f 7b02          	ld	a,(OFST+2,sp)
1652  0011 2708          	jreq	L223
1653  0013 4a            	dec	a
1654  0014 2705          	jreq	L223
1655  0016 ae0174        	ldw	x,#372
1656  0019 ad16          	call	LC006
1657  001b               L223:
1658                     ; 374   if (NewState != DISABLE)
1660  001b 7b02          	ld	a,(OFST+2,sp)
1661  001d 2707          	jreq	L545
1662                     ; 377     TIM2->IER |= (uint8_t)TIM2_IT;
1664  001f c65301        	ld	a,21249
1665  0022 1a01          	or	a,(OFST+1,sp)
1667  0024 2006          	jra	L745
1668  0026               L545:
1669                     ; 382     TIM2->IER &= (uint8_t)(~TIM2_IT);
1671  0026 7b01          	ld	a,(OFST+1,sp)
1672  0028 43            	cpl	a
1673  0029 c45301        	and	a,21249
1674  002c               L745:
1675  002c c75301        	ld	21249,a
1676                     ; 384 }
1679  002f 85            	popw	x
1680  0030 81            	ret	
1682  0031               LC006:
1683  0031 89            	pushw	x
1684  0032 5f            	clrw	x
1685  0033 89            	pushw	x
1686  0034 ae0000        	ldw	x,#L302
1687  0037 cd0000        	call	_assert_failed
1689  003a 5b04          	addw	sp,#4
1690  003c 81            	ret	
1726                     ; 392 void TIM2_UpdateDisableConfig(FunctionalState NewState)
1726                     ; 393 {
1727                     .text:	section	.text,new
1728  0000               _TIM2_UpdateDisableConfig:
1730  0000 88            	push	a
1731       00000000      OFST:	set	0
1734                     ; 395   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1736  0001 4d            	tnz	a
1737  0002 2711          	jreq	L433
1738  0004 4a            	dec	a
1739  0005 270e          	jreq	L433
1740  0007 ae018b        	ldw	x,#395
1741  000a 89            	pushw	x
1742  000b 5f            	clrw	x
1743  000c 89            	pushw	x
1744  000d ae0000        	ldw	x,#L302
1745  0010 cd0000        	call	_assert_failed
1747  0013 5b04          	addw	sp,#4
1748  0015               L433:
1749                     ; 398   if (NewState != DISABLE)
1751  0015 7b01          	ld	a,(OFST+1,sp)
1752  0017 2706          	jreq	L765
1753                     ; 400     TIM2->CR1 |= (uint8_t)TIM2_CR1_UDIS;
1755  0019 72125300      	bset	21248,#1
1757  001d 2004          	jra	L175
1758  001f               L765:
1759                     ; 404     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_UDIS);
1761  001f 72135300      	bres	21248,#1
1762  0023               L175:
1763                     ; 406 }
1766  0023 84            	pop	a
1767  0024 81            	ret	
1826                     ; 416 void TIM2_UpdateRequestConfig(TIM2_UpdateSource_TypeDef TIM2_UpdateSource)
1826                     ; 417 {
1827                     .text:	section	.text,new
1828  0000               _TIM2_UpdateRequestConfig:
1830  0000 88            	push	a
1831       00000000      OFST:	set	0
1834                     ; 419   assert_param(IS_TIM2_UPDATE_SOURCE_OK(TIM2_UpdateSource));
1836  0001 4d            	tnz	a
1837  0002 2711          	jreq	L643
1838  0004 4a            	dec	a
1839  0005 270e          	jreq	L643
1840  0007 ae01a3        	ldw	x,#419
1841  000a 89            	pushw	x
1842  000b 5f            	clrw	x
1843  000c 89            	pushw	x
1844  000d ae0000        	ldw	x,#L302
1845  0010 cd0000        	call	_assert_failed
1847  0013 5b04          	addw	sp,#4
1848  0015               L643:
1849                     ; 422   if (TIM2_UpdateSource != TIM2_UPDATESOURCE_GLOBAL)
1851  0015 7b01          	ld	a,(OFST+1,sp)
1852  0017 2706          	jreq	L126
1853                     ; 424     TIM2->CR1 |= (uint8_t)TIM2_CR1_URS;
1855  0019 72145300      	bset	21248,#2
1857  001d 2004          	jra	L326
1858  001f               L126:
1859                     ; 428     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_URS);
1861  001f 72155300      	bres	21248,#2
1862  0023               L326:
1863                     ; 430 }
1866  0023 84            	pop	a
1867  0024 81            	ret	
1925                     ; 440 void TIM2_SelectOnePulseMode(TIM2_OPMode_TypeDef TIM2_OPMode)
1925                     ; 441 {
1926                     .text:	section	.text,new
1927  0000               _TIM2_SelectOnePulseMode:
1929  0000 88            	push	a
1930       00000000      OFST:	set	0
1933                     ; 443   assert_param(IS_TIM2_OPM_MODE_OK(TIM2_OPMode));
1935  0001 a101          	cp	a,#1
1936  0003 2711          	jreq	L063
1937  0005 4d            	tnz	a
1938  0006 270e          	jreq	L063
1939  0008 ae01bb        	ldw	x,#443
1940  000b 89            	pushw	x
1941  000c 5f            	clrw	x
1942  000d 89            	pushw	x
1943  000e ae0000        	ldw	x,#L302
1944  0011 cd0000        	call	_assert_failed
1946  0014 5b04          	addw	sp,#4
1947  0016               L063:
1948                     ; 446   if (TIM2_OPMode != TIM2_OPMODE_REPETITIVE)
1950  0016 7b01          	ld	a,(OFST+1,sp)
1951  0018 2706          	jreq	L356
1952                     ; 448     TIM2->CR1 |= (uint8_t)TIM2_CR1_OPM;
1954  001a 72165300      	bset	21248,#3
1956  001e 2004          	jra	L556
1957  0020               L356:
1958                     ; 452     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_OPM);
1960  0020 72175300      	bres	21248,#3
1961  0024               L556:
1962                     ; 454 }
1965  0024 84            	pop	a
1966  0025 81            	ret	
2035                     ; 484 void TIM2_PrescalerConfig(TIM2_Prescaler_TypeDef Prescaler,
2035                     ; 485                           TIM2_PSCReloadMode_TypeDef TIM2_PSCReloadMode)
2035                     ; 486 {
2036                     .text:	section	.text,new
2037  0000               _TIM2_PrescalerConfig:
2039  0000 89            	pushw	x
2040       00000000      OFST:	set	0
2043                     ; 488   assert_param(IS_TIM2_PRESCALER_RELOAD_OK(TIM2_PSCReloadMode));
2045  0001 9f            	ld	a,xl
2046  0002 4d            	tnz	a
2047  0003 2709          	jreq	L273
2048  0005 9f            	ld	a,xl
2049  0006 4a            	dec	a
2050  0007 2705          	jreq	L273
2051  0009 ae01e8        	ldw	x,#488
2052  000c ad51          	call	LC007
2053  000e               L273:
2054                     ; 489   assert_param(IS_TIM2_PRESCALER_OK(Prescaler));
2056  000e 7b01          	ld	a,(OFST+1,sp)
2057  0010 2743          	jreq	L204
2058  0012 a101          	cp	a,#1
2059  0014 273f          	jreq	L204
2060  0016 a102          	cp	a,#2
2061  0018 273b          	jreq	L204
2062  001a a103          	cp	a,#3
2063  001c 2737          	jreq	L204
2064  001e a104          	cp	a,#4
2065  0020 2733          	jreq	L204
2066  0022 a105          	cp	a,#5
2067  0024 272f          	jreq	L204
2068  0026 a106          	cp	a,#6
2069  0028 272b          	jreq	L204
2070  002a a107          	cp	a,#7
2071  002c 2727          	jreq	L204
2072  002e a108          	cp	a,#8
2073  0030 2723          	jreq	L204
2074  0032 a109          	cp	a,#9
2075  0034 271f          	jreq	L204
2076  0036 a10a          	cp	a,#10
2077  0038 271b          	jreq	L204
2078  003a a10b          	cp	a,#11
2079  003c 2717          	jreq	L204
2080  003e a10c          	cp	a,#12
2081  0040 2713          	jreq	L204
2082  0042 a10d          	cp	a,#13
2083  0044 270f          	jreq	L204
2084  0046 a10e          	cp	a,#14
2085  0048 270b          	jreq	L204
2086  004a a10f          	cp	a,#15
2087  004c 2707          	jreq	L204
2088  004e ae01e9        	ldw	x,#489
2089  0051 ad0c          	call	LC007
2090  0053 7b01          	ld	a,(OFST+1,sp)
2091  0055               L204:
2092                     ; 492   TIM2->PSCR = (uint8_t)Prescaler;
2094  0055 c7530c        	ld	21260,a
2095                     ; 495   TIM2->EGR = (uint8_t)TIM2_PSCReloadMode;
2097  0058 7b02          	ld	a,(OFST+2,sp)
2098  005a c75304        	ld	21252,a
2099                     ; 496 }
2102  005d 85            	popw	x
2103  005e 81            	ret	
2105  005f               LC007:
2106  005f 89            	pushw	x
2107  0060 5f            	clrw	x
2108  0061 89            	pushw	x
2109  0062 ae0000        	ldw	x,#L302
2110  0065 cd0000        	call	_assert_failed
2112  0068 5b04          	addw	sp,#4
2113  006a 81            	ret	
2171                     ; 507 void TIM2_ForcedOC1Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2171                     ; 508 {
2172                     .text:	section	.text,new
2173  0000               _TIM2_ForcedOC1Config:
2175  0000 88            	push	a
2176       00000000      OFST:	set	0
2179                     ; 510   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2181  0001 a150          	cp	a,#80
2182  0003 2712          	jreq	L414
2183  0005 a140          	cp	a,#64
2184  0007 270e          	jreq	L414
2185  0009 ae01fe        	ldw	x,#510
2186  000c 89            	pushw	x
2187  000d 5f            	clrw	x
2188  000e 89            	pushw	x
2189  000f ae0000        	ldw	x,#L302
2190  0012 cd0000        	call	_assert_failed
2192  0015 5b04          	addw	sp,#4
2193  0017               L414:
2194                     ; 513   TIM2->CCMR1  =  (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))  
2194                     ; 514                             | (uint8_t)TIM2_ForcedAction);
2196  0017 c65305        	ld	a,21253
2197  001a a48f          	and	a,#143
2198  001c 1a01          	or	a,(OFST+1,sp)
2199  001e c75305        	ld	21253,a
2200                     ; 515 }
2203  0021 84            	pop	a
2204  0022 81            	ret	
2241                     ; 526 void TIM2_ForcedOC2Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2241                     ; 527 {
2242                     .text:	section	.text,new
2243  0000               _TIM2_ForcedOC2Config:
2245  0000 88            	push	a
2246       00000000      OFST:	set	0
2249                     ; 529   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2251  0001 a150          	cp	a,#80
2252  0003 2712          	jreq	L624
2253  0005 a140          	cp	a,#64
2254  0007 270e          	jreq	L624
2255  0009 ae0211        	ldw	x,#529
2256  000c 89            	pushw	x
2257  000d 5f            	clrw	x
2258  000e 89            	pushw	x
2259  000f ae0000        	ldw	x,#L302
2260  0012 cd0000        	call	_assert_failed
2262  0015 5b04          	addw	sp,#4
2263  0017               L624:
2264                     ; 532   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))  
2264                     ; 533                           | (uint8_t)TIM2_ForcedAction);
2266  0017 c65306        	ld	a,21254
2267  001a a48f          	and	a,#143
2268  001c 1a01          	or	a,(OFST+1,sp)
2269  001e c75306        	ld	21254,a
2270                     ; 534 }
2273  0021 84            	pop	a
2274  0022 81            	ret	
2311                     ; 545 void TIM2_ForcedOC3Config(TIM2_ForcedAction_TypeDef TIM2_ForcedAction)
2311                     ; 546 {
2312                     .text:	section	.text,new
2313  0000               _TIM2_ForcedOC3Config:
2315  0000 88            	push	a
2316       00000000      OFST:	set	0
2319                     ; 548   assert_param(IS_TIM2_FORCED_ACTION_OK(TIM2_ForcedAction));
2321  0001 a150          	cp	a,#80
2322  0003 2712          	jreq	L044
2323  0005 a140          	cp	a,#64
2324  0007 270e          	jreq	L044
2325  0009 ae0224        	ldw	x,#548
2326  000c 89            	pushw	x
2327  000d 5f            	clrw	x
2328  000e 89            	pushw	x
2329  000f ae0000        	ldw	x,#L302
2330  0012 cd0000        	call	_assert_failed
2332  0015 5b04          	addw	sp,#4
2333  0017               L044:
2334                     ; 551   TIM2->CCMR3  =  (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
2334                     ; 552                             | (uint8_t)TIM2_ForcedAction);
2336  0017 c65307        	ld	a,21255
2337  001a a48f          	and	a,#143
2338  001c 1a01          	or	a,(OFST+1,sp)
2339  001e c75307        	ld	21255,a
2340                     ; 553 }
2343  0021 84            	pop	a
2344  0022 81            	ret	
2381                     ; 561 void TIM2_ARRPreloadConfig(FunctionalState NewState)
2381                     ; 562 {
2382                     .text:	section	.text,new
2383  0000               _TIM2_ARRPreloadConfig:
2385  0000 88            	push	a
2386       00000000      OFST:	set	0
2389                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2391  0001 4d            	tnz	a
2392  0002 2711          	jreq	L254
2393  0004 4a            	dec	a
2394  0005 270e          	jreq	L254
2395  0007 ae0234        	ldw	x,#564
2396  000a 89            	pushw	x
2397  000b 5f            	clrw	x
2398  000c 89            	pushw	x
2399  000d ae0000        	ldw	x,#L302
2400  0010 cd0000        	call	_assert_failed
2402  0013 5b04          	addw	sp,#4
2403  0015               L254:
2404                     ; 567   if (NewState != DISABLE)
2406  0015 7b01          	ld	a,(OFST+1,sp)
2407  0017 2706          	jreq	L1101
2408                     ; 569     TIM2->CR1 |= (uint8_t)TIM2_CR1_ARPE;
2410  0019 721e5300      	bset	21248,#7
2412  001d 2004          	jra	L3101
2413  001f               L1101:
2414                     ; 573     TIM2->CR1 &= (uint8_t)(~TIM2_CR1_ARPE);
2416  001f 721f5300      	bres	21248,#7
2417  0023               L3101:
2418                     ; 575 }
2421  0023 84            	pop	a
2422  0024 81            	ret	
2459                     ; 583 void TIM2_OC1PreloadConfig(FunctionalState NewState)
2459                     ; 584 {
2460                     .text:	section	.text,new
2461  0000               _TIM2_OC1PreloadConfig:
2463  0000 88            	push	a
2464       00000000      OFST:	set	0
2467                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2469  0001 4d            	tnz	a
2470  0002 2711          	jreq	L464
2471  0004 4a            	dec	a
2472  0005 270e          	jreq	L464
2473  0007 ae024a        	ldw	x,#586
2474  000a 89            	pushw	x
2475  000b 5f            	clrw	x
2476  000c 89            	pushw	x
2477  000d ae0000        	ldw	x,#L302
2478  0010 cd0000        	call	_assert_failed
2480  0013 5b04          	addw	sp,#4
2481  0015               L464:
2482                     ; 589   if (NewState != DISABLE)
2484  0015 7b01          	ld	a,(OFST+1,sp)
2485  0017 2706          	jreq	L3301
2486                     ; 591     TIM2->CCMR1 |= (uint8_t)TIM2_CCMR_OCxPE;
2488  0019 72165305      	bset	21253,#3
2490  001d 2004          	jra	L5301
2491  001f               L3301:
2492                     ; 595     TIM2->CCMR1 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2494  001f 72175305      	bres	21253,#3
2495  0023               L5301:
2496                     ; 597 }
2499  0023 84            	pop	a
2500  0024 81            	ret	
2537                     ; 605 void TIM2_OC2PreloadConfig(FunctionalState NewState)
2537                     ; 606 {
2538                     .text:	section	.text,new
2539  0000               _TIM2_OC2PreloadConfig:
2541  0000 88            	push	a
2542       00000000      OFST:	set	0
2545                     ; 608   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2547  0001 4d            	tnz	a
2548  0002 2711          	jreq	L674
2549  0004 4a            	dec	a
2550  0005 270e          	jreq	L674
2551  0007 ae0260        	ldw	x,#608
2552  000a 89            	pushw	x
2553  000b 5f            	clrw	x
2554  000c 89            	pushw	x
2555  000d ae0000        	ldw	x,#L302
2556  0010 cd0000        	call	_assert_failed
2558  0013 5b04          	addw	sp,#4
2559  0015               L674:
2560                     ; 611   if (NewState != DISABLE)
2562  0015 7b01          	ld	a,(OFST+1,sp)
2563  0017 2706          	jreq	L5501
2564                     ; 613     TIM2->CCMR2 |= (uint8_t)TIM2_CCMR_OCxPE;
2566  0019 72165306      	bset	21254,#3
2568  001d 2004          	jra	L7501
2569  001f               L5501:
2570                     ; 617     TIM2->CCMR2 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2572  001f 72175306      	bres	21254,#3
2573  0023               L7501:
2574                     ; 619 }
2577  0023 84            	pop	a
2578  0024 81            	ret	
2615                     ; 627 void TIM2_OC3PreloadConfig(FunctionalState NewState)
2615                     ; 628 {
2616                     .text:	section	.text,new
2617  0000               _TIM2_OC3PreloadConfig:
2619  0000 88            	push	a
2620       00000000      OFST:	set	0
2623                     ; 630   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2625  0001 4d            	tnz	a
2626  0002 2711          	jreq	L015
2627  0004 4a            	dec	a
2628  0005 270e          	jreq	L015
2629  0007 ae0276        	ldw	x,#630
2630  000a 89            	pushw	x
2631  000b 5f            	clrw	x
2632  000c 89            	pushw	x
2633  000d ae0000        	ldw	x,#L302
2634  0010 cd0000        	call	_assert_failed
2636  0013 5b04          	addw	sp,#4
2637  0015               L015:
2638                     ; 633   if (NewState != DISABLE)
2640  0015 7b01          	ld	a,(OFST+1,sp)
2641  0017 2706          	jreq	L7701
2642                     ; 635     TIM2->CCMR3 |= (uint8_t)TIM2_CCMR_OCxPE;
2644  0019 72165307      	bset	21255,#3
2646  001d 2004          	jra	L1011
2647  001f               L7701:
2648                     ; 639     TIM2->CCMR3 &= (uint8_t)(~TIM2_CCMR_OCxPE);
2650  001f 72175307      	bres	21255,#3
2651  0023               L1011:
2652                     ; 641 }
2655  0023 84            	pop	a
2656  0024 81            	ret	
2730                     ; 653 void TIM2_GenerateEvent(TIM2_EventSource_TypeDef TIM2_EventSource)
2730                     ; 654 {
2731                     .text:	section	.text,new
2732  0000               _TIM2_GenerateEvent:
2734  0000 88            	push	a
2735       00000000      OFST:	set	0
2738                     ; 656   assert_param(IS_TIM2_EVENT_SOURCE_OK(TIM2_EventSource));
2740  0001 4d            	tnz	a
2741  0002 260e          	jrne	L025
2742  0004 ae0290        	ldw	x,#656
2743  0007 89            	pushw	x
2744  0008 5f            	clrw	x
2745  0009 89            	pushw	x
2746  000a ae0000        	ldw	x,#L302
2747  000d cd0000        	call	_assert_failed
2749  0010 5b04          	addw	sp,#4
2750  0012               L025:
2751                     ; 659   TIM2->EGR = (uint8_t)TIM2_EventSource;
2753  0012 7b01          	ld	a,(OFST+1,sp)
2754  0014 c75304        	ld	21252,a
2755                     ; 660 }
2758  0017 84            	pop	a
2759  0018 81            	ret	
2796                     ; 670 void TIM2_OC1PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2796                     ; 671 {
2797                     .text:	section	.text,new
2798  0000               _TIM2_OC1PolarityConfig:
2800  0000 88            	push	a
2801       00000000      OFST:	set	0
2804                     ; 673   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2806  0001 4d            	tnz	a
2807  0002 2712          	jreq	L235
2808  0004 a122          	cp	a,#34
2809  0006 270e          	jreq	L235
2810  0008 ae02a1        	ldw	x,#673
2811  000b 89            	pushw	x
2812  000c 5f            	clrw	x
2813  000d 89            	pushw	x
2814  000e ae0000        	ldw	x,#L302
2815  0011 cd0000        	call	_assert_failed
2817  0014 5b04          	addw	sp,#4
2818  0016               L235:
2819                     ; 676   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2821  0016 7b01          	ld	a,(OFST+1,sp)
2822  0018 2706          	jreq	L3511
2823                     ; 678     TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1P;
2825  001a 72125308      	bset	21256,#1
2827  001e 2004          	jra	L5511
2828  0020               L3511:
2829                     ; 682     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
2831  0020 72135308      	bres	21256,#1
2832  0024               L5511:
2833                     ; 684 }
2836  0024 84            	pop	a
2837  0025 81            	ret	
2874                     ; 694 void TIM2_OC2PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2874                     ; 695 {
2875                     .text:	section	.text,new
2876  0000               _TIM2_OC2PolarityConfig:
2878  0000 88            	push	a
2879       00000000      OFST:	set	0
2882                     ; 697   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2884  0001 4d            	tnz	a
2885  0002 2712          	jreq	L445
2886  0004 a122          	cp	a,#34
2887  0006 270e          	jreq	L445
2888  0008 ae02b9        	ldw	x,#697
2889  000b 89            	pushw	x
2890  000c 5f            	clrw	x
2891  000d 89            	pushw	x
2892  000e ae0000        	ldw	x,#L302
2893  0011 cd0000        	call	_assert_failed
2895  0014 5b04          	addw	sp,#4
2896  0016               L445:
2897                     ; 700   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2899  0016 7b01          	ld	a,(OFST+1,sp)
2900  0018 2706          	jreq	L5711
2901                     ; 702     TIM2->CCER1 |= TIM2_CCER1_CC2P;
2903  001a 721a5308      	bset	21256,#5
2905  001e 2004          	jra	L7711
2906  0020               L5711:
2907                     ; 706     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
2909  0020 721b5308      	bres	21256,#5
2910  0024               L7711:
2911                     ; 708 }
2914  0024 84            	pop	a
2915  0025 81            	ret	
2952                     ; 718 void TIM2_OC3PolarityConfig(TIM2_OCPolarity_TypeDef TIM2_OCPolarity)
2952                     ; 719 {
2953                     .text:	section	.text,new
2954  0000               _TIM2_OC3PolarityConfig:
2956  0000 88            	push	a
2957       00000000      OFST:	set	0
2960                     ; 721   assert_param(IS_TIM2_OC_POLARITY_OK(TIM2_OCPolarity));
2962  0001 4d            	tnz	a
2963  0002 2712          	jreq	L655
2964  0004 a122          	cp	a,#34
2965  0006 270e          	jreq	L655
2966  0008 ae02d1        	ldw	x,#721
2967  000b 89            	pushw	x
2968  000c 5f            	clrw	x
2969  000d 89            	pushw	x
2970  000e ae0000        	ldw	x,#L302
2971  0011 cd0000        	call	_assert_failed
2973  0014 5b04          	addw	sp,#4
2974  0016               L655:
2975                     ; 724   if (TIM2_OCPolarity != TIM2_OCPOLARITY_HIGH)
2977  0016 7b01          	ld	a,(OFST+1,sp)
2978  0018 2706          	jreq	L7121
2979                     ; 726     TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3P;
2981  001a 72125309      	bset	21257,#1
2983  001e 2004          	jra	L1221
2984  0020               L7121:
2985                     ; 730     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
2987  0020 72135309      	bres	21257,#1
2988  0024               L1221:
2989                     ; 732 }
2992  0024 84            	pop	a
2993  0025 81            	ret	
3039                     ; 745 void TIM2_CCxCmd(TIM2_Channel_TypeDef TIM2_Channel, FunctionalState NewState)
3039                     ; 746 {
3040                     .text:	section	.text,new
3041  0000               _TIM2_CCxCmd:
3043  0000 89            	pushw	x
3044       00000000      OFST:	set	0
3047                     ; 748   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3049  0001 9e            	ld	a,xh
3050  0002 4d            	tnz	a
3051  0003 270e          	jreq	L075
3052  0005 9e            	ld	a,xh
3053  0006 4a            	dec	a
3054  0007 270a          	jreq	L075
3055  0009 9e            	ld	a,xh
3056  000a a102          	cp	a,#2
3057  000c 2705          	jreq	L075
3058  000e ae02ec        	ldw	x,#748
3059  0011 ad43          	call	LC008
3060  0013               L075:
3061                     ; 749   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3063  0013 7b02          	ld	a,(OFST+2,sp)
3064  0015 2708          	jreq	L006
3065  0017 4a            	dec	a
3066  0018 2705          	jreq	L006
3067  001a ae02ed        	ldw	x,#749
3068  001d ad37          	call	LC008
3069  001f               L006:
3070                     ; 751   if (TIM2_Channel == TIM2_CHANNEL_1)
3072  001f 7b01          	ld	a,(OFST+1,sp)
3073  0021 2610          	jrne	L5421
3074                     ; 754     if (NewState != DISABLE)
3076  0023 7b02          	ld	a,(OFST+2,sp)
3077  0025 2706          	jreq	L7421
3078                     ; 756       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC1E;
3080  0027 72105308      	bset	21256,#0
3082  002b 2027          	jra	L3521
3083  002d               L7421:
3084                     ; 760       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3086  002d 72115308      	bres	21256,#0
3087  0031 2021          	jra	L3521
3088  0033               L5421:
3089                     ; 764   else if (TIM2_Channel == TIM2_CHANNEL_2)
3091  0033 4a            	dec	a
3092  0034 2610          	jrne	L5521
3093                     ; 767     if (NewState != DISABLE)
3095  0036 7b02          	ld	a,(OFST+2,sp)
3096  0038 2706          	jreq	L7521
3097                     ; 769       TIM2->CCER1 |= (uint8_t)TIM2_CCER1_CC2E;
3099  003a 72185308      	bset	21256,#4
3101  003e 2014          	jra	L3521
3102  0040               L7521:
3103                     ; 773       TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3105  0040 72195308      	bres	21256,#4
3106  0044 200e          	jra	L3521
3107  0046               L5521:
3108                     ; 779     if (NewState != DISABLE)
3110  0046 7b02          	ld	a,(OFST+2,sp)
3111  0048 2706          	jreq	L5621
3112                     ; 781       TIM2->CCER2 |= (uint8_t)TIM2_CCER2_CC3E;
3114  004a 72105309      	bset	21257,#0
3116  004e 2004          	jra	L3521
3117  0050               L5621:
3118                     ; 785       TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3120  0050 72115309      	bres	21257,#0
3121  0054               L3521:
3122                     ; 788 }
3125  0054 85            	popw	x
3126  0055 81            	ret	
3128  0056               LC008:
3129  0056 89            	pushw	x
3130  0057 5f            	clrw	x
3131  0058 89            	pushw	x
3132  0059 ae0000        	ldw	x,#L302
3133  005c cd0000        	call	_assert_failed
3135  005f 5b04          	addw	sp,#4
3136  0061 81            	ret	
3181                     ; 810 void TIM2_SelectOCxM(TIM2_Channel_TypeDef TIM2_Channel, TIM2_OCMode_TypeDef TIM2_OCMode)
3181                     ; 811 {
3182                     .text:	section	.text,new
3183  0000               _TIM2_SelectOCxM:
3185  0000 89            	pushw	x
3186       00000000      OFST:	set	0
3189                     ; 813   assert_param(IS_TIM2_CHANNEL_OK(TIM2_Channel));
3191  0001 9e            	ld	a,xh
3192  0002 4d            	tnz	a
3193  0003 270e          	jreq	L216
3194  0005 9e            	ld	a,xh
3195  0006 4a            	dec	a
3196  0007 270a          	jreq	L216
3197  0009 9e            	ld	a,xh
3198  000a a102          	cp	a,#2
3199  000c 2705          	jreq	L216
3200  000e ae032d        	ldw	x,#813
3201  0011 ad5c          	call	LC009
3202  0013               L216:
3203                     ; 814   assert_param(IS_TIM2_OCM_OK(TIM2_OCMode));
3205  0013 7b02          	ld	a,(OFST+2,sp)
3206  0015 2721          	jreq	L226
3207  0017 a110          	cp	a,#16
3208  0019 271d          	jreq	L226
3209  001b a120          	cp	a,#32
3210  001d 2719          	jreq	L226
3211  001f a130          	cp	a,#48
3212  0021 2715          	jreq	L226
3213  0023 a160          	cp	a,#96
3214  0025 2711          	jreq	L226
3215  0027 a170          	cp	a,#112
3216  0029 270d          	jreq	L226
3217  002b a150          	cp	a,#80
3218  002d 2709          	jreq	L226
3219  002f a140          	cp	a,#64
3220  0031 2705          	jreq	L226
3221  0033 ae032e        	ldw	x,#814
3222  0036 ad37          	call	LC009
3223  0038               L226:
3224                     ; 816   if (TIM2_Channel == TIM2_CHANNEL_1)
3226  0038 7b01          	ld	a,(OFST+1,sp)
3227  003a 2610          	jrne	L3131
3228                     ; 819     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
3230  003c 72115308      	bres	21256,#0
3231                     ; 822     TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_OCM))
3231                     ; 823                             | (uint8_t)TIM2_OCMode);
3233  0040 c65305        	ld	a,21253
3234  0043 a48f          	and	a,#143
3235  0045 1a02          	or	a,(OFST+2,sp)
3236  0047 c75305        	ld	21253,a
3238  004a 2021          	jra	L5131
3239  004c               L3131:
3240                     ; 825   else if (TIM2_Channel == TIM2_CHANNEL_2)
3242  004c 4a            	dec	a
3243  004d 2610          	jrne	L7131
3244                     ; 828     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
3246  004f 72195308      	bres	21256,#4
3247                     ; 831     TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_OCM))
3247                     ; 832                             | (uint8_t)TIM2_OCMode);
3249  0053 c65306        	ld	a,21254
3250  0056 a48f          	and	a,#143
3251  0058 1a02          	or	a,(OFST+2,sp)
3252  005a c75306        	ld	21254,a
3254  005d 200e          	jra	L5131
3255  005f               L7131:
3256                     ; 837     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3E);
3258  005f 72115309      	bres	21257,#0
3259                     ; 840     TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_OCM))
3259                     ; 841                             | (uint8_t)TIM2_OCMode);
3261  0063 c65307        	ld	a,21255
3262  0066 a48f          	and	a,#143
3263  0068 1a02          	or	a,(OFST+2,sp)
3264  006a c75307        	ld	21255,a
3265  006d               L5131:
3266                     ; 843 }
3269  006d 85            	popw	x
3270  006e 81            	ret	
3272  006f               LC009:
3273  006f 89            	pushw	x
3274  0070 5f            	clrw	x
3275  0071 89            	pushw	x
3276  0072 ae0000        	ldw	x,#L302
3277  0075 cd0000        	call	_assert_failed
3279  0078 5b04          	addw	sp,#4
3280  007a 81            	ret	
3311                     ; 851 void TIM2_SetCounter(uint16_t Counter)
3311                     ; 852 {
3312                     .text:	section	.text,new
3313  0000               _TIM2_SetCounter:
3317                     ; 854   TIM2->CNTRH = (uint8_t)(Counter >> 8);
3319  0000 9e            	ld	a,xh
3320  0001 c7530a        	ld	21258,a
3321                     ; 855   TIM2->CNTRL = (uint8_t)(Counter);
3323  0004 9f            	ld	a,xl
3324  0005 c7530b        	ld	21259,a
3325                     ; 856 }
3328  0008 81            	ret	
3360                     ; 864 void TIM2_SetAutoreload(uint16_t Autoreload)
3360                     ; 865 {
3361                     .text:	section	.text,new
3362  0000               _TIM2_SetAutoreload:
3366                     ; 867   TIM2->ARRH = (uint8_t)(Autoreload >> 8);
3368  0000 9e            	ld	a,xh
3369  0001 c7530d        	ld	21261,a
3370                     ; 868   TIM2->ARRL = (uint8_t)(Autoreload);
3372  0004 9f            	ld	a,xl
3373  0005 c7530e        	ld	21262,a
3374                     ; 869 }
3377  0008 81            	ret	
3409                     ; 877 void TIM2_SetCompare1(uint16_t Compare1)
3409                     ; 878 {
3410                     .text:	section	.text,new
3411  0000               _TIM2_SetCompare1:
3415                     ; 880   TIM2->CCR1H = (uint8_t)(Compare1 >> 8);
3417  0000 9e            	ld	a,xh
3418  0001 c7530f        	ld	21263,a
3419                     ; 881   TIM2->CCR1L = (uint8_t)(Compare1);
3421  0004 9f            	ld	a,xl
3422  0005 c75310        	ld	21264,a
3423                     ; 882 }
3426  0008 81            	ret	
3458                     ; 890 void TIM2_SetCompare2(uint16_t Compare2)
3458                     ; 891 {
3459                     .text:	section	.text,new
3460  0000               _TIM2_SetCompare2:
3464                     ; 893   TIM2->CCR2H = (uint8_t)(Compare2 >> 8);
3466  0000 9e            	ld	a,xh
3467  0001 c75311        	ld	21265,a
3468                     ; 894   TIM2->CCR2L = (uint8_t)(Compare2);
3470  0004 9f            	ld	a,xl
3471  0005 c75312        	ld	21266,a
3472                     ; 895 }
3475  0008 81            	ret	
3507                     ; 903 void TIM2_SetCompare3(uint16_t Compare3)
3507                     ; 904 {
3508                     .text:	section	.text,new
3509  0000               _TIM2_SetCompare3:
3513                     ; 906   TIM2->CCR3H = (uint8_t)(Compare3 >> 8);
3515  0000 9e            	ld	a,xh
3516  0001 c75313        	ld	21267,a
3517                     ; 907   TIM2->CCR3L = (uint8_t)(Compare3);
3519  0004 9f            	ld	a,xl
3520  0005 c75314        	ld	21268,a
3521                     ; 908 }
3524  0008 81            	ret	
3561                     ; 920 void TIM2_SetIC1Prescaler(TIM2_ICPSC_TypeDef TIM2_IC1Prescaler)
3561                     ; 921 {
3562                     .text:	section	.text,new
3563  0000               _TIM2_SetIC1Prescaler:
3565  0000 88            	push	a
3566       00000000      OFST:	set	0
3569                     ; 923   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC1Prescaler));
3571  0001 4d            	tnz	a
3572  0002 271a          	jreq	L646
3573  0004 a104          	cp	a,#4
3574  0006 2716          	jreq	L646
3575  0008 a108          	cp	a,#8
3576  000a 2712          	jreq	L646
3577  000c a10c          	cp	a,#12
3578  000e 270e          	jreq	L646
3579  0010 ae039b        	ldw	x,#923
3580  0013 89            	pushw	x
3581  0014 5f            	clrw	x
3582  0015 89            	pushw	x
3583  0016 ae0000        	ldw	x,#L302
3584  0019 cd0000        	call	_assert_failed
3586  001c 5b04          	addw	sp,#4
3587  001e               L646:
3588                     ; 926   TIM2->CCMR1 = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3588                     ; 927                           | (uint8_t)TIM2_IC1Prescaler);
3590  001e c65305        	ld	a,21253
3591  0021 a4f3          	and	a,#243
3592  0023 1a01          	or	a,(OFST+1,sp)
3593  0025 c75305        	ld	21253,a
3594                     ; 928 }
3597  0028 84            	pop	a
3598  0029 81            	ret	
3635                     ; 940 void TIM2_SetIC2Prescaler(TIM2_ICPSC_TypeDef TIM2_IC2Prescaler)
3635                     ; 941 {
3636                     .text:	section	.text,new
3637  0000               _TIM2_SetIC2Prescaler:
3639  0000 88            	push	a
3640       00000000      OFST:	set	0
3643                     ; 943   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC2Prescaler));
3645  0001 4d            	tnz	a
3646  0002 271a          	jreq	L066
3647  0004 a104          	cp	a,#4
3648  0006 2716          	jreq	L066
3649  0008 a108          	cp	a,#8
3650  000a 2712          	jreq	L066
3651  000c a10c          	cp	a,#12
3652  000e 270e          	jreq	L066
3653  0010 ae03af        	ldw	x,#943
3654  0013 89            	pushw	x
3655  0014 5f            	clrw	x
3656  0015 89            	pushw	x
3657  0016 ae0000        	ldw	x,#L302
3658  0019 cd0000        	call	_assert_failed
3660  001c 5b04          	addw	sp,#4
3661  001e               L066:
3662                     ; 946   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3662                     ; 947                           | (uint8_t)TIM2_IC2Prescaler);
3664  001e c65306        	ld	a,21254
3665  0021 a4f3          	and	a,#243
3666  0023 1a01          	or	a,(OFST+1,sp)
3667  0025 c75306        	ld	21254,a
3668                     ; 948 }
3671  0028 84            	pop	a
3672  0029 81            	ret	
3709                     ; 960 void TIM2_SetIC3Prescaler(TIM2_ICPSC_TypeDef TIM2_IC3Prescaler)
3709                     ; 961 {
3710                     .text:	section	.text,new
3711  0000               _TIM2_SetIC3Prescaler:
3713  0000 88            	push	a
3714       00000000      OFST:	set	0
3717                     ; 964   assert_param(IS_TIM2_IC_PRESCALER_OK(TIM2_IC3Prescaler));
3719  0001 4d            	tnz	a
3720  0002 271a          	jreq	L276
3721  0004 a104          	cp	a,#4
3722  0006 2716          	jreq	L276
3723  0008 a108          	cp	a,#8
3724  000a 2712          	jreq	L276
3725  000c a10c          	cp	a,#12
3726  000e 270e          	jreq	L276
3727  0010 ae03c4        	ldw	x,#964
3728  0013 89            	pushw	x
3729  0014 5f            	clrw	x
3730  0015 89            	pushw	x
3731  0016 ae0000        	ldw	x,#L302
3732  0019 cd0000        	call	_assert_failed
3734  001c 5b04          	addw	sp,#4
3735  001e               L276:
3736                     ; 966   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~TIM2_CCMR_ICxPSC))
3736                     ; 967                           | (uint8_t)TIM2_IC3Prescaler);
3738  001e c65307        	ld	a,21255
3739  0021 a4f3          	and	a,#243
3740  0023 1a01          	or	a,(OFST+1,sp)
3741  0025 c75307        	ld	21255,a
3742                     ; 968 }
3745  0028 84            	pop	a
3746  0029 81            	ret	
3792                     ; 975 uint16_t TIM2_GetCapture1(void)
3792                     ; 976 {
3793                     .text:	section	.text,new
3794  0000               _TIM2_GetCapture1:
3796  0000 5204          	subw	sp,#4
3797       00000004      OFST:	set	4
3800                     ; 978   uint16_t tmpccr1 = 0;
3802                     ; 979   uint8_t tmpccr1l=0, tmpccr1h=0;
3806                     ; 981   tmpccr1h = TIM2->CCR1H;
3808  0002 c6530f        	ld	a,21263
3809  0005 6b02          	ld	(OFST-2,sp),a
3810                     ; 982   tmpccr1l = TIM2->CCR1L;
3812  0007 c65310        	ld	a,21264
3813  000a 6b01          	ld	(OFST-3,sp),a
3814                     ; 984   tmpccr1 = (uint16_t)(tmpccr1l);
3816  000c 5f            	clrw	x
3817  000d 97            	ld	xl,a
3818  000e 1f03          	ldw	(OFST-1,sp),x
3819                     ; 985   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
3821  0010 7b02          	ld	a,(OFST-2,sp)
3822  0012 97            	ld	xl,a
3823  0013 7b04          	ld	a,(OFST+0,sp)
3824  0015 01            	rrwa	x,a
3825  0016 1a03          	or	a,(OFST-1,sp)
3826  0018 01            	rrwa	x,a
3827                     ; 987   return (uint16_t)tmpccr1;
3831  0019 5b04          	addw	sp,#4
3832  001b 81            	ret	
3878                     ; 995 uint16_t TIM2_GetCapture2(void)
3878                     ; 996 {
3879                     .text:	section	.text,new
3880  0000               _TIM2_GetCapture2:
3882  0000 5204          	subw	sp,#4
3883       00000004      OFST:	set	4
3886                     ; 998   uint16_t tmpccr2 = 0;
3888                     ; 999   uint8_t tmpccr2l=0, tmpccr2h=0;
3892                     ; 1001   tmpccr2h = TIM2->CCR2H;
3894  0002 c65311        	ld	a,21265
3895  0005 6b02          	ld	(OFST-2,sp),a
3896                     ; 1002   tmpccr2l = TIM2->CCR2L;
3898  0007 c65312        	ld	a,21266
3899  000a 6b01          	ld	(OFST-3,sp),a
3900                     ; 1004   tmpccr2 = (uint16_t)(tmpccr2l);
3902  000c 5f            	clrw	x
3903  000d 97            	ld	xl,a
3904  000e 1f03          	ldw	(OFST-1,sp),x
3905                     ; 1005   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
3907  0010 7b02          	ld	a,(OFST-2,sp)
3908  0012 97            	ld	xl,a
3909  0013 7b04          	ld	a,(OFST+0,sp)
3910  0015 01            	rrwa	x,a
3911  0016 1a03          	or	a,(OFST-1,sp)
3912  0018 01            	rrwa	x,a
3913                     ; 1007   return (uint16_t)tmpccr2;
3917  0019 5b04          	addw	sp,#4
3918  001b 81            	ret	
3964                     ; 1015 uint16_t TIM2_GetCapture3(void)
3964                     ; 1016 {
3965                     .text:	section	.text,new
3966  0000               _TIM2_GetCapture3:
3968  0000 5204          	subw	sp,#4
3969       00000004      OFST:	set	4
3972                     ; 1018   uint16_t tmpccr3 = 0;
3974                     ; 1019   uint8_t tmpccr3l=0, tmpccr3h=0;
3978                     ; 1021   tmpccr3h = TIM2->CCR3H;
3980  0002 c65313        	ld	a,21267
3981  0005 6b02          	ld	(OFST-2,sp),a
3982                     ; 1022   tmpccr3l = TIM2->CCR3L;
3984  0007 c65314        	ld	a,21268
3985  000a 6b01          	ld	(OFST-3,sp),a
3986                     ; 1024   tmpccr3 = (uint16_t)(tmpccr3l);
3988  000c 5f            	clrw	x
3989  000d 97            	ld	xl,a
3990  000e 1f03          	ldw	(OFST-1,sp),x
3991                     ; 1025   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
3993  0010 7b02          	ld	a,(OFST-2,sp)
3994  0012 97            	ld	xl,a
3995  0013 7b04          	ld	a,(OFST+0,sp)
3996  0015 01            	rrwa	x,a
3997  0016 1a03          	or	a,(OFST-1,sp)
3998  0018 01            	rrwa	x,a
3999                     ; 1027   return (uint16_t)tmpccr3;
4003  0019 5b04          	addw	sp,#4
4004  001b 81            	ret	
4036                     ; 1035 uint16_t TIM2_GetCounter(void)
4036                     ; 1036 {
4037                     .text:	section	.text,new
4038  0000               _TIM2_GetCounter:
4040  0000 89            	pushw	x
4041       00000002      OFST:	set	2
4044                     ; 1037   uint16_t tmpcntr = 0;
4046                     ; 1039   tmpcntr =  ((uint16_t)TIM2->CNTRH << 8);
4048  0001 c6530a        	ld	a,21258
4049  0004 97            	ld	xl,a
4050  0005 4f            	clr	a
4051  0006 02            	rlwa	x,a
4052  0007 1f01          	ldw	(OFST-1,sp),x
4053                     ; 1041   return (uint16_t)( tmpcntr| (uint16_t)(TIM2->CNTRL));
4055  0009 c6530b        	ld	a,21259
4056  000c 5f            	clrw	x
4057  000d 97            	ld	xl,a
4058  000e 01            	rrwa	x,a
4059  000f 1a02          	or	a,(OFST+0,sp)
4060  0011 01            	rrwa	x,a
4061  0012 1a01          	or	a,(OFST-1,sp)
4062  0014 01            	rrwa	x,a
4065  0015 5b02          	addw	sp,#2
4066  0017 81            	ret	
4090                     ; 1049 TIM2_Prescaler_TypeDef TIM2_GetPrescaler(void)
4090                     ; 1050 {
4091                     .text:	section	.text,new
4092  0000               _TIM2_GetPrescaler:
4096                     ; 1052   return (TIM2_Prescaler_TypeDef)(TIM2->PSCR);
4098  0000 c6530c        	ld	a,21260
4101  0003 81            	ret	
4237                     ; 1068 FlagStatus TIM2_GetFlagStatus(TIM2_FLAG_TypeDef TIM2_FLAG)
4237                     ; 1069 {
4238                     .text:	section	.text,new
4239  0000               _TIM2_GetFlagStatus:
4241  0000 89            	pushw	x
4242  0001 89            	pushw	x
4243       00000002      OFST:	set	2
4246                     ; 1070   FlagStatus bitstatus = RESET;
4248                     ; 1071   uint8_t tim2_flag_l = 0, tim2_flag_h = 0;
4252                     ; 1074   assert_param(IS_TIM2_GET_FLAG_OK(TIM2_FLAG));
4254  0002 1e03          	ldw	x,(OFST+1,sp)
4255  0004 a30001        	cpw	x,#1
4256  0007 272c          	jreq	L617
4257  0009 a30002        	cpw	x,#2
4258  000c 2727          	jreq	L617
4259  000e a30004        	cpw	x,#4
4260  0011 2722          	jreq	L617
4261  0013 a30008        	cpw	x,#8
4262  0016 271d          	jreq	L617
4263  0018 a30200        	cpw	x,#512
4264  001b 2718          	jreq	L617
4265  001d a30400        	cpw	x,#1024
4266  0020 2713          	jreq	L617
4267  0022 a30800        	cpw	x,#2048
4268  0025 270e          	jreq	L617
4269  0027 ae0432        	ldw	x,#1074
4270  002a 89            	pushw	x
4271  002b 5f            	clrw	x
4272  002c 89            	pushw	x
4273  002d ae0000        	ldw	x,#L302
4274  0030 cd0000        	call	_assert_failed
4276  0033 5b04          	addw	sp,#4
4277  0035               L617:
4278                     ; 1076   tim2_flag_l = (uint8_t)(TIM2->SR1 & (uint8_t)TIM2_FLAG);
4280  0035 c65302        	ld	a,21250
4281  0038 1404          	and	a,(OFST+2,sp)
4282  003a 6b01          	ld	(OFST-1,sp),a
4283                     ; 1077   tim2_flag_h = (uint8_t)((uint16_t)TIM2_FLAG >> 8);
4285  003c 7b03          	ld	a,(OFST+1,sp)
4286  003e 6b02          	ld	(OFST+0,sp),a
4287                     ; 1079   if ((tim2_flag_l | (uint8_t)(TIM2->SR2 & tim2_flag_h)) != (uint8_t)RESET )
4289  0040 c45303        	and	a,21251
4290  0043 1a01          	or	a,(OFST-1,sp)
4291  0045 2702          	jreq	L5561
4292                     ; 1081     bitstatus = SET;
4294  0047 a601          	ld	a,#1
4296  0049               L5561:
4297                     ; 1085     bitstatus = RESET;
4299                     ; 1087   return (FlagStatus)bitstatus;
4303  0049 5b04          	addw	sp,#4
4304  004b 81            	ret	
4340                     ; 1103 void TIM2_ClearFlag(TIM2_FLAG_TypeDef TIM2_FLAG)
4340                     ; 1104 {
4341                     .text:	section	.text,new
4342  0000               _TIM2_ClearFlag:
4344  0000 89            	pushw	x
4345       00000000      OFST:	set	0
4348                     ; 1106   assert_param(IS_TIM2_CLEAR_FLAG_OK(TIM2_FLAG));
4350  0001 01            	rrwa	x,a
4351  0002 a4f0          	and	a,#240
4352  0004 01            	rrwa	x,a
4353  0005 a4f1          	and	a,#241
4354  0007 01            	rrwa	x,a
4355  0008 5d            	tnzw	x
4356  0009 2604          	jrne	L427
4357  000b 1e01          	ldw	x,(OFST+1,sp)
4358  000d 260e          	jrne	L627
4359  000f               L427:
4360  000f ae0452        	ldw	x,#1106
4361  0012 89            	pushw	x
4362  0013 5f            	clrw	x
4363  0014 89            	pushw	x
4364  0015 ae0000        	ldw	x,#L302
4365  0018 cd0000        	call	_assert_failed
4367  001b 5b04          	addw	sp,#4
4368  001d               L627:
4369                     ; 1109   TIM2->SR1 = (uint8_t)(~((uint8_t)(TIM2_FLAG)));
4371  001d 7b02          	ld	a,(OFST+2,sp)
4372  001f 43            	cpl	a
4373  0020 c75302        	ld	21250,a
4374                     ; 1110   TIM2->SR2 = (uint8_t)(~((uint8_t)((uint8_t)TIM2_FLAG >> 8)));
4376  0023 35ff5303      	mov	21251,#255
4377                     ; 1111 }
4380  0027 85            	popw	x
4381  0028 81            	ret	
4442                     ; 1123 ITStatus TIM2_GetITStatus(TIM2_IT_TypeDef TIM2_IT)
4442                     ; 1124 {
4443                     .text:	section	.text,new
4444  0000               _TIM2_GetITStatus:
4446  0000 88            	push	a
4447  0001 89            	pushw	x
4448       00000002      OFST:	set	2
4451                     ; 1125   ITStatus bitstatus = RESET;
4453                     ; 1126   uint8_t TIM2_itStatus = 0, TIM2_itEnable = 0;
4457  0002 7b02          	ld	a,(OFST+0,sp)
4458  0004 97            	ld	xl,a
4459                     ; 1129   assert_param(IS_TIM2_GET_IT_OK(TIM2_IT));
4461  0005 7b03          	ld	a,(OFST+1,sp)
4462  0007 a101          	cp	a,#1
4463  0009 271a          	jreq	L047
4464  000b a102          	cp	a,#2
4465  000d 2716          	jreq	L047
4466  000f a104          	cp	a,#4
4467  0011 2712          	jreq	L047
4468  0013 a108          	cp	a,#8
4469  0015 270e          	jreq	L047
4470  0017 ae0469        	ldw	x,#1129
4471  001a 89            	pushw	x
4472  001b 5f            	clrw	x
4473  001c 89            	pushw	x
4474  001d ae0000        	ldw	x,#L302
4475  0020 cd0000        	call	_assert_failed
4477  0023 5b04          	addw	sp,#4
4478  0025               L047:
4479                     ; 1131   TIM2_itStatus = (uint8_t)(TIM2->SR1 & TIM2_IT);
4481  0025 c65302        	ld	a,21250
4482  0028 1403          	and	a,(OFST+1,sp)
4483  002a 6b01          	ld	(OFST-1,sp),a
4484                     ; 1133   TIM2_itEnable = (uint8_t)(TIM2->IER & TIM2_IT);
4486  002c c65301        	ld	a,21249
4487  002f 1403          	and	a,(OFST+1,sp)
4488  0031 6b02          	ld	(OFST+0,sp),a
4489                     ; 1135   if ((TIM2_itStatus != (uint8_t)RESET ) && (TIM2_itEnable != (uint8_t)RESET ))
4491  0033 7b01          	ld	a,(OFST-1,sp)
4492  0035 2708          	jreq	L5271
4494  0037 7b02          	ld	a,(OFST+0,sp)
4495  0039 2704          	jreq	L5271
4496                     ; 1137     bitstatus = SET;
4498  003b a601          	ld	a,#1
4500  003d 2001          	jra	L7271
4501  003f               L5271:
4502                     ; 1141     bitstatus = RESET;
4504  003f 4f            	clr	a
4505  0040               L7271:
4506                     ; 1143   return (ITStatus)(bitstatus);
4510  0040 5b03          	addw	sp,#3
4511  0042 81            	ret	
4548                     ; 1156 void TIM2_ClearITPendingBit(TIM2_IT_TypeDef TIM2_IT)
4548                     ; 1157 {
4549                     .text:	section	.text,new
4550  0000               _TIM2_ClearITPendingBit:
4552  0000 88            	push	a
4553       00000000      OFST:	set	0
4556                     ; 1159   assert_param(IS_TIM2_IT_OK(TIM2_IT));
4558  0001 4d            	tnz	a
4559  0002 2704          	jreq	L647
4560  0004 a110          	cp	a,#16
4561  0006 250e          	jrult	L057
4562  0008               L647:
4563  0008 ae0487        	ldw	x,#1159
4564  000b 89            	pushw	x
4565  000c 5f            	clrw	x
4566  000d 89            	pushw	x
4567  000e ae0000        	ldw	x,#L302
4568  0011 cd0000        	call	_assert_failed
4570  0014 5b04          	addw	sp,#4
4571  0016               L057:
4572                     ; 1162   TIM2->SR1 = (uint8_t)(~TIM2_IT);
4574  0016 7b01          	ld	a,(OFST+1,sp)
4575  0018 43            	cpl	a
4576  0019 c75302        	ld	21250,a
4577                     ; 1163 }
4580  001c 84            	pop	a
4581  001d 81            	ret	
4627                     ; 1181 static void TI1_Config(uint8_t TIM2_ICPolarity,
4627                     ; 1182                        uint8_t TIM2_ICSelection,
4627                     ; 1183                        uint8_t TIM2_ICFilter)
4627                     ; 1184 {
4628                     .text:	section	.text,new
4629  0000               L3_TI1_Config:
4631  0000 89            	pushw	x
4632  0001 88            	push	a
4633       00000001      OFST:	set	1
4636                     ; 1186   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1E);
4638  0002 72115308      	bres	21256,#0
4639                     ; 1189   TIM2->CCMR1  = (uint8_t)((uint8_t)(TIM2->CCMR1 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF )))
4639                     ; 1190                            | (uint8_t)(((TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4641  0006 7b06          	ld	a,(OFST+5,sp)
4642  0008 97            	ld	xl,a
4643  0009 a610          	ld	a,#16
4644  000b 42            	mul	x,a
4645  000c 9f            	ld	a,xl
4646  000d 1a03          	or	a,(OFST+2,sp)
4647  000f 6b01          	ld	(OFST+0,sp),a
4648  0011 c65305        	ld	a,21253
4649  0014 a40c          	and	a,#12
4650  0016 1a01          	or	a,(OFST+0,sp)
4651  0018 c75305        	ld	21253,a
4652                     ; 1193   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4654  001b 7b02          	ld	a,(OFST+1,sp)
4655  001d 2706          	jreq	L7671
4656                     ; 1195     TIM2->CCER1 |= TIM2_CCER1_CC1P;
4658  001f 72125308      	bset	21256,#1
4660  0023 2004          	jra	L1771
4661  0025               L7671:
4662                     ; 1199     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC1P);
4664  0025 72135308      	bres	21256,#1
4665  0029               L1771:
4666                     ; 1202   TIM2->CCER1 |= TIM2_CCER1_CC1E;
4668  0029 72105308      	bset	21256,#0
4669                     ; 1203 }
4672  002d 5b03          	addw	sp,#3
4673  002f 81            	ret	
4719                     ; 1221 static void TI2_Config(uint8_t TIM2_ICPolarity,
4719                     ; 1222                        uint8_t TIM2_ICSelection,
4719                     ; 1223                        uint8_t TIM2_ICFilter)
4719                     ; 1224 {
4720                     .text:	section	.text,new
4721  0000               L5_TI2_Config:
4723  0000 89            	pushw	x
4724  0001 88            	push	a
4725       00000001      OFST:	set	1
4728                     ; 1226   TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2E);
4730  0002 72195308      	bres	21256,#4
4731                     ; 1229   TIM2->CCMR2 = (uint8_t)((uint8_t)(TIM2->CCMR2 & (uint8_t)(~(uint8_t)( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF ))) 
4731                     ; 1230                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4733  0006 7b06          	ld	a,(OFST+5,sp)
4734  0008 97            	ld	xl,a
4735  0009 a610          	ld	a,#16
4736  000b 42            	mul	x,a
4737  000c 9f            	ld	a,xl
4738  000d 1a03          	or	a,(OFST+2,sp)
4739  000f 6b01          	ld	(OFST+0,sp),a
4740  0011 c65306        	ld	a,21254
4741  0014 a40c          	and	a,#12
4742  0016 1a01          	or	a,(OFST+0,sp)
4743  0018 c75306        	ld	21254,a
4744                     ; 1234   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4746  001b 7b02          	ld	a,(OFST+1,sp)
4747  001d 2706          	jreq	L3102
4748                     ; 1236     TIM2->CCER1 |= TIM2_CCER1_CC2P;
4750  001f 721a5308      	bset	21256,#5
4752  0023 2004          	jra	L5102
4753  0025               L3102:
4754                     ; 1240     TIM2->CCER1 &= (uint8_t)(~TIM2_CCER1_CC2P);
4756  0025 721b5308      	bres	21256,#5
4757  0029               L5102:
4758                     ; 1244   TIM2->CCER1 |= TIM2_CCER1_CC2E;
4760  0029 72185308      	bset	21256,#4
4761                     ; 1245 }
4764  002d 5b03          	addw	sp,#3
4765  002f 81            	ret	
4811                     ; 1261 static void TI3_Config(uint8_t TIM2_ICPolarity, uint8_t TIM2_ICSelection,
4811                     ; 1262                        uint8_t TIM2_ICFilter)
4811                     ; 1263 {
4812                     .text:	section	.text,new
4813  0000               L7_TI3_Config:
4815  0000 89            	pushw	x
4816  0001 88            	push	a
4817       00000001      OFST:	set	1
4820                     ; 1265   TIM2->CCER2 &=  (uint8_t)(~TIM2_CCER2_CC3E);
4822  0002 72115309      	bres	21257,#0
4823                     ; 1268   TIM2->CCMR3 = (uint8_t)((uint8_t)(TIM2->CCMR3 & (uint8_t)(~( TIM2_CCMR_CCxS | TIM2_CCMR_ICxF))) 
4823                     ; 1269                           | (uint8_t)(( (TIM2_ICSelection)) | ((uint8_t)( TIM2_ICFilter << 4))));
4825  0006 7b06          	ld	a,(OFST+5,sp)
4826  0008 97            	ld	xl,a
4827  0009 a610          	ld	a,#16
4828  000b 42            	mul	x,a
4829  000c 9f            	ld	a,xl
4830  000d 1a03          	or	a,(OFST+2,sp)
4831  000f 6b01          	ld	(OFST+0,sp),a
4832  0011 c65307        	ld	a,21255
4833  0014 a40c          	and	a,#12
4834  0016 1a01          	or	a,(OFST+0,sp)
4835  0018 c75307        	ld	21255,a
4836                     ; 1273   if (TIM2_ICPolarity != TIM2_ICPOLARITY_RISING)
4838  001b 7b02          	ld	a,(OFST+1,sp)
4839  001d 2706          	jreq	L7302
4840                     ; 1275     TIM2->CCER2 |= TIM2_CCER2_CC3P;
4842  001f 72125309      	bset	21257,#1
4844  0023 2004          	jra	L1402
4845  0025               L7302:
4846                     ; 1279     TIM2->CCER2 &= (uint8_t)(~TIM2_CCER2_CC3P);
4848  0025 72135309      	bres	21257,#1
4849  0029               L1402:
4850                     ; 1282   TIM2->CCER2 |= TIM2_CCER2_CC3E;
4852  0029 72105309      	bset	21257,#0
4853                     ; 1283 }
4856  002d 5b03          	addw	sp,#3
4857  002f 81            	ret	
4870                     	xdef	_TIM2_ClearITPendingBit
4871                     	xdef	_TIM2_GetITStatus
4872                     	xdef	_TIM2_ClearFlag
4873                     	xdef	_TIM2_GetFlagStatus
4874                     	xdef	_TIM2_GetPrescaler
4875                     	xdef	_TIM2_GetCounter
4876                     	xdef	_TIM2_GetCapture3
4877                     	xdef	_TIM2_GetCapture2
4878                     	xdef	_TIM2_GetCapture1
4879                     	xdef	_TIM2_SetIC3Prescaler
4880                     	xdef	_TIM2_SetIC2Prescaler
4881                     	xdef	_TIM2_SetIC1Prescaler
4882                     	xdef	_TIM2_SetCompare3
4883                     	xdef	_TIM2_SetCompare2
4884                     	xdef	_TIM2_SetCompare1
4885                     	xdef	_TIM2_SetAutoreload
4886                     	xdef	_TIM2_SetCounter
4887                     	xdef	_TIM2_SelectOCxM
4888                     	xdef	_TIM2_CCxCmd
4889                     	xdef	_TIM2_OC3PolarityConfig
4890                     	xdef	_TIM2_OC2PolarityConfig
4891                     	xdef	_TIM2_OC1PolarityConfig
4892                     	xdef	_TIM2_GenerateEvent
4893                     	xdef	_TIM2_OC3PreloadConfig
4894                     	xdef	_TIM2_OC2PreloadConfig
4895                     	xdef	_TIM2_OC1PreloadConfig
4896                     	xdef	_TIM2_ARRPreloadConfig
4897                     	xdef	_TIM2_ForcedOC3Config
4898                     	xdef	_TIM2_ForcedOC2Config
4899                     	xdef	_TIM2_ForcedOC1Config
4900                     	xdef	_TIM2_PrescalerConfig
4901                     	xdef	_TIM2_SelectOnePulseMode
4902                     	xdef	_TIM2_UpdateRequestConfig
4903                     	xdef	_TIM2_UpdateDisableConfig
4904                     	xdef	_TIM2_ITConfig
4905                     	xdef	_TIM2_Cmd
4906                     	xdef	_TIM2_PWMIConfig
4907                     	xdef	_TIM2_ICInit
4908                     	xdef	_TIM2_OC3Init
4909                     	xdef	_TIM2_OC2Init
4910                     	xdef	_TIM2_OC1Init
4911                     	xdef	_TIM2_TimeBaseInit
4912                     	xdef	_TIM2_DeInit
4913                     	xref	_assert_failed
4914                     .const:	section	.text
4915  0000               L302:
4916  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
4917  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
4918  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
4919  0036 5f74696d322e  	dc.b	"_tim2.c",0
4939                     	end
