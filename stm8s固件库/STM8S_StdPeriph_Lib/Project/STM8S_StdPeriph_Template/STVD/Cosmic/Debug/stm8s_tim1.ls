   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 58 void TIM1_DeInit(void)
  33                     ; 59 {
  35                     .text:	section	.text,new
  36  0000               _TIM1_DeInit:
  40                     ; 60   TIM1->CR1  = TIM1_CR1_RESET_VALUE;
  42  0000 725f5250      	clr	21072
  43                     ; 61   TIM1->CR2  = TIM1_CR2_RESET_VALUE;
  45  0004 725f5251      	clr	21073
  46                     ; 62   TIM1->SMCR = TIM1_SMCR_RESET_VALUE;
  48  0008 725f5252      	clr	21074
  49                     ; 63   TIM1->ETR  = TIM1_ETR_RESET_VALUE;
  51  000c 725f5253      	clr	21075
  52                     ; 64   TIM1->IER  = TIM1_IER_RESET_VALUE;
  54  0010 725f5254      	clr	21076
  55                     ; 65   TIM1->SR2  = TIM1_SR2_RESET_VALUE;
  57  0014 725f5256      	clr	21078
  58                     ; 67   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  60  0018 725f525c      	clr	21084
  61                     ; 68   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  63  001c 725f525d      	clr	21085
  64                     ; 70   TIM1->CCMR1 = 0x01;
  66  0020 35015258      	mov	21080,#1
  67                     ; 71   TIM1->CCMR2 = 0x01;
  69  0024 35015259      	mov	21081,#1
  70                     ; 72   TIM1->CCMR3 = 0x01;
  72  0028 3501525a      	mov	21082,#1
  73                     ; 73   TIM1->CCMR4 = 0x01;
  75  002c 3501525b      	mov	21083,#1
  76                     ; 75   TIM1->CCER1 = TIM1_CCER1_RESET_VALUE;
  78  0030 725f525c      	clr	21084
  79                     ; 76   TIM1->CCER2 = TIM1_CCER2_RESET_VALUE;
  81  0034 725f525d      	clr	21085
  82                     ; 77   TIM1->CCMR1 = TIM1_CCMR1_RESET_VALUE;
  84  0038 725f5258      	clr	21080
  85                     ; 78   TIM1->CCMR2 = TIM1_CCMR2_RESET_VALUE;
  87  003c 725f5259      	clr	21081
  88                     ; 79   TIM1->CCMR3 = TIM1_CCMR3_RESET_VALUE;
  90  0040 725f525a      	clr	21082
  91                     ; 80   TIM1->CCMR4 = TIM1_CCMR4_RESET_VALUE;
  93  0044 725f525b      	clr	21083
  94                     ; 81   TIM1->CNTRH = TIM1_CNTRH_RESET_VALUE;
  96  0048 725f525e      	clr	21086
  97                     ; 82   TIM1->CNTRL = TIM1_CNTRL_RESET_VALUE;
  99  004c 725f525f      	clr	21087
 100                     ; 83   TIM1->PSCRH = TIM1_PSCRH_RESET_VALUE;
 102  0050 725f5260      	clr	21088
 103                     ; 84   TIM1->PSCRL = TIM1_PSCRL_RESET_VALUE;
 105  0054 725f5261      	clr	21089
 106                     ; 85   TIM1->ARRH  = TIM1_ARRH_RESET_VALUE;
 108  0058 35ff5262      	mov	21090,#255
 109                     ; 86   TIM1->ARRL  = TIM1_ARRL_RESET_VALUE;
 111  005c 35ff5263      	mov	21091,#255
 112                     ; 87   TIM1->CCR1H = TIM1_CCR1H_RESET_VALUE;
 114  0060 725f5265      	clr	21093
 115                     ; 88   TIM1->CCR1L = TIM1_CCR1L_RESET_VALUE;
 117  0064 725f5266      	clr	21094
 118                     ; 89   TIM1->CCR2H = TIM1_CCR2H_RESET_VALUE;
 120  0068 725f5267      	clr	21095
 121                     ; 90   TIM1->CCR2L = TIM1_CCR2L_RESET_VALUE;
 123  006c 725f5268      	clr	21096
 124                     ; 91   TIM1->CCR3H = TIM1_CCR3H_RESET_VALUE;
 126  0070 725f5269      	clr	21097
 127                     ; 92   TIM1->CCR3L = TIM1_CCR3L_RESET_VALUE;
 129  0074 725f526a      	clr	21098
 130                     ; 93   TIM1->CCR4H = TIM1_CCR4H_RESET_VALUE;
 132  0078 725f526b      	clr	21099
 133                     ; 94   TIM1->CCR4L = TIM1_CCR4L_RESET_VALUE;
 135  007c 725f526c      	clr	21100
 136                     ; 95   TIM1->OISR  = TIM1_OISR_RESET_VALUE;
 138  0080 725f526f      	clr	21103
 139                     ; 96   TIM1->EGR   = 0x01; /* TIM1_EGR_UG */
 141  0084 35015257      	mov	21079,#1
 142                     ; 97   TIM1->DTR   = TIM1_DTR_RESET_VALUE;
 144  0088 725f526e      	clr	21102
 145                     ; 98   TIM1->BKR   = TIM1_BKR_RESET_VALUE;
 147  008c 725f526d      	clr	21101
 148                     ; 99   TIM1->RCR   = TIM1_RCR_RESET_VALUE;
 150  0090 725f5264      	clr	21092
 151                     ; 100   TIM1->SR1   = TIM1_SR1_RESET_VALUE;
 153  0094 725f5255      	clr	21077
 154                     ; 101 }
 157  0098 81            	ret	
 261                     ; 111 void TIM1_TimeBaseInit(uint16_t TIM1_Prescaler,
 261                     ; 112                        TIM1_CounterMode_TypeDef TIM1_CounterMode,
 261                     ; 113                        uint16_t TIM1_Period,
 261                     ; 114                        uint8_t TIM1_RepetitionCounter)
 261                     ; 115 {
 262                     .text:	section	.text,new
 263  0000               _TIM1_TimeBaseInit:
 265  0000 89            	pushw	x
 266       00000000      OFST:	set	0
 269                     ; 117   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
 271  0001 7b05          	ld	a,(OFST+5,sp)
 272  0003 271e          	jreq	L41
 273  0005 a110          	cp	a,#16
 274  0007 271a          	jreq	L41
 275  0009 a120          	cp	a,#32
 276  000b 2716          	jreq	L41
 277  000d a140          	cp	a,#64
 278  000f 2712          	jreq	L41
 279  0011 a160          	cp	a,#96
 280  0013 270e          	jreq	L41
 281  0015 ae0075        	ldw	x,#117
 282  0018 89            	pushw	x
 283  0019 5f            	clrw	x
 284  001a 89            	pushw	x
 285  001b ae0000        	ldw	x,#L37
 286  001e cd0000        	call	_assert_failed
 288  0021 5b04          	addw	sp,#4
 289  0023               L41:
 290                     ; 120   TIM1->ARRH = (uint8_t)(TIM1_Period >> 8);
 292  0023 7b06          	ld	a,(OFST+6,sp)
 293  0025 c75262        	ld	21090,a
 294                     ; 121   TIM1->ARRL = (uint8_t)(TIM1_Period);
 296  0028 7b07          	ld	a,(OFST+7,sp)
 297  002a c75263        	ld	21091,a
 298                     ; 124   TIM1->PSCRH = (uint8_t)(TIM1_Prescaler >> 8);
 300  002d 7b01          	ld	a,(OFST+1,sp)
 301  002f c75260        	ld	21088,a
 302                     ; 125   TIM1->PSCRL = (uint8_t)(TIM1_Prescaler);
 304  0032 7b02          	ld	a,(OFST+2,sp)
 305  0034 c75261        	ld	21089,a
 306                     ; 128   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)(~(TIM1_CR1_CMS | TIM1_CR1_DIR)))
 306                     ; 129                         | (uint8_t)(TIM1_CounterMode));
 308  0037 c65250        	ld	a,21072
 309  003a a48f          	and	a,#143
 310  003c 1a05          	or	a,(OFST+5,sp)
 311  003e c75250        	ld	21072,a
 312                     ; 132   TIM1->RCR = TIM1_RepetitionCounter;
 314  0041 7b08          	ld	a,(OFST+8,sp)
 315  0043 c75264        	ld	21092,a
 316                     ; 133 }
 319  0046 85            	popw	x
 320  0047 81            	ret	
 604                     ; 154 void TIM1_OC1Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 604                     ; 155                   TIM1_OutputState_TypeDef TIM1_OutputState,
 604                     ; 156                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 604                     ; 157                   uint16_t TIM1_Pulse,
 604                     ; 158                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 604                     ; 159                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 604                     ; 160                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 604                     ; 161                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 604                     ; 162 {
 605                     .text:	section	.text,new
 606  0000               _TIM1_OC1Init:
 608  0000 89            	pushw	x
 609  0001 5203          	subw	sp,#3
 610       00000003      OFST:	set	3
 613                     ; 164   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 615  0003 9e            	ld	a,xh
 616  0004 4d            	tnz	a
 617  0005 271f          	jreq	L62
 618  0007 9e            	ld	a,xh
 619  0008 a110          	cp	a,#16
 620  000a 271a          	jreq	L62
 621  000c 9e            	ld	a,xh
 622  000d a120          	cp	a,#32
 623  000f 2715          	jreq	L62
 624  0011 9e            	ld	a,xh
 625  0012 a130          	cp	a,#48
 626  0014 2710          	jreq	L62
 627  0016 9e            	ld	a,xh
 628  0017 a160          	cp	a,#96
 629  0019 270b          	jreq	L62
 630  001b 9e            	ld	a,xh
 631  001c a170          	cp	a,#112
 632  001e 2706          	jreq	L62
 633  0020 ae00a4        	ldw	x,#164
 634  0023 cd00d6        	call	LC001
 635  0026               L62:
 636                     ; 165   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 638  0026 7b05          	ld	a,(OFST+2,sp)
 639  0028 270a          	jreq	L63
 640  002a a111          	cp	a,#17
 641  002c 2706          	jreq	L63
 642  002e ae00a5        	ldw	x,#165
 643  0031 cd00d6        	call	LC001
 644  0034               L63:
 645                     ; 166   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 647  0034 7b08          	ld	a,(OFST+5,sp)
 648  0036 270a          	jreq	L64
 649  0038 a144          	cp	a,#68
 650  003a 2706          	jreq	L64
 651  003c ae00a6        	ldw	x,#166
 652  003f cd00d6        	call	LC001
 653  0042               L64:
 654                     ; 167   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 656  0042 7b0b          	ld	a,(OFST+8,sp)
 657  0044 270a          	jreq	L65
 658  0046 a122          	cp	a,#34
 659  0048 2706          	jreq	L65
 660  004a ae00a7        	ldw	x,#167
 661  004d cd00d6        	call	LC001
 662  0050               L65:
 663                     ; 168   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 665  0050 7b0c          	ld	a,(OFST+9,sp)
 666  0052 2709          	jreq	L66
 667  0054 a188          	cp	a,#136
 668  0056 2705          	jreq	L66
 669  0058 ae00a8        	ldw	x,#168
 670  005b ad79          	call	LC001
 671  005d               L66:
 672                     ; 169   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 674  005d 7b0d          	ld	a,(OFST+10,sp)
 675  005f a155          	cp	a,#85
 676  0061 2709          	jreq	L67
 677  0063 7b0d          	ld	a,(OFST+10,sp)
 678  0065 2705          	jreq	L67
 679  0067 ae00a9        	ldw	x,#169
 680  006a ad6a          	call	LC001
 681  006c               L67:
 682                     ; 170   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 684  006c 7b0e          	ld	a,(OFST+11,sp)
 685  006e a12a          	cp	a,#42
 686  0070 2709          	jreq	L601
 687  0072 7b0e          	ld	a,(OFST+11,sp)
 688  0074 2705          	jreq	L601
 689  0076 ae00aa        	ldw	x,#170
 690  0079 ad5b          	call	LC001
 691  007b               L601:
 692                     ; 174   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC1E | TIM1_CCER1_CC1NE 
 692                     ; 175                              | TIM1_CCER1_CC1P | TIM1_CCER1_CC1NP));
 694  007b c6525c        	ld	a,21084
 695  007e a4f0          	and	a,#240
 696  0080 c7525c        	ld	21084,a
 697                     ; 178   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC1E)
 697                     ; 179                                      | (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC1NE))
 697                     ; 180                            | (uint8_t)( (uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC1P)
 697                     ; 181                                        | (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC1NP)));
 699  0083 7b0c          	ld	a,(OFST+9,sp)
 700  0085 a408          	and	a,#8
 701  0087 6b03          	ld	(OFST+0,sp),a
 702  0089 7b0b          	ld	a,(OFST+8,sp)
 703  008b a402          	and	a,#2
 704  008d 1a03          	or	a,(OFST+0,sp)
 705  008f 6b02          	ld	(OFST-1,sp),a
 706  0091 7b08          	ld	a,(OFST+5,sp)
 707  0093 a404          	and	a,#4
 708  0095 6b01          	ld	(OFST-2,sp),a
 709  0097 7b05          	ld	a,(OFST+2,sp)
 710  0099 a401          	and	a,#1
 711  009b 1a01          	or	a,(OFST-2,sp)
 712  009d 1a02          	or	a,(OFST-1,sp)
 713  009f ca525c        	or	a,21084
 714  00a2 c7525c        	ld	21084,a
 715                     ; 184   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 715                     ; 185                           (uint8_t)TIM1_OCMode);
 717  00a5 c65258        	ld	a,21080
 718  00a8 a48f          	and	a,#143
 719  00aa 1a04          	or	a,(OFST+1,sp)
 720  00ac c75258        	ld	21080,a
 721                     ; 188   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS1 | TIM1_OISR_OIS1N));
 723  00af c6526f        	ld	a,21103
 724  00b2 a4fc          	and	a,#252
 725  00b4 c7526f        	ld	21103,a
 726                     ; 190   TIM1->OISR |= (uint8_t)((uint8_t)( TIM1_OCIdleState & TIM1_OISR_OIS1 ) | 
 726                     ; 191                           (uint8_t)( TIM1_OCNIdleState & TIM1_OISR_OIS1N ));
 728  00b7 7b0e          	ld	a,(OFST+11,sp)
 729  00b9 a402          	and	a,#2
 730  00bb 6b03          	ld	(OFST+0,sp),a
 731  00bd 7b0d          	ld	a,(OFST+10,sp)
 732  00bf a401          	and	a,#1
 733  00c1 1a03          	or	a,(OFST+0,sp)
 734  00c3 ca526f        	or	a,21103
 735  00c6 c7526f        	ld	21103,a
 736                     ; 194   TIM1->CCR1H = (uint8_t)(TIM1_Pulse >> 8);
 738  00c9 7b09          	ld	a,(OFST+6,sp)
 739  00cb c75265        	ld	21093,a
 740                     ; 195   TIM1->CCR1L = (uint8_t)(TIM1_Pulse);
 742  00ce 7b0a          	ld	a,(OFST+7,sp)
 743  00d0 c75266        	ld	21094,a
 744                     ; 196 }
 747  00d3 5b05          	addw	sp,#5
 748  00d5 81            	ret	
 750  00d6               LC001:
 751  00d6 89            	pushw	x
 752  00d7 5f            	clrw	x
 753  00d8 89            	pushw	x
 754  00d9 ae0000        	ldw	x,#L37
 755  00dc cd0000        	call	_assert_failed
 757  00df 5b04          	addw	sp,#4
 758  00e1 81            	ret	
 860                     ; 217 void TIM1_OC2Init(TIM1_OCMode_TypeDef TIM1_OCMode,
 860                     ; 218                   TIM1_OutputState_TypeDef TIM1_OutputState,
 860                     ; 219                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
 860                     ; 220                   uint16_t TIM1_Pulse,
 860                     ; 221                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
 860                     ; 222                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
 860                     ; 223                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
 860                     ; 224                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
 860                     ; 225 {
 861                     .text:	section	.text,new
 862  0000               _TIM1_OC2Init:
 864  0000 89            	pushw	x
 865  0001 5203          	subw	sp,#3
 866       00000003      OFST:	set	3
 869                     ; 227   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
 871  0003 9e            	ld	a,xh
 872  0004 4d            	tnz	a
 873  0005 271f          	jreq	L021
 874  0007 9e            	ld	a,xh
 875  0008 a110          	cp	a,#16
 876  000a 271a          	jreq	L021
 877  000c 9e            	ld	a,xh
 878  000d a120          	cp	a,#32
 879  000f 2715          	jreq	L021
 880  0011 9e            	ld	a,xh
 881  0012 a130          	cp	a,#48
 882  0014 2710          	jreq	L021
 883  0016 9e            	ld	a,xh
 884  0017 a160          	cp	a,#96
 885  0019 270b          	jreq	L021
 886  001b 9e            	ld	a,xh
 887  001c a170          	cp	a,#112
 888  001e 2706          	jreq	L021
 889  0020 ae00e3        	ldw	x,#227
 890  0023 cd00d6        	call	LC002
 891  0026               L021:
 892                     ; 228   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
 894  0026 7b05          	ld	a,(OFST+2,sp)
 895  0028 270a          	jreq	L031
 896  002a a111          	cp	a,#17
 897  002c 2706          	jreq	L031
 898  002e ae00e4        	ldw	x,#228
 899  0031 cd00d6        	call	LC002
 900  0034               L031:
 901                     ; 229   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
 903  0034 7b08          	ld	a,(OFST+5,sp)
 904  0036 270a          	jreq	L041
 905  0038 a144          	cp	a,#68
 906  003a 2706          	jreq	L041
 907  003c ae00e5        	ldw	x,#229
 908  003f cd00d6        	call	LC002
 909  0042               L041:
 910                     ; 230   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
 912  0042 7b0b          	ld	a,(OFST+8,sp)
 913  0044 270a          	jreq	L051
 914  0046 a122          	cp	a,#34
 915  0048 2706          	jreq	L051
 916  004a ae00e6        	ldw	x,#230
 917  004d cd00d6        	call	LC002
 918  0050               L051:
 919                     ; 231   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
 921  0050 7b0c          	ld	a,(OFST+9,sp)
 922  0052 2709          	jreq	L061
 923  0054 a188          	cp	a,#136
 924  0056 2705          	jreq	L061
 925  0058 ae00e7        	ldw	x,#231
 926  005b ad79          	call	LC002
 927  005d               L061:
 928                     ; 232   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
 930  005d 7b0d          	ld	a,(OFST+10,sp)
 931  005f a155          	cp	a,#85
 932  0061 2709          	jreq	L071
 933  0063 7b0d          	ld	a,(OFST+10,sp)
 934  0065 2705          	jreq	L071
 935  0067 ae00e8        	ldw	x,#232
 936  006a ad6a          	call	LC002
 937  006c               L071:
 938                     ; 233   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
 940  006c 7b0e          	ld	a,(OFST+11,sp)
 941  006e a12a          	cp	a,#42
 942  0070 2709          	jreq	L002
 943  0072 7b0e          	ld	a,(OFST+11,sp)
 944  0074 2705          	jreq	L002
 945  0076 ae00e9        	ldw	x,#233
 946  0079 ad5b          	call	LC002
 947  007b               L002:
 948                     ; 237   TIM1->CCER1 &= (uint8_t)(~( TIM1_CCER1_CC2E | TIM1_CCER1_CC2NE | 
 948                     ; 238                              TIM1_CCER1_CC2P | TIM1_CCER1_CC2NP));
 950  007b c6525c        	ld	a,21084
 951  007e a40f          	and	a,#15
 952  0080 c7525c        	ld	21084,a
 953                     ; 242   TIM1->CCER1 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER1_CC2E  ) | 
 953                     ; 243                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER1_CC2NE )) | 
 953                     ; 244                            (uint8_t)((uint8_t)(TIM1_OCPolarity  & TIM1_CCER1_CC2P  ) | 
 953                     ; 245                                      (uint8_t)(TIM1_OCNPolarity & TIM1_CCER1_CC2NP )));
 955  0083 7b0c          	ld	a,(OFST+9,sp)
 956  0085 a480          	and	a,#128
 957  0087 6b03          	ld	(OFST+0,sp),a
 958  0089 7b0b          	ld	a,(OFST+8,sp)
 959  008b a420          	and	a,#32
 960  008d 1a03          	or	a,(OFST+0,sp)
 961  008f 6b02          	ld	(OFST-1,sp),a
 962  0091 7b08          	ld	a,(OFST+5,sp)
 963  0093 a440          	and	a,#64
 964  0095 6b01          	ld	(OFST-2,sp),a
 965  0097 7b05          	ld	a,(OFST+2,sp)
 966  0099 a410          	and	a,#16
 967  009b 1a01          	or	a,(OFST-2,sp)
 968  009d 1a02          	or	a,(OFST-1,sp)
 969  009f ca525c        	or	a,21084
 970  00a2 c7525c        	ld	21084,a
 971                     ; 248   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM)) | 
 971                     ; 249                           (uint8_t)TIM1_OCMode);
 973  00a5 c65259        	ld	a,21081
 974  00a8 a48f          	and	a,#143
 975  00aa 1a04          	or	a,(OFST+1,sp)
 976  00ac c75259        	ld	21081,a
 977                     ; 252   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS2 | TIM1_OISR_OIS2N));
 979  00af c6526f        	ld	a,21103
 980  00b2 a4f3          	and	a,#243
 981  00b4 c7526f        	ld	21103,a
 982                     ; 254   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS2 & TIM1_OCIdleState) | 
 982                     ; 255                           (uint8_t)(TIM1_OISR_OIS2N & TIM1_OCNIdleState));
 984  00b7 7b0e          	ld	a,(OFST+11,sp)
 985  00b9 a408          	and	a,#8
 986  00bb 6b03          	ld	(OFST+0,sp),a
 987  00bd 7b0d          	ld	a,(OFST+10,sp)
 988  00bf a404          	and	a,#4
 989  00c1 1a03          	or	a,(OFST+0,sp)
 990  00c3 ca526f        	or	a,21103
 991  00c6 c7526f        	ld	21103,a
 992                     ; 258   TIM1->CCR2H = (uint8_t)(TIM1_Pulse >> 8);
 994  00c9 7b09          	ld	a,(OFST+6,sp)
 995  00cb c75267        	ld	21095,a
 996                     ; 259   TIM1->CCR2L = (uint8_t)(TIM1_Pulse);
 998  00ce 7b0a          	ld	a,(OFST+7,sp)
 999  00d0 c75268        	ld	21096,a
