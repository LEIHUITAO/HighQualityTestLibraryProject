   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 50 void SPI_DeInit(void)
  33                     ; 51 {
  35                     .text:	section	.text,new
  36  0000               _SPI_DeInit:
  40                     ; 52   SPI->CR1    = SPI_CR1_RESET_VALUE;
  42  0000 725f5200      	clr	20992
  43                     ; 53   SPI->CR2    = SPI_CR2_RESET_VALUE;
  45  0004 725f5201      	clr	20993
  46                     ; 54   SPI->ICR    = SPI_ICR_RESET_VALUE;
  48  0008 725f5202      	clr	20994
  49                     ; 55   SPI->SR     = SPI_SR_RESET_VALUE;
  51  000c 35025203      	mov	20995,#2
  52                     ; 56   SPI->CRCPR  = SPI_CRCPR_RESET_VALUE;
  54  0010 35075205      	mov	20997,#7
  55                     ; 57 }
  58  0014 81            	ret	
 373                     ; 78 void SPI_Init(SPI_FirstBit_TypeDef FirstBit, SPI_BaudRatePrescaler_TypeDef BaudRatePrescaler, SPI_Mode_TypeDef Mode, SPI_ClockPolarity_TypeDef ClockPolarity, SPI_ClockPhase_TypeDef ClockPhase, SPI_DataDirection_TypeDef Data_Direction, SPI_NSS_TypeDef Slave_Management, uint8_t CRCPolynomial)
 373                     ; 79 {
 374                     .text:	section	.text,new
 375  0000               _SPI_Init:
 377  0000 89            	pushw	x
 378  0001 88            	push	a
 379       00000001      OFST:	set	1
 382                     ; 81   assert_param(IS_SPI_FIRSTBIT_OK(FirstBit));
 384  0002 9e            	ld	a,xh
 385  0003 4d            	tnz	a
 386  0004 270b          	jreq	L41
 387  0006 9e            	ld	a,xh
 388  0007 a180          	cp	a,#128
 389  0009 2706          	jreq	L41
 390  000b ae0051        	ldw	x,#81
 391  000e cd00c2        	call	LC001
 392  0011               L41:
 393                     ; 82   assert_param(IS_SPI_BAUDRATE_PRESCALER_OK(BaudRatePrescaler));
 395  0011 7b03          	ld	a,(OFST+2,sp)
 396  0013 2722          	jreq	L42
 397  0015 a108          	cp	a,#8
 398  0017 271e          	jreq	L42
 399  0019 a110          	cp	a,#16
 400  001b 271a          	jreq	L42
 401  001d a118          	cp	a,#24
 402  001f 2716          	jreq	L42
 403  0021 a120          	cp	a,#32
 404  0023 2712          	jreq	L42
 405  0025 a128          	cp	a,#40
 406  0027 270e          	jreq	L42
 407  0029 a130          	cp	a,#48
 408  002b 270a          	jreq	L42
 409  002d a138          	cp	a,#56
 410  002f 2706          	jreq	L42
 411  0031 ae0052        	ldw	x,#82
 412  0034 cd00c2        	call	LC001
 413  0037               L42:
 414                     ; 83   assert_param(IS_SPI_MODE_OK(Mode));
 416  0037 7b06          	ld	a,(OFST+5,sp)
 417  0039 a104          	cp	a,#4
 418  003b 2709          	jreq	L43
 419  003d 7b06          	ld	a,(OFST+5,sp)
 420  003f 2705          	jreq	L43
 421  0041 ae0053        	ldw	x,#83
 422  0044 ad7c          	call	LC001
 423  0046               L43:
 424                     ; 84   assert_param(IS_SPI_POLARITY_OK(ClockPolarity));
 426  0046 7b07          	ld	a,(OFST+6,sp)
 427  0048 2709          	jreq	L44
 428  004a a102          	cp	a,#2
 429  004c 2705          	jreq	L44
 430  004e ae0054        	ldw	x,#84
 431  0051 ad6f          	call	LC001
 432  0053               L44:
 433                     ; 85   assert_param(IS_SPI_PHASE_OK(ClockPhase));
 435  0053 7b08          	ld	a,(OFST+7,sp)
 436  0055 2708          	jreq	L45
 437  0057 4a            	dec	a
 438  0058 2705          	jreq	L45
 439  005a ae0055        	ldw	x,#85
 440  005d ad63          	call	LC001
 441  005f               L45:
 442                     ; 86   assert_param(IS_SPI_DATA_DIRECTION_OK(Data_Direction));
 444  005f 7b09          	ld	a,(OFST+8,sp)
 445  0061 2711          	jreq	L46
 446  0063 a104          	cp	a,#4
 447  0065 270d          	jreq	L46
 448  0067 a180          	cp	a,#128
 449  0069 2709          	jreq	L46
 450  006b a1c0          	cp	a,#192
 451  006d 2705          	jreq	L46
 452  006f ae0056        	ldw	x,#86
 453  0072 ad4e          	call	LC001
 454  0074               L46:
 455                     ; 87   assert_param(IS_SPI_SLAVEMANAGEMENT_OK(Slave_Management));
 457  0074 7b0a          	ld	a,(OFST+9,sp)
 458  0076 a102          	cp	a,#2
 459  0078 2709          	jreq	L47
 460  007a 7b0a          	ld	a,(OFST+9,sp)
 461  007c 2705          	jreq	L47
 462  007e ae0057        	ldw	x,#87
 463  0081 ad3f          	call	LC001
 464  0083               L47:
 465                     ; 88   assert_param(IS_SPI_CRC_POLYNOMIAL_OK(CRCPolynomial));
 467  0083 7b0b          	ld	a,(OFST+10,sp)
 468  0085 2605          	jrne	L201
 469  0087 ae0058        	ldw	x,#88
 470  008a ad36          	call	LC001
 471  008c               L201:
 472                     ; 91   SPI->CR1 = (uint8_t)((uint8_t)((uint8_t)FirstBit | BaudRatePrescaler) |
 472                     ; 92                        (uint8_t)((uint8_t)ClockPolarity | ClockPhase));
 474  008c 7b07          	ld	a,(OFST+6,sp)
 475  008e 1a08          	or	a,(OFST+7,sp)
 476  0090 6b01          	ld	(OFST+0,sp),a
 477  0092 7b02          	ld	a,(OFST+1,sp)
 478  0094 1a03          	or	a,(OFST+2,sp)
 479  0096 1a01          	or	a,(OFST+0,sp)
 480  0098 c75200        	ld	20992,a
 481                     ; 95   SPI->CR2 = (uint8_t)((uint8_t)(Data_Direction) | (uint8_t)(Slave_Management));
 483  009b 7b09          	ld	a,(OFST+8,sp)
 484  009d 1a0a          	or	a,(OFST+9,sp)
 485  009f c75201        	ld	20993,a
 486                     ; 97   if (Mode == SPI_MODE_MASTER)
 488  00a2 7b06          	ld	a,(OFST+5,sp)
 489  00a4 a104          	cp	a,#4
 490  00a6 2606          	jrne	L302
 491                     ; 99     SPI->CR2 |= (uint8_t)SPI_CR2_SSI;
 493  00a8 72105201      	bset	20993,#0
 495  00ac 2004          	jra	L502
 496  00ae               L302:
 497                     ; 103     SPI->CR2 &= (uint8_t)~(SPI_CR2_SSI);
 499  00ae 72115201      	bres	20993,#0
 500  00b2               L502:
 501                     ; 107   SPI->CR1 |= (uint8_t)(Mode);
 503  00b2 c65200        	ld	a,20992
 504  00b5 1a06          	or	a,(OFST+5,sp)
 505  00b7 c75200        	ld	20992,a
 506                     ; 110   SPI->CRCPR = (uint8_t)CRCPolynomial;
 508  00ba 7b0b          	ld	a,(OFST+10,sp)
 509  00bc c75205        	ld	20997,a
 510                     ; 111 }
 513  00bf 5b03          	addw	sp,#3
 514  00c1 81            	ret	
 516  00c2               LC001:
 517  00c2 89            	pushw	x
 518  00c3 5f            	clrw	x
 519  00c4 89            	pushw	x
 520  00c5 ae0000        	ldw	x,#L102
 521  00c8 cd0000        	call	_assert_failed
 523  00cb 5b04          	addw	sp,#4
 524  00cd 81            	ret	
 579                     ; 119 void SPI_Cmd(FunctionalState NewState)
 579                     ; 120 {
 580                     .text:	section	.text,new
 581  0000               _SPI_Cmd:
 583  0000 88            	push	a
 584       00000000      OFST:	set	0
 587                     ; 122   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 589  0001 4d            	tnz	a
 590  0002 2711          	jreq	L411
 591  0004 4a            	dec	a
 592  0005 270e          	jreq	L411
 593  0007 ae007a        	ldw	x,#122
 594  000a 89            	pushw	x
 595  000b 5f            	clrw	x
 596  000c 89            	pushw	x
 597  000d ae0000        	ldw	x,#L102
 598  0010 cd0000        	call	_assert_failed
 600  0013 5b04          	addw	sp,#4
 601  0015               L411:
 602                     ; 124   if (NewState != DISABLE)
 604  0015 7b01          	ld	a,(OFST+1,sp)
 605  0017 2706          	jreq	L532
 606                     ; 126     SPI->CR1 |= SPI_CR1_SPE; /* Enable the SPI peripheral*/
 608  0019 721c5200      	bset	20992,#6
 610  001d 2004          	jra	L732
 611  001f               L532:
 612                     ; 130     SPI->CR1 &= (uint8_t)(~SPI_CR1_SPE); /* Disable the SPI peripheral*/
 614  001f 721d5200      	bres	20992,#6
 615  0023               L732:
 616                     ; 132 }
 619  0023 84            	pop	a
 620  0024 81            	ret	
 728                     ; 141 void SPI_ITConfig(SPI_IT_TypeDef SPI_IT, FunctionalState NewState)
 728                     ; 142 {
 729                     .text:	section	.text,new
 730  0000               _SPI_ITConfig:
 732  0000 89            	pushw	x
 733  0001 88            	push	a
 734       00000001      OFST:	set	1
 737                     ; 143   uint8_t itpos = 0;
 739  0002 0f01          	clr	(OFST+0,sp)
 740                     ; 145   assert_param(IS_SPI_CONFIG_IT_OK(SPI_IT));
 742  0004 9e            	ld	a,xh
 743  0005 a117          	cp	a,#23
 744  0007 2714          	jreq	L621
 745  0009 9e            	ld	a,xh
 746  000a a106          	cp	a,#6
 747  000c 270f          	jreq	L621
 748  000e 9e            	ld	a,xh
 749  000f a105          	cp	a,#5
 750  0011 270a          	jreq	L621
 751  0013 9e            	ld	a,xh
 752  0014 a134          	cp	a,#52
 753  0016 2705          	jreq	L621
 754  0018 ae0091        	ldw	x,#145
 755  001b ad32          	call	LC002
 756  001d               L621:
 757                     ; 146   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 759  001d 7b03          	ld	a,(OFST+2,sp)
 760  001f 2708          	jreq	L631
 761  0021 4a            	dec	a
 762  0022 2705          	jreq	L631
 763  0024 ae0092        	ldw	x,#146
 764  0027 ad26          	call	LC002
 765  0029               L631:
 766                     ; 149   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)SPI_IT & (uint8_t)0x0F));
 768  0029 7b02          	ld	a,(OFST+1,sp)
 769  002b a40f          	and	a,#15
 770  002d 5f            	clrw	x
 771  002e 97            	ld	xl,a
 772  002f a601          	ld	a,#1
 773  0031 5d            	tnzw	x
 774  0032 2704          	jreq	L241
 775  0034               L441:
 776  0034 48            	sll	a
 777  0035 5a            	decw	x
 778  0036 26fc          	jrne	L441
 779  0038               L241:
 780  0038 6b01          	ld	(OFST+0,sp),a
 781                     ; 151   if (NewState != DISABLE)
 783  003a 0d03          	tnz	(OFST+2,sp)
 784  003c 2707          	jreq	L703
 785                     ; 153     SPI->ICR |= itpos; /* Enable interrupt*/
 787  003e c65202        	ld	a,20994
 788  0041 1a01          	or	a,(OFST+0,sp)
 790  0043 2004          	jra	L113
 791  0045               L703:
 792                     ; 157     SPI->ICR &= (uint8_t)(~itpos); /* Disable interrupt*/
 794  0045 43            	cpl	a
 795  0046 c45202        	and	a,20994
 796  0049               L113:
 797  0049 c75202        	ld	20994,a
 798                     ; 159 }
 801  004c 5b03          	addw	sp,#3
 802  004e 81            	ret	
 804  004f               LC002:
 805  004f 89            	pushw	x
 806  0050 5f            	clrw	x
 807  0051 89            	pushw	x
 808  0052 ae0000        	ldw	x,#L102
 809  0055 cd0000        	call	_assert_failed
 811  0058 5b04          	addw	sp,#4
 812  005a 81            	ret	
 843                     ; 166 void SPI_SendData(uint8_t Data)
 843                     ; 167 {
 844                     .text:	section	.text,new
 845  0000               _SPI_SendData:
 849                     ; 168   SPI->DR = Data; /* Write in the DR register the data to be sent*/
 851  0000 c75204        	ld	20996,a
 852                     ; 169 }
 855  0003 81            	ret	
 878                     ; 176 uint8_t SPI_ReceiveData(void)
 878                     ; 177 {
 879                     .text:	section	.text,new
 880  0000               _SPI_ReceiveData:
 884                     ; 178   return ((uint8_t)SPI->DR); /* Return the data in the DR register*/
 886  0000 c65204        	ld	a,20996
 889  0003 81            	ret	
 926                     ; 187 void SPI_NSSInternalSoftwareCmd(FunctionalState NewState)
 926                     ; 188 {
 927                     .text:	section	.text,new
 928  0000               _SPI_NSSInternalSoftwareCmd:
 930  0000 88            	push	a
 931       00000000      OFST:	set	0
 934                     ; 190   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 936  0001 4d            	tnz	a
 937  0002 2711          	jreq	L061
 938  0004 4a            	dec	a
 939  0005 270e          	jreq	L061
 940  0007 ae00be        	ldw	x,#190
 941  000a 89            	pushw	x
 942  000b 5f            	clrw	x
 943  000c 89            	pushw	x
 944  000d ae0000        	ldw	x,#L102
 945  0010 cd0000        	call	_assert_failed
 947  0013 5b04          	addw	sp,#4
 948  0015               L061:
 949                     ; 192   if (NewState != DISABLE)
 951  0015 7b01          	ld	a,(OFST+1,sp)
 952  0017 2706          	jreq	L553
 953                     ; 194     SPI->CR2 |= SPI_CR2_SSI; /* Set NSS pin internally by software*/
 955  0019 72105201      	bset	20993,#0
 957  001d 2004          	jra	L753
 958  001f               L553:
 959                     ; 198     SPI->CR2 &= (uint8_t)(~SPI_CR2_SSI); /* Reset NSS pin internally by software*/
 961  001f 72115201      	bres	20993,#0
 962  0023               L753:
 963                     ; 200 }
 966  0023 84            	pop	a
 967  0024 81            	ret	
 990                     ; 207 void SPI_TransmitCRC(void)
 990                     ; 208 {
 991                     .text:	section	.text,new
 992  0000               _SPI_TransmitCRC:
 996                     ; 209   SPI->CR2 |= SPI_CR2_CRCNEXT; /* Enable the CRC transmission*/
 998  0000 72185201      	bset	20993,#4
 999                     ; 210 }
1002  0004 81            	ret	
1039                     ; 218 void SPI_CalculateCRCCmd(FunctionalState NewState)
1039                     ; 219 {
1040                     .text:	section	.text,new
1041  0000               _SPI_CalculateCRCCmd:
1043  0000 88            	push	a
1044       00000000      OFST:	set	0
1047                     ; 221   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1049  0001 4d            	tnz	a
1050  0002 2711          	jreq	L471
1051  0004 4a            	dec	a
1052  0005 270e          	jreq	L471
1053  0007 ae00dd        	ldw	x,#221
1054  000a 89            	pushw	x
1055  000b 5f            	clrw	x
1056  000c 89            	pushw	x
1057  000d ae0000        	ldw	x,#L102
1058  0010 cd0000        	call	_assert_failed
1060  0013 5b04          	addw	sp,#4
1061  0015               L471:
1062                     ; 223   if (NewState != DISABLE)
1064  0015 7b01          	ld	a,(OFST+1,sp)
1065  0017 2706          	jreq	L704
1066                     ; 225     SPI->CR2 |= SPI_CR2_CRCEN; /* Enable the CRC calculation*/
1068  0019 721a5201      	bset	20993,#5
1070  001d 2004          	jra	L114
1071  001f               L704:
1072                     ; 229     SPI->CR2 &= (uint8_t)(~SPI_CR2_CRCEN); /* Disable the CRC calculation*/
1074  001f 721b5201      	bres	20993,#5
1075  0023               L114:
1076                     ; 231 }
1079  0023 84            	pop	a
1080  0024 81            	ret	
1143                     ; 238 uint8_t SPI_GetCRC(SPI_CRC_TypeDef SPI_CRC)
1143                     ; 239 {
1144                     .text:	section	.text,new
1145  0000               _SPI_GetCRC:
1147  0000 88            	push	a
1148  0001 88            	push	a
1149       00000001      OFST:	set	1
1152                     ; 240   uint8_t crcreg = 0;
1154  0002 0f01          	clr	(OFST+0,sp)
1155                     ; 243   assert_param(IS_SPI_CRC_OK(SPI_CRC));
1157  0004 a101          	cp	a,#1
1158  0006 2711          	jreq	L602
1159  0008 4d            	tnz	a
1160  0009 270e          	jreq	L602
1161  000b ae00f3        	ldw	x,#243
1162  000e 89            	pushw	x
1163  000f 5f            	clrw	x
1164  0010 89            	pushw	x
1165  0011 ae0000        	ldw	x,#L102
1166  0014 cd0000        	call	_assert_failed
1168  0017 5b04          	addw	sp,#4
1169  0019               L602:
1170                     ; 245   if (SPI_CRC != SPI_CRC_RX)
1172  0019 7b02          	ld	a,(OFST+1,sp)
1173  001b 2705          	jreq	L344
1174                     ; 247     crcreg = SPI->TXCRCR;  /* Get the Tx CRC register*/
1176  001d c65207        	ld	a,20999
1178  0020 2003          	jra	L544
1179  0022               L344:
1180                     ; 251     crcreg = SPI->RXCRCR; /* Get the Rx CRC register*/
1182  0022 c65206        	ld	a,20998
1183  0025               L544:
1184                     ; 255   return crcreg;
1188  0025 85            	popw	x
1189  0026 81            	ret	
1214                     ; 263 void SPI_ResetCRC(void)
1214                     ; 264 {
1215                     .text:	section	.text,new
1216  0000               _SPI_ResetCRC:
1220                     ; 267   SPI_CalculateCRCCmd(ENABLE);
1222  0000 a601          	ld	a,#1
1223  0002 cd0000        	call	_SPI_CalculateCRCCmd
1225                     ; 270   SPI_Cmd(ENABLE);
1227  0005 a601          	ld	a,#1
1229                     ; 271 }
1232  0007 cc0000        	jp	_SPI_Cmd
1256                     ; 278 uint8_t SPI_GetCRCPolynomial(void)
1256                     ; 279 {
1257                     .text:	section	.text,new
1258  0000               _SPI_GetCRCPolynomial:
1262                     ; 280   return SPI->CRCPR; /* Return the CRC polynomial register */
1264  0000 c65205        	ld	a,20997
1267  0003 81            	ret	
1324                     ; 288 void SPI_BiDirectionalLineConfig(SPI_Direction_TypeDef SPI_Direction)
1324                     ; 289 {
1325                     .text:	section	.text,new
1326  0000               _SPI_BiDirectionalLineConfig:
1328  0000 88            	push	a
1329       00000000      OFST:	set	0
1332                     ; 291   assert_param(IS_SPI_DIRECTION_OK(SPI_Direction));
1334  0001 4d            	tnz	a
1335  0002 2711          	jreq	L032
1336  0004 4a            	dec	a
1337  0005 270e          	jreq	L032
1338  0007 ae0123        	ldw	x,#291
1339  000a 89            	pushw	x
1340  000b 5f            	clrw	x
1341  000c 89            	pushw	x
1342  000d ae0000        	ldw	x,#L102
1343  0010 cd0000        	call	_assert_failed
1345  0013 5b04          	addw	sp,#4
1346  0015               L032:
1347                     ; 293   if (SPI_Direction != SPI_DIRECTION_RX)
1349  0015 7b01          	ld	a,(OFST+1,sp)
1350  0017 2706          	jreq	L515
1351                     ; 295     SPI->CR2 |= SPI_CR2_BDOE; /* Set the Tx only mode*/
1353  0019 721c5201      	bset	20993,#6
1355  001d 2004          	jra	L715
1356  001f               L515:
1357                     ; 299     SPI->CR2 &= (uint8_t)(~SPI_CR2_BDOE); /* Set the Rx only mode*/
1359  001f 721d5201      	bres	20993,#6
1360  0023               L715:
1361                     ; 301 }
1364  0023 84            	pop	a
1365  0024 81            	ret	
1487                     ; 311 FlagStatus SPI_GetFlagStatus(SPI_Flag_TypeDef SPI_FLAG)
1487                     ; 312 {
1488                     .text:	section	.text,new
1489  0000               _SPI_GetFlagStatus:
1491  0000 88            	push	a
1492  0001 88            	push	a
1493       00000001      OFST:	set	1
1496                     ; 313   FlagStatus status = RESET;
1498  0002 0f01          	clr	(OFST+0,sp)
1499                     ; 315   assert_param(IS_SPI_FLAGS_OK(SPI_FLAG));
1501  0004 a140          	cp	a,#64
1502  0006 2726          	jreq	L242
1503  0008 a120          	cp	a,#32
1504  000a 2722          	jreq	L242
1505  000c a110          	cp	a,#16
1506  000e 271e          	jreq	L242
1507  0010 a108          	cp	a,#8
1508  0012 271a          	jreq	L242
1509  0014 a102          	cp	a,#2
1510  0016 2716          	jreq	L242
1511  0018 a101          	cp	a,#1
1512  001a 2712          	jreq	L242
1513  001c a180          	cp	a,#128
1514  001e 270e          	jreq	L242
1515  0020 ae013b        	ldw	x,#315
1516  0023 89            	pushw	x
1517  0024 5f            	clrw	x
1518  0025 89            	pushw	x
1519  0026 ae0000        	ldw	x,#L102
1520  0029 cd0000        	call	_assert_failed
1522  002c 5b04          	addw	sp,#4
1523  002e               L242:
1524                     ; 318   if ((SPI->SR & (uint8_t)SPI_FLAG) != (uint8_t)RESET)
1526  002e c65203        	ld	a,20995
1527  0031 1502          	bcp	a,(OFST+1,sp)
1528  0033 2704          	jreq	L575
1529                     ; 320     status = SET; /* SPI_FLAG is set */
1531  0035 a601          	ld	a,#1
1533  0037 2001          	jra	L775
1534  0039               L575:
1535                     ; 324     status = RESET; /* SPI_FLAG is reset*/
1537  0039 4f            	clr	a
1538  003a               L775:
1539                     ; 328   return status;
1543  003a 85            	popw	x
1544  003b 81            	ret	
1580                     ; 346 void SPI_ClearFlag(SPI_Flag_TypeDef SPI_FLAG)
1580                     ; 347 {
1581                     .text:	section	.text,new
1582  0000               _SPI_ClearFlag:
1584  0000 88            	push	a
1585       00000000      OFST:	set	0
1588                     ; 348   assert_param(IS_SPI_CLEAR_FLAGS_OK(SPI_FLAG));
1590  0001 a110          	cp	a,#16
1591  0003 2712          	jreq	L452
1592  0005 a108          	cp	a,#8
1593  0007 270e          	jreq	L452
1594  0009 ae015c        	ldw	x,#348
1595  000c 89            	pushw	x
1596  000d 5f            	clrw	x
1597  000e 89            	pushw	x
1598  000f ae0000        	ldw	x,#L102
1599  0012 cd0000        	call	_assert_failed
1601  0015 5b04          	addw	sp,#4
1602  0017               L452:
1603                     ; 350   SPI->SR = (uint8_t)(~SPI_FLAG);
1605  0017 7b01          	ld	a,(OFST+1,sp)
1606  0019 43            	cpl	a
1607  001a c75203        	ld	20995,a
1608                     ; 351 }
1611  001d 84            	pop	a
1612  001e 81            	ret	
1687                     ; 366 ITStatus SPI_GetITStatus(SPI_IT_TypeDef SPI_IT)
1687                     ; 367 {
1688                     .text:	section	.text,new
1689  0000               _SPI_GetITStatus:
1691  0000 88            	push	a
1692  0001 89            	pushw	x
1693       00000002      OFST:	set	2
1696                     ; 368   ITStatus pendingbitstatus = RESET;
1698                     ; 369   uint8_t itpos = 0;
1700                     ; 370   uint8_t itmask1 = 0;
1702                     ; 371   uint8_t itmask2 = 0;
1704                     ; 372   uint8_t enablestatus = 0;
1706                     ; 373   assert_param(IS_SPI_GET_IT_OK(SPI_IT));
1708  0002 7b03          	ld	a,(OFST+1,sp)
1709  0004 a165          	cp	a,#101
1710  0006 2724          	jreq	L662
1711  0008 a155          	cp	a,#85
1712  000a 2720          	jreq	L662
1713  000c a145          	cp	a,#69
1714  000e 271c          	jreq	L662
1715  0010 a134          	cp	a,#52
1716  0012 2718          	jreq	L662
1717  0014 a117          	cp	a,#23
1718  0016 2714          	jreq	L662
1719  0018 a106          	cp	a,#6
1720  001a 2710          	jreq	L662
1721  001c ae0175        	ldw	x,#373
1722  001f 89            	pushw	x
1723  0020 5f            	clrw	x
1724  0021 89            	pushw	x
1725  0022 ae0000        	ldw	x,#L102
1726  0025 cd0000        	call	_assert_failed
1728  0028 5b04          	addw	sp,#4
1729  002a 7b03          	ld	a,(OFST+1,sp)
1730  002c               L662:
1731                     ; 375   itpos = (uint8_t)((uint8_t)1 << ((uint8_t)SPI_IT & (uint8_t)0x0F));
1733  002c a40f          	and	a,#15
1734  002e 5f            	clrw	x
1735  002f 97            	ld	xl,a
1736  0030 a601          	ld	a,#1
1737  0032 5d            	tnzw	x
1738  0033 2704          	jreq	L272
1739  0035               L472:
1740  0035 48            	sll	a
1741  0036 5a            	decw	x
1742  0037 26fc          	jrne	L472
1743  0039               L272:
1744  0039 6b01          	ld	(OFST-1,sp),a
1745                     ; 378   itmask1 = (uint8_t)((uint8_t)SPI_IT >> (uint8_t)4);
1747  003b 7b03          	ld	a,(OFST+1,sp)
1748  003d 4e            	swap	a
1749  003e a40f          	and	a,#15
1750  0040 6b02          	ld	(OFST+0,sp),a
1751                     ; 380   itmask2 = (uint8_t)((uint8_t)1 << itmask1);
1753  0042 5f            	clrw	x
1754  0043 97            	ld	xl,a
1755  0044 a601          	ld	a,#1
1756  0046 5d            	tnzw	x
1757  0047 2704          	jreq	L672
1758  0049               L003:
1759  0049 48            	sll	a
1760  004a 5a            	decw	x
1761  004b 26fc          	jrne	L003
1762  004d               L672:
1763                     ; 382   enablestatus = (uint8_t)((uint8_t)SPI->SR & itmask2);
1765  004d c45203        	and	a,20995
1766  0050 6b02          	ld	(OFST+0,sp),a
1767                     ; 384   if (((SPI->ICR & itpos) != RESET) && enablestatus)
1769  0052 c65202        	ld	a,20994
1770  0055 1501          	bcp	a,(OFST-1,sp)
1771  0057 2708          	jreq	L156
1773  0059 7b02          	ld	a,(OFST+0,sp)
1774  005b 2704          	jreq	L156
1775                     ; 387     pendingbitstatus = SET;
1777  005d a601          	ld	a,#1
1779  005f 2001          	jra	L356
1780  0061               L156:
1781                     ; 392     pendingbitstatus = RESET;
1783  0061 4f            	clr	a
1784  0062               L356:
1785                     ; 395   return  pendingbitstatus;
1789  0062 5b03          	addw	sp,#3
1790  0064 81            	ret	
1834                     ; 412 void SPI_ClearITPendingBit(SPI_IT_TypeDef SPI_IT)
1834                     ; 413 {
1835                     .text:	section	.text,new
1836  0000               _SPI_ClearITPendingBit:
1838  0000 88            	push	a
1839  0001 88            	push	a
1840       00000001      OFST:	set	1
1843                     ; 414   uint8_t itpos = 0;
1845  0002 0f01          	clr	(OFST+0,sp)
1846                     ; 415   assert_param(IS_SPI_CLEAR_IT_OK(SPI_IT));
1848  0004 a145          	cp	a,#69
1849  0006 2712          	jreq	L013
1850  0008 a134          	cp	a,#52
1851  000a 270e          	jreq	L013
1852  000c ae019f        	ldw	x,#415
1853  000f 89            	pushw	x
1854  0010 5f            	clrw	x
1855  0011 89            	pushw	x
1856  0012 ae0000        	ldw	x,#L102
1857  0015 cd0000        	call	_assert_failed
1859  0018 5b04          	addw	sp,#4
1860  001a               L013:
1861                     ; 420   itpos = (uint8_t)((uint8_t)1 << (uint8_t)((uint8_t)(SPI_IT & (uint8_t)0xF0) >> 4));
1863  001a 7b02          	ld	a,(OFST+1,sp)
1864  001c 4e            	swap	a
1865  001d a40f          	and	a,#15
1866  001f 5f            	clrw	x
1867  0020 97            	ld	xl,a
1868  0021 a601          	ld	a,#1
1869  0023 5d            	tnzw	x
1870  0024 2704          	jreq	L413
1871  0026               L613:
1872  0026 48            	sll	a
1873  0027 5a            	decw	x
1874  0028 26fc          	jrne	L613
1875  002a               L413:
1876                     ; 422   SPI->SR = (uint8_t)(~itpos);
1878  002a 43            	cpl	a
1879  002b c75203        	ld	20995,a
1880                     ; 424 }
1883  002e 85            	popw	x
1884  002f 81            	ret	
1897                     	xdef	_SPI_ClearITPendingBit
1898                     	xdef	_SPI_GetITStatus
1899                     	xdef	_SPI_ClearFlag
1900                     	xdef	_SPI_GetFlagStatus
1901                     	xdef	_SPI_BiDirectionalLineConfig
1902                     	xdef	_SPI_GetCRCPolynomial
1903                     	xdef	_SPI_ResetCRC
1904                     	xdef	_SPI_GetCRC
1905                     	xdef	_SPI_CalculateCRCCmd
1906                     	xdef	_SPI_TransmitCRC
1907                     	xdef	_SPI_NSSInternalSoftwareCmd
1908                     	xdef	_SPI_ReceiveData
1909                     	xdef	_SPI_SendData
1910                     	xdef	_SPI_ITConfig
1911                     	xdef	_SPI_Cmd
1912                     	xdef	_SPI_Init
1913                     	xdef	_SPI_DeInit
1914                     	xref	_assert_failed
1915                     .const:	section	.text
1916  0000               L102:
1917  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1918  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1919  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1920  0036 5f7370692e63  	dc.b	"_spi.c",0
1940                     	end
