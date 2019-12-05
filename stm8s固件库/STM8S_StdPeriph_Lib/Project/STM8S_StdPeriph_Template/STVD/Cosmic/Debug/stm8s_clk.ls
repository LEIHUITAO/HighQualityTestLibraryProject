   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
   5                     .const:	section	.text
   6  0000               _HSIDivFactor:
   7  0000 01            	dc.b	1
   8  0001 02            	dc.b	2
   9  0002 04            	dc.b	4
  10  0003 08            	dc.b	8
  11  0004               _CLKPrescTable:
  12  0004 01            	dc.b	1
  13  0005 02            	dc.b	2
  14  0006 04            	dc.b	4
  15  0007 08            	dc.b	8
  16  0008 0a            	dc.b	10
  17  0009 10            	dc.b	16
  18  000a 14            	dc.b	20
  19  000b 28            	dc.b	40
  48                     ; 72 void CLK_DeInit(void)
  48                     ; 73 {
  50                     .text:	section	.text,new
  51  0000               _CLK_DeInit:
  55                     ; 74   CLK->ICKR = CLK_ICKR_RESET_VALUE;
  57  0000 350150c0      	mov	20672,#1
  58                     ; 75   CLK->ECKR = CLK_ECKR_RESET_VALUE;
  60  0004 725f50c1      	clr	20673
  61                     ; 76   CLK->SWR  = CLK_SWR_RESET_VALUE;
  63  0008 35e150c4      	mov	20676,#225
  64                     ; 77   CLK->SWCR = CLK_SWCR_RESET_VALUE;
  66  000c 725f50c5      	clr	20677
  67                     ; 78   CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
  69  0010 351850c6      	mov	20678,#24
  70                     ; 79   CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
  72  0014 35ff50c7      	mov	20679,#255
  73                     ; 80   CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
  75  0018 35ff50ca      	mov	20682,#255
  76                     ; 81   CLK->CSSR = CLK_CSSR_RESET_VALUE;
  78  001c 725f50c8      	clr	20680
  79                     ; 82   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  81  0020 725f50c9      	clr	20681
  83  0024               L52:
  84                     ; 83   while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
  86  0024 720050c9fb    	btjt	20681,#0,L52
  87                     ; 85   CLK->CCOR = CLK_CCOR_RESET_VALUE;
  89  0029 725f50c9      	clr	20681
  90                     ; 86   CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
  92  002d 725f50cc      	clr	20684
  93                     ; 87   CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
  95  0031 725f50cd      	clr	20685
  96                     ; 88 }
  99  0035 81            	ret	
 156                     ; 99 void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
 156                     ; 100 {
 157                     .text:	section	.text,new
 158  0000               _CLK_FastHaltWakeUpCmd:
 160  0000 88            	push	a
 161       00000000      OFST:	set	0
 164                     ; 102   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 166  0001 4d            	tnz	a
 167  0002 2711          	jreq	L41
 168  0004 4a            	dec	a
 169  0005 270e          	jreq	L41
 170  0007 ae0066        	ldw	x,#102
 171  000a 89            	pushw	x
 172  000b 5f            	clrw	x
 173  000c 89            	pushw	x
 174  000d ae000c        	ldw	x,#L75
 175  0010 cd0000        	call	_assert_failed
 177  0013 5b04          	addw	sp,#4
 178  0015               L41:
 179                     ; 104   if (NewState != DISABLE)
 181  0015 7b01          	ld	a,(OFST+1,sp)
 182  0017 2706          	jreq	L16
 183                     ; 107     CLK->ICKR |= CLK_ICKR_FHWU;
 185  0019 721450c0      	bset	20672,#2
 187  001d 2004          	jra	L36
 188  001f               L16:
 189                     ; 112     CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
 191  001f 721550c0      	bres	20672,#2
 192  0023               L36:
 193                     ; 114 }
 196  0023 84            	pop	a
 197  0024 81            	ret	
 233                     ; 121 void CLK_HSECmd(FunctionalState NewState)
 233                     ; 122 {
 234                     .text:	section	.text,new
 235  0000               _CLK_HSECmd:
 237  0000 88            	push	a
 238       00000000      OFST:	set	0
 241                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 243  0001 4d            	tnz	a
 244  0002 2711          	jreq	L62
 245  0004 4a            	dec	a
 246  0005 270e          	jreq	L62
 247  0007 ae007c        	ldw	x,#124
 248  000a 89            	pushw	x
 249  000b 5f            	clrw	x
 250  000c 89            	pushw	x
 251  000d ae000c        	ldw	x,#L75
 252  0010 cd0000        	call	_assert_failed
 254  0013 5b04          	addw	sp,#4
 255  0015               L62:
 256                     ; 126   if (NewState != DISABLE)
 258  0015 7b01          	ld	a,(OFST+1,sp)
 259  0017 2706          	jreq	L301
 260                     ; 129     CLK->ECKR |= CLK_ECKR_HSEEN;
 262  0019 721050c1      	bset	20673,#0
 264  001d 2004          	jra	L501
 265  001f               L301:
 266                     ; 134     CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
 268  001f 721150c1      	bres	20673,#0
 269  0023               L501:
 270                     ; 136 }
 273  0023 84            	pop	a
 274  0024 81            	ret	
 310                     ; 143 void CLK_HSICmd(FunctionalState NewState)
 310                     ; 144 {
 311                     .text:	section	.text,new
 312  0000               _CLK_HSICmd:
 314  0000 88            	push	a
 315       00000000      OFST:	set	0
 318                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 320  0001 4d            	tnz	a
 321  0002 2711          	jreq	L04
 322  0004 4a            	dec	a
 323  0005 270e          	jreq	L04
 324  0007 ae0092        	ldw	x,#146
 325  000a 89            	pushw	x
 326  000b 5f            	clrw	x
 327  000c 89            	pushw	x
 328  000d ae000c        	ldw	x,#L75
 329  0010 cd0000        	call	_assert_failed
 331  0013 5b04          	addw	sp,#4
 332  0015               L04:
 333                     ; 148   if (NewState != DISABLE)
 335  0015 7b01          	ld	a,(OFST+1,sp)
 336  0017 2706          	jreq	L521
 337                     ; 151     CLK->ICKR |= CLK_ICKR_HSIEN;
 339  0019 721050c0      	bset	20672,#0
 341  001d 2004          	jra	L721
 342  001f               L521:
 343                     ; 156     CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
 345  001f 721150c0      	bres	20672,#0
 346  0023               L721:
 347                     ; 158 }
 350  0023 84            	pop	a
 351  0024 81            	ret	
 387                     ; 166 void CLK_LSICmd(FunctionalState NewState)
 387                     ; 167 {
 388                     .text:	section	.text,new
 389  0000               _CLK_LSICmd:
 391  0000 88            	push	a
 392       00000000      OFST:	set	0
 395                     ; 169   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 397  0001 4d            	tnz	a
 398  0002 2711          	jreq	L25
 399  0004 4a            	dec	a
 400  0005 270e          	jreq	L25
 401  0007 ae00a9        	ldw	x,#169
 402  000a 89            	pushw	x
 403  000b 5f            	clrw	x
 404  000c 89            	pushw	x
 405  000d ae000c        	ldw	x,#L75
 406  0010 cd0000        	call	_assert_failed
 408  0013 5b04          	addw	sp,#4
 409  0015               L25:
 410                     ; 171   if (NewState != DISABLE)
 412  0015 7b01          	ld	a,(OFST+1,sp)
 413  0017 2706          	jreq	L741
 414                     ; 174     CLK->ICKR |= CLK_ICKR_LSIEN;
 416  0019 721650c0      	bset	20672,#3
 418  001d 2004          	jra	L151
 419  001f               L741:
 420                     ; 179     CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
 422  001f 721750c0      	bres	20672,#3
 423  0023               L151:
 424                     ; 181 }
 427  0023 84            	pop	a
 428  0024 81            	ret	
 464                     ; 189 void CLK_CCOCmd(FunctionalState NewState)
 464                     ; 190 {
 465                     .text:	section	.text,new
 466  0000               _CLK_CCOCmd:
 468  0000 88            	push	a
 469       00000000      OFST:	set	0
 472                     ; 192   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 474  0001 4d            	tnz	a
 475  0002 2711          	jreq	L46
 476  0004 4a            	dec	a
 477  0005 270e          	jreq	L46
 478  0007 ae00c0        	ldw	x,#192
 479  000a 89            	pushw	x
 480  000b 5f            	clrw	x
 481  000c 89            	pushw	x
 482  000d ae000c        	ldw	x,#L75
 483  0010 cd0000        	call	_assert_failed
 485  0013 5b04          	addw	sp,#4
 486  0015               L46:
 487                     ; 194   if (NewState != DISABLE)
 489  0015 7b01          	ld	a,(OFST+1,sp)
 490  0017 2706          	jreq	L171
 491                     ; 197     CLK->CCOR |= CLK_CCOR_CCOEN;
 493  0019 721050c9      	bset	20681,#0
 495  001d 2004          	jra	L371
 496  001f               L171:
 497                     ; 202     CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
 499  001f 721150c9      	bres	20681,#0
 500  0023               L371:
 501                     ; 204 }
 504  0023 84            	pop	a
 505  0024 81            	ret	
 541                     ; 213 void CLK_ClockSwitchCmd(FunctionalState NewState)
 541                     ; 214 {
 542                     .text:	section	.text,new
 543  0000               _CLK_ClockSwitchCmd:
 545  0000 88            	push	a
 546       00000000      OFST:	set	0
 549                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 551  0001 4d            	tnz	a
 552  0002 2711          	jreq	L67
 553  0004 4a            	dec	a
 554  0005 270e          	jreq	L67
 555  0007 ae00d8        	ldw	x,#216
 556  000a 89            	pushw	x
 557  000b 5f            	clrw	x
 558  000c 89            	pushw	x
 559  000d ae000c        	ldw	x,#L75
 560  0010 cd0000        	call	_assert_failed
 562  0013 5b04          	addw	sp,#4
 563  0015               L67:
 564                     ; 218   if (NewState != DISABLE )
 566  0015 7b01          	ld	a,(OFST+1,sp)
 567  0017 2706          	jreq	L312
 568                     ; 221     CLK->SWCR |= CLK_SWCR_SWEN;
 570  0019 721250c5      	bset	20677,#1
 572  001d 2004          	jra	L512
 573  001f               L312:
 574                     ; 226     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
 576  001f 721350c5      	bres	20677,#1
 577  0023               L512:
 578                     ; 228 }
 581  0023 84            	pop	a
 582  0024 81            	ret	
 619                     ; 238 void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
 619                     ; 239 {
 620                     .text:	section	.text,new
 621  0000               _CLK_SlowActiveHaltWakeUpCmd:
 623  0000 88            	push	a
 624       00000000      OFST:	set	0
 627                     ; 241   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 629  0001 4d            	tnz	a
 630  0002 2711          	jreq	L011
 631  0004 4a            	dec	a
 632  0005 270e          	jreq	L011
 633  0007 ae00f1        	ldw	x,#241
 634  000a 89            	pushw	x
 635  000b 5f            	clrw	x
 636  000c 89            	pushw	x
 637  000d ae000c        	ldw	x,#L75
 638  0010 cd0000        	call	_assert_failed
 640  0013 5b04          	addw	sp,#4
 641  0015               L011:
 642                     ; 243   if (NewState != DISABLE)
 644  0015 7b01          	ld	a,(OFST+1,sp)
 645  0017 2706          	jreq	L532
 646                     ; 246     CLK->ICKR |= CLK_ICKR_SWUAH;
 648  0019 721a50c0      	bset	20672,#5
 650  001d 2004          	jra	L732
 651  001f               L532:
 652                     ; 251     CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
 654  001f 721b50c0      	bres	20672,#5
 655  0023               L732:
 656                     ; 253 }
 659  0023 84            	pop	a
 660  0024 81            	ret	
 820                     ; 263 void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
 820                     ; 264 {
 821                     .text:	section	.text,new
 822  0000               _CLK_PeripheralClockConfig:
 824  0000 89            	pushw	x
 825       00000000      OFST:	set	0
 828                     ; 266   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 830  0001 9f            	ld	a,xl
 831  0002 4d            	tnz	a
 832  0003 270a          	jreq	L221
 833  0005 9f            	ld	a,xl
 834  0006 4a            	dec	a
 835  0007 2706          	jreq	L221
 836  0009 ae010a        	ldw	x,#266
 837  000c cd0092        	call	LC004
 838  000f               L221:
 839                     ; 267   assert_param(IS_CLK_PERIPHERAL_OK(CLK_Peripheral));
 841  000f 7b01          	ld	a,(OFST+1,sp)
 842  0011 272f          	jreq	L231
 843  0013 a101          	cp	a,#1
 844  0015 272b          	jreq	L231
 845  0017 a103          	cp	a,#3
 846  0019 2727          	jreq	L231
 847  001b a104          	cp	a,#4
 848  001d 2723          	jreq	L231
 849  001f a105          	cp	a,#5
 850  0021 271f          	jreq	L231
 851  0023 a104          	cp	a,#4
 852  0025 271b          	jreq	L231
 853  0027 a106          	cp	a,#6
 854  0029 2717          	jreq	L231
 855  002b a107          	cp	a,#7
 856  002d 2713          	jreq	L231
 857  002f a117          	cp	a,#23
 858  0031 270f          	jreq	L231
 859  0033 a113          	cp	a,#19
 860  0035 270b          	jreq	L231
 861  0037 a112          	cp	a,#18
 862  0039 2707          	jreq	L231
 863  003b ae010b        	ldw	x,#267
 864  003e ad52          	call	LC004
 865  0040 7b01          	ld	a,(OFST+1,sp)
 866  0042               L231:
 867                     ; 269   if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
 869  0042 a510          	bcp	a,#16
 870  0044 2622          	jrne	L323
 871                     ; 271     if (NewState != DISABLE)
 873  0046 0d02          	tnz	(OFST+2,sp)
 874  0048 270d          	jreq	L523
 875                     ; 274       CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 877  004a ad3e          	call	LC003
 878  004c 2704          	jreq	L631
 879  004e               L041:
 880  004e 48            	sll	a
 881  004f 5a            	decw	x
 882  0050 26fc          	jrne	L041
 883  0052               L631:
 884  0052 ca50c7        	or	a,20679
 886  0055 200c          	jp	LC002
 887  0057               L523:
 888                     ; 279       CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 890  0057 ad31          	call	LC003
 891  0059 2704          	jreq	L241
 892  005b               L441:
 893  005b 48            	sll	a
 894  005c 5a            	decw	x
 895  005d 26fc          	jrne	L441
 896  005f               L241:
 897  005f 43            	cpl	a
 898  0060 c450c7        	and	a,20679
 899  0063               LC002:
 900  0063 c750c7        	ld	20679,a
 901  0066 2020          	jra	L133
 902  0068               L323:
 903                     ; 284     if (NewState != DISABLE)
 905  0068 0d02          	tnz	(OFST+2,sp)
 906  006a 270d          	jreq	L333
 907                     ; 287       CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
 909  006c ad1c          	call	LC003
 910  006e 2704          	jreq	L641
 911  0070               L051:
 912  0070 48            	sll	a
 913  0071 5a            	decw	x
 914  0072 26fc          	jrne	L051
 915  0074               L641:
 916  0074 ca50ca        	or	a,20682
 918  0077 200c          	jp	LC001
 919  0079               L333:
 920                     ; 292       CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
 922  0079 ad0f          	call	LC003
 923  007b 2704          	jreq	L251
 924  007d               L451:
 925  007d 48            	sll	a
 926  007e 5a            	decw	x
 927  007f 26fc          	jrne	L451
 928  0081               L251:
 929  0081 43            	cpl	a
 930  0082 c450ca        	and	a,20682
 931  0085               LC001:
 932  0085 c750ca        	ld	20682,a
 933  0088               L133:
 934                     ; 295 }
 937  0088 85            	popw	x
 938  0089 81            	ret	
 940  008a               LC003:
 941  008a a40f          	and	a,#15
 942  008c 5f            	clrw	x
 943  008d 97            	ld	xl,a
 944  008e a601          	ld	a,#1
 945  0090 5d            	tnzw	x
 946  0091 81            	ret	
 947  0092               LC004:
 948  0092 89            	pushw	x
 949  0093 5f            	clrw	x
 950  0094 89            	pushw	x
 951  0095 ae000c        	ldw	x,#L75
 952  0098 cd0000        	call	_assert_failed
 954  009b 5b04          	addw	sp,#4
 955  009d 81            	ret	