1000                     ; 260 }
1003  00d3 5b05          	addw	sp,#5
1004  00d5 81            	ret	
1006  00d6               LC002:
1007  00d6 89            	pushw	x
1008  00d7 5f            	clrw	x
1009  00d8 89            	pushw	x
1010  00d9 ae0000        	ldw	x,#L37
1011  00dc cd0000        	call	_assert_failed
1013  00df 5b04          	addw	sp,#4
1014  00e1 81            	ret	
1116                     ; 281 void TIM1_OC3Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1116                     ; 282                   TIM1_OutputState_TypeDef TIM1_OutputState,
1116                     ; 283                   TIM1_OutputNState_TypeDef TIM1_OutputNState,
1116                     ; 284                   uint16_t TIM1_Pulse,
1116                     ; 285                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1116                     ; 286                   TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity,
1116                     ; 287                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState,
1116                     ; 288                   TIM1_OCNIdleState_TypeDef TIM1_OCNIdleState)
1116                     ; 289 {
1117                     .text:	section	.text,new
1118  0000               _TIM1_OC3Init:
1120  0000 89            	pushw	x
1121  0001 5203          	subw	sp,#3
1122       00000003      OFST:	set	3
1125                     ; 291   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1127  0003 9e            	ld	a,xh
1128  0004 4d            	tnz	a
1129  0005 271f          	jreq	L212
1130  0007 9e            	ld	a,xh
1131  0008 a110          	cp	a,#16
1132  000a 271a          	jreq	L212
1133  000c 9e            	ld	a,xh
1134  000d a120          	cp	a,#32
1135  000f 2715          	jreq	L212
1136  0011 9e            	ld	a,xh
1137  0012 a130          	cp	a,#48
1138  0014 2710          	jreq	L212
1139  0016 9e            	ld	a,xh
1140  0017 a160          	cp	a,#96
1141  0019 270b          	jreq	L212
1142  001b 9e            	ld	a,xh
1143  001c a170          	cp	a,#112
1144  001e 2706          	jreq	L212
1145  0020 ae0123        	ldw	x,#291
1146  0023 cd00d6        	call	LC003
1147  0026               L212:
1148                     ; 292   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1150  0026 7b05          	ld	a,(OFST+2,sp)
1151  0028 270a          	jreq	L222
1152  002a a111          	cp	a,#17
1153  002c 2706          	jreq	L222
1154  002e ae0124        	ldw	x,#292
1155  0031 cd00d6        	call	LC003
1156  0034               L222:
1157                     ; 293   assert_param(IS_TIM1_OUTPUTN_STATE_OK(TIM1_OutputNState));
1159  0034 7b08          	ld	a,(OFST+5,sp)
1160  0036 270a          	jreq	L232
1161  0038 a144          	cp	a,#68
1162  003a 2706          	jreq	L232
1163  003c ae0125        	ldw	x,#293
1164  003f cd00d6        	call	LC003
1165  0042               L232:
1166                     ; 294   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1168  0042 7b0b          	ld	a,(OFST+8,sp)
1169  0044 270a          	jreq	L242
1170  0046 a122          	cp	a,#34
1171  0048 2706          	jreq	L242
1172  004a ae0126        	ldw	x,#294
1173  004d cd00d6        	call	LC003
1174  0050               L242:
1175                     ; 295   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
1177  0050 7b0c          	ld	a,(OFST+9,sp)
1178  0052 2709          	jreq	L252
1179  0054 a188          	cp	a,#136
1180  0056 2705          	jreq	L252
1181  0058 ae0127        	ldw	x,#295
1182  005b ad79          	call	LC003
1183  005d               L252:
1184                     ; 296   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1186  005d 7b0d          	ld	a,(OFST+10,sp)
1187  005f a155          	cp	a,#85
1188  0061 2709          	jreq	L262
1189  0063 7b0d          	ld	a,(OFST+10,sp)
1190  0065 2705          	jreq	L262
1191  0067 ae0128        	ldw	x,#296
1192  006a ad6a          	call	LC003
1193  006c               L262:
1194                     ; 297   assert_param(IS_TIM1_OCNIDLE_STATE_OK(TIM1_OCNIdleState));
1196  006c 7b0e          	ld	a,(OFST+11,sp)
1197  006e a12a          	cp	a,#42
1198  0070 2709          	jreq	L272
1199  0072 7b0e          	ld	a,(OFST+11,sp)
1200  0074 2705          	jreq	L272
1201  0076 ae0129        	ldw	x,#297
1202  0079 ad5b          	call	LC003
1203  007b               L272:
1204                     ; 301   TIM1->CCER2 &= (uint8_t)(~( TIM1_CCER2_CC3E | TIM1_CCER2_CC3NE | 
1204                     ; 302                              TIM1_CCER2_CC3P | TIM1_CCER2_CC3NP));
1206  007b c6525d        	ld	a,21085
1207  007e a4f0          	and	a,#240
1208  0080 c7525d        	ld	21085,a
1209                     ; 305   TIM1->CCER2 |= (uint8_t)((uint8_t)((uint8_t)(TIM1_OutputState  & TIM1_CCER2_CC3E   ) |
1209                     ; 306                                      (uint8_t)(TIM1_OutputNState & TIM1_CCER2_CC3NE  )) | 
1209                     ; 307                            (uint8_t)((uint8_t)(TIM1_OCPolarity   & TIM1_CCER2_CC3P   ) | 
1209                     ; 308                                      (uint8_t)(TIM1_OCNPolarity  & TIM1_CCER2_CC3NP  )));
1211  0083 7b0c          	ld	a,(OFST+9,sp)
1212  0085 a408          	and	a,#8
1213  0087 6b03          	ld	(OFST+0,sp),a
1214  0089 7b0b          	ld	a,(OFST+8,sp)
1215  008b a402          	and	a,#2
1216  008d 1a03          	or	a,(OFST+0,sp)
1217  008f 6b02          	ld	(OFST-1,sp),a
1218  0091 7b08          	ld	a,(OFST+5,sp)
1219  0093 a404          	and	a,#4
1220  0095 6b01          	ld	(OFST-2,sp),a
1221  0097 7b05          	ld	a,(OFST+2,sp)
1222  0099 a401          	and	a,#1
1223  009b 1a01          	or	a,(OFST-2,sp)
1224  009d 1a02          	or	a,(OFST-1,sp)
1225  009f ca525d        	or	a,21085
1226  00a2 c7525d        	ld	21085,a
1227                     ; 311   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1227                     ; 312                           (uint8_t)TIM1_OCMode);
1229  00a5 c6525a        	ld	a,21082
1230  00a8 a48f          	and	a,#143
1231  00aa 1a04          	or	a,(OFST+1,sp)
1232  00ac c7525a        	ld	21082,a
1233                     ; 315   TIM1->OISR &= (uint8_t)(~(TIM1_OISR_OIS3 | TIM1_OISR_OIS3N));
1235  00af c6526f        	ld	a,21103
1236  00b2 a4cf          	and	a,#207
1237  00b4 c7526f        	ld	21103,a
1238                     ; 317   TIM1->OISR |= (uint8_t)((uint8_t)(TIM1_OISR_OIS3 & TIM1_OCIdleState) | 
1238                     ; 318                           (uint8_t)(TIM1_OISR_OIS3N & TIM1_OCNIdleState));
1240  00b7 7b0e          	ld	a,(OFST+11,sp)
1241  00b9 a420          	and	a,#32
1242  00bb 6b03          	ld	(OFST+0,sp),a
1243  00bd 7b0d          	ld	a,(OFST+10,sp)
1244  00bf a410          	and	a,#16
1245  00c1 1a03          	or	a,(OFST+0,sp)
1246  00c3 ca526f        	or	a,21103
1247  00c6 c7526f        	ld	21103,a
1248                     ; 321   TIM1->CCR3H = (uint8_t)(TIM1_Pulse >> 8);
1250  00c9 7b09          	ld	a,(OFST+6,sp)
1251  00cb c75269        	ld	21097,a
1252                     ; 322   TIM1->CCR3L = (uint8_t)(TIM1_Pulse);
1254  00ce 7b0a          	ld	a,(OFST+7,sp)
1255  00d0 c7526a        	ld	21098,a
1256                     ; 323 }
1259  00d3 5b05          	addw	sp,#5
1260  00d5 81            	ret	
1262  00d6               LC003:
1263  00d6 89            	pushw	x
1264  00d7 5f            	clrw	x
1265  00d8 89            	pushw	x
1266  00d9 ae0000        	ldw	x,#L37
1267  00dc cd0000        	call	_assert_failed
1269  00df 5b04          	addw	sp,#4
1270  00e1 81            	ret	
1342                     ; 338 void TIM1_OC4Init(TIM1_OCMode_TypeDef TIM1_OCMode,
1342                     ; 339                   TIM1_OutputState_TypeDef TIM1_OutputState,
1342                     ; 340                   uint16_t TIM1_Pulse,
1342                     ; 341                   TIM1_OCPolarity_TypeDef TIM1_OCPolarity,
1342                     ; 342                   TIM1_OCIdleState_TypeDef TIM1_OCIdleState)
1342                     ; 343 {
1343                     .text:	section	.text,new
1344  0000               _TIM1_OC4Init:
1346  0000 89            	pushw	x
1347  0001 88            	push	a
1348       00000001      OFST:	set	1
1351                     ; 345   assert_param(IS_TIM1_OC_MODE_OK(TIM1_OCMode));
1353  0002 9e            	ld	a,xh
1354  0003 4d            	tnz	a
1355  0004 271e          	jreq	L403
1356  0006 9e            	ld	a,xh
1357  0007 a110          	cp	a,#16
1358  0009 2719          	jreq	L403
1359  000b 9e            	ld	a,xh
1360  000c a120          	cp	a,#32
1361  000e 2714          	jreq	L403
1362  0010 9e            	ld	a,xh
1363  0011 a130          	cp	a,#48
1364  0013 270f          	jreq	L403
1365  0015 9e            	ld	a,xh
1366  0016 a160          	cp	a,#96
1367  0018 270a          	jreq	L403
1368  001a 9e            	ld	a,xh
1369  001b a170          	cp	a,#112
1370  001d 2705          	jreq	L403
1371  001f ae0159        	ldw	x,#345
1372  0022 ad6c          	call	LC004
1373  0024               L403:
1374                     ; 346   assert_param(IS_TIM1_OUTPUT_STATE_OK(TIM1_OutputState));
1376  0024 7b03          	ld	a,(OFST+2,sp)
1377  0026 2709          	jreq	L413
1378  0028 a111          	cp	a,#17
1379  002a 2705          	jreq	L413
1380  002c ae015a        	ldw	x,#346
1381  002f ad5f          	call	LC004
1382  0031               L413:
1383                     ; 347   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
1385  0031 7b08          	ld	a,(OFST+7,sp)
1386  0033 2709          	jreq	L423
1387  0035 a122          	cp	a,#34
1388  0037 2705          	jreq	L423
1389  0039 ae015b        	ldw	x,#347
1390  003c ad52          	call	LC004
1391  003e               L423:
1392                     ; 348   assert_param(IS_TIM1_OCIDLE_STATE_OK(TIM1_OCIdleState));
1394  003e 7b09          	ld	a,(OFST+8,sp)
1395  0040 a155          	cp	a,#85
1396  0042 2709          	jreq	L433
1397  0044 7b09          	ld	a,(OFST+8,sp)
1398  0046 2705          	jreq	L433
1399  0048 ae015c        	ldw	x,#348
1400  004b ad43          	call	LC004
1401  004d               L433:
1402                     ; 351   TIM1->CCER2 &= (uint8_t)(~(TIM1_CCER2_CC4E | TIM1_CCER2_CC4P));
1404  004d c6525d        	ld	a,21085
1405  0050 a4cf          	and	a,#207
1406  0052 c7525d        	ld	21085,a
1407                     ; 353   TIM1->CCER2 |= (uint8_t)((uint8_t)(TIM1_OutputState & TIM1_CCER2_CC4E ) |  
1407                     ; 354                            (uint8_t)(TIM1_OCPolarity  & TIM1_CCER2_CC4P ));
1409  0055 7b08          	ld	a,(OFST+7,sp)
1410  0057 a420          	and	a,#32
1411  0059 6b01          	ld	(OFST+0,sp),a
1412  005b 7b03          	ld	a,(OFST+2,sp)
1413  005d a410          	and	a,#16
1414  005f 1a01          	or	a,(OFST+0,sp)
1415  0061 ca525d        	or	a,21085
1416  0064 c7525d        	ld	21085,a
1417                     ; 357   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) | 
1417                     ; 358                           TIM1_OCMode);
1419  0067 c6525b        	ld	a,21083
1420  006a a48f          	and	a,#143
1421  006c 1a02          	or	a,(OFST+1,sp)
1422  006e c7525b        	ld	21083,a
1423                     ; 361   if (TIM1_OCIdleState != TIM1_OCIDLESTATE_RESET)
1425  0071 7b09          	ld	a,(OFST+8,sp)
1426  0073 270a          	jreq	L124
1427                     ; 363     TIM1->OISR |= (uint8_t)(~TIM1_CCER2_CC4P);
1429  0075 c6526f        	ld	a,21103
1430  0078 aadf          	or	a,#223
1431  007a c7526f        	ld	21103,a
1433  007d 2004          	jra	L324
1434  007f               L124:
1435                     ; 367     TIM1->OISR &= (uint8_t)(~TIM1_OISR_OIS4);
1437  007f 721d526f      	bres	21103,#6
1438  0083               L324:
1439                     ; 371   TIM1->CCR4H = (uint8_t)(TIM1_Pulse >> 8);
1441  0083 7b06          	ld	a,(OFST+5,sp)
1442  0085 c7526b        	ld	21099,a
1443                     ; 372   TIM1->CCR4L = (uint8_t)(TIM1_Pulse);
1445  0088 7b07          	ld	a,(OFST+6,sp)
1446  008a c7526c        	ld	21100,a
1447                     ; 373 }
1450  008d 5b03          	addw	sp,#3
1451  008f 81            	ret	
1453  0090               LC004:
1454  0090 89            	pushw	x
1455  0091 5f            	clrw	x
1456  0092 89            	pushw	x
1457  0093 ae0000        	ldw	x,#L37
1458  0096 cd0000        	call	_assert_failed
1460  0099 5b04          	addw	sp,#4
1461  009b 81            	ret	
1664                     ; 388 void TIM1_BDTRConfig(TIM1_OSSIState_TypeDef TIM1_OSSIState,
1664                     ; 389                      TIM1_LockLevel_TypeDef TIM1_LockLevel,
1664                     ; 390                      uint8_t TIM1_DeadTime,
1664                     ; 391                      TIM1_BreakState_TypeDef TIM1_Break,
1664                     ; 392                      TIM1_BreakPolarity_TypeDef TIM1_BreakPolarity,
1664                     ; 393                      TIM1_AutomaticOutput_TypeDef TIM1_AutomaticOutput)
1664                     ; 394 {
1665                     .text:	section	.text,new
1666  0000               _TIM1_BDTRConfig:
1668  0000 89            	pushw	x
1669  0001 88            	push	a
1670       00000001      OFST:	set	1
1673                     ; 396   assert_param(IS_TIM1_OSSI_STATE_OK(TIM1_OSSIState));
1675  0002 9e            	ld	a,xh
1676  0003 a104          	cp	a,#4
1677  0005 2709          	jreq	L643
1678  0007 9e            	ld	a,xh
1679  0008 4d            	tnz	a
1680  0009 2705          	jreq	L643
1681  000b ae018c        	ldw	x,#396
1682  000e ad59          	call	LC005
1683  0010               L643:
1684                     ; 397   assert_param(IS_TIM1_LOCK_LEVEL_OK(TIM1_LockLevel));
1686  0010 7b03          	ld	a,(OFST+2,sp)
1687  0012 2711          	jreq	L653
1688  0014 a101          	cp	a,#1
1689  0016 270d          	jreq	L653
1690  0018 a102          	cp	a,#2
1691  001a 2709          	jreq	L653
1692  001c a103          	cp	a,#3
1693  001e 2705          	jreq	L653
1694  0020 ae018d        	ldw	x,#397
1695  0023 ad44          	call	LC005
1696  0025               L653:
1697                     ; 398   assert_param(IS_TIM1_BREAK_STATE_OK(TIM1_Break));
1699  0025 7b07          	ld	a,(OFST+6,sp)
1700  0027 a110          	cp	a,#16
1701  0029 2709          	jreq	L663
1702  002b 7b07          	ld	a,(OFST+6,sp)
1703  002d 2705          	jreq	L663
1704  002f ae018e        	ldw	x,#398
1705  0032 ad35          	call	LC005
1706  0034               L663:
1707                     ; 399   assert_param(IS_TIM1_BREAK_POLARITY_OK(TIM1_BreakPolarity));
1709  0034 7b08          	ld	a,(OFST+7,sp)
1710  0036 2709          	jreq	L673
1711  0038 a120          	cp	a,#32
1712  003a 2705          	jreq	L673
1713  003c ae018f        	ldw	x,#399
1714  003f ad28          	call	LC005
1715  0041               L673:
1716                     ; 400   assert_param(IS_TIM1_AUTOMATIC_OUTPUT_STATE_OK(TIM1_AutomaticOutput));
1718  0041 7b09          	ld	a,(OFST+8,sp)
1719  0043 a140          	cp	a,#64
1720  0045 2709          	jreq	L604
1721  0047 7b09          	ld	a,(OFST+8,sp)
1722  0049 2705          	jreq	L604
1723  004b ae0190        	ldw	x,#400
1724  004e ad19          	call	LC005
1725  0050               L604:
1726                     ; 402   TIM1->DTR = (uint8_t)(TIM1_DeadTime);
1728  0050 7b06          	ld	a,(OFST+5,sp)
1729  0052 c7526e        	ld	21102,a
1730                     ; 406   TIM1->BKR  =  (uint8_t)((uint8_t)(TIM1_OSSIState | (uint8_t)TIM1_LockLevel)  | 
1730                     ; 407                           (uint8_t)((uint8_t)(TIM1_Break | (uint8_t)TIM1_BreakPolarity)  | 
1730                     ; 408                           (uint8_t)TIM1_AutomaticOutput));
1732  0055 7b07          	ld	a,(OFST+6,sp)
1733  0057 1a08          	or	a,(OFST+7,sp)
1734  0059 1a09          	or	a,(OFST+8,sp)
1735  005b 6b01          	ld	(OFST+0,sp),a
1736  005d 7b02          	ld	a,(OFST+1,sp)
1737  005f 1a03          	or	a,(OFST+2,sp)
1738  0061 1a01          	or	a,(OFST+0,sp)
1739  0063 c7526d        	ld	21101,a
1740                     ; 409 }
1743  0066 5b03          	addw	sp,#3
1744  0068 81            	ret	
1746  0069               LC005:
1747  0069 89            	pushw	x
1748  006a 5f            	clrw	x
1749  006b 89            	pushw	x
1750  006c ae0000        	ldw	x,#L37
1751  006f cd0000        	call	_assert_failed
1753  0072 5b04          	addw	sp,#4
1754  0074 81            	ret	
1954                     ; 423 void TIM1_ICInit(TIM1_Channel_TypeDef TIM1_Channel,
1954                     ; 424                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
1954                     ; 425                  TIM1_ICSelection_TypeDef TIM1_ICSelection,
1954                     ; 426                  TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
1954                     ; 427                  uint8_t TIM1_ICFilter)
1954                     ; 428 {
1955                     .text:	section	.text,new
1956  0000               _TIM1_ICInit:
1958  0000 89            	pushw	x
1959       00000000      OFST:	set	0
1962                     ; 430   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
1964  0001 9e            	ld	a,xh
1965  0002 4d            	tnz	a
1966  0003 2714          	jreq	L024
1967  0005 9e            	ld	a,xh
1968  0006 4a            	dec	a
1969  0007 2710          	jreq	L024
1970  0009 9e            	ld	a,xh
1971  000a a102          	cp	a,#2
1972  000c 270b          	jreq	L024
1973  000e 9e            	ld	a,xh
1974  000f a103          	cp	a,#3
1975  0011 2706          	jreq	L024
1976  0013 ae01ae        	ldw	x,#430
1977  0016 cd00b5        	call	LC006
1978  0019               L024:
1979                     ; 431   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
1981  0019 7b02          	ld	a,(OFST+2,sp)
1982  001b 2709          	jreq	L034
1983  001d 4a            	dec	a
1984  001e 2706          	jreq	L034
1985  0020 ae01af        	ldw	x,#431
1986  0023 cd00b5        	call	LC006
1987  0026               L034:
1988                     ; 432   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
1990  0026 7b05          	ld	a,(OFST+5,sp)
1991  0028 a101          	cp	a,#1
1992  002a 270d          	jreq	L044
1993  002c a102          	cp	a,#2
1994  002e 2709          	jreq	L044
1995  0030 a103          	cp	a,#3
1996  0032 2705          	jreq	L044
1997  0034 ae01b0        	ldw	x,#432
1998  0037 ad7c          	call	LC006
1999  0039               L044:
2000                     ; 433   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2002  0039 7b06          	ld	a,(OFST+6,sp)
2003  003b 2711          	jreq	L054
2004  003d a104          	cp	a,#4
2005  003f 270d          	jreq	L054
2006  0041 a108          	cp	a,#8
2007  0043 2709          	jreq	L054
2008  0045 a10c          	cp	a,#12
2009  0047 2705          	jreq	L054
2010  0049 ae01b1        	ldw	x,#433
2011  004c ad67          	call	LC006
2012  004e               L054:
2013                     ; 434   assert_param(IS_TIM1_IC_FILTER_OK(TIM1_ICFilter));
2015  004e 7b07          	ld	a,(OFST+7,sp)
2016  0050 a110          	cp	a,#16
2017  0052 2505          	jrult	L654
2018  0054 ae01b2        	ldw	x,#434
2019  0057 ad5c          	call	LC006
2020  0059               L654:
2021                     ; 436   if (TIM1_Channel == TIM1_CHANNEL_1)
2023  0059 7b01          	ld	a,(OFST+1,sp)
2024  005b 2614          	jrne	L746
2025                     ; 439     TI1_Config((uint8_t)TIM1_ICPolarity,
2025                     ; 440                (uint8_t)TIM1_ICSelection,
2025                     ; 441                (uint8_t)TIM1_ICFilter);
2027  005d 7b07          	ld	a,(OFST+7,sp)
2028  005f 88            	push	a
2029  0060 7b06          	ld	a,(OFST+6,sp)
2030  0062 97            	ld	xl,a
2031  0063 7b03          	ld	a,(OFST+3,sp)
2032  0065 95            	ld	xh,a
2033  0066 cd0000        	call	L3_TI1_Config
2035  0069 84            	pop	a
2036                     ; 443     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2038  006a 7b06          	ld	a,(OFST+6,sp)
2039  006c cd0000        	call	_TIM1_SetIC1Prescaler
2042  006f 2042          	jra	L156
2043  0071               L746:
2044                     ; 445   else if (TIM1_Channel == TIM1_CHANNEL_2)
2046  0071 a101          	cp	a,#1
2047  0073 2614          	jrne	L356
2048                     ; 448     TI2_Config((uint8_t)TIM1_ICPolarity,
2048                     ; 449                (uint8_t)TIM1_ICSelection,
2048                     ; 450                (uint8_t)TIM1_ICFilter);
2050  0075 7b07          	ld	a,(OFST+7,sp)
2051  0077 88            	push	a
2052  0078 7b06          	ld	a,(OFST+6,sp)
2053  007a 97            	ld	xl,a
2054  007b 7b03          	ld	a,(OFST+3,sp)
2055  007d 95            	ld	xh,a
2056  007e cd0000        	call	L5_TI2_Config
2058  0081 84            	pop	a
2059                     ; 452     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2061  0082 7b06          	ld	a,(OFST+6,sp)
2062  0084 cd0000        	call	_TIM1_SetIC2Prescaler
2065  0087 202a          	jra	L156
2066  0089               L356:
2067                     ; 454   else if (TIM1_Channel == TIM1_CHANNEL_3)
2069  0089 a102          	cp	a,#2
2070  008b 2614          	jrne	L756
2071                     ; 457     TI3_Config((uint8_t)TIM1_ICPolarity,
2071                     ; 458                (uint8_t)TIM1_ICSelection,
2071                     ; 459                (uint8_t)TIM1_ICFilter);
2073  008d 7b07          	ld	a,(OFST+7,sp)
2074  008f 88            	push	a
2075  0090 7b06          	ld	a,(OFST+6,sp)
2076  0092 97            	ld	xl,a
2077  0093 7b03          	ld	a,(OFST+3,sp)
2078  0095 95            	ld	xh,a
2079  0096 cd0000        	call	L7_TI3_Config
2081  0099 84            	pop	a
2082                     ; 461     TIM1_SetIC3Prescaler(TIM1_ICPrescaler);
2084  009a 7b06          	ld	a,(OFST+6,sp)
2085  009c cd0000        	call	_TIM1_SetIC3Prescaler
2088  009f 2012          	jra	L156
2089  00a1               L756:
2090                     ; 466     TI4_Config((uint8_t)TIM1_ICPolarity,
2090                     ; 467                (uint8_t)TIM1_ICSelection,
2090                     ; 468                (uint8_t)TIM1_ICFilter);
2092  00a1 7b07          	ld	a,(OFST+7,sp)
2093  00a3 88            	push	a
2094  00a4 7b06          	ld	a,(OFST+6,sp)
2095  00a6 97            	ld	xl,a
2096  00a7 7b03          	ld	a,(OFST+3,sp)
2097  00a9 95            	ld	xh,a
2098  00aa cd0000        	call	L11_TI4_Config
2100  00ad 84            	pop	a
2101                     ; 470     TIM1_SetIC4Prescaler(TIM1_ICPrescaler);
2103  00ae 7b06          	ld	a,(OFST+6,sp)
2104  00b0 cd0000        	call	_TIM1_SetIC4Prescaler
2106  00b3               L156:
2107                     ; 472 }
2110  00b3 85            	popw	x
2111  00b4 81            	ret	
2113  00b5               LC006:
2114  00b5 89            	pushw	x
2115  00b6 5f            	clrw	x
2116  00b7 89            	pushw	x
2117  00b8 ae0000        	ldw	x,#L37
2118  00bb cd0000        	call	_assert_failed
2120  00be 5b04          	addw	sp,#4
2121  00c0 81            	ret	
2211                     ; 488 void TIM1_PWMIConfig(TIM1_Channel_TypeDef TIM1_Channel,
2211                     ; 489                      TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
2211                     ; 490                      TIM1_ICSelection_TypeDef TIM1_ICSelection,
2211                     ; 491                      TIM1_ICPSC_TypeDef TIM1_ICPrescaler,
2211                     ; 492                      uint8_t TIM1_ICFilter)
2211                     ; 493 {
2212                     .text:	section	.text,new
2213  0000               _TIM1_PWMIConfig:
2215  0000 89            	pushw	x
2216  0001 89            	pushw	x
2217       00000002      OFST:	set	2
2220                     ; 494   uint8_t icpolarity = TIM1_ICPOLARITY_RISING;
2222                     ; 495   uint8_t icselection = TIM1_ICSELECTION_DIRECTTI;
2224                     ; 498   assert_param(IS_TIM1_PWMI_CHANNEL_OK(TIM1_Channel));
2226  0002 7b03          	ld	a,(OFST+1,sp)
2227  0004 2709          	jreq	L015
2228  0006 4a            	dec	a
2229  0007 2706          	jreq	L015
2230  0009 ae01f2        	ldw	x,#498
2231  000c cd00ab        	call	LC007
2232  000f               L015:
2233                     ; 499   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
2235  000f 7b04          	ld	a,(OFST+2,sp)
2236  0011 2709          	jreq	L025
2237  0013 4a            	dec	a
2238  0014 2706          	jreq	L025
2239  0016 ae01f3        	ldw	x,#499
2240  0019 cd00ab        	call	LC007
2241  001c               L025:
2242                     ; 500   assert_param(IS_TIM1_IC_SELECTION_OK(TIM1_ICSelection));
2244  001c 7b07          	ld	a,(OFST+5,sp)
2245  001e a101          	cp	a,#1
2246  0020 270d          	jreq	L035
2247  0022 a102          	cp	a,#2
2248  0024 2709          	jreq	L035
2249  0026 a103          	cp	a,#3
2250  0028 2705          	jreq	L035
2251  002a ae01f4        	ldw	x,#500
2252  002d ad7c          	call	LC007
2253  002f               L035:
2254                     ; 501   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_ICPrescaler));
2256  002f 7b08          	ld	a,(OFST+6,sp)
2257  0031 2711          	jreq	L045
2258  0033 a104          	cp	a,#4
2259  0035 270d          	jreq	L045
2260  0037 a108          	cp	a,#8
2261  0039 2709          	jreq	L045
2262  003b a10c          	cp	a,#12
2263  003d 2705          	jreq	L045
2264  003f ae01f5        	ldw	x,#501
2265  0042 ad67          	call	LC007
2266  0044               L045:
2267                     ; 504   if (TIM1_ICPolarity != TIM1_ICPOLARITY_FALLING)
2269  0044 7b04          	ld	a,(OFST+2,sp)
2270  0046 4a            	dec	a
2271  0047 2702          	jreq	L327
2272                     ; 506     icpolarity = TIM1_ICPOLARITY_FALLING;
2274  0049 a601          	ld	a,#1
2276  004b               L327:
2277                     ; 510     icpolarity = TIM1_ICPOLARITY_RISING;
2279  004b 6b01          	ld	(OFST-1,sp),a
2280                     ; 514   if (TIM1_ICSelection == TIM1_ICSELECTION_DIRECTTI)
2282  004d 7b07          	ld	a,(OFST+5,sp)
2283  004f 4a            	dec	a
2284  0050 2604          	jrne	L727
2285                     ; 516     icselection = TIM1_ICSELECTION_INDIRECTTI;
2287  0052 a602          	ld	a,#2
2289  0054 2002          	jra	L137
2290  0056               L727:
2291                     ; 520     icselection = TIM1_ICSELECTION_DIRECTTI;
2293  0056 a601          	ld	a,#1
2294  0058               L137:
2295  0058 6b02          	ld	(OFST+0,sp),a
2296                     ; 523   if (TIM1_Channel == TIM1_CHANNEL_1)
2298  005a 7b03          	ld	a,(OFST+1,sp)
2299  005c 2626          	jrne	L337
2300                     ; 526     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2300                     ; 527                (uint8_t)TIM1_ICFilter);
2302  005e 7b09          	ld	a,(OFST+7,sp)
2303  0060 88            	push	a
2304  0061 7b08          	ld	a,(OFST+6,sp)
2305  0063 97            	ld	xl,a
2306  0064 7b05          	ld	a,(OFST+3,sp)
2307  0066 95            	ld	xh,a
2308  0067 cd0000        	call	L3_TI1_Config
2310  006a 84            	pop	a
2311                     ; 530     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2313  006b 7b08          	ld	a,(OFST+6,sp)
2314  006d cd0000        	call	_TIM1_SetIC1Prescaler
2316                     ; 533     TI2_Config(icpolarity, icselection, TIM1_ICFilter);
2318  0070 7b09          	ld	a,(OFST+7,sp)
2319  0072 88            	push	a
2320  0073 7b03          	ld	a,(OFST+1,sp)
2321  0075 97            	ld	xl,a
2322  0076 7b02          	ld	a,(OFST+0,sp)
2323  0078 95            	ld	xh,a
2324  0079 cd0000        	call	L5_TI2_Config
2326  007c 84            	pop	a
2327                     ; 536     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2329  007d 7b08          	ld	a,(OFST+6,sp)
2330  007f cd0000        	call	_TIM1_SetIC2Prescaler
2333  0082 2024          	jra	L537
2334  0084               L337:
2335                     ; 541     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSelection,
2335                     ; 542                (uint8_t)TIM1_ICFilter);
2337  0084 7b09          	ld	a,(OFST+7,sp)
2338  0086 88            	push	a
2339  0087 7b08          	ld	a,(OFST+6,sp)
2340  0089 97            	ld	xl,a
2341  008a 7b05          	ld	a,(OFST+3,sp)
2342  008c 95            	ld	xh,a
2343  008d cd0000        	call	L5_TI2_Config
2345  0090 84            	pop	a
2346                     ; 545     TIM1_SetIC2Prescaler(TIM1_ICPrescaler);
2348  0091 7b08          	ld	a,(OFST+6,sp)
2349  0093 cd0000        	call	_TIM1_SetIC2Prescaler
2351                     ; 548     TI1_Config(icpolarity, icselection, TIM1_ICFilter);
2353  0096 7b09          	ld	a,(OFST+7,sp)
2354  0098 88            	push	a
2355  0099 7b03          	ld	a,(OFST+1,sp)
2356  009b 97            	ld	xl,a
2357  009c 7b02          	ld	a,(OFST+0,sp)
2358  009e 95            	ld	xh,a
2359  009f cd0000        	call	L3_TI1_Config
2361  00a2 84            	pop	a
2362                     ; 551     TIM1_SetIC1Prescaler(TIM1_ICPrescaler);
2364  00a3 7b08          	ld	a,(OFST+6,sp)
2365  00a5 cd0000        	call	_TIM1_SetIC1Prescaler
2367  00a8               L537:
2368                     ; 553 }
2371  00a8 5b04          	addw	sp,#4
2372  00aa 81            	ret	
2374  00ab               LC007:
2375  00ab 89            	pushw	x
2376  00ac 5f            	clrw	x
2377  00ad 89            	pushw	x
2378  00ae ae0000        	ldw	x,#L37
2379  00b1 cd0000        	call	_assert_failed
2381  00b4 5b04          	addw	sp,#4
2382  00b6 81            	ret	
2437                     ; 561 void TIM1_Cmd(FunctionalState NewState)
2437                     ; 562 {
2438                     .text:	section	.text,new
2439  0000               _TIM1_Cmd:
2441  0000 88            	push	a
2442       00000000      OFST:	set	0
2445                     ; 564   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2447  0001 4d            	tnz	a
2448  0002 2711          	jreq	L275
2449  0004 4a            	dec	a
2450  0005 270e          	jreq	L275
2451  0007 ae0234        	ldw	x,#564
2452  000a 89            	pushw	x
2453  000b 5f            	clrw	x
2454  000c 89            	pushw	x
2455  000d ae0000        	ldw	x,#L37
2456  0010 cd0000        	call	_assert_failed
2458  0013 5b04          	addw	sp,#4
2459  0015               L275:
2460                     ; 567   if (NewState != DISABLE)
2462  0015 7b01          	ld	a,(OFST+1,sp)
2463  0017 2706          	jreq	L567
2464                     ; 569     TIM1->CR1 |= TIM1_CR1_CEN;
2466  0019 72105250      	bset	21072,#0
2468  001d 2004          	jra	L767
2469  001f               L567:
2470                     ; 573     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_CEN);
2472  001f 72115250      	bres	21072,#0
2473  0023               L767:
2474                     ; 575 }
2477  0023 84            	pop	a
2478  0024 81            	ret	
2515                     ; 583 void TIM1_CtrlPWMOutputs(FunctionalState NewState)
2515                     ; 584 {
2516                     .text:	section	.text,new
2517  0000               _TIM1_CtrlPWMOutputs:
2519  0000 88            	push	a
2520       00000000      OFST:	set	0
2523                     ; 586   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2525  0001 4d            	tnz	a
2526  0002 2711          	jreq	L406
2527  0004 4a            	dec	a
2528  0005 270e          	jreq	L406
2529  0007 ae024a        	ldw	x,#586
2530  000a 89            	pushw	x
2531  000b 5f            	clrw	x
2532  000c 89            	pushw	x
2533  000d ae0000        	ldw	x,#L37
2534  0010 cd0000        	call	_assert_failed
2536  0013 5b04          	addw	sp,#4
2537  0015               L406:
2538                     ; 590   if (NewState != DISABLE)
2540  0015 7b01          	ld	a,(OFST+1,sp)
2541  0017 2706          	jreq	L7001
2542                     ; 592     TIM1->BKR |= TIM1_BKR_MOE;
2544  0019 721e526d      	bset	21101,#7
2546  001d 2004          	jra	L1101
2547  001f               L7001:
2548                     ; 596     TIM1->BKR &= (uint8_t)(~TIM1_BKR_MOE);
2550  001f 721f526d      	bres	21101,#7
2551  0023               L1101:
2552                     ; 598 }
2555  0023 84            	pop	a
2556  0024 81            	ret	
2664                     ; 617 void TIM1_ITConfig(TIM1_IT_TypeDef  TIM1_IT, FunctionalState NewState)
2664                     ; 618 {
2665                     .text:	section	.text,new
2666  0000               _TIM1_ITConfig:
2668  0000 89            	pushw	x
2669       00000000      OFST:	set	0
2672                     ; 620   assert_param(IS_TIM1_IT_OK(TIM1_IT));
2674  0001 9e            	ld	a,xh
2675  0002 4d            	tnz	a
2676  0003 2605          	jrne	L416
2677  0005 ae026c        	ldw	x,#620
2678  0008 ad22          	call	LC008
2679  000a               L416:
2680                     ; 621   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2682  000a 7b02          	ld	a,(OFST+2,sp)
2683  000c 2708          	jreq	L426
2684  000e 4a            	dec	a
2685  000f 2705          	jreq	L426
2686  0011 ae026d        	ldw	x,#621
2687  0014 ad16          	call	LC008
2688  0016               L426:
2689                     ; 623   if (NewState != DISABLE)
2691  0016 7b02          	ld	a,(OFST+2,sp)
2692  0018 2707          	jreq	L1601
2693                     ; 626     TIM1->IER |= (uint8_t)TIM1_IT;
2695  001a c65254        	ld	a,21076
2696  001d 1a01          	or	a,(OFST+1,sp)
2698  001f 2006          	jra	L3601
2699  0021               L1601:
2700                     ; 631     TIM1->IER &= (uint8_t)(~(uint8_t)TIM1_IT);
2702  0021 7b01          	ld	a,(OFST+1,sp)
2703  0023 43            	cpl	a
2704  0024 c45254        	and	a,21076
2705  0027               L3601:
2706  0027 c75254        	ld	21076,a
2707                     ; 633 }
2710  002a 85            	popw	x
2711  002b 81            	ret	
2713  002c               LC008:
2714  002c 89            	pushw	x
2715  002d 5f            	clrw	x
2716  002e 89            	pushw	x
2717  002f ae0000        	ldw	x,#L37
2718  0032 cd0000        	call	_assert_failed
2720  0035 5b04          	addw	sp,#4
2721  0037 81            	ret	
2744                     ; 640 void TIM1_InternalClockConfig(void)
2744                     ; 641 {
2745                     .text:	section	.text,new
2746  0000               _TIM1_InternalClockConfig:
2750                     ; 643   TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_SMS);
2752  0000 c65252        	ld	a,21074
2753  0003 a4f8          	and	a,#248
2754  0005 c75252        	ld	21074,a
2755                     ; 644 }
2758  0008 81            	ret	
2874                     ; 662 void TIM1_ETRClockMode1Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2874                     ; 663                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2874                     ; 664                               uint8_t ExtTRGFilter)
2874                     ; 665 {
2875                     .text:	section	.text,new
2876  0000               _TIM1_ETRClockMode1Config:
2878  0000 89            	pushw	x
2879       00000000      OFST:	set	0
2882                     ; 667   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
2884  0001 9e            	ld	a,xh
2885  0002 4d            	tnz	a
2886  0003 2714          	jreq	L046
2887  0005 9e            	ld	a,xh
2888  0006 a110          	cp	a,#16
2889  0008 270f          	jreq	L046
2890  000a 9e            	ld	a,xh
2891  000b a120          	cp	a,#32
2892  000d 270a          	jreq	L046
2893  000f 9e            	ld	a,xh
2894  0010 a130          	cp	a,#48
2895  0012 2705          	jreq	L046
2896  0014 ae029b        	ldw	x,#667
2897  0017 ad26          	call	LC009
2898  0019               L046:
2899                     ; 668   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
2901  0019 7b02          	ld	a,(OFST+2,sp)
2902  001b a180          	cp	a,#128
2903  001d 2709          	jreq	L056
2904  001f 7b02          	ld	a,(OFST+2,sp)
2905  0021 2705          	jreq	L056
2906  0023 ae029c        	ldw	x,#668
2907  0026 ad17          	call	LC009
2908  0028               L056:
2909                     ; 671   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
2911  0028 7b05          	ld	a,(OFST+5,sp)
2912  002a 88            	push	a
2913  002b 7b03          	ld	a,(OFST+3,sp)
2914  002d 97            	ld	xl,a
2915  002e 7b02          	ld	a,(OFST+2,sp)
2916  0030 95            	ld	xh,a
2917  0031 cd0000        	call	_TIM1_ETRConfig
2919  0034 84            	pop	a
2920                     ; 674   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~(uint8_t)(TIM1_SMCR_SMS | TIM1_SMCR_TS )))
2920                     ; 675                          | (uint8_t)((uint8_t)TIM1_SLAVEMODE_EXTERNAL1 | TIM1_TS_ETRF ));
2922  0035 c65252        	ld	a,21074
2923  0038 aa77          	or	a,#119
2924  003a c75252        	ld	21074,a
2925                     ; 676 }
2928  003d 85            	popw	x
2929  003e 81            	ret	
2931  003f               LC009:
2932  003f 89            	pushw	x
2933  0040 5f            	clrw	x
2934  0041 89            	pushw	x
2935  0042 ae0000        	ldw	x,#L37
2936  0045 cd0000        	call	_assert_failed
2938  0048 5b04          	addw	sp,#4
2939  004a 81            	ret	
2995                     ; 694 void TIM1_ETRClockMode2Config(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
2995                     ; 695                               TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
2995                     ; 696                               uint8_t ExtTRGFilter)
2995                     ; 697 {
2996                     .text:	section	.text,new
2997  0000               _TIM1_ETRClockMode2Config:
2999  0000 89            	pushw	x
3000       00000000      OFST:	set	0
3003                     ; 699   assert_param(IS_TIM1_EXT_PRESCALER_OK(TIM1_ExtTRGPrescaler));
3005  0001 9e            	ld	a,xh
3006  0002 4d            	tnz	a
3007  0003 2714          	jreq	L466
3008  0005 9e            	ld	a,xh
3009  0006 a110          	cp	a,#16
3010  0008 270f          	jreq	L466
3011  000a 9e            	ld	a,xh
3012  000b a120          	cp	a,#32
3013  000d 270a          	jreq	L466
3014  000f 9e            	ld	a,xh
3015  0010 a130          	cp	a,#48
3016  0012 2705          	jreq	L466
3017  0014 ae02bb        	ldw	x,#699
3018  0017 ad22          	call	LC010
3019  0019               L466:
3020                     ; 700   assert_param(IS_TIM1_EXT_POLARITY_OK(TIM1_ExtTRGPolarity));
3022  0019 7b02          	ld	a,(OFST+2,sp)
3023  001b a180          	cp	a,#128
3024  001d 2709          	jreq	L476
3025  001f 7b02          	ld	a,(OFST+2,sp)
3026  0021 2705          	jreq	L476
3027  0023 ae02bc        	ldw	x,#700
3028  0026 ad13          	call	LC010
3029  0028               L476:
3030                     ; 703   TIM1_ETRConfig(TIM1_ExtTRGPrescaler, TIM1_ExtTRGPolarity, ExtTRGFilter);
3032  0028 7b05          	ld	a,(OFST+5,sp)
3033  002a 88            	push	a
3034  002b 7b03          	ld	a,(OFST+3,sp)
3035  002d 97            	ld	xl,a
3036  002e 7b02          	ld	a,(OFST+2,sp)
3037  0030 95            	ld	xh,a
3038  0031 cd0000        	call	_TIM1_ETRConfig
3040  0034 721c5253      	bset	21075,#6
3041  0038 84            	pop	a
3042                     ; 706   TIM1->ETR |= TIM1_ETR_ECE;
3044                     ; 707 }
3047  0039 85            	popw	x
3048  003a 81            	ret	
3050  003b               LC010:
3051  003b 89            	pushw	x
3052  003c 5f            	clrw	x
3053  003d 89            	pushw	x
3054  003e ae0000        	ldw	x,#L37
3055  0041 cd0000        	call	_assert_failed
3057  0044 5b04          	addw	sp,#4
3058  0046 81            	ret	
3112                     ; 725 void TIM1_ETRConfig(TIM1_ExtTRGPSC_TypeDef TIM1_ExtTRGPrescaler,
3112                     ; 726                     TIM1_ExtTRGPolarity_TypeDef TIM1_ExtTRGPolarity,
3112                     ; 727                     uint8_t ExtTRGFilter)
3112                     ; 728 {
3113                     .text:	section	.text,new
3114  0000               _TIM1_ETRConfig:
3116  0000 89            	pushw	x
3117       00000000      OFST:	set	0
3120                     ; 730   assert_param(IS_TIM1_EXT_TRG_FILTER_OK(ExtTRGFilter));
3122  0001 7b05          	ld	a,(OFST+5,sp)
3123  0003 a110          	cp	a,#16
3124  0005 250e          	jrult	L607
3125  0007 ae02da        	ldw	x,#730
3126  000a 89            	pushw	x
3127  000b 5f            	clrw	x
3128  000c 89            	pushw	x
3129  000d ae0000        	ldw	x,#L37
3130  0010 cd0000        	call	_assert_failed
3132  0013 5b04          	addw	sp,#4
3133  0015               L607:
3134                     ; 732   TIM1->ETR |= (uint8_t)((uint8_t)(TIM1_ExtTRGPrescaler | (uint8_t)TIM1_ExtTRGPolarity )|
3134                     ; 733                          (uint8_t)ExtTRGFilter );
3136  0015 7b01          	ld	a,(OFST+1,sp)
3137  0017 1a02          	or	a,(OFST+2,sp)
3138  0019 1a05          	or	a,(OFST+5,sp)
3139  001b ca5253        	or	a,21075
3140  001e c75253        	ld	21075,a
3141                     ; 734 }
3144  0021 85            	popw	x
3145  0022 81            	ret	
3233                     ; 751 void TIM1_TIxExternalClockConfig(TIM1_TIxExternalCLK1Source_TypeDef TIM1_TIxExternalCLKSource,
3233                     ; 752                                  TIM1_ICPolarity_TypeDef TIM1_ICPolarity,
3233                     ; 753                                  uint8_t ICFilter)
3233                     ; 754 {
3234                     .text:	section	.text,new
3235  0000               _TIM1_TIxExternalClockConfig:
3237  0000 89            	pushw	x
3238       00000000      OFST:	set	0
3241                     ; 756   assert_param(IS_TIM1_TIXCLK_SOURCE_OK(TIM1_TIxExternalCLKSource));
3243  0001 9e            	ld	a,xh
3244  0002 a140          	cp	a,#64
3245  0004 270f          	jreq	L027
3246  0006 9e            	ld	a,xh
3247  0007 a160          	cp	a,#96
3248  0009 270a          	jreq	L027
3249  000b 9e            	ld	a,xh
3250  000c a150          	cp	a,#80
3251  000e 2705          	jreq	L027
3252  0010 ae02f4        	ldw	x,#756
3253  0013 ad47          	call	LC011
3254  0015               L027:
3255                     ; 757   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_ICPolarity));
3257  0015 7b02          	ld	a,(OFST+2,sp)
3258  0017 2708          	jreq	L037
3259  0019 4a            	dec	a
3260  001a 2705          	jreq	L037
3261  001c ae02f5        	ldw	x,#757
3262  001f ad3b          	call	LC011
3263  0021               L037:
3264                     ; 758   assert_param(IS_TIM1_IC_FILTER_OK(ICFilter));
3266  0021 7b05          	ld	a,(OFST+5,sp)
3267  0023 a110          	cp	a,#16
3268  0025 2505          	jrult	L637
3269  0027 ae02f6        	ldw	x,#758
3270  002a ad30          	call	LC011
3271  002c               L637:
3272                     ; 761   if (TIM1_TIxExternalCLKSource == TIM1_TIXEXTERNALCLK1SOURCE_TI2)
3274  002c 7b01          	ld	a,(OFST+1,sp)
3275  002e a160          	cp	a,#96
3276  0030 260e          	jrne	L3521
3277                     ; 763     TI2_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3279  0032 7b05          	ld	a,(OFST+5,sp)
3280  0034 88            	push	a
3281  0035 ae0001        	ldw	x,#1
3282  0038 7b03          	ld	a,(OFST+3,sp)
3283  003a 95            	ld	xh,a
3284  003b cd0000        	call	L5_TI2_Config
3287  003e 200c          	jra	L5521
3288  0040               L3521:
3289                     ; 767     TI1_Config((uint8_t)TIM1_ICPolarity, (uint8_t)TIM1_ICSELECTION_DIRECTTI, (uint8_t)ICFilter);
3291  0040 7b05          	ld	a,(OFST+5,sp)
3292  0042 88            	push	a
3293  0043 ae0001        	ldw	x,#1
3294  0046 7b03          	ld	a,(OFST+3,sp)
3295  0048 95            	ld	xh,a
3296  0049 cd0000        	call	L3_TI1_Config
3298  004c               L5521:
3299  004c 84            	pop	a
3300                     ; 771   TIM1_SelectInputTrigger((TIM1_TS_TypeDef)TIM1_TIxExternalCLKSource);
3302  004d 7b01          	ld	a,(OFST+1,sp)
3303  004f cd0000        	call	_TIM1_SelectInputTrigger
3305                     ; 774   TIM1->SMCR |= (uint8_t)(TIM1_SLAVEMODE_EXTERNAL1);
3307  0052 c65252        	ld	a,21074
3308  0055 aa07          	or	a,#7
3309  0057 c75252        	ld	21074,a
3310                     ; 775 }
3313  005a 85            	popw	x
3314  005b 81            	ret	
3316  005c               LC011:
3317  005c 89            	pushw	x
3318  005d 5f            	clrw	x
3319  005e 89            	pushw	x
3320  005f ae0000        	ldw	x,#L37
3321  0062 cd0000        	call	_assert_failed
3323  0065 5b04          	addw	sp,#4
3324  0067 81            	ret	
3409                     ; 787 void TIM1_SelectInputTrigger(TIM1_TS_TypeDef TIM1_InputTriggerSource)
3409                     ; 788 {
3410                     .text:	section	.text,new
3411  0000               _TIM1_SelectInputTrigger:
3413  0000 88            	push	a
3414       00000000      OFST:	set	0
3417                     ; 790   assert_param(IS_TIM1_TRIGGER_SELECTION_OK(TIM1_InputTriggerSource));
3419  0001 a140          	cp	a,#64
3420  0003 2721          	jreq	L657
3421  0005 a150          	cp	a,#80
3422  0007 271d          	jreq	L657
3423  0009 a160          	cp	a,#96
3424  000b 2719          	jreq	L657
3425  000d a170          	cp	a,#112
3426  000f 2715          	jreq	L657
3427  0011 a130          	cp	a,#48
3428  0013 2711          	jreq	L657
3429  0015 4d            	tnz	a
3430  0016 270e          	jreq	L657
3431  0018 ae0316        	ldw	x,#790
3432  001b 89            	pushw	x
3433  001c 5f            	clrw	x
3434  001d 89            	pushw	x
3435  001e ae0000        	ldw	x,#L37
3436  0021 cd0000        	call	_assert_failed
3438  0024 5b04          	addw	sp,#4
3439  0026               L657:
3440                     ; 793   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_TS)) | (uint8_t)TIM1_InputTriggerSource);
3442  0026 c65252        	ld	a,21074
3443  0029 a48f          	and	a,#143
3444  002b 1a01          	or	a,(OFST+1,sp)
3445  002d c75252        	ld	21074,a
3446                     ; 794 }
3449  0030 84            	pop	a
3450  0031 81            	ret	
3487                     ; 803 void TIM1_UpdateDisableConfig(FunctionalState NewState)
3487                     ; 804 {
3488                     .text:	section	.text,new
3489  0000               _TIM1_UpdateDisableConfig:
3491  0000 88            	push	a
3492       00000000      OFST:	set	0
3495                     ; 806   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3497  0001 4d            	tnz	a
3498  0002 2711          	jreq	L077
3499  0004 4a            	dec	a
3500  0005 270e          	jreq	L077
3501  0007 ae0326        	ldw	x,#806
3502  000a 89            	pushw	x
3503  000b 5f            	clrw	x
3504  000c 89            	pushw	x
3505  000d ae0000        	ldw	x,#L37
3506  0010 cd0000        	call	_assert_failed
3508  0013 5b04          	addw	sp,#4
3509  0015               L077:
3510                     ; 809   if (NewState != DISABLE)
3512  0015 7b01          	ld	a,(OFST+1,sp)
3513  0017 2706          	jreq	L3331
3514                     ; 811     TIM1->CR1 |= TIM1_CR1_UDIS;
3516  0019 72125250      	bset	21072,#1
3518  001d 2004          	jra	L5331
3519  001f               L3331:
3520                     ; 815     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_UDIS);
3522  001f 72135250      	bres	21072,#1
3523  0023               L5331:
3524                     ; 817 }
3527  0023 84            	pop	a
3528  0024 81            	ret	
3587                     ; 827 void TIM1_UpdateRequestConfig(TIM1_UpdateSource_TypeDef TIM1_UpdateSource)
3587                     ; 828 {
3588                     .text:	section	.text,new
3589  0000               _TIM1_UpdateRequestConfig:
3591  0000 88            	push	a
3592       00000000      OFST:	set	0
3595                     ; 830   assert_param(IS_TIM1_UPDATE_SOURCE_OK(TIM1_UpdateSource));
3597  0001 4d            	tnz	a
3598  0002 2711          	jreq	L2001
3599  0004 4a            	dec	a
3600  0005 270e          	jreq	L2001
3601  0007 ae033e        	ldw	x,#830
3602  000a 89            	pushw	x
3603  000b 5f            	clrw	x
3604  000c 89            	pushw	x
3605  000d ae0000        	ldw	x,#L37
3606  0010 cd0000        	call	_assert_failed
3608  0013 5b04          	addw	sp,#4
3609  0015               L2001:
3610                     ; 833   if (TIM1_UpdateSource != TIM1_UPDATESOURCE_GLOBAL)
3612  0015 7b01          	ld	a,(OFST+1,sp)
3613  0017 2706          	jreq	L5631
3614                     ; 835     TIM1->CR1 |= TIM1_CR1_URS;
3616  0019 72145250      	bset	21072,#2
3618  001d 2004          	jra	L7631
3619  001f               L5631:
3620                     ; 839     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_URS);
3622  001f 72155250      	bres	21072,#2
3623  0023               L7631:
3624                     ; 841 }
3627  0023 84            	pop	a
3628  0024 81            	ret	
3665                     ; 849 void TIM1_SelectHallSensor(FunctionalState NewState)
3665                     ; 850 {
3666                     .text:	section	.text,new
3667  0000               _TIM1_SelectHallSensor:
3669  0000 88            	push	a
3670       00000000      OFST:	set	0
3673                     ; 852   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
3675  0001 4d            	tnz	a
3676  0002 2711          	jreq	L4101
3677  0004 4a            	dec	a
3678  0005 270e          	jreq	L4101
3679  0007 ae0354        	ldw	x,#852
3680  000a 89            	pushw	x
3681  000b 5f            	clrw	x
3682  000c 89            	pushw	x
3683  000d ae0000        	ldw	x,#L37
3684  0010 cd0000        	call	_assert_failed
3686  0013 5b04          	addw	sp,#4
3687  0015               L4101:
3688                     ; 855   if (NewState != DISABLE)
3690  0015 7b01          	ld	a,(OFST+1,sp)
3691  0017 2706          	jreq	L7041
3692                     ; 857     TIM1->CR2 |= TIM1_CR2_TI1S;
3694  0019 721e5251      	bset	21073,#7
3696  001d 2004          	jra	L1141
3697  001f               L7041:
3698                     ; 861     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_TI1S);
3700  001f 721f5251      	bres	21073,#7
3701  0023               L1141:
3702                     ; 863 }
3705  0023 84            	pop	a
3706  0024 81            	ret	
3764                     ; 873 void TIM1_SelectOnePulseMode(TIM1_OPMode_TypeDef TIM1_OPMode)
3764                     ; 874 {
3765                     .text:	section	.text,new
3766  0000               _TIM1_SelectOnePulseMode:
3768  0000 88            	push	a
3769       00000000      OFST:	set	0
3772                     ; 876   assert_param(IS_TIM1_OPM_MODE_OK(TIM1_OPMode));
3774  0001 a101          	cp	a,#1
3775  0003 2711          	jreq	L6201
3776  0005 4d            	tnz	a
3777  0006 270e          	jreq	L6201
3778  0008 ae036c        	ldw	x,#876
3779  000b 89            	pushw	x
3780  000c 5f            	clrw	x
3781  000d 89            	pushw	x
3782  000e ae0000        	ldw	x,#L37
3783  0011 cd0000        	call	_assert_failed
3785  0014 5b04          	addw	sp,#4
3786  0016               L6201:
3787                     ; 879   if (TIM1_OPMode != TIM1_OPMODE_REPETITIVE)
3789  0016 7b01          	ld	a,(OFST+1,sp)
3790  0018 2706          	jreq	L1441
3791                     ; 881     TIM1->CR1 |= TIM1_CR1_OPM;
3793  001a 72165250      	bset	21072,#3
3795  001e 2004          	jra	L3441
3796  0020               L1441:
3797                     ; 885     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_OPM);
3799  0020 72175250      	bres	21072,#3
3800  0024               L3441:
3801                     ; 888 }
3804  0024 84            	pop	a
3805  0025 81            	ret	
3904                     ; 903 void TIM1_SelectOutputTrigger(TIM1_TRGOSource_TypeDef TIM1_TRGOSource)
3904                     ; 904 {
3905                     .text:	section	.text,new
3906  0000               _TIM1_SelectOutputTrigger:
3908  0000 88            	push	a
3909       00000000      OFST:	set	0
3912                     ; 906   assert_param(IS_TIM1_TRGO_SOURCE_OK(TIM1_TRGOSource));
3914  0001 4d            	tnz	a
3915  0002 2726          	jreq	L0401
3916  0004 a110          	cp	a,#16
3917  0006 2722          	jreq	L0401
3918  0008 a120          	cp	a,#32
3919  000a 271e          	jreq	L0401
3920  000c a130          	cp	a,#48
3921  000e 271a          	jreq	L0401
3922  0010 a140          	cp	a,#64
3923  0012 2716          	jreq	L0401
3924  0014 a150          	cp	a,#80
3925  0016 2712          	jreq	L0401
3926  0018 a160          	cp	a,#96
3927  001a 270e          	jreq	L0401
3928  001c ae038a        	ldw	x,#906
3929  001f 89            	pushw	x
3930  0020 5f            	clrw	x
3931  0021 89            	pushw	x
3932  0022 ae0000        	ldw	x,#L37
3933  0025 cd0000        	call	_assert_failed
3935  0028 5b04          	addw	sp,#4
3936  002a               L0401:
3937                     ; 909   TIM1->CR2 = (uint8_t)((uint8_t)(TIM1->CR2 & (uint8_t)(~TIM1_CR2_MMS)) | 
3937                     ; 910                         (uint8_t) TIM1_TRGOSource);
3939  002a c65251        	ld	a,21073
3940  002d a48f          	and	a,#143
3941  002f 1a01          	or	a,(OFST+1,sp)
3942  0031 c75251        	ld	21073,a
3943                     ; 911 }
3946  0034 84            	pop	a
3947  0035 81            	ret	
4022                     ; 923 void TIM1_SelectSlaveMode(TIM1_SlaveMode_TypeDef TIM1_SlaveMode)
4022                     ; 924 {
4023                     .text:	section	.text,new
4024  0000               _TIM1_SelectSlaveMode:
4026  0000 88            	push	a
4027       00000000      OFST:	set	0
4030                     ; 926   assert_param(IS_TIM1_SLAVE_MODE_OK(TIM1_SlaveMode));
4032  0001 a104          	cp	a,#4
4033  0003 271a          	jreq	L2501
4034  0005 a105          	cp	a,#5
4035  0007 2716          	jreq	L2501
4036  0009 a106          	cp	a,#6
4037  000b 2712          	jreq	L2501
4038  000d a107          	cp	a,#7
4039  000f 270e          	jreq	L2501
4040  0011 ae039e        	ldw	x,#926
4041  0014 89            	pushw	x
4042  0015 5f            	clrw	x
4043  0016 89            	pushw	x
4044  0017 ae0000        	ldw	x,#L37
4045  001a cd0000        	call	_assert_failed
4047  001d 5b04          	addw	sp,#4
4048  001f               L2501:
4049                     ; 929   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(~TIM1_SMCR_SMS)) |
4049                     ; 930                          (uint8_t)TIM1_SlaveMode);
4051  001f c65252        	ld	a,21074
4052  0022 a4f8          	and	a,#248
4053  0024 1a01          	or	a,(OFST+1,sp)
4054  0026 c75252        	ld	21074,a
4055                     ; 931 }
4058  0029 84            	pop	a
4059  002a 81            	ret	
4096                     ; 939 void TIM1_SelectMasterSlaveMode(FunctionalState NewState)
4096                     ; 940 {
4097                     .text:	section	.text,new
4098  0000               _TIM1_SelectMasterSlaveMode:
4100  0000 88            	push	a
4101       00000000      OFST:	set	0
4104                     ; 942   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4106  0001 4d            	tnz	a
4107  0002 2711          	jreq	L4601
4108  0004 4a            	dec	a
4109  0005 270e          	jreq	L4601
4110  0007 ae03ae        	ldw	x,#942
4111  000a 89            	pushw	x
4112  000b 5f            	clrw	x
4113  000c 89            	pushw	x
4114  000d ae0000        	ldw	x,#L37
4115  0010 cd0000        	call	_assert_failed
4117  0013 5b04          	addw	sp,#4
4118  0015               L4601:
4119                     ; 945   if (NewState != DISABLE)
4121  0015 7b01          	ld	a,(OFST+1,sp)
4122  0017 2706          	jreq	L5551
4123                     ; 947     TIM1->SMCR |= TIM1_SMCR_MSM;
4125  0019 721e5252      	bset	21074,#7
4127  001d 2004          	jra	L7551
4128  001f               L5551:
4129                     ; 951     TIM1->SMCR &= (uint8_t)(~TIM1_SMCR_MSM);
4131  001f 721f5252      	bres	21074,#7
4132  0023               L7551:
4133                     ; 953 }
4136  0023 84            	pop	a
4137  0024 81            	ret	
4224                     ; 975 void TIM1_EncoderInterfaceConfig(TIM1_EncoderMode_TypeDef TIM1_EncoderMode,
4224                     ; 976                                  TIM1_ICPolarity_TypeDef TIM1_IC1Polarity,
4224                     ; 977                                  TIM1_ICPolarity_TypeDef TIM1_IC2Polarity)
4224                     ; 978 {
4225                     .text:	section	.text,new
4226  0000               _TIM1_EncoderInterfaceConfig:
4228  0000 89            	pushw	x
4229       00000000      OFST:	set	0
4232                     ; 980   assert_param(IS_TIM1_ENCODER_MODE_OK(TIM1_EncoderMode));
4234  0001 9e            	ld	a,xh
4235  0002 4a            	dec	a
4236  0003 270f          	jreq	L6701
4237  0005 9e            	ld	a,xh
4238  0006 a102          	cp	a,#2
4239  0008 270a          	jreq	L6701
4240  000a 9e            	ld	a,xh
4241  000b a103          	cp	a,#3
4242  000d 2705          	jreq	L6701
4243  000f ae03d4        	ldw	x,#980
4244  0012 ad54          	call	LC012
4245  0014               L6701:
4246                     ; 981   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC1Polarity));
4248  0014 7b02          	ld	a,(OFST+2,sp)
4249  0016 2708          	jreq	L6011
4250  0018 4a            	dec	a
4251  0019 2705          	jreq	L6011
4252  001b ae03d5        	ldw	x,#981
4253  001e ad48          	call	LC012
4254  0020               L6011:
4255                     ; 982   assert_param(IS_TIM1_IC_POLARITY_OK(TIM1_IC2Polarity));
4257  0020 7b05          	ld	a,(OFST+5,sp)
4258  0022 2708          	jreq	L6111
4259  0024 4a            	dec	a
4260  0025 2705          	jreq	L6111
4261  0027 ae03d6        	ldw	x,#982
4262  002a ad3c          	call	LC012
4263  002c               L6111:
4264                     ; 985   if (TIM1_IC1Polarity != TIM1_ICPOLARITY_RISING)
4266  002c 7b02          	ld	a,(OFST+2,sp)
4267  002e 2706          	jreq	L1261
4268                     ; 987     TIM1->CCER1 |= TIM1_CCER1_CC1P;
4270  0030 7212525c      	bset	21084,#1
4272  0034 2004          	jra	L3261
4273  0036               L1261:
4274                     ; 991     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
4276  0036 7213525c      	bres	21084,#1
4277  003a               L3261:
4278                     ; 994   if (TIM1_IC2Polarity != TIM1_ICPOLARITY_RISING)
4280  003a 7b05          	ld	a,(OFST+5,sp)
4281  003c 2706          	jreq	L5261
4282                     ; 996     TIM1->CCER1 |= TIM1_CCER1_CC2P;
4284  003e 721a525c      	bset	21084,#5
4286  0042 2004          	jra	L7261
4287  0044               L5261:
4288                     ; 1000     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
4290  0044 721b525c      	bres	21084,#5
4291  0048               L7261:
4292                     ; 1003   TIM1->SMCR = (uint8_t)((uint8_t)(TIM1->SMCR & (uint8_t)(TIM1_SMCR_MSM | TIM1_SMCR_TS))
4292                     ; 1004                          | (uint8_t) TIM1_EncoderMode);
4294  0048 c65252        	ld	a,21074
4295  004b a4f0          	and	a,#240
4296  004d 1a01          	or	a,(OFST+1,sp)
4297  004f c75252        	ld	21074,a
4298                     ; 1007   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_CCxS)) 
4298                     ; 1008                           | (uint8_t) CCMR_TIxDirect_Set);
4300  0052 c65258        	ld	a,21080
4301  0055 a4fc          	and	a,#252
4302  0057 aa01          	or	a,#1
4303  0059 c75258        	ld	21080,a
4304                     ; 1009   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_CCxS))
4304                     ; 1010                           | (uint8_t) CCMR_TIxDirect_Set);
4306  005c c65259        	ld	a,21081
4307  005f a4fc          	and	a,#252
4308  0061 aa01          	or	a,#1
4309  0063 c75259        	ld	21081,a
4310                     ; 1011 }
4313  0066 85            	popw	x
4314  0067 81            	ret	
4316  0068               LC012:
4317  0068 89            	pushw	x
4318  0069 5f            	clrw	x
4319  006a 89            	pushw	x
4320  006b ae0000        	ldw	x,#L37
4321  006e cd0000        	call	_assert_failed
4323  0071 5b04          	addw	sp,#4
4324  0073 81            	ret	
4389                     ; 1023 void TIM1_PrescalerConfig(uint16_t Prescaler,
4389                     ; 1024                           TIM1_PSCReloadMode_TypeDef TIM1_PSCReloadMode)
4389                     ; 1025 {
4390                     .text:	section	.text,new
4391  0000               _TIM1_PrescalerConfig:
4393  0000 89            	pushw	x
4394       00000000      OFST:	set	0
4397                     ; 1027   assert_param(IS_TIM1_PRESCALER_RELOAD_OK(TIM1_PSCReloadMode));
4399  0001 7b05          	ld	a,(OFST+5,sp)
4400  0003 2711          	jreq	L0311
4401  0005 4a            	dec	a
4402  0006 270e          	jreq	L0311
4403  0008 ae0403        	ldw	x,#1027
4404  000b 89            	pushw	x
4405  000c 5f            	clrw	x
4406  000d 89            	pushw	x
4407  000e ae0000        	ldw	x,#L37
4408  0011 cd0000        	call	_assert_failed
4410  0014 5b04          	addw	sp,#4
4411  0016               L0311:
4412                     ; 1030   TIM1->PSCRH = (uint8_t)(Prescaler >> 8);
4414  0016 7b01          	ld	a,(OFST+1,sp)
4415  0018 c75260        	ld	21088,a
4416                     ; 1031   TIM1->PSCRL = (uint8_t)(Prescaler);
4418  001b 7b02          	ld	a,(OFST+2,sp)
4419  001d c75261        	ld	21089,a
4420                     ; 1034   TIM1->EGR = (uint8_t)TIM1_PSCReloadMode;
4422  0020 7b05          	ld	a,(OFST+5,sp)
4423  0022 c75257        	ld	21079,a
4424                     ; 1035 }
4427  0025 85            	popw	x
4428  0026 81            	ret	
4465                     ; 1048 void TIM1_CounterModeConfig(TIM1_CounterMode_TypeDef TIM1_CounterMode)
4465                     ; 1049 {
4466                     .text:	section	.text,new
4467  0000               _TIM1_CounterModeConfig:
4469  0000 88            	push	a
4470       00000000      OFST:	set	0
4473                     ; 1051   assert_param(IS_TIM1_COUNTER_MODE_OK(TIM1_CounterMode));
4475  0001 4d            	tnz	a
4476  0002 271e          	jreq	L2411
4477  0004 a110          	cp	a,#16
4478  0006 271a          	jreq	L2411
4479  0008 a120          	cp	a,#32
4480  000a 2716          	jreq	L2411
4481  000c a140          	cp	a,#64
4482  000e 2712          	jreq	L2411
4483  0010 a160          	cp	a,#96
4484  0012 270e          	jreq	L2411
4485  0014 ae041b        	ldw	x,#1051
4486  0017 89            	pushw	x
4487  0018 5f            	clrw	x
4488  0019 89            	pushw	x
4489  001a ae0000        	ldw	x,#L37
4490  001d cd0000        	call	_assert_failed
4492  0020 5b04          	addw	sp,#4
4493  0022               L2411:
4494                     ; 1055   TIM1->CR1 = (uint8_t)((uint8_t)(TIM1->CR1 & (uint8_t)((uint8_t)(~TIM1_CR1_CMS) & (uint8_t)(~TIM1_CR1_DIR)))
4494                     ; 1056                         | (uint8_t)TIM1_CounterMode);
4496  0022 c65250        	ld	a,21072
4497  0025 a48f          	and	a,#143
4498  0027 1a01          	or	a,(OFST+1,sp)
4499  0029 c75250        	ld	21072,a
4500                     ; 1057 }
4503  002c 84            	pop	a
4504  002d 81            	ret	
4563                     ; 1067 void TIM1_ForcedOC1Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4563                     ; 1068 {
4564                     .text:	section	.text,new
4565  0000               _TIM1_ForcedOC1Config:
4567  0000 88            	push	a
4568       00000000      OFST:	set	0
4571                     ; 1070   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4573  0001 a150          	cp	a,#80
4574  0003 2712          	jreq	L4511
4575  0005 a140          	cp	a,#64
4576  0007 270e          	jreq	L4511
4577  0009 ae042e        	ldw	x,#1070
4578  000c 89            	pushw	x
4579  000d 5f            	clrw	x
4580  000e 89            	pushw	x
4581  000f ae0000        	ldw	x,#L37
4582  0012 cd0000        	call	_assert_failed
4584  0015 5b04          	addw	sp,#4
4585  0017               L4511:
4586                     ; 1073   TIM1->CCMR1 =  (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM))|
4586                     ; 1074                            (uint8_t)TIM1_ForcedAction);
4588  0017 c65258        	ld	a,21080
4589  001a a48f          	and	a,#143
4590  001c 1a01          	or	a,(OFST+1,sp)
4591  001e c75258        	ld	21080,a
4592                     ; 1075 }
4595  0021 84            	pop	a
4596  0022 81            	ret	
4633                     ; 1085 void TIM1_ForcedOC2Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4633                     ; 1086 {
4634                     .text:	section	.text,new
4635  0000               _TIM1_ForcedOC2Config:
4637  0000 88            	push	a
4638       00000000      OFST:	set	0
4641                     ; 1088   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4643  0001 a150          	cp	a,#80
4644  0003 2712          	jreq	L6611
4645  0005 a140          	cp	a,#64
4646  0007 270e          	jreq	L6611
4647  0009 ae0440        	ldw	x,#1088
4648  000c 89            	pushw	x
4649  000d 5f            	clrw	x
4650  000e 89            	pushw	x
4651  000f ae0000        	ldw	x,#L37
4652  0012 cd0000        	call	_assert_failed
4654  0015 5b04          	addw	sp,#4
4655  0017               L6611:
4656                     ; 1091   TIM1->CCMR2  =  (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
4656                     ; 1092                             | (uint8_t)TIM1_ForcedAction);
4658  0017 c65259        	ld	a,21081
4659  001a a48f          	and	a,#143
4660  001c 1a01          	or	a,(OFST+1,sp)
4661  001e c75259        	ld	21081,a
4662                     ; 1093 }
4665  0021 84            	pop	a
4666  0022 81            	ret	
4703                     ; 1104 void TIM1_ForcedOC3Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4703                     ; 1105 {
4704                     .text:	section	.text,new
4705  0000               _TIM1_ForcedOC3Config:
4707  0000 88            	push	a
4708       00000000      OFST:	set	0
4711                     ; 1107   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4713  0001 a150          	cp	a,#80
4714  0003 2712          	jreq	L0021
4715  0005 a140          	cp	a,#64
4716  0007 270e          	jreq	L0021
4717  0009 ae0453        	ldw	x,#1107
4718  000c 89            	pushw	x
4719  000d 5f            	clrw	x
4720  000e 89            	pushw	x
4721  000f ae0000        	ldw	x,#L37
4722  0012 cd0000        	call	_assert_failed
4724  0015 5b04          	addw	sp,#4
4725  0017               L0021:
4726                     ; 1110   TIM1->CCMR3  =  (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM))  
4726                     ; 1111                             | (uint8_t)TIM1_ForcedAction);
4728  0017 c6525a        	ld	a,21082
4729  001a a48f          	and	a,#143
4730  001c 1a01          	or	a,(OFST+1,sp)
4731  001e c7525a        	ld	21082,a
4732                     ; 1112 }
4735  0021 84            	pop	a
4736  0022 81            	ret	
4773                     ; 1123 void TIM1_ForcedOC4Config(TIM1_ForcedAction_TypeDef TIM1_ForcedAction)
4773                     ; 1124 {
4774                     .text:	section	.text,new
4775  0000               _TIM1_ForcedOC4Config:
4777  0000 88            	push	a
4778       00000000      OFST:	set	0
4781                     ; 1126   assert_param(IS_TIM1_FORCED_ACTION_OK(TIM1_ForcedAction));
4783  0001 a150          	cp	a,#80
4784  0003 2712          	jreq	L2121
4785  0005 a140          	cp	a,#64
4786  0007 270e          	jreq	L2121
4787  0009 ae0466        	ldw	x,#1126
4788  000c 89            	pushw	x
4789  000d 5f            	clrw	x
4790  000e 89            	pushw	x
4791  000f ae0000        	ldw	x,#L37
4792  0012 cd0000        	call	_assert_failed
4794  0015 5b04          	addw	sp,#4
4795  0017               L2121:
4796                     ; 1129   TIM1->CCMR4  =  (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
4796                     ; 1130                             | (uint8_t)TIM1_ForcedAction);
4798  0017 c6525b        	ld	a,21083
4799  001a a48f          	and	a,#143
4800  001c 1a01          	or	a,(OFST+1,sp)
4801  001e c7525b        	ld	21083,a
4802                     ; 1131 }
4805  0021 84            	pop	a
4806  0022 81            	ret	
4843                     ; 1139 void TIM1_ARRPreloadConfig(FunctionalState NewState)
4843                     ; 1140 {
4844                     .text:	section	.text,new
4845  0000               _TIM1_ARRPreloadConfig:
4847  0000 88            	push	a
4848       00000000      OFST:	set	0
4851                     ; 1142   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4853  0001 4d            	tnz	a
4854  0002 2711          	jreq	L4221
4855  0004 4a            	dec	a
4856  0005 270e          	jreq	L4221
4857  0007 ae0476        	ldw	x,#1142
4858  000a 89            	pushw	x
4859  000b 5f            	clrw	x
4860  000c 89            	pushw	x
4861  000d ae0000        	ldw	x,#L37
4862  0010 cd0000        	call	_assert_failed
4864  0013 5b04          	addw	sp,#4
4865  0015               L4221:
4866                     ; 1145   if (NewState != DISABLE)
4868  0015 7b01          	ld	a,(OFST+1,sp)
4869  0017 2706          	jreq	L5102
4870                     ; 1147     TIM1->CR1 |= TIM1_CR1_ARPE;
4872  0019 721e5250      	bset	21072,#7
4874  001d 2004          	jra	L7102
4875  001f               L5102:
4876                     ; 1151     TIM1->CR1 &= (uint8_t)(~TIM1_CR1_ARPE);
4878  001f 721f5250      	bres	21072,#7
4879  0023               L7102:
4880                     ; 1153 }
4883  0023 84            	pop	a
4884  0024 81            	ret	
4920                     ; 1161 void TIM1_SelectCOM(FunctionalState NewState)
4920                     ; 1162 {
4921                     .text:	section	.text,new
4922  0000               _TIM1_SelectCOM:
4924  0000 88            	push	a
4925       00000000      OFST:	set	0
4928                     ; 1164   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
4930  0001 4d            	tnz	a
4931  0002 2711          	jreq	L6321
4932  0004 4a            	dec	a
4933  0005 270e          	jreq	L6321
4934  0007 ae048c        	ldw	x,#1164
4935  000a 89            	pushw	x
4936  000b 5f            	clrw	x
4937  000c 89            	pushw	x
4938  000d ae0000        	ldw	x,#L37
4939  0010 cd0000        	call	_assert_failed
4941  0013 5b04          	addw	sp,#4
4942  0015               L6321:
4943                     ; 1167   if (NewState != DISABLE)
4945  0015 7b01          	ld	a,(OFST+1,sp)
4946  0017 2706          	jreq	L7302
4947                     ; 1169     TIM1->CR2 |= TIM1_CR2_COMS;
4949  0019 72145251      	bset	21073,#2
4951  001d 2004          	jra	L1402
4952  001f               L7302:
4953                     ; 1173     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_COMS);
4955  001f 72155251      	bres	21073,#2
4956  0023               L1402:
4957                     ; 1175 }
4960  0023 84            	pop	a
4961  0024 81            	ret	
4998                     ; 1183 void TIM1_CCPreloadControl(FunctionalState NewState)
4998                     ; 1184 {
4999                     .text:	section	.text,new
5000  0000               _TIM1_CCPreloadControl:
5002  0000 88            	push	a
5003       00000000      OFST:	set	0
5006                     ; 1186   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5008  0001 4d            	tnz	a
5009  0002 2711          	jreq	L0521
5010  0004 4a            	dec	a
5011  0005 270e          	jreq	L0521
5012  0007 ae04a2        	ldw	x,#1186
5013  000a 89            	pushw	x
5014  000b 5f            	clrw	x
5015  000c 89            	pushw	x
5016  000d ae0000        	ldw	x,#L37
5017  0010 cd0000        	call	_assert_failed
5019  0013 5b04          	addw	sp,#4
5020  0015               L0521:
5021                     ; 1189   if (NewState != DISABLE)
5023  0015 7b01          	ld	a,(OFST+1,sp)
5024  0017 2706          	jreq	L1602
5025                     ; 1191     TIM1->CR2 |= TIM1_CR2_CCPC;
5027  0019 72105251      	bset	21073,#0
5029  001d 2004          	jra	L3602
5030  001f               L1602:
5031                     ; 1195     TIM1->CR2 &= (uint8_t)(~TIM1_CR2_CCPC);
5033  001f 72115251      	bres	21073,#0
5034  0023               L3602:
5035                     ; 1197 }
5038  0023 84            	pop	a
5039  0024 81            	ret	
5076                     ; 1205 void TIM1_OC1PreloadConfig(FunctionalState NewState)
5076                     ; 1206 {
5077                     .text:	section	.text,new
5078  0000               _TIM1_OC1PreloadConfig:
5080  0000 88            	push	a
5081       00000000      OFST:	set	0
5084                     ; 1208   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5086  0001 4d            	tnz	a
5087  0002 2711          	jreq	L2621
5088  0004 4a            	dec	a
5089  0005 270e          	jreq	L2621
5090  0007 ae04b8        	ldw	x,#1208
5091  000a 89            	pushw	x
5092  000b 5f            	clrw	x
5093  000c 89            	pushw	x
5094  000d ae0000        	ldw	x,#L37
5095  0010 cd0000        	call	_assert_failed
5097  0013 5b04          	addw	sp,#4
5098  0015               L2621:
5099                     ; 1211   if (NewState != DISABLE)
5101  0015 7b01          	ld	a,(OFST+1,sp)
5102  0017 2706          	jreq	L3012
5103                     ; 1213     TIM1->CCMR1 |= TIM1_CCMR_OCxPE;
5105  0019 72165258      	bset	21080,#3
5107  001d 2004          	jra	L5012
5108  001f               L3012:
5109                     ; 1217     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5111  001f 72175258      	bres	21080,#3
5112  0023               L5012:
5113                     ; 1219 }
5116  0023 84            	pop	a
5117  0024 81            	ret	
5154                     ; 1227 void TIM1_OC2PreloadConfig(FunctionalState NewState)
5154                     ; 1228 {
5155                     .text:	section	.text,new
5156  0000               _TIM1_OC2PreloadConfig:
5158  0000 88            	push	a
5159       00000000      OFST:	set	0
5162                     ; 1230   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5164  0001 4d            	tnz	a
5165  0002 2711          	jreq	L4721
5166  0004 4a            	dec	a
5167  0005 270e          	jreq	L4721
5168  0007 ae04ce        	ldw	x,#1230
5169  000a 89            	pushw	x
5170  000b 5f            	clrw	x
5171  000c 89            	pushw	x
5172  000d ae0000        	ldw	x,#L37
5173  0010 cd0000        	call	_assert_failed
5175  0013 5b04          	addw	sp,#4
5176  0015               L4721:
5177                     ; 1233   if (NewState != DISABLE)
5179  0015 7b01          	ld	a,(OFST+1,sp)
5180  0017 2706          	jreq	L5212
5181                     ; 1235     TIM1->CCMR2 |= TIM1_CCMR_OCxPE;
5183  0019 72165259      	bset	21081,#3
5185  001d 2004          	jra	L7212
5186  001f               L5212:
5187                     ; 1239     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5189  001f 72175259      	bres	21081,#3
5190  0023               L7212:
5191                     ; 1241 }
5194  0023 84            	pop	a
5195  0024 81            	ret	
5232                     ; 1249 void TIM1_OC3PreloadConfig(FunctionalState NewState)
5232                     ; 1250 {
5233                     .text:	section	.text,new
5234  0000               _TIM1_OC3PreloadConfig:
5236  0000 88            	push	a
5237       00000000      OFST:	set	0
5240                     ; 1252   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5242  0001 4d            	tnz	a
5243  0002 2711          	jreq	L6031
5244  0004 4a            	dec	a
5245  0005 270e          	jreq	L6031
5246  0007 ae04e4        	ldw	x,#1252
5247  000a 89            	pushw	x
5248  000b 5f            	clrw	x
5249  000c 89            	pushw	x
5250  000d ae0000        	ldw	x,#L37
5251  0010 cd0000        	call	_assert_failed
5253  0013 5b04          	addw	sp,#4
5254  0015               L6031:
5255                     ; 1255   if (NewState != DISABLE)
5257  0015 7b01          	ld	a,(OFST+1,sp)
5258  0017 2706          	jreq	L7412
5259                     ; 1257     TIM1->CCMR3 |= TIM1_CCMR_OCxPE;
5261  0019 7216525a      	bset	21082,#3
5263  001d 2004          	jra	L1512
5264  001f               L7412:
5265                     ; 1261     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5267  001f 7217525a      	bres	21082,#3
5268  0023               L1512:
5269                     ; 1263 }
5272  0023 84            	pop	a
5273  0024 81            	ret	
5310                     ; 1271 void TIM1_OC4PreloadConfig(FunctionalState NewState)
5310                     ; 1272 {
5311                     .text:	section	.text,new
5312  0000               _TIM1_OC4PreloadConfig:
5314  0000 88            	push	a
5315       00000000      OFST:	set	0
5318                     ; 1274   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5320  0001 4d            	tnz	a
5321  0002 2711          	jreq	L0231
5322  0004 4a            	dec	a
5323  0005 270e          	jreq	L0231
5324  0007 ae04fa        	ldw	x,#1274
5325  000a 89            	pushw	x
5326  000b 5f            	clrw	x
5327  000c 89            	pushw	x
5328  000d ae0000        	ldw	x,#L37
5329  0010 cd0000        	call	_assert_failed
5331  0013 5b04          	addw	sp,#4
5332  0015               L0231:
5333                     ; 1277   if (NewState != DISABLE)
5335  0015 7b01          	ld	a,(OFST+1,sp)
5336  0017 2706          	jreq	L1712
5337                     ; 1279     TIM1->CCMR4 |= TIM1_CCMR_OCxPE;
5339  0019 7216525b      	bset	21083,#3
5341  001d 2004          	jra	L3712
5342  001f               L1712:
5343                     ; 1283     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxPE);
5345  001f 7217525b      	bres	21083,#3
5346  0023               L3712:
5347                     ; 1285 }
5350  0023 84            	pop	a
5351  0024 81            	ret	
5387                     ; 1293 void TIM1_OC1FastConfig(FunctionalState NewState)
5387                     ; 1294 {
5388                     .text:	section	.text,new
5389  0000               _TIM1_OC1FastConfig:
5391  0000 88            	push	a
5392       00000000      OFST:	set	0
5395                     ; 1296   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5397  0001 4d            	tnz	a
5398  0002 2711          	jreq	L2331
5399  0004 4a            	dec	a
5400  0005 270e          	jreq	L2331
5401  0007 ae0510        	ldw	x,#1296
5402  000a 89            	pushw	x
5403  000b 5f            	clrw	x
5404  000c 89            	pushw	x
5405  000d ae0000        	ldw	x,#L37
5406  0010 cd0000        	call	_assert_failed
5408  0013 5b04          	addw	sp,#4
5409  0015               L2331:
5410                     ; 1299   if (NewState != DISABLE)
5412  0015 7b01          	ld	a,(OFST+1,sp)
5413  0017 2706          	jreq	L3122
5414                     ; 1301     TIM1->CCMR1 |= TIM1_CCMR_OCxFE;
5416  0019 72145258      	bset	21080,#2
5418  001d 2004          	jra	L5122
5419  001f               L3122:
5420                     ; 1305     TIM1->CCMR1 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5422  001f 72155258      	bres	21080,#2
5423  0023               L5122:
5424                     ; 1307 }
5427  0023 84            	pop	a
5428  0024 81            	ret	
5464                     ; 1315 void TIM1_OC2FastConfig(FunctionalState NewState)
5464                     ; 1316 {
5465                     .text:	section	.text,new
5466  0000               _TIM1_OC2FastConfig:
5468  0000 88            	push	a
5469       00000000      OFST:	set	0
5472                     ; 1318   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5474  0001 4d            	tnz	a
5475  0002 2711          	jreq	L4431
5476  0004 4a            	dec	a
5477  0005 270e          	jreq	L4431
5478  0007 ae0526        	ldw	x,#1318
5479  000a 89            	pushw	x
5480  000b 5f            	clrw	x
5481  000c 89            	pushw	x
5482  000d ae0000        	ldw	x,#L37
5483  0010 cd0000        	call	_assert_failed
5485  0013 5b04          	addw	sp,#4
5486  0015               L4431:
5487                     ; 1321   if (NewState != DISABLE)
5489  0015 7b01          	ld	a,(OFST+1,sp)
5490  0017 2706          	jreq	L5322
5491                     ; 1323     TIM1->CCMR2 |= TIM1_CCMR_OCxFE;
5493  0019 72145259      	bset	21081,#2
5495  001d 2004          	jra	L7322
5496  001f               L5322:
5497                     ; 1327     TIM1->CCMR2 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5499  001f 72155259      	bres	21081,#2
5500  0023               L7322:
5501                     ; 1329 }
5504  0023 84            	pop	a
5505  0024 81            	ret	
5541                     ; 1337 void TIM1_OC3FastConfig(FunctionalState NewState)
5541                     ; 1338 {
5542                     .text:	section	.text,new
5543  0000               _TIM1_OC3FastConfig:
5545  0000 88            	push	a
5546       00000000      OFST:	set	0
5549                     ; 1340   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5551  0001 4d            	tnz	a
5552  0002 2711          	jreq	L6531
5553  0004 4a            	dec	a
5554  0005 270e          	jreq	L6531
5555  0007 ae053c        	ldw	x,#1340
5556  000a 89            	pushw	x
5557  000b 5f            	clrw	x
5558  000c 89            	pushw	x
5559  000d ae0000        	ldw	x,#L37
5560  0010 cd0000        	call	_assert_failed
5562  0013 5b04          	addw	sp,#4
5563  0015               L6531:
5564                     ; 1343   if (NewState != DISABLE)
5566  0015 7b01          	ld	a,(OFST+1,sp)
5567  0017 2706          	jreq	L7522
5568                     ; 1345     TIM1->CCMR3 |= TIM1_CCMR_OCxFE;
5570  0019 7214525a      	bset	21082,#2
5572  001d 2004          	jra	L1622
5573  001f               L7522:
5574                     ; 1349     TIM1->CCMR3 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5576  001f 7215525a      	bres	21082,#2
5577  0023               L1622:
5578                     ; 1351 }
5581  0023 84            	pop	a
5582  0024 81            	ret	
5618                     ; 1359 void TIM1_OC4FastConfig(FunctionalState NewState)
5618                     ; 1360 {
5619                     .text:	section	.text,new
5620  0000               _TIM1_OC4FastConfig:
5622  0000 88            	push	a
5623       00000000      OFST:	set	0
5626                     ; 1362   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
5628  0001 4d            	tnz	a
5629  0002 2711          	jreq	L0731
5630  0004 4a            	dec	a
5631  0005 270e          	jreq	L0731
5632  0007 ae0552        	ldw	x,#1362
5633  000a 89            	pushw	x
5634  000b 5f            	clrw	x
5635  000c 89            	pushw	x
5636  000d ae0000        	ldw	x,#L37
5637  0010 cd0000        	call	_assert_failed
5639  0013 5b04          	addw	sp,#4
5640  0015               L0731:
5641                     ; 1365   if (NewState != DISABLE)
5643  0015 7b01          	ld	a,(OFST+1,sp)
5644  0017 2706          	jreq	L1032
5645                     ; 1367     TIM1->CCMR4 |= TIM1_CCMR_OCxFE;
5647  0019 7214525b      	bset	21083,#2
5649  001d 2004          	jra	L3032
5650  001f               L1032:
5651                     ; 1371     TIM1->CCMR4 &= (uint8_t)(~TIM1_CCMR_OCxFE);
5653  001f 7215525b      	bres	21083,#2
5654  0023               L3032:
5655                     ; 1373 }
5658  0023 84            	pop	a
5659  0024 81            	ret	
5765                     ; 1389 void TIM1_GenerateEvent(TIM1_EventSource_TypeDef TIM1_EventSource)
5765                     ; 1390 {
5766                     .text:	section	.text,new
5767  0000               _TIM1_GenerateEvent:
5769  0000 88            	push	a
5770       00000000      OFST:	set	0
5773                     ; 1392   assert_param(IS_TIM1_EVENT_SOURCE_OK(TIM1_EventSource));
5775  0001 4d            	tnz	a
5776  0002 260e          	jrne	L0041
5777  0004 ae0570        	ldw	x,#1392
5778  0007 89            	pushw	x
5779  0008 5f            	clrw	x
5780  0009 89            	pushw	x
5781  000a ae0000        	ldw	x,#L37
5782  000d cd0000        	call	_assert_failed
5784  0010 5b04          	addw	sp,#4
5785  0012               L0041:
5786                     ; 1395   TIM1->EGR = (uint8_t)TIM1_EventSource;
5788  0012 7b01          	ld	a,(OFST+1,sp)
5789  0014 c75257        	ld	21079,a
5790                     ; 1396 }
5793  0017 84            	pop	a
5794  0018 81            	ret	
5831                     ; 1406 void TIM1_OC1PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5831                     ; 1407 {
5832                     .text:	section	.text,new
5833  0000               _TIM1_OC1PolarityConfig:
5835  0000 88            	push	a
5836       00000000      OFST:	set	0
5839                     ; 1409   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5841  0001 4d            	tnz	a
5842  0002 2712          	jreq	L2141
5843  0004 a122          	cp	a,#34
5844  0006 270e          	jreq	L2141
5845  0008 ae0581        	ldw	x,#1409
5846  000b 89            	pushw	x
5847  000c 5f            	clrw	x
5848  000d 89            	pushw	x
5849  000e ae0000        	ldw	x,#L37
5850  0011 cd0000        	call	_assert_failed
5852  0014 5b04          	addw	sp,#4
5853  0016               L2141:
5854                     ; 1412   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
5856  0016 7b01          	ld	a,(OFST+1,sp)
5857  0018 2706          	jreq	L5632
5858                     ; 1414     TIM1->CCER1 |= TIM1_CCER1_CC1P;
5860  001a 7212525c      	bset	21084,#1
5862  001e 2004          	jra	L7632
5863  0020               L5632:
5864                     ; 1418     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
5866  0020 7213525c      	bres	21084,#1
5867  0024               L7632:
5868                     ; 1420 }
5871  0024 84            	pop	a
5872  0025 81            	ret	
5909                     ; 1430 void TIM1_OC1NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
5909                     ; 1431 {
5910                     .text:	section	.text,new
5911  0000               _TIM1_OC1NPolarityConfig:
5913  0000 88            	push	a
5914       00000000      OFST:	set	0
5917                     ; 1433   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
5919  0001 4d            	tnz	a
5920  0002 2712          	jreq	L4241
5921  0004 a188          	cp	a,#136
5922  0006 270e          	jreq	L4241
5923  0008 ae0599        	ldw	x,#1433
5924  000b 89            	pushw	x
5925  000c 5f            	clrw	x
5926  000d 89            	pushw	x
5927  000e ae0000        	ldw	x,#L37
5928  0011 cd0000        	call	_assert_failed
5930  0014 5b04          	addw	sp,#4
5931  0016               L4241:
5932                     ; 1436   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
5934  0016 7b01          	ld	a,(OFST+1,sp)
5935  0018 2706          	jreq	L7042
5936                     ; 1438     TIM1->CCER1 |= TIM1_CCER1_CC1NP;
5938  001a 7216525c      	bset	21084,#3
5940  001e 2004          	jra	L1142
5941  0020               L7042:
5942                     ; 1442     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NP);
5944  0020 7217525c      	bres	21084,#3
5945  0024               L1142:
5946                     ; 1444 }
5949  0024 84            	pop	a
5950  0025 81            	ret	
5987                     ; 1454 void TIM1_OC2PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
5987                     ; 1455 {
5988                     .text:	section	.text,new
5989  0000               _TIM1_OC2PolarityConfig:
5991  0000 88            	push	a
5992       00000000      OFST:	set	0
5995                     ; 1457   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
5997  0001 4d            	tnz	a
5998  0002 2712          	jreq	L6341
5999  0004 a122          	cp	a,#34
6000  0006 270e          	jreq	L6341
6001  0008 ae05b1        	ldw	x,#1457
6002  000b 89            	pushw	x
6003  000c 5f            	clrw	x
6004  000d 89            	pushw	x
6005  000e ae0000        	ldw	x,#L37
6006  0011 cd0000        	call	_assert_failed
6008  0014 5b04          	addw	sp,#4
6009  0016               L6341:
6010                     ; 1460   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6012  0016 7b01          	ld	a,(OFST+1,sp)
6013  0018 2706          	jreq	L1342
6014                     ; 1462     TIM1->CCER1 |= TIM1_CCER1_CC2P;
6016  001a 721a525c      	bset	21084,#5
6018  001e 2004          	jra	L3342
6019  0020               L1342:
6020                     ; 1466     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
6022  0020 721b525c      	bres	21084,#5
6023  0024               L3342:
6024                     ; 1468 }
6027  0024 84            	pop	a
6028  0025 81            	ret	
6065                     ; 1478 void TIM1_OC2NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6065                     ; 1479 {
6066                     .text:	section	.text,new
6067  0000               _TIM1_OC2NPolarityConfig:
6069  0000 88            	push	a
6070       00000000      OFST:	set	0
6073                     ; 1481   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6075  0001 4d            	tnz	a
6076  0002 2712          	jreq	L0541
6077  0004 a188          	cp	a,#136
6078  0006 270e          	jreq	L0541
6079  0008 ae05c9        	ldw	x,#1481
6080  000b 89            	pushw	x
6081  000c 5f            	clrw	x
6082  000d 89            	pushw	x
6083  000e ae0000        	ldw	x,#L37
6084  0011 cd0000        	call	_assert_failed
6086  0014 5b04          	addw	sp,#4
6087  0016               L0541:
6088                     ; 1484   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6090  0016 7b01          	ld	a,(OFST+1,sp)
6091  0018 2706          	jreq	L3542
6092                     ; 1486     TIM1->CCER1 |= TIM1_CCER1_CC2NP;
6094  001a 721e525c      	bset	21084,#7
6096  001e 2004          	jra	L5542
6097  0020               L3542:
6098                     ; 1490     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NP);
6100  0020 721f525c      	bres	21084,#7
6101  0024               L5542:
6102                     ; 1492 }
6105  0024 84            	pop	a
6106  0025 81            	ret	
6143                     ; 1502 void TIM1_OC3PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6143                     ; 1503 {
6144                     .text:	section	.text,new
6145  0000               _TIM1_OC3PolarityConfig:
6147  0000 88            	push	a
6148       00000000      OFST:	set	0
6151                     ; 1505   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6153  0001 4d            	tnz	a
6154  0002 2712          	jreq	L2641
6155  0004 a122          	cp	a,#34
6156  0006 270e          	jreq	L2641
6157  0008 ae05e1        	ldw	x,#1505
6158  000b 89            	pushw	x
6159  000c 5f            	clrw	x
6160  000d 89            	pushw	x
6161  000e ae0000        	ldw	x,#L37
6162  0011 cd0000        	call	_assert_failed
6164  0014 5b04          	addw	sp,#4
6165  0016               L2641:
6166                     ; 1508   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6168  0016 7b01          	ld	a,(OFST+1,sp)
6169  0018 2706          	jreq	L5742
6170                     ; 1510     TIM1->CCER2 |= TIM1_CCER2_CC3P;
6172  001a 7212525d      	bset	21085,#1
6174  001e 2004          	jra	L7742
6175  0020               L5742:
6176                     ; 1514     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
6178  0020 7213525d      	bres	21085,#1
6179  0024               L7742:
6180                     ; 1516 }
6183  0024 84            	pop	a
6184  0025 81            	ret	
6221                     ; 1527 void TIM1_OC3NPolarityConfig(TIM1_OCNPolarity_TypeDef TIM1_OCNPolarity)
6221                     ; 1528 {
6222                     .text:	section	.text,new
6223  0000               _TIM1_OC3NPolarityConfig:
6225  0000 88            	push	a
6226       00000000      OFST:	set	0
6229                     ; 1530   assert_param(IS_TIM1_OCN_POLARITY_OK(TIM1_OCNPolarity));
6231  0001 4d            	tnz	a
6232  0002 2712          	jreq	L4741
6233  0004 a188          	cp	a,#136
6234  0006 270e          	jreq	L4741
6235  0008 ae05fa        	ldw	x,#1530
6236  000b 89            	pushw	x
6237  000c 5f            	clrw	x
6238  000d 89            	pushw	x
6239  000e ae0000        	ldw	x,#L37
6240  0011 cd0000        	call	_assert_failed
6242  0014 5b04          	addw	sp,#4
6243  0016               L4741:
6244                     ; 1533   if (TIM1_OCNPolarity != TIM1_OCNPOLARITY_HIGH)
6246  0016 7b01          	ld	a,(OFST+1,sp)
6247  0018 2706          	jreq	L7152
6248                     ; 1535     TIM1->CCER2 |= TIM1_CCER2_CC3NP;
6250  001a 7216525d      	bset	21085,#3
6252  001e 2004          	jra	L1252
6253  0020               L7152:
6254                     ; 1539     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NP);
6256  0020 7217525d      	bres	21085,#3
6257  0024               L1252:
6258                     ; 1541 }
6261  0024 84            	pop	a
6262  0025 81            	ret	
6299                     ; 1551 void TIM1_OC4PolarityConfig(TIM1_OCPolarity_TypeDef TIM1_OCPolarity)
6299                     ; 1552 {
6300                     .text:	section	.text,new
6301  0000               _TIM1_OC4PolarityConfig:
6303  0000 88            	push	a
6304       00000000      OFST:	set	0
6307                     ; 1554   assert_param(IS_TIM1_OC_POLARITY_OK(TIM1_OCPolarity));
6309  0001 4d            	tnz	a
6310  0002 2712          	jreq	L6051
6311  0004 a122          	cp	a,#34
6312  0006 270e          	jreq	L6051
6313  0008 ae0612        	ldw	x,#1554
6314  000b 89            	pushw	x
6315  000c 5f            	clrw	x
6316  000d 89            	pushw	x
6317  000e ae0000        	ldw	x,#L37
6318  0011 cd0000        	call	_assert_failed
6320  0014 5b04          	addw	sp,#4
6321  0016               L6051:
6322                     ; 1557   if (TIM1_OCPolarity != TIM1_OCPOLARITY_HIGH)
6324  0016 7b01          	ld	a,(OFST+1,sp)
6325  0018 2706          	jreq	L1452
6326                     ; 1559     TIM1->CCER2 |= TIM1_CCER2_CC4P;
6328  001a 721a525d      	bset	21085,#5
6330  001e 2004          	jra	L3452
6331  0020               L1452:
6332                     ; 1563     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
6334  0020 721b525d      	bres	21085,#5
6335  0024               L3452:
6336                     ; 1565 }
6339  0024 84            	pop	a
6340  0025 81            	ret	
6386                     ; 1579 void TIM1_CCxCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6386                     ; 1580 {
6387                     .text:	section	.text,new
6388  0000               _TIM1_CCxCmd:
6390  0000 89            	pushw	x
6391       00000000      OFST:	set	0
6394                     ; 1582   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6396  0001 9e            	ld	a,xh
6397  0002 4d            	tnz	a
6398  0003 2713          	jreq	L0251
6399  0005 9e            	ld	a,xh
6400  0006 4a            	dec	a
6401  0007 270f          	jreq	L0251
6402  0009 9e            	ld	a,xh
6403  000a a102          	cp	a,#2
6404  000c 270a          	jreq	L0251
6405  000e 9e            	ld	a,xh
6406  000f a103          	cp	a,#3
6407  0011 2705          	jreq	L0251
6408  0013 ae062e        	ldw	x,#1582
6409  0016 ad58          	call	LC013
6410  0018               L0251:
6411                     ; 1583   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6413  0018 7b02          	ld	a,(OFST+2,sp)
6414  001a 2708          	jreq	L0351
6415  001c 4a            	dec	a
6416  001d 2705          	jreq	L0351
6417  001f ae062f        	ldw	x,#1583
6418  0022 ad4c          	call	LC013
6419  0024               L0351:
6420                     ; 1585   if (TIM1_Channel == TIM1_CHANNEL_1)
6422  0024 7b01          	ld	a,(OFST+1,sp)
6423  0026 2610          	jrne	L7652
6424                     ; 1588     if (NewState != DISABLE)
6426  0028 7b02          	ld	a,(OFST+2,sp)
6427  002a 2706          	jreq	L1752
6428                     ; 1590       TIM1->CCER1 |= TIM1_CCER1_CC1E;
6430  002c 7210525c      	bset	21084,#0
6432  0030 203c          	jra	L5752
6433  0032               L1752:
6434                     ; 1594       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6436  0032 7211525c      	bres	21084,#0
6437  0036 2036          	jra	L5752
6438  0038               L7652:
6439                     ; 1598   else if (TIM1_Channel == TIM1_CHANNEL_2)
6441  0038 a101          	cp	a,#1
6442  003a 2610          	jrne	L7752
6443                     ; 1601     if (NewState != DISABLE)
6445  003c 7b02          	ld	a,(OFST+2,sp)
6446  003e 2706          	jreq	L1062
6447                     ; 1603       TIM1->CCER1 |= TIM1_CCER1_CC2E;
6449  0040 7218525c      	bset	21084,#4
6451  0044 2028          	jra	L5752
6452  0046               L1062:
6453                     ; 1607       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6455  0046 7219525c      	bres	21084,#4
6456  004a 2022          	jra	L5752
6457  004c               L7752:
6458                     ; 1610   else if (TIM1_Channel == TIM1_CHANNEL_3)
6460  004c a102          	cp	a,#2
6461  004e 2610          	jrne	L7062
6462                     ; 1613     if (NewState != DISABLE)
6464  0050 7b02          	ld	a,(OFST+2,sp)
6465  0052 2706          	jreq	L1162
6466                     ; 1615       TIM1->CCER2 |= TIM1_CCER2_CC3E;
6468  0054 7210525d      	bset	21085,#0
6470  0058 2014          	jra	L5752
6471  005a               L1162:
6472                     ; 1619       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6474  005a 7211525d      	bres	21085,#0
6475  005e 200e          	jra	L5752
6476  0060               L7062:
6477                     ; 1625     if (NewState != DISABLE)
6479  0060 7b02          	ld	a,(OFST+2,sp)
6480  0062 2706          	jreq	L7162
6481                     ; 1627       TIM1->CCER2 |= TIM1_CCER2_CC4E;
6483  0064 7218525d      	bset	21085,#4
6485  0068 2004          	jra	L5752
6486  006a               L7162:
6487                     ; 1631       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6489  006a 7219525d      	bres	21085,#4
6490  006e               L5752:
6491                     ; 1634 }
6494  006e 85            	popw	x
6495  006f 81            	ret	
6497  0070               LC013:
6498  0070 89            	pushw	x
6499  0071 5f            	clrw	x
6500  0072 89            	pushw	x
6501  0073 ae0000        	ldw	x,#L37
6502  0076 cd0000        	call	_assert_failed
6504  0079 5b04          	addw	sp,#4
6505  007b 81            	ret	
6550                     ; 1647 void TIM1_CCxNCmd(TIM1_Channel_TypeDef TIM1_Channel, FunctionalState NewState)
6550                     ; 1648 {
6551                     .text:	section	.text,new
6552  0000               _TIM1_CCxNCmd:
6554  0000 89            	pushw	x
6555       00000000      OFST:	set	0
6558                     ; 1650   assert_param(IS_TIM1_COMPLEMENTARY_CHANNEL_OK(TIM1_Channel));
6560  0001 9e            	ld	a,xh
6561  0002 4d            	tnz	a
6562  0003 270e          	jreq	L2451
6563  0005 9e            	ld	a,xh
6564  0006 4a            	dec	a
6565  0007 270a          	jreq	L2451
6566  0009 9e            	ld	a,xh
6567  000a a102          	cp	a,#2
6568  000c 2705          	jreq	L2451
6569  000e ae0672        	ldw	x,#1650
6570  0011 ad43          	call	LC014
6571  0013               L2451:
6572                     ; 1651   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
6574  0013 7b02          	ld	a,(OFST+2,sp)
6575  0015 2708          	jreq	L2551
6576  0017 4a            	dec	a
6577  0018 2705          	jreq	L2551
6578  001a ae0673        	ldw	x,#1651
6579  001d ad37          	call	LC014
6580  001f               L2551:
6581                     ; 1653   if (TIM1_Channel == TIM1_CHANNEL_1)
6583  001f 7b01          	ld	a,(OFST+1,sp)
6584  0021 2610          	jrne	L5462
6585                     ; 1656     if (NewState != DISABLE)
6587  0023 7b02          	ld	a,(OFST+2,sp)
6588  0025 2706          	jreq	L7462
6589                     ; 1658       TIM1->CCER1 |= TIM1_CCER1_CC1NE;
6591  0027 7214525c      	bset	21084,#2
6593  002b 2027          	jra	L3562
6594  002d               L7462:
6595                     ; 1662       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1NE);
6597  002d 7215525c      	bres	21084,#2
6598  0031 2021          	jra	L3562
6599  0033               L5462:
6600                     ; 1665   else if (TIM1_Channel == TIM1_CHANNEL_2)
6602  0033 4a            	dec	a
6603  0034 2610          	jrne	L5562
6604                     ; 1668     if (NewState != DISABLE)
6606  0036 7b02          	ld	a,(OFST+2,sp)
6607  0038 2706          	jreq	L7562
6608                     ; 1670       TIM1->CCER1 |= TIM1_CCER1_CC2NE;
6610  003a 721c525c      	bset	21084,#6
6612  003e 2014          	jra	L3562
6613  0040               L7562:
6614                     ; 1674       TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2NE);
6616  0040 721d525c      	bres	21084,#6
6617  0044 200e          	jra	L3562
6618  0046               L5562:
6619                     ; 1680     if (NewState != DISABLE)
6621  0046 7b02          	ld	a,(OFST+2,sp)
6622  0048 2706          	jreq	L5662
6623                     ; 1682       TIM1->CCER2 |= TIM1_CCER2_CC3NE;
6625  004a 7214525d      	bset	21085,#2
6627  004e 2004          	jra	L3562
6628  0050               L5662:
6629                     ; 1686       TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3NE);
6631  0050 7215525d      	bres	21085,#2
6632  0054               L3562:
6633                     ; 1689 }
6636  0054 85            	popw	x
6637  0055 81            	ret	
6639  0056               LC014:
6640  0056 89            	pushw	x
6641  0057 5f            	clrw	x
6642  0058 89            	pushw	x
6643  0059 ae0000        	ldw	x,#L37
6644  005c cd0000        	call	_assert_failed
6646  005f 5b04          	addw	sp,#4
6647  0061 81            	ret	
6692                     ; 1712 void TIM1_SelectOCxM(TIM1_Channel_TypeDef TIM1_Channel, TIM1_OCMode_TypeDef TIM1_OCMode)
6692                     ; 1713 {
6693                     .text:	section	.text,new
6694  0000               _TIM1_SelectOCxM:
6696  0000 89            	pushw	x
6697       00000000      OFST:	set	0
6700                     ; 1715   assert_param(IS_TIM1_CHANNEL_OK(TIM1_Channel));
6702  0001 9e            	ld	a,xh
6703  0002 4d            	tnz	a
6704  0003 2713          	jreq	L4651
6705  0005 9e            	ld	a,xh
6706  0006 4a            	dec	a
6707  0007 270f          	jreq	L4651
6708  0009 9e            	ld	a,xh
6709  000a a102          	cp	a,#2
6710  000c 270a          	jreq	L4651
6711  000e 9e            	ld	a,xh
6712  000f a103          	cp	a,#3
6713  0011 2705          	jreq	L4651
6714  0013 ae06b3        	ldw	x,#1715
6715  0016 ad71          	call	LC015
6716  0018               L4651:
6717                     ; 1716   assert_param(IS_TIM1_OCM_OK(TIM1_OCMode));
6719  0018 7b02          	ld	a,(OFST+2,sp)
6720  001a 2721          	jreq	L4751
6721  001c a110          	cp	a,#16
6722  001e 271d          	jreq	L4751
6723  0020 a120          	cp	a,#32
6724  0022 2719          	jreq	L4751
6725  0024 a130          	cp	a,#48
6726  0026 2715          	jreq	L4751
6727  0028 a160          	cp	a,#96
6728  002a 2711          	jreq	L4751
6729  002c a170          	cp	a,#112
6730  002e 270d          	jreq	L4751
6731  0030 a150          	cp	a,#80
6732  0032 2709          	jreq	L4751
6733  0034 a140          	cp	a,#64
6734  0036 2705          	jreq	L4751
6735  0038 ae06b4        	ldw	x,#1716
6736  003b ad4c          	call	LC015
6737  003d               L4751:
6738                     ; 1718   if (TIM1_Channel == TIM1_CHANNEL_1)
6740  003d 7b01          	ld	a,(OFST+1,sp)
6741  003f 2610          	jrne	L3172
6742                     ; 1721     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
6744  0041 7211525c      	bres	21084,#0
6745                     ; 1724     TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_OCM)) 
6745                     ; 1725                             | (uint8_t)TIM1_OCMode);
6747  0045 c65258        	ld	a,21080
6748  0048 a48f          	and	a,#143
6749  004a 1a02          	or	a,(OFST+2,sp)
6750  004c c75258        	ld	21080,a
6752  004f 2036          	jra	L5172
6753  0051               L3172:
6754                     ; 1727   else if (TIM1_Channel == TIM1_CHANNEL_2)
6756  0051 a101          	cp	a,#1
6757  0053 2610          	jrne	L7172
6758                     ; 1730     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2E);
6760  0055 7219525c      	bres	21084,#4
6761                     ; 1733     TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_OCM))
6761                     ; 1734                             | (uint8_t)TIM1_OCMode);
6763  0059 c65259        	ld	a,21081
6764  005c a48f          	and	a,#143
6765  005e 1a02          	or	a,(OFST+2,sp)
6766  0060 c75259        	ld	21081,a
6768  0063 2022          	jra	L5172
6769  0065               L7172:
6770                     ; 1736   else if (TIM1_Channel == TIM1_CHANNEL_3)
6772  0065 a102          	cp	a,#2
6773  0067 2610          	jrne	L3272
6774                     ; 1739     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3E);
6776  0069 7211525d      	bres	21085,#0
6777                     ; 1742     TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_OCM)) 
6777                     ; 1743                             | (uint8_t)TIM1_OCMode);
6779  006d c6525a        	ld	a,21082
6780  0070 a48f          	and	a,#143
6781  0072 1a02          	or	a,(OFST+2,sp)
6782  0074 c7525a        	ld	21082,a
6784  0077 200e          	jra	L5172
6785  0079               L3272:
6786                     ; 1748     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4E);
6788  0079 7219525d      	bres	21085,#4
6789                     ; 1751     TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_OCM)) 
6789                     ; 1752                             | (uint8_t)TIM1_OCMode);
6791  007d c6525b        	ld	a,21083
6792  0080 a48f          	and	a,#143
6793  0082 1a02          	or	a,(OFST+2,sp)
6794  0084 c7525b        	ld	21083,a
6795  0087               L5172:
6796                     ; 1754 }
6799  0087 85            	popw	x
6800  0088 81            	ret	
6802  0089               LC015:
6803  0089 89            	pushw	x
6804  008a 5f            	clrw	x
6805  008b 89            	pushw	x
6806  008c ae0000        	ldw	x,#L37
6807  008f cd0000        	call	_assert_failed
6809  0092 5b04          	addw	sp,#4
6810  0094 81            	ret	
6841                     ; 1762 void TIM1_SetCounter(uint16_t Counter)
6841                     ; 1763 {
6842                     .text:	section	.text,new
6843  0000               _TIM1_SetCounter:
6847                     ; 1765   TIM1->CNTRH = (uint8_t)(Counter >> 8);
6849  0000 9e            	ld	a,xh
6850  0001 c7525e        	ld	21086,a
6851                     ; 1766   TIM1->CNTRL = (uint8_t)(Counter);
6853  0004 9f            	ld	a,xl
6854  0005 c7525f        	ld	21087,a
6855                     ; 1767 }
6858  0008 81            	ret	
6890                     ; 1775 void TIM1_SetAutoreload(uint16_t Autoreload)
6890                     ; 1776 {
6891                     .text:	section	.text,new
6892  0000               _TIM1_SetAutoreload:
6896                     ; 1778   TIM1->ARRH = (uint8_t)(Autoreload >> 8);
6898  0000 9e            	ld	a,xh
6899  0001 c75262        	ld	21090,a
6900                     ; 1779   TIM1->ARRL = (uint8_t)(Autoreload);
6902  0004 9f            	ld	a,xl
6903  0005 c75263        	ld	21091,a
6904                     ; 1780  }
6907  0008 81            	ret	
6939                     ; 1788 void TIM1_SetCompare1(uint16_t Compare1)
6939                     ; 1789 {
6940                     .text:	section	.text,new
6941  0000               _TIM1_SetCompare1:
6945                     ; 1791   TIM1->CCR1H = (uint8_t)(Compare1 >> 8);
6947  0000 9e            	ld	a,xh
6948  0001 c75265        	ld	21093,a
6949                     ; 1792   TIM1->CCR1L = (uint8_t)(Compare1);
6951  0004 9f            	ld	a,xl
6952  0005 c75266        	ld	21094,a
6953                     ; 1793 }
6956  0008 81            	ret	
6988                     ; 1801 void TIM1_SetCompare2(uint16_t Compare2)
6988                     ; 1802 {
6989                     .text:	section	.text,new
6990  0000               _TIM1_SetCompare2:
6994                     ; 1804   TIM1->CCR2H = (uint8_t)(Compare2 >> 8);
6996  0000 9e            	ld	a,xh
6997  0001 c75267        	ld	21095,a
6998                     ; 1805   TIM1->CCR2L = (uint8_t)(Compare2);
7000  0004 9f            	ld	a,xl
7001  0005 c75268        	ld	21096,a
7002                     ; 1806 }
7005  0008 81            	ret	
7037                     ; 1814 void TIM1_SetCompare3(uint16_t Compare3)
7037                     ; 1815 {
7038                     .text:	section	.text,new
7039  0000               _TIM1_SetCompare3:
7043                     ; 1817   TIM1->CCR3H = (uint8_t)(Compare3 >> 8);
7045  0000 9e            	ld	a,xh
7046  0001 c75269        	ld	21097,a
7047                     ; 1818   TIM1->CCR3L = (uint8_t)(Compare3);
7049  0004 9f            	ld	a,xl
7050  0005 c7526a        	ld	21098,a
7051                     ; 1819 }
7054  0008 81            	ret	
7086                     ; 1827 void TIM1_SetCompare4(uint16_t Compare4)
7086                     ; 1828 {
7087                     .text:	section	.text,new
7088  0000               _TIM1_SetCompare4:
7092                     ; 1830   TIM1->CCR4H = (uint8_t)(Compare4 >> 8);
7094  0000 9e            	ld	a,xh
7095  0001 c7526b        	ld	21099,a
7096                     ; 1831   TIM1->CCR4L = (uint8_t)(Compare4);
7098  0004 9f            	ld	a,xl
7099  0005 c7526c        	ld	21100,a
7100                     ; 1832 }
7103  0008 81            	ret	
7140                     ; 1844 void TIM1_SetIC1Prescaler(TIM1_ICPSC_TypeDef TIM1_IC1Prescaler)
7140                     ; 1845 {
7141                     .text:	section	.text,new
7142  0000               _TIM1_SetIC1Prescaler:
7144  0000 88            	push	a
7145       00000000      OFST:	set	0
7148                     ; 1847   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC1Prescaler));
7150  0001 4d            	tnz	a
7151  0002 271a          	jreq	L2261
7152  0004 a104          	cp	a,#4
7153  0006 2716          	jreq	L2261
7154  0008 a108          	cp	a,#8
7155  000a 2712          	jreq	L2261
7156  000c a10c          	cp	a,#12
7157  000e 270e          	jreq	L2261
7158  0010 ae0737        	ldw	x,#1847
7159  0013 89            	pushw	x
7160  0014 5f            	clrw	x
7161  0015 89            	pushw	x
7162  0016 ae0000        	ldw	x,#L37
7163  0019 cd0000        	call	_assert_failed
7165  001c 5b04          	addw	sp,#4
7166  001e               L2261:
7167                     ; 1850   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~TIM1_CCMR_ICxPSC)) 
7167                     ; 1851                           | (uint8_t)TIM1_IC1Prescaler);
7169  001e c65258        	ld	a,21080
7170  0021 a4f3          	and	a,#243
7171  0023 1a01          	or	a,(OFST+1,sp)
7172  0025 c75258        	ld	21080,a
7173                     ; 1852 }
7176  0028 84            	pop	a
7177  0029 81            	ret	
7214                     ; 1864 void TIM1_SetIC2Prescaler(TIM1_ICPSC_TypeDef TIM1_IC2Prescaler)
7214                     ; 1865 {
7215                     .text:	section	.text,new
7216  0000               _TIM1_SetIC2Prescaler:
7218  0000 88            	push	a
7219       00000000      OFST:	set	0
7222                     ; 1868   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC2Prescaler));
7224  0001 4d            	tnz	a
7225  0002 271a          	jreq	L4361
7226  0004 a104          	cp	a,#4
7227  0006 2716          	jreq	L4361
7228  0008 a108          	cp	a,#8
7229  000a 2712          	jreq	L4361
7230  000c a10c          	cp	a,#12
7231  000e 270e          	jreq	L4361
7232  0010 ae074c        	ldw	x,#1868
7233  0013 89            	pushw	x
7234  0014 5f            	clrw	x
7235  0015 89            	pushw	x
7236  0016 ae0000        	ldw	x,#L37
7237  0019 cd0000        	call	_assert_failed
7239  001c 5b04          	addw	sp,#4
7240  001e               L4361:
7241                     ; 1871   TIM1->CCMR2 = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~TIM1_CCMR_ICxPSC))
7241                     ; 1872                           | (uint8_t)TIM1_IC2Prescaler);
7243  001e c65259        	ld	a,21081
7244  0021 a4f3          	and	a,#243
7245  0023 1a01          	or	a,(OFST+1,sp)
7246  0025 c75259        	ld	21081,a
7247                     ; 1873 }
7250  0028 84            	pop	a
7251  0029 81            	ret	
7288                     ; 1885 void TIM1_SetIC3Prescaler(TIM1_ICPSC_TypeDef TIM1_IC3Prescaler)
7288                     ; 1886 {
7289                     .text:	section	.text,new
7290  0000               _TIM1_SetIC3Prescaler:
7292  0000 88            	push	a
7293       00000000      OFST:	set	0
7296                     ; 1889   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC3Prescaler));
7298  0001 4d            	tnz	a
7299  0002 271a          	jreq	L6461
7300  0004 a104          	cp	a,#4
7301  0006 2716          	jreq	L6461
7302  0008 a108          	cp	a,#8
7303  000a 2712          	jreq	L6461
7304  000c a10c          	cp	a,#12
7305  000e 270e          	jreq	L6461
7306  0010 ae0761        	ldw	x,#1889
7307  0013 89            	pushw	x
7308  0014 5f            	clrw	x
7309  0015 89            	pushw	x
7310  0016 ae0000        	ldw	x,#L37
7311  0019 cd0000        	call	_assert_failed
7313  001c 5b04          	addw	sp,#4
7314  001e               L6461:
7315                     ; 1892   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~TIM1_CCMR_ICxPSC)) | 
7315                     ; 1893                           (uint8_t)TIM1_IC3Prescaler);
7317  001e c6525a        	ld	a,21082
7318  0021 a4f3          	and	a,#243
7319  0023 1a01          	or	a,(OFST+1,sp)
7320  0025 c7525a        	ld	21082,a
7321                     ; 1894 }
7324  0028 84            	pop	a
7325  0029 81            	ret	
7362                     ; 1906 void TIM1_SetIC4Prescaler(TIM1_ICPSC_TypeDef TIM1_IC4Prescaler)
7362                     ; 1907 {
7363                     .text:	section	.text,new
7364  0000               _TIM1_SetIC4Prescaler:
7366  0000 88            	push	a
7367       00000000      OFST:	set	0
7370                     ; 1910   assert_param(IS_TIM1_IC_PRESCALER_OK(TIM1_IC4Prescaler));
7372  0001 4d            	tnz	a
7373  0002 271a          	jreq	L0661
7374  0004 a104          	cp	a,#4
7375  0006 2716          	jreq	L0661
7376  0008 a108          	cp	a,#8
7377  000a 2712          	jreq	L0661
7378  000c a10c          	cp	a,#12
7379  000e 270e          	jreq	L0661
7380  0010 ae0776        	ldw	x,#1910
7381  0013 89            	pushw	x
7382  0014 5f            	clrw	x
7383  0015 89            	pushw	x
7384  0016 ae0000        	ldw	x,#L37
7385  0019 cd0000        	call	_assert_failed
7387  001c 5b04          	addw	sp,#4
7388  001e               L0661:
7389                     ; 1913   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~TIM1_CCMR_ICxPSC)) |
7389                     ; 1914                           (uint8_t)TIM1_IC4Prescaler);
7391  001e c6525b        	ld	a,21083
7392  0021 a4f3          	and	a,#243
7393  0023 1a01          	or	a,(OFST+1,sp)
7394  0025 c7525b        	ld	21083,a
7395                     ; 1915 }
7398  0028 84            	pop	a
7399  0029 81            	ret	
7445                     ; 1922 uint16_t TIM1_GetCapture1(void)
7445                     ; 1923 {
7446                     .text:	section	.text,new
7447  0000               _TIM1_GetCapture1:
7449  0000 5204          	subw	sp,#4
7450       00000004      OFST:	set	4
7453                     ; 1926   uint16_t tmpccr1 = 0;
7455                     ; 1927   uint8_t tmpccr1l=0, tmpccr1h=0;
7459                     ; 1929   tmpccr1h = TIM1->CCR1H;
7461  0002 c65265        	ld	a,21093
7462  0005 6b02          	ld	(OFST-2,sp),a
7463                     ; 1930   tmpccr1l = TIM1->CCR1L;
7465  0007 c65266        	ld	a,21094
7466  000a 6b01          	ld	(OFST-3,sp),a
7467                     ; 1932   tmpccr1 = (uint16_t)(tmpccr1l);
7469  000c 5f            	clrw	x
7470  000d 97            	ld	xl,a
7471  000e 1f03          	ldw	(OFST-1,sp),x
7472                     ; 1933   tmpccr1 |= (uint16_t)((uint16_t)tmpccr1h << 8);
7474  0010 7b02          	ld	a,(OFST-2,sp)
7475  0012 97            	ld	xl,a
7476  0013 7b04          	ld	a,(OFST+0,sp)
7477  0015 01            	rrwa	x,a
7478  0016 1a03          	or	a,(OFST-1,sp)
7479  0018 01            	rrwa	x,a
7480                     ; 1935   return (uint16_t)tmpccr1;
7484  0019 5b04          	addw	sp,#4
7485  001b 81            	ret	
7531                     ; 1943 uint16_t TIM1_GetCapture2(void)
7531                     ; 1944 {
7532                     .text:	section	.text,new
7533  0000               _TIM1_GetCapture2:
7535  0000 5204          	subw	sp,#4
7536       00000004      OFST:	set	4
7539                     ; 1947   uint16_t tmpccr2 = 0;
7541                     ; 1948   uint8_t tmpccr2l=0, tmpccr2h=0;
7545                     ; 1950   tmpccr2h = TIM1->CCR2H;
7547  0002 c65267        	ld	a,21095
7548  0005 6b02          	ld	(OFST-2,sp),a
7549                     ; 1951   tmpccr2l = TIM1->CCR2L;
7551  0007 c65268        	ld	a,21096
7552  000a 6b01          	ld	(OFST-3,sp),a
7553                     ; 1953   tmpccr2 = (uint16_t)(tmpccr2l);
7555  000c 5f            	clrw	x
7556  000d 97            	ld	xl,a
7557  000e 1f03          	ldw	(OFST-1,sp),x
7558                     ; 1954   tmpccr2 |= (uint16_t)((uint16_t)tmpccr2h << 8);
7560  0010 7b02          	ld	a,(OFST-2,sp)
7561  0012 97            	ld	xl,a
7562  0013 7b04          	ld	a,(OFST+0,sp)
7563  0015 01            	rrwa	x,a
7564  0016 1a03          	or	a,(OFST-1,sp)
7565  0018 01            	rrwa	x,a
7566                     ; 1956   return (uint16_t)tmpccr2;
7570  0019 5b04          	addw	sp,#4
7571  001b 81            	ret	
7617                     ; 1964 uint16_t TIM1_GetCapture3(void)
7617                     ; 1965 {
7618                     .text:	section	.text,new
7619  0000               _TIM1_GetCapture3:
7621  0000 5204          	subw	sp,#4
7622       00000004      OFST:	set	4
7625                     ; 1967   uint16_t tmpccr3 = 0;
7627                     ; 1968   uint8_t tmpccr3l=0, tmpccr3h=0;
7631                     ; 1970   tmpccr3h = TIM1->CCR3H;
7633  0002 c65269        	ld	a,21097
7634  0005 6b02          	ld	(OFST-2,sp),a
7635                     ; 1971   tmpccr3l = TIM1->CCR3L;
7637  0007 c6526a        	ld	a,21098
7638  000a 6b01          	ld	(OFST-3,sp),a
7639                     ; 1973   tmpccr3 = (uint16_t)(tmpccr3l);
7641  000c 5f            	clrw	x
7642  000d 97            	ld	xl,a
7643  000e 1f03          	ldw	(OFST-1,sp),x
7644                     ; 1974   tmpccr3 |= (uint16_t)((uint16_t)tmpccr3h << 8);
7646  0010 7b02          	ld	a,(OFST-2,sp)
7647  0012 97            	ld	xl,a
7648  0013 7b04          	ld	a,(OFST+0,sp)
7649  0015 01            	rrwa	x,a
7650  0016 1a03          	or	a,(OFST-1,sp)
7651  0018 01            	rrwa	x,a
7652                     ; 1976   return (uint16_t)tmpccr3;
7656  0019 5b04          	addw	sp,#4
7657  001b 81            	ret	
7703                     ; 1984 uint16_t TIM1_GetCapture4(void)
7703                     ; 1985 {
7704                     .text:	section	.text,new
7705  0000               _TIM1_GetCapture4:
7707  0000 5204          	subw	sp,#4
7708       00000004      OFST:	set	4
7711                     ; 1987   uint16_t tmpccr4 = 0;
7713                     ; 1988   uint8_t tmpccr4l=0, tmpccr4h=0;
7717                     ; 1990   tmpccr4h = TIM1->CCR4H;
7719  0002 c6526b        	ld	a,21099
7720  0005 6b02          	ld	(OFST-2,sp),a
7721                     ; 1991   tmpccr4l = TIM1->CCR4L;
7723  0007 c6526c        	ld	a,21100
7724  000a 6b01          	ld	(OFST-3,sp),a
7725                     ; 1993   tmpccr4 = (uint16_t)(tmpccr4l);
7727  000c 5f            	clrw	x
7728  000d 97            	ld	xl,a
7729  000e 1f03          	ldw	(OFST-1,sp),x
7730                     ; 1994   tmpccr4 |= (uint16_t)((uint16_t)tmpccr4h << 8);
7732  0010 7b02          	ld	a,(OFST-2,sp)
7733  0012 97            	ld	xl,a
7734  0013 7b04          	ld	a,(OFST+0,sp)
7735  0015 01            	rrwa	x,a
7736  0016 1a03          	or	a,(OFST-1,sp)
7737  0018 01            	rrwa	x,a
7738                     ; 1996   return (uint16_t)tmpccr4;
7742  0019 5b04          	addw	sp,#4
7743  001b 81            	ret	
7775                     ; 2004 uint16_t TIM1_GetCounter(void)
7775                     ; 2005 {
7776                     .text:	section	.text,new
7777  0000               _TIM1_GetCounter:
7779  0000 89            	pushw	x
7780       00000002      OFST:	set	2
7783                     ; 2006   uint16_t tmpcntr = 0;
7785                     ; 2008   tmpcntr = ((uint16_t)TIM1->CNTRH << 8);
7787  0001 c6525e        	ld	a,21086
7788  0004 97            	ld	xl,a
7789  0005 4f            	clr	a
7790  0006 02            	rlwa	x,a
7791  0007 1f01          	ldw	(OFST-1,sp),x
7792                     ; 2011   return (uint16_t)(tmpcntr | (uint16_t)(TIM1->CNTRL));
7794  0009 c6525f        	ld	a,21087
7795  000c 5f            	clrw	x
7796  000d 97            	ld	xl,a
7797  000e 01            	rrwa	x,a
7798  000f 1a02          	or	a,(OFST+0,sp)
7799  0011 01            	rrwa	x,a
7800  0012 1a01          	or	a,(OFST-1,sp)
7801  0014 01            	rrwa	x,a
7804  0015 5b02          	addw	sp,#2
7805  0017 81            	ret	
7837                     ; 2019 uint16_t TIM1_GetPrescaler(void)
7837                     ; 2020 {
7838                     .text:	section	.text,new
7839  0000               _TIM1_GetPrescaler:
7841  0000 89            	pushw	x
7842       00000002      OFST:	set	2
7845                     ; 2021   uint16_t temp = 0;
7847                     ; 2023   temp = ((uint16_t)TIM1->PSCRH << 8);
7849  0001 c65260        	ld	a,21088
7850  0004 97            	ld	xl,a
7851  0005 4f            	clr	a
7852  0006 02            	rlwa	x,a
7853  0007 1f01          	ldw	(OFST-1,sp),x
7854                     ; 2026   return (uint16_t)( temp | (uint16_t)(TIM1->PSCRL));
7856  0009 c65261        	ld	a,21089
7857  000c 5f            	clrw	x
7858  000d 97            	ld	xl,a
7859  000e 01            	rrwa	x,a
7860  000f 1a02          	or	a,(OFST+0,sp)
7861  0011 01            	rrwa	x,a
7862  0012 1a01          	or	a,(OFST-1,sp)
7863  0014 01            	rrwa	x,a
7866  0015 5b02          	addw	sp,#2
7867  0017 81            	ret	
8038                     ; 2047 FlagStatus TIM1_GetFlagStatus(TIM1_FLAG_TypeDef TIM1_FLAG)
8038                     ; 2048 {
8039                     .text:	section	.text,new
8040  0000               _TIM1_GetFlagStatus:
8042  0000 89            	pushw	x
8043  0001 89            	pushw	x
8044       00000002      OFST:	set	2
8047                     ; 2049   FlagStatus bitstatus = RESET;
8049                     ; 2050   uint8_t tim1_flag_l = 0, tim1_flag_h = 0;
8053                     ; 2053   assert_param(IS_TIM1_GET_FLAG_OK(TIM1_FLAG));
8055  0002 1e03          	ldw	x,(OFST+1,sp)
8056  0004 a30001        	cpw	x,#1
8057  0007 2745          	jreq	L6071
8058  0009 a30002        	cpw	x,#2
8059  000c 2740          	jreq	L6071
8060  000e a30004        	cpw	x,#4
8061  0011 273b          	jreq	L6071
8062  0013 a30008        	cpw	x,#8
8063  0016 2736          	jreq	L6071
8064  0018 a30010        	cpw	x,#16
8065  001b 2731          	jreq	L6071
8066  001d a30020        	cpw	x,#32
8067  0020 272c          	jreq	L6071
8068  0022 a30040        	cpw	x,#64
8069  0025 2727          	jreq	L6071
8070  0027 a30080        	cpw	x,#128
8071  002a 2722          	jreq	L6071
8072  002c a30200        	cpw	x,#512
8073  002f 271d          	jreq	L6071
8074  0031 a30400        	cpw	x,#1024
8075  0034 2718          	jreq	L6071
8076  0036 a30800        	cpw	x,#2048
8077  0039 2713          	jreq	L6071
8078  003b a31000        	cpw	x,#4096
8079  003e 270e          	jreq	L6071
8080  0040 ae0805        	ldw	x,#2053
8081  0043 89            	pushw	x
8082  0044 5f            	clrw	x
8083  0045 89            	pushw	x
8084  0046 ae0000        	ldw	x,#L37
8085  0049 cd0000        	call	_assert_failed
8087  004c 5b04          	addw	sp,#4
8088  004e               L6071:
8089                     ; 2055   tim1_flag_l = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_FLAG);
8091  004e c65255        	ld	a,21077
8092  0051 1404          	and	a,(OFST+2,sp)
8093  0053 6b01          	ld	(OFST-1,sp),a
8094                     ; 2056   tim1_flag_h = (uint8_t)((uint16_t)TIM1_FLAG >> 8);
8096  0055 7b03          	ld	a,(OFST+1,sp)
8097  0057 6b02          	ld	(OFST+0,sp),a
8098                     ; 2058   if ((tim1_flag_l | (uint8_t)(TIM1->SR2 & tim1_flag_h)) != 0)
8100  0059 c45256        	and	a,21078
8101  005c 1a01          	or	a,(OFST-1,sp)
8102  005e 2702          	jreq	L1533
8103                     ; 2060     bitstatus = SET;
8105  0060 a601          	ld	a,#1
8107  0062               L1533:
8108                     ; 2064     bitstatus = RESET;
8110                     ; 2066   return (FlagStatus)(bitstatus);
8114  0062 5b04          	addw	sp,#4
8115  0064 81            	ret	
8151                     ; 2087 void TIM1_ClearFlag(TIM1_FLAG_TypeDef TIM1_FLAG)
8151                     ; 2088 {
8152                     .text:	section	.text,new
8153  0000               _TIM1_ClearFlag:
8155  0000 89            	pushw	x
8156       00000000      OFST:	set	0
8159                     ; 2090   assert_param(IS_TIM1_CLEAR_FLAG_OK(TIM1_FLAG));
8161  0001 01            	rrwa	x,a
8162  0002 9f            	ld	a,xl
8163  0003 a4e1          	and	a,#225
8164  0005 97            	ld	xl,a
8165  0006 4f            	clr	a
8166  0007 02            	rlwa	x,a
8167  0008 5d            	tnzw	x
8168  0009 2604          	jrne	L4171
8169  000b 1e01          	ldw	x,(OFST+1,sp)
8170  000d 260e          	jrne	L6171
8171  000f               L4171:
8172  000f ae082a        	ldw	x,#2090
8173  0012 89            	pushw	x
8174  0013 5f            	clrw	x
8175  0014 89            	pushw	x
8176  0015 ae0000        	ldw	x,#L37
8177  0018 cd0000        	call	_assert_failed
8179  001b 5b04          	addw	sp,#4
8180  001d               L6171:
8181                     ; 2093   TIM1->SR1 = (uint8_t)(~(uint8_t)(TIM1_FLAG));
8183  001d 7b02          	ld	a,(OFST+2,sp)
8184  001f 43            	cpl	a
8185  0020 c75255        	ld	21077,a
8186                     ; 2094   TIM1->SR2 = (uint8_t)((uint8_t)(~((uint8_t)((uint16_t)TIM1_FLAG >> 8))) & 
8186                     ; 2095                         (uint8_t)0x1E);
8188  0023 7b01          	ld	a,(OFST+1,sp)
8189  0025 43            	cpl	a
8190  0026 a41e          	and	a,#30
8191  0028 c75256        	ld	21078,a
8192                     ; 2096 }
8195  002b 85            	popw	x
8196  002c 81            	ret	
8257                     ; 2112 ITStatus TIM1_GetITStatus(TIM1_IT_TypeDef TIM1_IT)
8257                     ; 2113 {
8258                     .text:	section	.text,new
8259  0000               _TIM1_GetITStatus:
8261  0000 88            	push	a
8262  0001 89            	pushw	x
8263       00000002      OFST:	set	2
8266                     ; 2114   ITStatus bitstatus = RESET;
8268                     ; 2115   uint8_t TIM1_itStatus = 0, TIM1_itEnable = 0;
8272  0002 7b02          	ld	a,(OFST+0,sp)
8273  0004 97            	ld	xl,a
8274                     ; 2118   assert_param(IS_TIM1_GET_IT_OK(TIM1_IT));
8276  0005 7b03          	ld	a,(OFST+1,sp)
8277  0007 a101          	cp	a,#1
8278  0009 272a          	jreq	L0371
8279  000b a102          	cp	a,#2
8280  000d 2726          	jreq	L0371
8281  000f a104          	cp	a,#4
8282  0011 2722          	jreq	L0371
8283  0013 a108          	cp	a,#8
8284  0015 271e          	jreq	L0371
8285  0017 a110          	cp	a,#16
8286  0019 271a          	jreq	L0371
8287  001b a120          	cp	a,#32
8288  001d 2716          	jreq	L0371
8289  001f a140          	cp	a,#64
8290  0021 2712          	jreq	L0371
8291  0023 a180          	cp	a,#128
8292  0025 270e          	jreq	L0371
8293  0027 ae0846        	ldw	x,#2118
8294  002a 89            	pushw	x
8295  002b 5f            	clrw	x
8296  002c 89            	pushw	x
8297  002d ae0000        	ldw	x,#L37
8298  0030 cd0000        	call	_assert_failed
8300  0033 5b04          	addw	sp,#4
8301  0035               L0371:
8302                     ; 2120   TIM1_itStatus = (uint8_t)(TIM1->SR1 & (uint8_t)TIM1_IT);
8304  0035 c65255        	ld	a,21077
8305  0038 1403          	and	a,(OFST+1,sp)
8306  003a 6b01          	ld	(OFST-1,sp),a
8307                     ; 2122   TIM1_itEnable = (uint8_t)(TIM1->IER & (uint8_t)TIM1_IT);
8309  003c c65254        	ld	a,21076
8310  003f 1403          	and	a,(OFST+1,sp)
8311  0041 6b02          	ld	(OFST+0,sp),a
8312                     ; 2124   if ((TIM1_itStatus != (uint8_t)RESET ) && (TIM1_itEnable != (uint8_t)RESET ))
8314  0043 7b01          	ld	a,(OFST-1,sp)
8315  0045 2708          	jreq	L1243
8317  0047 7b02          	ld	a,(OFST+0,sp)
8318  0049 2704          	jreq	L1243
8319                     ; 2126     bitstatus = SET;
8321  004b a601          	ld	a,#1
8323  004d 2001          	jra	L3243
8324  004f               L1243:
8325                     ; 2130     bitstatus = RESET;
8327  004f 4f            	clr	a
8328  0050               L3243:
8329                     ; 2132   return (ITStatus)(bitstatus);
8333  0050 5b03          	addw	sp,#3
8334  0052 81            	ret	
8371                     ; 2149 void TIM1_ClearITPendingBit(TIM1_IT_TypeDef TIM1_IT)
8371                     ; 2150 {
8372                     .text:	section	.text,new
8373  0000               _TIM1_ClearITPendingBit:
8375  0000 88            	push	a
8376       00000000      OFST:	set	0
8379                     ; 2152   assert_param(IS_TIM1_IT_OK(TIM1_IT));
8381  0001 4d            	tnz	a
8382  0002 260e          	jrne	L0471
8383  0004 ae0868        	ldw	x,#2152
8384  0007 89            	pushw	x
8385  0008 5f            	clrw	x
8386  0009 89            	pushw	x
8387  000a ae0000        	ldw	x,#L37
8388  000d cd0000        	call	_assert_failed
8390  0010 5b04          	addw	sp,#4
8391  0012               L0471:
8392                     ; 2155   TIM1->SR1 = (uint8_t)(~(uint8_t)TIM1_IT);
8394  0012 7b01          	ld	a,(OFST+1,sp)
8395  0014 43            	cpl	a
8396  0015 c75255        	ld	21077,a
8397                     ; 2156 }
8400  0018 84            	pop	a
8401  0019 81            	ret	
8447                     ; 2174 static void TI1_Config(uint8_t TIM1_ICPolarity,
8447                     ; 2175                        uint8_t TIM1_ICSelection,
8447                     ; 2176                        uint8_t TIM1_ICFilter)
8447                     ; 2177 {
8448                     .text:	section	.text,new
8449  0000               L3_TI1_Config:
8451  0000 89            	pushw	x
8452  0001 88            	push	a
8453       00000001      OFST:	set	1
8456                     ; 2179   TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1E);
8458  0002 7211525c      	bres	21084,#0
8459                     ; 2182   TIM1->CCMR1 = (uint8_t)((uint8_t)(TIM1->CCMR1 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) | 
8459                     ; 2183                           (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8461  0006 7b06          	ld	a,(OFST+5,sp)
8462  0008 97            	ld	xl,a
8463  0009 a610          	ld	a,#16
8464  000b 42            	mul	x,a
8465  000c 9f            	ld	a,xl
8466  000d 1a03          	or	a,(OFST+2,sp)
8467  000f 6b01          	ld	(OFST+0,sp),a
8468  0011 c65258        	ld	a,21080
8469  0014 a40c          	and	a,#12
8470  0016 1a01          	or	a,(OFST+0,sp)
8471  0018 c75258        	ld	21080,a
8472                     ; 2186   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8474  001b 7b02          	ld	a,(OFST+1,sp)
8475  001d 2706          	jreq	L3643
8476                     ; 2188     TIM1->CCER1 |= TIM1_CCER1_CC1P;
8478  001f 7212525c      	bset	21084,#1
8480  0023 2004          	jra	L5643
8481  0025               L3643:
8482                     ; 2192     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC1P);
8484  0025 7213525c      	bres	21084,#1
8485  0029               L5643:
8486                     ; 2196   TIM1->CCER1 |=  TIM1_CCER1_CC1E;
8488  0029 7210525c      	bset	21084,#0
8489                     ; 2197 }
8492  002d 5b03          	addw	sp,#3
8493  002f 81            	ret	
8539                     ; 2215 static void TI2_Config(uint8_t TIM1_ICPolarity,
8539                     ; 2216                        uint8_t TIM1_ICSelection,
8539                     ; 2217                        uint8_t TIM1_ICFilter)
8539                     ; 2218 {
8540                     .text:	section	.text,new
8541  0000               L5_TI2_Config:
8543  0000 89            	pushw	x
8544  0001 88            	push	a
8545       00000001      OFST:	set	1
8548                     ; 2220   TIM1->CCER1 &=  (uint8_t)(~TIM1_CCER1_CC2E);
8550  0002 7219525c      	bres	21084,#4
8551                     ; 2223   TIM1->CCMR2  = (uint8_t)((uint8_t)(TIM1->CCMR2 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF ))) 
8551                     ; 2224                            | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8553  0006 7b06          	ld	a,(OFST+5,sp)
8554  0008 97            	ld	xl,a
8555  0009 a610          	ld	a,#16
8556  000b 42            	mul	x,a
8557  000c 9f            	ld	a,xl
8558  000d 1a03          	or	a,(OFST+2,sp)
8559  000f 6b01          	ld	(OFST+0,sp),a
8560  0011 c65259        	ld	a,21081
8561  0014 a40c          	and	a,#12
8562  0016 1a01          	or	a,(OFST+0,sp)
8563  0018 c75259        	ld	21081,a
8564                     ; 2226   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8566  001b 7b02          	ld	a,(OFST+1,sp)
8567  001d 2706          	jreq	L7053
8568                     ; 2228     TIM1->CCER1 |= TIM1_CCER1_CC2P;
8570  001f 721a525c      	bset	21084,#5
8572  0023 2004          	jra	L1153
8573  0025               L7053:
8574                     ; 2232     TIM1->CCER1 &= (uint8_t)(~TIM1_CCER1_CC2P);
8576  0025 721b525c      	bres	21084,#5
8577  0029               L1153:
8578                     ; 2235   TIM1->CCER1 |=  TIM1_CCER1_CC2E;
8580  0029 7218525c      	bset	21084,#4
8581                     ; 2236 }
8584  002d 5b03          	addw	sp,#3
8585  002f 81            	ret	
8631                     ; 2254 static void TI3_Config(uint8_t TIM1_ICPolarity,
8631                     ; 2255                        uint8_t TIM1_ICSelection,
8631                     ; 2256                        uint8_t TIM1_ICFilter)
8631                     ; 2257 {
8632                     .text:	section	.text,new
8633  0000               L7_TI3_Config:
8635  0000 89            	pushw	x
8636  0001 88            	push	a
8637       00000001      OFST:	set	1
8640                     ; 2259   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC3E);
8642  0002 7211525d      	bres	21085,#0
8643                     ; 2262   TIM1->CCMR3 = (uint8_t)((uint8_t)(TIM1->CCMR3 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF))) 
8643                     ; 2263                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8645  0006 7b06          	ld	a,(OFST+5,sp)
8646  0008 97            	ld	xl,a
8647  0009 a610          	ld	a,#16
8648  000b 42            	mul	x,a
8649  000c 9f            	ld	a,xl
8650  000d 1a03          	or	a,(OFST+2,sp)
8651  000f 6b01          	ld	(OFST+0,sp),a
8652  0011 c6525a        	ld	a,21082
8653  0014 a40c          	and	a,#12
8654  0016 1a01          	or	a,(OFST+0,sp)
8655  0018 c7525a        	ld	21082,a
8656                     ; 2266   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8658  001b 7b02          	ld	a,(OFST+1,sp)
8659  001d 2706          	jreq	L3353
8660                     ; 2268     TIM1->CCER2 |= TIM1_CCER2_CC3P;
8662  001f 7212525d      	bset	21085,#1
8664  0023 2004          	jra	L5353
8665  0025               L3353:
8666                     ; 2272     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC3P);
8668  0025 7213525d      	bres	21085,#1
8669  0029               L5353:
8670                     ; 2275   TIM1->CCER2 |=  TIM1_CCER2_CC3E;
8672  0029 7210525d      	bset	21085,#0
8673                     ; 2276 }
8676  002d 5b03          	addw	sp,#3
8677  002f 81            	ret	
8723                     ; 2294 static void TI4_Config(uint8_t TIM1_ICPolarity,
8723                     ; 2295                        uint8_t TIM1_ICSelection,
8723                     ; 2296                        uint8_t TIM1_ICFilter)
8723                     ; 2297 {
8724                     .text:	section	.text,new
8725  0000               L11_TI4_Config:
8727  0000 89            	pushw	x
8728  0001 88            	push	a
8729       00000001      OFST:	set	1
8732                     ; 2299   TIM1->CCER2 &=  (uint8_t)(~TIM1_CCER2_CC4E);
8734  0002 7219525d      	bres	21085,#4
8735                     ; 2302   TIM1->CCMR4 = (uint8_t)((uint8_t)(TIM1->CCMR4 & (uint8_t)(~(uint8_t)( TIM1_CCMR_CCxS | TIM1_CCMR_ICxF )))
8735                     ; 2303                           | (uint8_t)(( (TIM1_ICSelection)) | ((uint8_t)( TIM1_ICFilter << 4))));
8737  0006 7b06          	ld	a,(OFST+5,sp)
8738  0008 97            	ld	xl,a
8739  0009 a610          	ld	a,#16
8740  000b 42            	mul	x,a
8741  000c 9f            	ld	a,xl
8742  000d 1a03          	or	a,(OFST+2,sp)
8743  000f 6b01          	ld	(OFST+0,sp),a
8744  0011 c6525b        	ld	a,21083
8745  0014 a40c          	and	a,#12
8746  0016 1a01          	or	a,(OFST+0,sp)
8747  0018 c7525b        	ld	21083,a
8748                     ; 2306   if (TIM1_ICPolarity != TIM1_ICPOLARITY_RISING)
8750  001b 7b02          	ld	a,(OFST+1,sp)
8751  001d 2706          	jreq	L7553
8752                     ; 2308     TIM1->CCER2 |= TIM1_CCER2_CC4P;
8754  001f 721a525d      	bset	21085,#5
8756  0023 2004          	jra	L1653
8757  0025               L7553:
8758                     ; 2312     TIM1->CCER2 &= (uint8_t)(~TIM1_CCER2_CC4P);
8760  0025 721b525d      	bres	21085,#5
8761  0029               L1653:
8762                     ; 2316   TIM1->CCER2 |=  TIM1_CCER2_CC4E;
8764  0029 7218525d      	bset	21085,#4
8765                     ; 2317 }
8768  002d 5b03          	addw	sp,#3
8769  002f 81            	ret	
8782                     	xdef	_TIM1_ClearITPendingBit
8783                     	xdef	_TIM1_GetITStatus
8784                     	xdef	_TIM1_ClearFlag
8785                     	xdef	_TIM1_GetFlagStatus
8786                     	xdef	_TIM1_GetPrescaler
8787                     	xdef	_TIM1_GetCounter
8788                     	xdef	_TIM1_GetCapture4
8789                     	xdef	_TIM1_GetCapture3
8790                     	xdef	_TIM1_GetCapture2
8791                     	xdef	_TIM1_GetCapture1
8792                     	xdef	_TIM1_SetIC4Prescaler
8793                     	xdef	_TIM1_SetIC3Prescaler
8794                     	xdef	_TIM1_SetIC2Prescaler
8795                     	xdef	_TIM1_SetIC1Prescaler
8796                     	xdef	_TIM1_SetCompare4
8797                     	xdef	_TIM1_SetCompare3
8798                     	xdef	_TIM1_SetCompare2
8799                     	xdef	_TIM1_SetCompare1
8800                     	xdef	_TIM1_SetAutoreload
8801                     	xdef	_TIM1_SetCounter
8802                     	xdef	_TIM1_SelectOCxM
8803                     	xdef	_TIM1_CCxNCmd
8804                     	xdef	_TIM1_CCxCmd
8805                     	xdef	_TIM1_OC4PolarityConfig
8806                     	xdef	_TIM1_OC3NPolarityConfig
8807                     	xdef	_TIM1_OC3PolarityConfig
8808                     	xdef	_TIM1_OC2NPolarityConfig
8809                     	xdef	_TIM1_OC2PolarityConfig
8810                     	xdef	_TIM1_OC1NPolarityConfig
8811                     	xdef	_TIM1_OC1PolarityConfig
8812                     	xdef	_TIM1_GenerateEvent
8813                     	xdef	_TIM1_OC4FastConfig
8814                     	xdef	_TIM1_OC3FastConfig
8815                     	xdef	_TIM1_OC2FastConfig
8816                     	xdef	_TIM1_OC1FastConfig
8817                     	xdef	_TIM1_OC4PreloadConfig
8818                     	xdef	_TIM1_OC3PreloadConfig
8819                     	xdef	_TIM1_OC2PreloadConfig
8820                     	xdef	_TIM1_OC1PreloadConfig
8821                     	xdef	_TIM1_CCPreloadControl
8822                     	xdef	_TIM1_SelectCOM
8823                     	xdef	_TIM1_ARRPreloadConfig
8824                     	xdef	_TIM1_ForcedOC4Config
8825                     	xdef	_TIM1_ForcedOC3Config
8826                     	xdef	_TIM1_ForcedOC2Config
8827                     	xdef	_TIM1_ForcedOC1Config
8828                     	xdef	_TIM1_CounterModeConfig
8829                     	xdef	_TIM1_PrescalerConfig
8830                     	xdef	_TIM1_EncoderInterfaceConfig
8831                     	xdef	_TIM1_SelectMasterSlaveMode
8832                     	xdef	_TIM1_SelectSlaveMode
8833                     	xdef	_TIM1_SelectOutputTrigger
8834                     	xdef	_TIM1_SelectOnePulseMode
8835                     	xdef	_TIM1_SelectHallSensor
8836                     	xdef	_TIM1_UpdateRequestConfig
8837                     	xdef	_TIM1_UpdateDisableConfig
8838                     	xdef	_TIM1_SelectInputTrigger
8839                     	xdef	_TIM1_TIxExternalClockConfig
8840                     	xdef	_TIM1_ETRConfig
8841                     	xdef	_TIM1_ETRClockMode2Config
8842                     	xdef	_TIM1_ETRClockMode1Config
8843                     	xdef	_TIM1_InternalClockConfig
8844                     	xdef	_TIM1_ITConfig
8845                     	xdef	_TIM1_CtrlPWMOutputs
8846                     	xdef	_TIM1_Cmd
8847                     	xdef	_TIM1_PWMIConfig
8848                     	xdef	_TIM1_ICInit
8849                     	xdef	_TIM1_BDTRConfig
8850                     	xdef	_TIM1_OC4Init
8851                     	xdef	_TIM1_OC3Init
8852                     	xdef	_TIM1_OC2Init
8853                     	xdef	_TIM1_OC1Init
8854                     	xdef	_TIM1_TimeBaseInit
8855                     	xdef	_TIM1_DeInit
8856                     	xref	_assert_failed
8857                     .const:	section	.text
8858  0000               L37:
8859  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
8860  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
8861  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
8862  0036 5f74696d312e  	dc.b	"_tim1.c",0
8882                     	end