1141                     ; 309 ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
1141                     ; 310 {
1142                     .text:	section	.text,new
1143  0000               _CLK_ClockSwitchConfig:
1145  0000 89            	pushw	x
1146  0001 5204          	subw	sp,#4
1147       00000004      OFST:	set	4
1150                     ; 312   uint16_t DownCounter = CLK_TIMEOUT;
1152  0003 aeffff        	ldw	x,#65535
1153  0006 1f03          	ldw	(OFST-1,sp),x
1154                     ; 313   ErrorStatus Swif = ERROR;
1156                     ; 316   assert_param(IS_CLK_SOURCE_OK(CLK_NewClock));
1158  0008 7b06          	ld	a,(OFST+2,sp)
1159  000a a1e1          	cp	a,#225
1160  000c 270e          	jreq	L461
1161  000e a1d2          	cp	a,#210
1162  0010 270a          	jreq	L461
1163  0012 a1b4          	cp	a,#180
1164  0014 2706          	jreq	L461
1165  0016 ae013c        	ldw	x,#316
1166  0019 cd00dc        	call	LC007
1167  001c               L461:
1168                     ; 317   assert_param(IS_CLK_SWITCHMODE_OK(CLK_SwitchMode));
1170  001c 7b05          	ld	a,(OFST+1,sp)
1171  001e 2709          	jreq	L471
1172  0020 4a            	dec	a
1173  0021 2706          	jreq	L471
1174  0023 ae013d        	ldw	x,#317
1175  0026 cd00dc        	call	LC007
1176  0029               L471:
1177                     ; 318   assert_param(IS_FUNCTIONALSTATE_OK(ITState));
1179  0029 7b09          	ld	a,(OFST+5,sp)
1180  002b 2709          	jreq	L402
1181  002d 4a            	dec	a
1182  002e 2706          	jreq	L402
1183  0030 ae013e        	ldw	x,#318
1184  0033 cd00dc        	call	LC007
1185  0036               L402:
1186                     ; 319   assert_param(IS_CLK_CURRENTCLOCKSTATE_OK(CLK_CurrentClockState));
1188  0036 7b0a          	ld	a,(OFST+6,sp)
1189  0038 2709          	jreq	L412
1190  003a 4a            	dec	a
1191  003b 2706          	jreq	L412
1192  003d ae013f        	ldw	x,#319
1193  0040 cd00dc        	call	LC007
1194  0043               L412:
1195                     ; 322   clock_master = (CLK_Source_TypeDef)CLK->CMSR;
1197  0043 c650c3        	ld	a,20675
1198  0046 6b01          	ld	(OFST-3,sp),a
1199                     ; 325   if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
1201  0048 7b05          	ld	a,(OFST+1,sp)
1202  004a 4a            	dec	a
1203  004b 263d          	jrne	L544
1204                     ; 328     CLK->SWCR |= CLK_SWCR_SWEN;
1206  004d 721250c5      	bset	20677,#1
1207                     ; 331     if (ITState != DISABLE)
1209  0051 7b09          	ld	a,(OFST+5,sp)
1210  0053 2706          	jreq	L744
1211                     ; 333       CLK->SWCR |= CLK_SWCR_SWIEN;
1213  0055 721450c5      	bset	20677,#2
1215  0059 2004          	jra	L154
1216  005b               L744:
1217                     ; 337       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1219  005b 721550c5      	bres	20677,#2
1220  005f               L154:
1221                     ; 341     CLK->SWR = (uint8_t)CLK_NewClock;
1223  005f 7b06          	ld	a,(OFST+2,sp)
1224  0061 c750c4        	ld	20676,a
1226  0064 2003          	jra	L754
1227  0066               L354:
1228                     ; 346       DownCounter--;
1230  0066 5a            	decw	x
1231  0067 1f03          	ldw	(OFST-1,sp),x
1232  0069               L754:
1233                     ; 344     while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
1235  0069 720150c504    	btjf	20677,#0,L364
1237  006e 1e03          	ldw	x,(OFST-1,sp)
1238  0070 26f4          	jrne	L354
1239  0072               L364:
1240                     ; 349     if(DownCounter != 0)
1242  0072 1e03          	ldw	x,(OFST-1,sp)
1243                     ; 351       Swif = SUCCESS;
1245  0074 263d          	jrne	LC006
1246  0076               L564:
1247                     ; 355       Swif = ERROR;
1250  0076 0f02          	clr	(OFST-2,sp)
1251  0078               L174:
1252                     ; 390   if(Swif != ERROR)
1254  0078 275d          	jreq	L515
1255                     ; 393     if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
1257  007a 7b0a          	ld	a,(OFST+6,sp)
1258  007c 263b          	jrne	L715
1260  007e 7b01          	ld	a,(OFST-3,sp)
1261  0080 a1e1          	cp	a,#225
1262  0082 2635          	jrne	L715
1263                     ; 395       CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
1265  0084 721150c0      	bres	20672,#0
1267  0088 204d          	jra	L515
1268  008a               L544:
1269                     ; 361     if (ITState != DISABLE)
1271  008a 7b09          	ld	a,(OFST+5,sp)
1272  008c 2706          	jreq	L374
1273                     ; 363       CLK->SWCR |= CLK_SWCR_SWIEN;
1275  008e 721450c5      	bset	20677,#2
1277  0092 2004          	jra	L574
1278  0094               L374:
1279                     ; 367       CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
1281  0094 721550c5      	bres	20677,#2
1282  0098               L574:
1283                     ; 371     CLK->SWR = (uint8_t)CLK_NewClock;
1285  0098 7b06          	ld	a,(OFST+2,sp)
1286  009a c750c4        	ld	20676,a
1288  009d 2003          	jra	L305
1289  009f               L774:
1290                     ; 376       DownCounter--;
1292  009f 5a            	decw	x
1293  00a0 1f03          	ldw	(OFST-1,sp),x
1294  00a2               L305:
1295                     ; 374     while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
1297  00a2 720750c504    	btjf	20677,#3,L705
1299  00a7 1e03          	ldw	x,(OFST-1,sp)
1300  00a9 26f4          	jrne	L774
1301  00ab               L705:
1302                     ; 379     if(DownCounter != 0)
1304  00ab 1e03          	ldw	x,(OFST-1,sp)
1305  00ad 27c7          	jreq	L564
1306                     ; 382       CLK->SWCR |= CLK_SWCR_SWEN;
1308  00af 721250c5      	bset	20677,#1
1309                     ; 383       Swif = SUCCESS;
1311  00b3               LC006:
1313  00b3 a601          	ld	a,#1
1314  00b5 6b02          	ld	(OFST-2,sp),a
1316  00b7 20bf          	jra	L174
1317                     ; 387       Swif = ERROR;
1318  00b9               L715:
1319                     ; 397     else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
1321  00b9 7b0a          	ld	a,(OFST+6,sp)
1322  00bb 260c          	jrne	L325
1324  00bd 7b01          	ld	a,(OFST-3,sp)
1325  00bf a1d2          	cp	a,#210
1326  00c1 2606          	jrne	L325
1327                     ; 399       CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
1329  00c3 721750c0      	bres	20672,#3
1331  00c7 200e          	jra	L515
1332  00c9               L325:
1333                     ; 401     else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
1335  00c9 7b0a          	ld	a,(OFST+6,sp)
1336  00cb 260a          	jrne	L515
1338  00cd 7b01          	ld	a,(OFST-3,sp)
1339  00cf a1b4          	cp	a,#180
1340  00d1 2604          	jrne	L515
1341                     ; 403       CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
1343  00d3 721150c1      	bres	20673,#0
1344  00d7               L515:
1345                     ; 406   return(Swif);
1347  00d7 7b02          	ld	a,(OFST-2,sp)
1350  00d9 5b06          	addw	sp,#6
1351  00db 81            	ret	
1353  00dc               LC007:
1354  00dc 89            	pushw	x
1355  00dd 5f            	clrw	x
1356  00de 89            	pushw	x
1357  00df ae000c        	ldw	x,#L75
1358  00e2 cd0000        	call	_assert_failed
1360  00e5 5b04          	addw	sp,#4
1361  00e7 81            	ret	
1499                     ; 415 void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
1499                     ; 416 {
1500                     .text:	section	.text,new
1501  0000               _CLK_HSIPrescalerConfig:
1503  0000 88            	push	a
1504       00000000      OFST:	set	0
1507                     ; 418   assert_param(IS_CLK_HSIPRESCALER_OK(HSIPrescaler));
1509  0001 4d            	tnz	a
1510  0002 271a          	jreq	L622
1511  0004 a108          	cp	a,#8
1512  0006 2716          	jreq	L622
1513  0008 a110          	cp	a,#16
1514  000a 2712          	jreq	L622
1515  000c a118          	cp	a,#24
1516  000e 270e          	jreq	L622
1517  0010 ae01a2        	ldw	x,#418
1518  0013 89            	pushw	x
1519  0014 5f            	clrw	x
1520  0015 89            	pushw	x
1521  0016 ae000c        	ldw	x,#L75
1522  0019 cd0000        	call	_assert_failed
1524  001c 5b04          	addw	sp,#4
1525  001e               L622:
1526                     ; 421   CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1528  001e c650c6        	ld	a,20678
1529  0021 a4e7          	and	a,#231
1530  0023 c750c6        	ld	20678,a
1531                     ; 424   CLK->CKDIVR |= (uint8_t)HSIPrescaler;
1533  0026 c650c6        	ld	a,20678
1534  0029 1a01          	or	a,(OFST+1,sp)
1535  002b c750c6        	ld	20678,a
1536                     ; 425 }
1539  002e 84            	pop	a
1540  002f 81            	ret	
1676                     ; 436 void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
1676                     ; 437 {
1677                     .text:	section	.text,new
1678  0000               _CLK_CCOConfig:
1680  0000 88            	push	a
1681       00000000      OFST:	set	0
1684                     ; 439   assert_param(IS_CLK_OUTPUT_OK(CLK_CCO));
1686  0001 4d            	tnz	a
1687  0002 273e          	jreq	L042
1688  0004 a104          	cp	a,#4
1689  0006 273a          	jreq	L042
1690  0008 a102          	cp	a,#2
1691  000a 2736          	jreq	L042
1692  000c a108          	cp	a,#8
1693  000e 2732          	jreq	L042
1694  0010 a10a          	cp	a,#10
1695  0012 272e          	jreq	L042
1696  0014 a10c          	cp	a,#12
1697  0016 272a          	jreq	L042
1698  0018 a10e          	cp	a,#14
1699  001a 2726          	jreq	L042
1700  001c a110          	cp	a,#16
1701  001e 2722          	jreq	L042
1702  0020 a112          	cp	a,#18
1703  0022 271e          	jreq	L042
1704  0024 a114          	cp	a,#20
1705  0026 271a          	jreq	L042
1706  0028 a116          	cp	a,#22
1707  002a 2716          	jreq	L042
1708  002c a118          	cp	a,#24
1709  002e 2712          	jreq	L042
1710  0030 a11a          	cp	a,#26
1711  0032 270e          	jreq	L042
1712  0034 ae01b7        	ldw	x,#439
1713  0037 89            	pushw	x
1714  0038 5f            	clrw	x
1715  0039 89            	pushw	x
1716  003a ae000c        	ldw	x,#L75
1717  003d cd0000        	call	_assert_failed
1719  0040 5b04          	addw	sp,#4
1720  0042               L042:
1721                     ; 442   CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
1723  0042 c650c9        	ld	a,20681
1724  0045 a4e1          	and	a,#225
1725  0047 c750c9        	ld	20681,a
1726                     ; 445   CLK->CCOR |= (uint8_t)CLK_CCO;
1728  004a c650c9        	ld	a,20681
1729  004d 1a01          	or	a,(OFST+1,sp)
1730  004f c750c9        	ld	20681,a
1731                     ; 448   CLK->CCOR |= CLK_CCOR_CCOEN;
1733  0052 721050c9      	bset	20681,#0
1734                     ; 449 }
1737  0056 84            	pop	a
1738  0057 81            	ret	
1804                     ; 459 void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
1804                     ; 460 {
1805                     .text:	section	.text,new
1806  0000               _CLK_ITConfig:
1808  0000 89            	pushw	x
1809       00000000      OFST:	set	0
1812                     ; 462   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1814  0001 9f            	ld	a,xl
1815  0002 4d            	tnz	a
1816  0003 2709          	jreq	L252
1817  0005 9f            	ld	a,xl
1818  0006 4a            	dec	a
1819  0007 2705          	jreq	L252
1820  0009 ae01ce        	ldw	x,#462
1821  000c ad3f          	call	LC008
1822  000e               L252:
1823                     ; 463   assert_param(IS_CLK_IT_OK(CLK_IT));
1825  000e 7b01          	ld	a,(OFST+1,sp)
1826  0010 a10c          	cp	a,#12
1827  0012 2709          	jreq	L262
1828  0014 a11c          	cp	a,#28
1829  0016 2705          	jreq	L262
1830  0018 ae01cf        	ldw	x,#463
1831  001b ad30          	call	LC008
1832  001d               L262:
1833                     ; 465   if (NewState != DISABLE)
1835  001d 7b02          	ld	a,(OFST+2,sp)
1836  001f 2716          	jreq	L527
1837                     ; 467     switch (CLK_IT)
1839  0021 7b01          	ld	a,(OFST+1,sp)
1841                     ; 475     default:
1841                     ; 476       break;
1842  0023 a00c          	sub	a,#12
1843  0025 270a          	jreq	L166
1844  0027 a010          	sub	a,#16
1845  0029 2620          	jrne	L337
1846                     ; 469     case CLK_IT_SWIF: /* Enable the clock switch interrupt */
1846                     ; 470       CLK->SWCR |= CLK_SWCR_SWIEN;
1848  002b 721450c5      	bset	20677,#2
1849                     ; 471       break;
1851  002f 201a          	jra	L337
1852  0031               L166:
1853                     ; 472     case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
1853                     ; 473       CLK->CSSR |= CLK_CSSR_CSSDIE;
1855  0031 721450c8      	bset	20680,#2
1856                     ; 474       break;
1858  0035 2014          	jra	L337
1859                     ; 475     default:
1859                     ; 476       break;
1862  0037               L527:
1863                     ; 481     switch (CLK_IT)
1865  0037 7b01          	ld	a,(OFST+1,sp)
1867                     ; 489     default:
1867                     ; 490       break;
1868  0039 a00c          	sub	a,#12
1869  003b 270a          	jreq	L766
1870  003d a010          	sub	a,#16
1871  003f 260a          	jrne	L337
1872                     ; 483     case CLK_IT_SWIF: /* Disable the clock switch interrupt */
1872                     ; 484       CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
1874  0041 721550c5      	bres	20677,#2
1875                     ; 485       break;
1877  0045 2004          	jra	L337
1878  0047               L766:
1879                     ; 486     case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
1879                     ; 487       CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
1881  0047 721550c8      	bres	20680,#2
1882                     ; 488       break;
1883  004b               L337:
1884                     ; 493 }
1887  004b 85            	popw	x
1888  004c 81            	ret	
1889                     ; 489     default:
1889                     ; 490       break;
1892  004d               LC008:
1893  004d 89            	pushw	x
1894  004e 5f            	clrw	x
1895  004f 89            	pushw	x
1896  0050 ae000c        	ldw	x,#L75
1897  0053 cd0000        	call	_assert_failed
1899  0056 5b04          	addw	sp,#4
1900  0058 81            	ret	
1935                     ; 500 void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
1935                     ; 501 {
1936                     .text:	section	.text,new
1937  0000               _CLK_SYSCLKConfig:
1939  0000 88            	push	a
1940       00000000      OFST:	set	0
1943                     ; 503   assert_param(IS_CLK_PRESCALER_OK(CLK_Prescaler));
1945  0001 4d            	tnz	a
1946  0002 273a          	jreq	L472
1947  0004 a108          	cp	a,#8
1948  0006 2736          	jreq	L472
1949  0008 a110          	cp	a,#16
1950  000a 2732          	jreq	L472
1951  000c a118          	cp	a,#24
1952  000e 272e          	jreq	L472
1953  0010 a180          	cp	a,#128
1954  0012 272a          	jreq	L472
1955  0014 a181          	cp	a,#129
1956  0016 2726          	jreq	L472
1957  0018 a182          	cp	a,#130
1958  001a 2722          	jreq	L472
1959  001c a183          	cp	a,#131
1960  001e 271e          	jreq	L472
1961  0020 a184          	cp	a,#132
1962  0022 271a          	jreq	L472
1963  0024 a185          	cp	a,#133
1964  0026 2716          	jreq	L472
1965  0028 a186          	cp	a,#134
1966  002a 2712          	jreq	L472
1967  002c a187          	cp	a,#135
1968  002e 270e          	jreq	L472
1969  0030 ae01f7        	ldw	x,#503
1970  0033 89            	pushw	x
1971  0034 5f            	clrw	x
1972  0035 89            	pushw	x
1973  0036 ae000c        	ldw	x,#L75
1974  0039 cd0000        	call	_assert_failed
1976  003c 5b04          	addw	sp,#4
1977  003e               L472:
1978                     ; 505   if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
1980  003e 7b01          	ld	a,(OFST+1,sp)
1981  0040 2b0e          	jrmi	L757
1982                     ; 507     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
1984  0042 c650c6        	ld	a,20678
1985  0045 a4e7          	and	a,#231
1986  0047 c750c6        	ld	20678,a
1987                     ; 508     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
1989  004a 7b01          	ld	a,(OFST+1,sp)
1990  004c a418          	and	a,#24
1992  004e 200c          	jra	L167
1993  0050               L757:
1994                     ; 512     CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
1996  0050 c650c6        	ld	a,20678
1997  0053 a4f8          	and	a,#248
1998  0055 c750c6        	ld	20678,a
1999                     ; 513     CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
2001  0058 7b01          	ld	a,(OFST+1,sp)
2002  005a a407          	and	a,#7
2003  005c               L167:
2004  005c ca50c6        	or	a,20678
2005  005f c750c6        	ld	20678,a
2006                     ; 515 }
2009  0062 84            	pop	a
2010  0063 81            	ret	
2067                     ; 523 void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
2067                     ; 524 {
2068                     .text:	section	.text,new
2069  0000               _CLK_SWIMConfig:
2071  0000 88            	push	a
2072       00000000      OFST:	set	0
2075                     ; 526   assert_param(IS_CLK_SWIMDIVIDER_OK(CLK_SWIMDivider));
2077  0001 4d            	tnz	a
2078  0002 2711          	jreq	L603
2079  0004 4a            	dec	a
2080  0005 270e          	jreq	L603
2081  0007 ae020e        	ldw	x,#526
2082  000a 89            	pushw	x
2083  000b 5f            	clrw	x
2084  000c 89            	pushw	x
2085  000d ae000c        	ldw	x,#L75
2086  0010 cd0000        	call	_assert_failed
2088  0013 5b04          	addw	sp,#4
2089  0015               L603:
2090                     ; 528   if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
2092  0015 7b01          	ld	a,(OFST+1,sp)
2093  0017 2706          	jreq	L1101
2094                     ; 531     CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
2096  0019 721050cd      	bset	20685,#0
2098  001d 2004          	jra	L3101
2099  001f               L1101:
2100                     ; 536     CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
2102  001f 721150cd      	bres	20685,#0
2103  0023               L3101:
2104                     ; 538 }
2107  0023 84            	pop	a
2108  0024 81            	ret	
2132                     ; 547 void CLK_ClockSecuritySystemEnable(void)
2132                     ; 548 {
2133                     .text:	section	.text,new
2134  0000               _CLK_ClockSecuritySystemEnable:
2138                     ; 550   CLK->CSSR |= CLK_CSSR_CSSEN;
2140  0000 721050c8      	bset	20680,#0
2141                     ; 551 }
2144  0004 81            	ret	
2169                     ; 559 CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
2169                     ; 560 {
2170                     .text:	section	.text,new
2171  0000               _CLK_GetSYSCLKSource:
2175                     ; 561   return((CLK_Source_TypeDef)CLK->CMSR);
2177  0000 c650c3        	ld	a,20675
2180  0003 81            	ret	
2237                     ; 569 uint32_t CLK_GetClockFreq(void)
2237                     ; 570 {
2238                     .text:	section	.text,new
2239  0000               _CLK_GetClockFreq:
2241  0000 5209          	subw	sp,#9
2242       00000009      OFST:	set	9
2245                     ; 571   uint32_t clockfrequency = 0;
2247  0002 96            	ldw	x,sp
2248  0003 1c0005        	addw	x,#OFST-4
2249  0006 cd0000        	call	c_ltor
2251                     ; 572   CLK_Source_TypeDef clocksource = CLK_SOURCE_HSI;
2253                     ; 573   uint8_t tmp = 0, presc = 0;
2257                     ; 576   clocksource = (CLK_Source_TypeDef)CLK->CMSR;
2259  0009 c650c3        	ld	a,20675
2260  000c 6b09          	ld	(OFST+0,sp),a
2261                     ; 578   if (clocksource == CLK_SOURCE_HSI)
2263  000e a1e1          	cp	a,#225
2264  0010 2634          	jrne	L1601
2265                     ; 580     tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
2267  0012 c650c6        	ld	a,20678
2268  0015 a418          	and	a,#24
2269                     ; 581     tmp = (uint8_t)(tmp >> 3);
2271  0017 44            	srl	a
2272  0018 44            	srl	a
2273  0019 44            	srl	a
2274                     ; 582     presc = HSIDivFactor[tmp];
2276  001a 5f            	clrw	x
2277  001b 97            	ld	xl,a
2278  001c d60000        	ld	a,(_HSIDivFactor,x)
2279  001f 6b09          	ld	(OFST+0,sp),a
2280                     ; 583     clockfrequency = HSI_VALUE / presc;
2282  0021 b703          	ld	c_lreg+3,a
2283  0023 3f02          	clr	c_lreg+2
2284  0025 3f01          	clr	c_lreg+1
2285  0027 3f00          	clr	c_lreg
2286  0029 96            	ldw	x,sp
2287  002a 5c            	incw	x
2288  002b cd0000        	call	c_rtol
2290  002e ae2400        	ldw	x,#9216
2291  0031 bf02          	ldw	c_lreg+2,x
2292  0033 ae00f4        	ldw	x,#244
2293  0036 bf00          	ldw	c_lreg,x
2294  0038 96            	ldw	x,sp
2295  0039 5c            	incw	x
2296  003a cd0000        	call	c_ludv
2298  003d 96            	ldw	x,sp
2299  003e 1c0005        	addw	x,#OFST-4
2300  0041 cd0000        	call	c_rtol
2303  0044 2018          	jra	L3601
2304  0046               L1601:
2305                     ; 585   else if ( clocksource == CLK_SOURCE_LSI)
2307  0046 a1d2          	cp	a,#210
2308  0048 260a          	jrne	L5601
2309                     ; 587     clockfrequency = LSI_VALUE;
2311  004a aef400        	ldw	x,#62464
2312  004d 1f07          	ldw	(OFST-2,sp),x
2313  004f ae0001        	ldw	x,#1
2315  0052 2008          	jp	LC009
2316  0054               L5601:
2317                     ; 591     clockfrequency = HSE_VALUE;
2319  0054 ae2400        	ldw	x,#9216
2320  0057 1f07          	ldw	(OFST-2,sp),x
2321  0059 ae00f4        	ldw	x,#244
2322  005c               LC009:
2323  005c 1f05          	ldw	(OFST-4,sp),x
2324  005e               L3601:
2325                     ; 594   return((uint32_t)clockfrequency);
2327  005e 96            	ldw	x,sp
2328  005f 1c0005        	addw	x,#OFST-4
2329  0062 cd0000        	call	c_ltor
2333  0065 5b09          	addw	sp,#9
2334  0067 81            	ret	
2434                     ; 604 void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
2434                     ; 605 {
2435                     .text:	section	.text,new
2436  0000               _CLK_AdjustHSICalibrationValue:
2438  0000 88            	push	a
2439       00000000      OFST:	set	0
2442                     ; 607   assert_param(IS_CLK_HSITRIMVALUE_OK(CLK_HSICalibrationValue));
2444  0001 4d            	tnz	a
2445  0002 272a          	jreq	L623
2446  0004 a101          	cp	a,#1
2447  0006 2726          	jreq	L623
2448  0008 a102          	cp	a,#2
2449  000a 2722          	jreq	L623
2450  000c a103          	cp	a,#3
2451  000e 271e          	jreq	L623
2452  0010 a104          	cp	a,#4
2453  0012 271a          	jreq	L623
2454  0014 a105          	cp	a,#5
2455  0016 2716          	jreq	L623
2456  0018 a106          	cp	a,#6
2457  001a 2712          	jreq	L623
2458  001c a107          	cp	a,#7
2459  001e 270e          	jreq	L623
2460  0020 ae025f        	ldw	x,#607
2461  0023 89            	pushw	x
2462  0024 5f            	clrw	x
2463  0025 89            	pushw	x
2464  0026 ae000c        	ldw	x,#L75
2465  0029 cd0000        	call	_assert_failed
2467  002c 5b04          	addw	sp,#4
2468  002e               L623:
2469                     ; 610   CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
2471  002e c650cc        	ld	a,20684
2472  0031 a4f8          	and	a,#248
2473  0033 1a01          	or	a,(OFST+1,sp)
2474  0035 c750cc        	ld	20684,a
2475                     ; 611 }
2478  0038 84            	pop	a
2479  0039 81            	ret	
2503                     ; 622 void CLK_SYSCLKEmergencyClear(void)
2503                     ; 623 {
2504                     .text:	section	.text,new
2505  0000               _CLK_SYSCLKEmergencyClear:
2509                     ; 624   CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
2511  0000 721150c5      	bres	20677,#0
2512                     ; 625 }
2515  0004 81            	ret	
2665                     ; 634 FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
2665                     ; 635 {
2666                     .text:	section	.text,new
2667  0000               _CLK_GetFlagStatus:
2669  0000 89            	pushw	x
2670  0001 5203          	subw	sp,#3
2671       00000003      OFST:	set	3
2674                     ; 636   uint16_t statusreg = 0;
2676                     ; 637   uint8_t tmpreg = 0;
2678                     ; 638   FlagStatus bitstatus = RESET;
2680                     ; 641   assert_param(IS_CLK_FLAG_OK(CLK_FLAG));
2682  0003 1e04          	ldw	x,(OFST+1,sp)
2683  0005 a30110        	cpw	x,#272
2684  0008 2736          	jreq	L243
2685  000a a30102        	cpw	x,#258
2686  000d 2731          	jreq	L243
2687  000f a30202        	cpw	x,#514
2688  0012 272c          	jreq	L243
2689  0014 a30308        	cpw	x,#776
2690  0017 2727          	jreq	L243
2691  0019 a30301        	cpw	x,#769
2692  001c 2722          	jreq	L243
2693  001e a30408        	cpw	x,#1032
2694  0021 271d          	jreq	L243
2695  0023 a30402        	cpw	x,#1026
2696  0026 2718          	jreq	L243
2697  0028 a30504        	cpw	x,#1284
2698  002b 2713          	jreq	L243
2699  002d a30502        	cpw	x,#1282
2700  0030 270e          	jreq	L243
2701  0032 ae0281        	ldw	x,#641
2702  0035 89            	pushw	x
2703  0036 5f            	clrw	x
2704  0037 89            	pushw	x
2705  0038 ae000c        	ldw	x,#L75
2706  003b cd0000        	call	_assert_failed
2708  003e 5b04          	addw	sp,#4
2709  0040               L243:
2710                     ; 644   statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
2712  0040 7b04          	ld	a,(OFST+1,sp)
2713  0042 97            	ld	xl,a
2714  0043 4f            	clr	a
2715  0044 02            	rlwa	x,a
2716  0045 1f01          	ldw	(OFST-2,sp),x
2717                     ; 647   if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
2719  0047 a30100        	cpw	x,#256
2720  004a 2605          	jrne	L7221
2721                     ; 649     tmpreg = CLK->ICKR;
2723  004c c650c0        	ld	a,20672
2725  004f 2021          	jra	L1321
2726  0051               L7221:
2727                     ; 651   else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
2729  0051 a30200        	cpw	x,#512
2730  0054 2605          	jrne	L3321
2731                     ; 653     tmpreg = CLK->ECKR;
2733  0056 c650c1        	ld	a,20673
2735  0059 2017          	jra	L1321
2736  005b               L3321:
2737                     ; 655   else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
2739  005b a30300        	cpw	x,#768
2740  005e 2605          	jrne	L7321
2741                     ; 657     tmpreg = CLK->SWCR;
2743  0060 c650c5        	ld	a,20677
2745  0063 200d          	jra	L1321
2746  0065               L7321:
2747                     ; 659   else if (statusreg == 0x0400) /* The flag to check is in CSS register */
2749  0065 a30400        	cpw	x,#1024
2750  0068 2605          	jrne	L3421
2751                     ; 661     tmpreg = CLK->CSSR;
2753  006a c650c8        	ld	a,20680
2755  006d 2003          	jra	L1321
2756  006f               L3421:
2757                     ; 665     tmpreg = CLK->CCOR;
2759  006f c650c9        	ld	a,20681
2760  0072               L1321:
2761  0072 6b03          	ld	(OFST+0,sp),a
2762                     ; 668   if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
2764  0074 7b05          	ld	a,(OFST+2,sp)
2765  0076 1503          	bcp	a,(OFST+0,sp)
2766  0078 2704          	jreq	L7421
2767                     ; 670     bitstatus = SET;
2769  007a a601          	ld	a,#1
2771  007c 2001          	jra	L1521
2772  007e               L7421:
2773                     ; 674     bitstatus = RESET;
2775  007e 4f            	clr	a
2776  007f               L1521:
2777                     ; 678   return((FlagStatus)bitstatus);
2781  007f 5b05          	addw	sp,#5
2782  0081 81            	ret	
2829                     ; 687 ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
2829                     ; 688 {
2830                     .text:	section	.text,new
2831  0000               _CLK_GetITStatus:
2833  0000 88            	push	a
2834  0001 88            	push	a
2835       00000001      OFST:	set	1
2838                     ; 689   ITStatus bitstatus = RESET;
2840  0002 0f01          	clr	(OFST+0,sp)
2841                     ; 692   assert_param(IS_CLK_IT_OK(CLK_IT));
2843  0004 a10c          	cp	a,#12
2844  0006 2712          	jreq	L453
2845  0008 a11c          	cp	a,#28
2846  000a 270e          	jreq	L453
2847  000c ae02b4        	ldw	x,#692
2848  000f 89            	pushw	x
2849  0010 5f            	clrw	x
2850  0011 89            	pushw	x
2851  0012 ae000c        	ldw	x,#L75
2852  0015 cd0000        	call	_assert_failed
2854  0018 5b04          	addw	sp,#4
2855  001a               L453:
2856                     ; 694   if (CLK_IT == CLK_IT_SWIF)
2858  001a 7b02          	ld	a,(OFST+1,sp)
2859  001c a11c          	cp	a,#28
2860  001e 260b          	jrne	L5721
2861                     ; 697     if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2863  0020 c650c5        	ld	a,20677
2864  0023 1402          	and	a,(OFST+1,sp)
2865  0025 a10c          	cp	a,#12
2866  0027 260f          	jrne	L5031
2867                     ; 699       bitstatus = SET;
2869  0029 2009          	jp	LC011
2870                     ; 703       bitstatus = RESET;
2871  002b               L5721:
2872                     ; 709     if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
2874  002b c650c8        	ld	a,20680
2875  002e 1402          	and	a,(OFST+1,sp)
2876  0030 a10c          	cp	a,#12
2877  0032 2604          	jrne	L5031
2878                     ; 711       bitstatus = SET;
2880  0034               LC011:
2882  0034 a601          	ld	a,#1
2884  0036 2001          	jra	L3031
2885  0038               L5031:
2886                     ; 715       bitstatus = RESET;
2889  0038 4f            	clr	a
2890  0039               L3031:
2891                     ; 720   return bitstatus;
2895  0039 85            	popw	x
2896  003a 81            	ret	
2933                     ; 729 void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
2933                     ; 730 {
2934                     .text:	section	.text,new
2935  0000               _CLK_ClearITPendingBit:
2937  0000 88            	push	a
2938       00000000      OFST:	set	0
2941                     ; 732   assert_param(IS_CLK_IT_OK(CLK_IT));
2943  0001 a10c          	cp	a,#12
2944  0003 2712          	jreq	L663
2945  0005 a11c          	cp	a,#28
2946  0007 270e          	jreq	L663
2947  0009 ae02dc        	ldw	x,#732
2948  000c 89            	pushw	x
2949  000d 5f            	clrw	x
2950  000e 89            	pushw	x
2951  000f ae000c        	ldw	x,#L75
2952  0012 cd0000        	call	_assert_failed
2954  0015 5b04          	addw	sp,#4
2955  0017               L663:
2956                     ; 734   if (CLK_IT == (uint8_t)CLK_IT_CSSD)
2958  0017 7b01          	ld	a,(OFST+1,sp)
2959  0019 a10c          	cp	a,#12
2960  001b 2606          	jrne	L7231
2961                     ; 737     CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
2963  001d 721750c8      	bres	20680,#3
2965  0021 2004          	jra	L1331
2966  0023               L7231:
2967                     ; 742     CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
2969  0023 721750c5      	bres	20677,#3
2970  0027               L1331:
2971                     ; 745 }
2974  0027 84            	pop	a
2975  0028 81            	ret	
3010                     	xdef	_CLKPrescTable
3011                     	xdef	_HSIDivFactor
3012                     	xdef	_CLK_ClearITPendingBit
3013                     	xdef	_CLK_GetITStatus
3014                     	xdef	_CLK_GetFlagStatus
3015                     	xdef	_CLK_GetSYSCLKSource
3016                     	xdef	_CLK_GetClockFreq
3017                     	xdef	_CLK_AdjustHSICalibrationValue
3018                     	xdef	_CLK_SYSCLKEmergencyClear
3019                     	xdef	_CLK_ClockSecuritySystemEnable
3020                     	xdef	_CLK_SWIMConfig
3021                     	xdef	_CLK_SYSCLKConfig
3022                     	xdef	_CLK_ITConfig
3023                     	xdef	_CLK_CCOConfig
3024                     	xdef	_CLK_HSIPrescalerConfig
3025                     	xdef	_CLK_ClockSwitchConfig
3026                     	xdef	_CLK_PeripheralClockConfig
3027                     	xdef	_CLK_SlowActiveHaltWakeUpCmd
3028                     	xdef	_CLK_FastHaltWakeUpCmd
3029                     	xdef	_CLK_ClockSwitchCmd
3030                     	xdef	_CLK_CCOCmd
3031                     	xdef	_CLK_LSICmd
3032                     	xdef	_CLK_HSICmd
3033                     	xdef	_CLK_HSECmd
3034                     	xdef	_CLK_DeInit
3035                     	xref	_assert_failed
3036                     	switch	.const
3037  000c               L75:
3038  000c 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
3039  001e 6965735c7374  	dc.b	"ies\stm8s_stdperip"
3040  0030 685f64726976  	dc.b	"h_driver\src\stm8s"
3041  0042 5f636c6b2e63  	dc.b	"_clk.c",0
3042                     	xref.b	c_lreg
3062                     	xref	c_ludv
3063                     	xref	c_rtol
3064                     	xref	c_ltor
3065                     	end
