   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  33                     ; 54 void ADC2_DeInit(void)
  33                     ; 55 {
  35                     .text:	section	.text,new
  36  0000               _ADC2_DeInit:
  40                     ; 56   ADC2->CSR  = ADC2_CSR_RESET_VALUE;
  42  0000 725f5400      	clr	21504
  43                     ; 57   ADC2->CR1  = ADC2_CR1_RESET_VALUE;
  45  0004 725f5401      	clr	21505
  46                     ; 58   ADC2->CR2  = ADC2_CR2_RESET_VALUE;
  48  0008 725f5402      	clr	21506
  49                     ; 59   ADC2->TDRH = ADC2_TDRH_RESET_VALUE;
  51  000c 725f5406      	clr	21510
  52                     ; 60   ADC2->TDRL = ADC2_TDRL_RESET_VALUE;
  54  0010 725f5407      	clr	21511
  55                     ; 61 }
  58  0014 81            	ret	
 585                     ; 83 void ADC2_Init(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_PresSel_TypeDef ADC2_PrescalerSelection, ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState ADC2_ExtTriggerState, ADC2_Align_TypeDef ADC2_Align, ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState ADC2_SchmittTriggerState)
 585                     ; 84 {
 586                     .text:	section	.text,new
 587  0000               _ADC2_Init:
 589  0000 89            	pushw	x
 590       00000000      OFST:	set	0
 593                     ; 86   assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
 595  0001 9e            	ld	a,xh
 596  0002 4d            	tnz	a
 597  0003 270a          	jreq	L41
 598  0005 9e            	ld	a,xh
 599  0006 4a            	dec	a
 600  0007 2706          	jreq	L41
 601  0009 ae0056        	ldw	x,#86
 602  000c cd0122        	call	LC001
 603  000f               L41:
 604                     ; 87   assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
 606  000f 7b02          	ld	a,(OFST+2,sp)
 607  0011 2742          	jreq	L42
 608  0013 a101          	cp	a,#1
 609  0015 273e          	jreq	L42
 610  0017 a102          	cp	a,#2
 611  0019 273a          	jreq	L42
 612  001b a103          	cp	a,#3
 613  001d 2736          	jreq	L42
 614  001f a104          	cp	a,#4
 615  0021 2732          	jreq	L42
 616  0023 a105          	cp	a,#5
 617  0025 272e          	jreq	L42
 618  0027 a106          	cp	a,#6
 619  0029 272a          	jreq	L42
 620  002b a107          	cp	a,#7
 621  002d 2726          	jreq	L42
 622  002f a108          	cp	a,#8
 623  0031 2722          	jreq	L42
 624  0033 a109          	cp	a,#9
 625  0035 271e          	jreq	L42
 626  0037 a10a          	cp	a,#10
 627  0039 271a          	jreq	L42
 628  003b a10b          	cp	a,#11
 629  003d 2716          	jreq	L42
 630  003f a10c          	cp	a,#12
 631  0041 2712          	jreq	L42
 632  0043 a10d          	cp	a,#13
 633  0045 270e          	jreq	L42
 634  0047 a10e          	cp	a,#14
 635  0049 270a          	jreq	L42
 636  004b a10f          	cp	a,#15
 637  004d 2706          	jreq	L42
 638  004f ae0057        	ldw	x,#87
 639  0052 cd0122        	call	LC001
 640  0055               L42:
 641                     ; 88   assert_param(IS_ADC2_PRESSEL_OK(ADC2_PrescalerSelection));
 643  0055 7b05          	ld	a,(OFST+5,sp)
 644  0057 2722          	jreq	L43
 645  0059 a110          	cp	a,#16
 646  005b 271e          	jreq	L43
 647  005d a120          	cp	a,#32
 648  005f 271a          	jreq	L43
 649  0061 a130          	cp	a,#48
 650  0063 2716          	jreq	L43
 651  0065 a140          	cp	a,#64
 652  0067 2712          	jreq	L43
 653  0069 a150          	cp	a,#80
 654  006b 270e          	jreq	L43
 655  006d a160          	cp	a,#96
 656  006f 270a          	jreq	L43
 657  0071 a170          	cp	a,#112
 658  0073 2706          	jreq	L43
 659  0075 ae0058        	ldw	x,#88
 660  0078 cd0122        	call	LC001
 661  007b               L43:
 662                     ; 89   assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
 664  007b 7b06          	ld	a,(OFST+6,sp)
 665  007d 2709          	jreq	L44
 666  007f 4a            	dec	a
 667  0080 2706          	jreq	L44
 668  0082 ae0059        	ldw	x,#89
 669  0085 cd0122        	call	LC001
 670  0088               L44:
 671                     ; 90   assert_param(IS_FUNCTIONALSTATE_OK(((ADC2_ExtTriggerState))));
 673  0088 7b07          	ld	a,(OFST+7,sp)
 674  008a 2709          	jreq	L45
 675  008c 4a            	dec	a
 676  008d 2706          	jreq	L45
 677  008f ae005a        	ldw	x,#90
 678  0092 cd0122        	call	LC001
 679  0095               L45:
 680                     ; 91   assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
 682  0095 7b08          	ld	a,(OFST+8,sp)
 683  0097 270a          	jreq	L46
 684  0099 a108          	cp	a,#8
 685  009b 2706          	jreq	L46
 686  009d ae005b        	ldw	x,#91
 687  00a0 cd0122        	call	LC001
 688  00a3               L46:
 689                     ; 92   assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
 691  00a3 7b09          	ld	a,(OFST+9,sp)
 692  00a5 2745          	jreq	L47
 693  00a7 a101          	cp	a,#1
 694  00a9 2741          	jreq	L47
 695  00ab a102          	cp	a,#2
 696  00ad 273d          	jreq	L47
 697  00af a103          	cp	a,#3
 698  00b1 2739          	jreq	L47
 699  00b3 a104          	cp	a,#4
 700  00b5 2735          	jreq	L47
 701  00b7 a105          	cp	a,#5
 702  00b9 2731          	jreq	L47
 703  00bb a106          	cp	a,#6
 704  00bd 272d          	jreq	L47
 705  00bf a107          	cp	a,#7
 706  00c1 2729          	jreq	L47
 707  00c3 a108          	cp	a,#8
 708  00c5 2725          	jreq	L47
 709  00c7 a109          	cp	a,#9
 710  00c9 2721          	jreq	L47
 711  00cb a10a          	cp	a,#10
 712  00cd 271d          	jreq	L47
 713  00cf a10b          	cp	a,#11
 714  00d1 2719          	jreq	L47
 715  00d3 a10c          	cp	a,#12
 716  00d5 2715          	jreq	L47
 717  00d7 a10d          	cp	a,#13
 718  00d9 2711          	jreq	L47
 719  00db a10e          	cp	a,#14
 720  00dd 270d          	jreq	L47
 721  00df a10f          	cp	a,#15
 722  00e1 2709          	jreq	L47
 723  00e3 a11f          	cp	a,#31
 724  00e5 2705          	jreq	L47
 725  00e7 ae005c        	ldw	x,#92
 726  00ea ad36          	call	LC001
 727  00ec               L47:
 728                     ; 93   assert_param(IS_FUNCTIONALSTATE_OK(ADC2_SchmittTriggerState));
 730  00ec 7b0a          	ld	a,(OFST+10,sp)
 731  00ee 2708          	jreq	L401
 732  00f0 4a            	dec	a
 733  00f1 2705          	jreq	L401
 734  00f3 ae005d        	ldw	x,#93
 735  00f6 ad2a          	call	LC001
 736  00f8               L401:
 737                     ; 98   ADC2_ConversionConfig(ADC2_ConversionMode, ADC2_Channel, ADC2_Align);
 739  00f8 7b08          	ld	a,(OFST+8,sp)
 740  00fa 88            	push	a
 741  00fb 7b03          	ld	a,(OFST+3,sp)
 742  00fd 97            	ld	xl,a
 743  00fe 7b02          	ld	a,(OFST+2,sp)
 744  0100 95            	ld	xh,a
 745  0101 cd0000        	call	_ADC2_ConversionConfig
 747  0104 84            	pop	a
 748                     ; 100   ADC2_PrescalerConfig(ADC2_PrescalerSelection);
 750  0105 7b05          	ld	a,(OFST+5,sp)
 751  0107 cd0000        	call	_ADC2_PrescalerConfig
 753                     ; 105   ADC2_ExternalTriggerConfig(ADC2_ExtTrigger, ADC2_ExtTriggerState);
 755  010a 7b07          	ld	a,(OFST+7,sp)
 756  010c 97            	ld	xl,a
 757  010d 7b06          	ld	a,(OFST+6,sp)
 758  010f 95            	ld	xh,a
 759  0110 cd0000        	call	_ADC2_ExternalTriggerConfig
 761                     ; 110   ADC2_SchmittTriggerConfig(ADC2_SchmittTriggerChannel, ADC2_SchmittTriggerState);
 763  0113 7b0a          	ld	a,(OFST+10,sp)
 764  0115 97            	ld	xl,a
 765  0116 7b09          	ld	a,(OFST+9,sp)
 766  0118 95            	ld	xh,a
 767  0119 cd0000        	call	_ADC2_SchmittTriggerConfig
 769                     ; 113   ADC2->CR1 |= ADC2_CR1_ADON;
 771  011c 72105401      	bset	21505,#0
 772                     ; 114 }
 775  0120 85            	popw	x
 776  0121 81            	ret	
 778  0122               LC001:
 779  0122 89            	pushw	x
 780  0123 5f            	clrw	x
 781  0124 89            	pushw	x
 782  0125 ae0000        	ldw	x,#L172
 783  0128 cd0000        	call	_assert_failed
 785  012b 5b04          	addw	sp,#4
 786  012d 81            	ret	
 821                     ; 121 void ADC2_Cmd(FunctionalState NewState)
 821                     ; 122 {
 822                     .text:	section	.text,new
 823  0000               _ADC2_Cmd:
 825  0000 88            	push	a
 826       00000000      OFST:	set	0
 829                     ; 124   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 831  0001 4d            	tnz	a
 832  0002 2711          	jreq	L621
 833  0004 4a            	dec	a
 834  0005 270e          	jreq	L621
 835  0007 ae007c        	ldw	x,#124
 836  000a 89            	pushw	x
 837  000b 5f            	clrw	x
 838  000c 89            	pushw	x
 839  000d ae0000        	ldw	x,#L172
 840  0010 cd0000        	call	_assert_failed
 842  0013 5b04          	addw	sp,#4
 843  0015               L621:
 844                     ; 126   if (NewState != DISABLE)
 846  0015 7b01          	ld	a,(OFST+1,sp)
 847  0017 2706          	jreq	L113
 848                     ; 128     ADC2->CR1 |= ADC2_CR1_ADON;
 850  0019 72105401      	bset	21505,#0
 852  001d 2004          	jra	L313
 853  001f               L113:
 854                     ; 132     ADC2->CR1 &= (uint8_t)(~ADC2_CR1_ADON);
 856  001f 72115401      	bres	21505,#0
 857  0023               L313:
 858                     ; 134 }
 861  0023 84            	pop	a
 862  0024 81            	ret	
 898                     ; 141 void ADC2_ITConfig(FunctionalState NewState)
 898                     ; 142 {
 899                     .text:	section	.text,new
 900  0000               _ADC2_ITConfig:
 902  0000 88            	push	a
 903       00000000      OFST:	set	0
 906                     ; 144   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 908  0001 4d            	tnz	a
 909  0002 2711          	jreq	L041
 910  0004 4a            	dec	a
 911  0005 270e          	jreq	L041
 912  0007 ae0090        	ldw	x,#144
 913  000a 89            	pushw	x
 914  000b 5f            	clrw	x
 915  000c 89            	pushw	x
 916  000d ae0000        	ldw	x,#L172
 917  0010 cd0000        	call	_assert_failed
 919  0013 5b04          	addw	sp,#4
 920  0015               L041:
 921                     ; 146   if (NewState != DISABLE)
 923  0015 7b01          	ld	a,(OFST+1,sp)
 924  0017 2706          	jreq	L333
 925                     ; 149     ADC2->CSR |= (uint8_t)ADC2_CSR_EOCIE;
 927  0019 721a5400      	bset	21504,#5
 929  001d 2004          	jra	L533
 930  001f               L333:
 931                     ; 154     ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOCIE);
 933  001f 721b5400      	bres	21504,#5
 934  0023               L533:
 935                     ; 156 }
 938  0023 84            	pop	a
 939  0024 81            	ret	
 976                     ; 164 void ADC2_PrescalerConfig(ADC2_PresSel_TypeDef ADC2_Prescaler)
 976                     ; 165 {
 977                     .text:	section	.text,new
 978  0000               _ADC2_PrescalerConfig:
 980  0000 88            	push	a
 981       00000000      OFST:	set	0
 984                     ; 167   assert_param(IS_ADC2_PRESSEL_OK(ADC2_Prescaler));
 986  0001 4d            	tnz	a
 987  0002 272a          	jreq	L251
 988  0004 a110          	cp	a,#16
 989  0006 2726          	jreq	L251
 990  0008 a120          	cp	a,#32
 991  000a 2722          	jreq	L251
 992  000c a130          	cp	a,#48
 993  000e 271e          	jreq	L251
 994  0010 a140          	cp	a,#64
 995  0012 271a          	jreq	L251
 996  0014 a150          	cp	a,#80
 997  0016 2716          	jreq	L251
 998  0018 a160          	cp	a,#96
 999  001a 2712          	jreq	L251
1000  001c a170          	cp	a,#112
1001  001e 270e          	jreq	L251
1002  0020 ae00a7        	ldw	x,#167
1003  0023 89            	pushw	x
1004  0024 5f            	clrw	x
1005  0025 89            	pushw	x
1006  0026 ae0000        	ldw	x,#L172
1007  0029 cd0000        	call	_assert_failed
1009  002c 5b04          	addw	sp,#4
1010  002e               L251:
1011                     ; 170   ADC2->CR1 &= (uint8_t)(~ADC2_CR1_SPSEL);
1013  002e c65401        	ld	a,21505
1014  0031 a48f          	and	a,#143
1015  0033 c75401        	ld	21505,a
1016                     ; 172   ADC2->CR1 |= (uint8_t)(ADC2_Prescaler);
1018  0036 c65401        	ld	a,21505
1019  0039 1a01          	or	a,(OFST+1,sp)
1020  003b c75401        	ld	21505,a
1021                     ; 173 }
1024  003e 84            	pop	a
1025  003f 81            	ret	
1073                     ; 183 void ADC2_SchmittTriggerConfig(ADC2_SchmittTrigg_TypeDef ADC2_SchmittTriggerChannel, FunctionalState NewState)
1073                     ; 184 {
1074                     .text:	section	.text,new
1075  0000               _ADC2_SchmittTriggerConfig:
1077  0000 89            	pushw	x
1078       00000000      OFST:	set	0
1081                     ; 186   assert_param(IS_ADC2_SCHMITTTRIG_OK(ADC2_SchmittTriggerChannel));
1083  0001 9e            	ld	a,xh
1084  0002 4d            	tnz	a
1085  0003 2755          	jreq	L461
1086  0005 9e            	ld	a,xh
1087  0006 4a            	dec	a
1088  0007 2751          	jreq	L461
1089  0009 9e            	ld	a,xh
1090  000a a102          	cp	a,#2
1091  000c 274c          	jreq	L461
1092  000e 9e            	ld	a,xh
1093  000f a103          	cp	a,#3
1094  0011 2747          	jreq	L461
1095  0013 9e            	ld	a,xh
1096  0014 a104          	cp	a,#4
1097  0016 2742          	jreq	L461
1098  0018 9e            	ld	a,xh
1099  0019 a105          	cp	a,#5
1100  001b 273d          	jreq	L461
1101  001d 9e            	ld	a,xh
1102  001e a106          	cp	a,#6
1103  0020 2738          	jreq	L461
1104  0022 9e            	ld	a,xh
1105  0023 a107          	cp	a,#7
1106  0025 2733          	jreq	L461
1107  0027 9e            	ld	a,xh
1108  0028 a108          	cp	a,#8
1109  002a 272e          	jreq	L461
1110  002c 9e            	ld	a,xh
1111  002d a109          	cp	a,#9
1112  002f 2729          	jreq	L461
1113  0031 9e            	ld	a,xh
1114  0032 a10a          	cp	a,#10
1115  0034 2724          	jreq	L461
1116  0036 9e            	ld	a,xh
1117  0037 a10b          	cp	a,#11
1118  0039 271f          	jreq	L461
1119  003b 9e            	ld	a,xh
1120  003c a10c          	cp	a,#12
1121  003e 271a          	jreq	L461
1122  0040 9e            	ld	a,xh
1123  0041 a10d          	cp	a,#13
1124  0043 2715          	jreq	L461
1125  0045 9e            	ld	a,xh
1126  0046 a10e          	cp	a,#14
1127  0048 2710          	jreq	L461
1128  004a 9e            	ld	a,xh
1129  004b a10f          	cp	a,#15
1130  004d 270b          	jreq	L461
1131  004f 9e            	ld	a,xh
1132  0050 a11f          	cp	a,#31
1133  0052 2706          	jreq	L461
1134  0054 ae00ba        	ldw	x,#186
1135  0057 cd00d9        	call	LC005
1136  005a               L461:
1137                     ; 187   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1139  005a 7b02          	ld	a,(OFST+2,sp)
1140  005c 2708          	jreq	L471
1141  005e 4a            	dec	a
1142  005f 2705          	jreq	L471
1143  0061 ae00bb        	ldw	x,#187
1144  0064 ad73          	call	LC005
1145  0066               L471:
1146                     ; 189   if (ADC2_SchmittTriggerChannel == ADC2_SCHMITTTRIG_ALL)
1148  0066 7b01          	ld	a,(OFST+1,sp)
1149  0068 a11f          	cp	a,#31
1150  006a 261d          	jrne	L773
1151                     ; 191     if (NewState != DISABLE)
1153  006c 7b02          	ld	a,(OFST+2,sp)
1154  006e 270a          	jreq	L104
1155                     ; 193       ADC2->TDRL &= (uint8_t)0x0;
1157  0070 725f5407      	clr	21511
1158                     ; 194       ADC2->TDRH &= (uint8_t)0x0;
1160  0074 725f5406      	clr	21510
1162  0078 2057          	jra	L504
1163  007a               L104:
1164                     ; 198       ADC2->TDRL |= (uint8_t)0xFF;
1166  007a c65407        	ld	a,21511
1167  007d aaff          	or	a,#255
1168  007f c75407        	ld	21511,a
1169                     ; 199       ADC2->TDRH |= (uint8_t)0xFF;
1171  0082 c65406        	ld	a,21510
1172  0085 aaff          	or	a,#255
1173  0087 2045          	jp	LC002
1174  0089               L773:
1175                     ; 202   else if (ADC2_SchmittTriggerChannel < ADC2_SCHMITTTRIG_CHANNEL8)
1177  0089 a108          	cp	a,#8
1178  008b 0d02          	tnz	(OFST+2,sp)
1179  008d 2420          	jruge	L704
1180                     ; 204     if (NewState != DISABLE)
1182  008f 2711          	jreq	L114
1183                     ; 206       ADC2->TDRL &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel));
1185  0091 ad40          	call	LC004
1186  0093 2704          	jreq	L002
1187  0095               L202:
1188  0095 48            	sll	a
1189  0096 5a            	decw	x
1190  0097 26fc          	jrne	L202
1191  0099               L002:
1192  0099 43            	cpl	a
1193  009a c45407        	and	a,21511
1194  009d               LC003:
1195  009d c75407        	ld	21511,a
1197  00a0 202f          	jra	L504
1198  00a2               L114:
1199                     ; 210       ADC2->TDRL |= (uint8_t)((uint8_t)0x01 << (uint8_t)ADC2_SchmittTriggerChannel);
1201  00a2 ad2f          	call	LC004
1202  00a4 2704          	jreq	L402
1203  00a6               L602:
1204  00a6 48            	sll	a
1205  00a7 5a            	decw	x
1206  00a8 26fc          	jrne	L602
1207  00aa               L402:
1208  00aa ca5407        	or	a,21511
1209  00ad 20ee          	jp	LC003
1210  00af               L704:
1211                     ; 215     if (NewState != DISABLE)
1213  00af 2710          	jreq	L714
1214                     ; 217       ADC2->TDRH &= (uint8_t)(~(uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8)));
1216  00b1 a008          	sub	a,#8
1217  00b3 ad1e          	call	LC004
1218  00b5 2704          	jreq	L012
1219  00b7               L212:
1220  00b7 48            	sll	a
1221  00b8 5a            	decw	x
1222  00b9 26fc          	jrne	L212
1223  00bb               L012:
1224  00bb 43            	cpl	a
1225  00bc c45406        	and	a,21510
1227  00bf 200d          	jp	LC002
1228  00c1               L714:
1229                     ; 221       ADC2->TDRH |= (uint8_t)((uint8_t)0x01 << ((uint8_t)ADC2_SchmittTriggerChannel - (uint8_t)8));
1231  00c1 a008          	sub	a,#8
1232  00c3 ad0e          	call	LC004
1233  00c5 2704          	jreq	L412
1234  00c7               L612:
1235  00c7 48            	sll	a
1236  00c8 5a            	decw	x
1237  00c9 26fc          	jrne	L612
1238  00cb               L412:
1239  00cb ca5406        	or	a,21510
1240  00ce               LC002:
1241  00ce c75406        	ld	21510,a
1242  00d1               L504:
1243                     ; 224 }
1246  00d1 85            	popw	x
1247  00d2 81            	ret	
1249  00d3               LC004:
1250  00d3 5f            	clrw	x
1251  00d4 97            	ld	xl,a
1252  00d5 a601          	ld	a,#1
1253  00d7 5d            	tnzw	x
1254  00d8 81            	ret	
1255  00d9               LC005:
1256  00d9 89            	pushw	x
1257  00da 5f            	clrw	x
1258  00db 89            	pushw	x
1259  00dc ae0000        	ldw	x,#L172
1260  00df cd0000        	call	_assert_failed
1262  00e2 5b04          	addw	sp,#4
1263  00e4 81            	ret	
1320                     ; 236 void ADC2_ConversionConfig(ADC2_ConvMode_TypeDef ADC2_ConversionMode, ADC2_Channel_TypeDef ADC2_Channel, ADC2_Align_TypeDef ADC2_Align)
1320                     ; 237 {
1321                     .text:	section	.text,new
1322  0000               _ADC2_ConversionConfig:
1324  0000 89            	pushw	x
1325       00000000      OFST:	set	0
1328                     ; 239   assert_param(IS_ADC2_CONVERSIONMODE_OK(ADC2_ConversionMode));
1330  0001 9e            	ld	a,xh
1331  0002 4d            	tnz	a
1332  0003 270a          	jreq	L622
1333  0005 9e            	ld	a,xh
1334  0006 4a            	dec	a
1335  0007 2706          	jreq	L622
1336  0009 ae00ef        	ldw	x,#239
1337  000c cd008e        	call	LC006
1338  000f               L622:
1339                     ; 240   assert_param(IS_ADC2_CHANNEL_OK(ADC2_Channel));
1341  000f 7b02          	ld	a,(OFST+2,sp)
1342  0011 2741          	jreq	L632
1343  0013 a101          	cp	a,#1
1344  0015 273d          	jreq	L632
1345  0017 a102          	cp	a,#2
1346  0019 2739          	jreq	L632
1347  001b a103          	cp	a,#3
1348  001d 2735          	jreq	L632
1349  001f a104          	cp	a,#4
1350  0021 2731          	jreq	L632
1351  0023 a105          	cp	a,#5
1352  0025 272d          	jreq	L632
1353  0027 a106          	cp	a,#6
1354  0029 2729          	jreq	L632
1355  002b a107          	cp	a,#7
1356  002d 2725          	jreq	L632
1357  002f a108          	cp	a,#8
1358  0031 2721          	jreq	L632
1359  0033 a109          	cp	a,#9
1360  0035 271d          	jreq	L632
1361  0037 a10a          	cp	a,#10
1362  0039 2719          	jreq	L632
1363  003b a10b          	cp	a,#11
1364  003d 2715          	jreq	L632
1365  003f a10c          	cp	a,#12
1366  0041 2711          	jreq	L632
1367  0043 a10d          	cp	a,#13
1368  0045 270d          	jreq	L632
1369  0047 a10e          	cp	a,#14
1370  0049 2709          	jreq	L632
1371  004b a10f          	cp	a,#15
1372  004d 2705          	jreq	L632
1373  004f ae00f0        	ldw	x,#240
1374  0052 ad3a          	call	LC006
1375  0054               L632:
1376                     ; 241   assert_param(IS_ADC2_ALIGN_OK(ADC2_Align));
1378  0054 7b05          	ld	a,(OFST+5,sp)
1379  0056 2709          	jreq	L642
1380  0058 a108          	cp	a,#8
1381  005a 2705          	jreq	L642
1382  005c ae00f1        	ldw	x,#241
1383  005f ad2d          	call	LC006
1384  0061               L642:
1385                     ; 244   ADC2->CR2 &= (uint8_t)(~ADC2_CR2_ALIGN);
1387  0061 72175402      	bres	21506,#3
1388                     ; 246   ADC2->CR2 |= (uint8_t)(ADC2_Align);
1390  0065 c65402        	ld	a,21506
1391  0068 1a05          	or	a,(OFST+5,sp)
1392  006a c75402        	ld	21506,a
1393                     ; 248   if (ADC2_ConversionMode == ADC2_CONVERSIONMODE_CONTINUOUS)
1395  006d 7b01          	ld	a,(OFST+1,sp)
1396  006f 4a            	dec	a
1397  0070 2606          	jrne	L154
1398                     ; 251     ADC2->CR1 |= ADC2_CR1_CONT;
1400  0072 72125401      	bset	21505,#1
1402  0076 2004          	jra	L354
1403  0078               L154:
1404                     ; 256     ADC2->CR1 &= (uint8_t)(~ADC2_CR1_CONT);
1406  0078 72135401      	bres	21505,#1
1407  007c               L354:
1408                     ; 260   ADC2->CSR &= (uint8_t)(~ADC2_CSR_CH);
1410  007c c65400        	ld	a,21504
1411  007f a4f0          	and	a,#240
1412  0081 c75400        	ld	21504,a
1413                     ; 262   ADC2->CSR |= (uint8_t)(ADC2_Channel);
1415  0084 c65400        	ld	a,21504
1416  0087 1a02          	or	a,(OFST+2,sp)
1417  0089 c75400        	ld	21504,a
1418                     ; 263 }
1421  008c 85            	popw	x
1422  008d 81            	ret	
1424  008e               LC006:
1425  008e 89            	pushw	x
1426  008f 5f            	clrw	x
1427  0090 89            	pushw	x
1428  0091 ae0000        	ldw	x,#L172
1429  0094 cd0000        	call	_assert_failed
1431  0097 5b04          	addw	sp,#4
1432  0099 81            	ret	
1478                     ; 275 void ADC2_ExternalTriggerConfig(ADC2_ExtTrig_TypeDef ADC2_ExtTrigger, FunctionalState NewState)
1478                     ; 276 {
1479                     .text:	section	.text,new
1480  0000               _ADC2_ExternalTriggerConfig:
1482  0000 89            	pushw	x
1483       00000000      OFST:	set	0
1486                     ; 278   assert_param(IS_ADC2_EXTTRIG_OK(ADC2_ExtTrigger));
1488  0001 9e            	ld	a,xh
1489  0002 4d            	tnz	a
1490  0003 2709          	jreq	L062
1491  0005 9e            	ld	a,xh
1492  0006 4a            	dec	a
1493  0007 2705          	jreq	L062
1494  0009 ae0116        	ldw	x,#278
1495  000c ad2c          	call	LC007
1496  000e               L062:
1497                     ; 279   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
1499  000e 7b02          	ld	a,(OFST+2,sp)
1500  0010 2708          	jreq	L072
1501  0012 4a            	dec	a
1502  0013 2705          	jreq	L072
1503  0015 ae0117        	ldw	x,#279
1504  0018 ad20          	call	LC007
1505  001a               L072:
1506                     ; 282   ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTSEL);
1508  001a c65402        	ld	a,21506
1509  001d a4cf          	and	a,#207
1510  001f c75402        	ld	21506,a
1511                     ; 284   if (NewState != DISABLE)
1513  0022 7b02          	ld	a,(OFST+2,sp)
1514  0024 2706          	jreq	L774
1515                     ; 287     ADC2->CR2 |= (uint8_t)(ADC2_CR2_EXTTRIG);
1517  0026 721c5402      	bset	21506,#6
1519  002a 2004          	jra	L105
1520  002c               L774:
1521                     ; 292     ADC2->CR2 &= (uint8_t)(~ADC2_CR2_EXTTRIG);
1523  002c 721d5402      	bres	21506,#6
1524  0030               L105:
1525                     ; 296   ADC2->CR2 |= (uint8_t)(ADC2_ExtTrigger);
1527  0030 c65402        	ld	a,21506
1528  0033 1a01          	or	a,(OFST+1,sp)
1529  0035 c75402        	ld	21506,a
1530                     ; 297 }
1533  0038 85            	popw	x
1534  0039 81            	ret	
1536  003a               LC007:
1537  003a 89            	pushw	x
1538  003b 5f            	clrw	x
1539  003c 89            	pushw	x
1540  003d ae0000        	ldw	x,#L172
1541  0040 cd0000        	call	_assert_failed
1543  0043 5b04          	addw	sp,#4
1544  0045 81            	ret	
1567                     ; 308 void ADC2_StartConversion(void)
1567                     ; 309 {
1568                     .text:	section	.text,new
1569  0000               _ADC2_StartConversion:
1573                     ; 310   ADC2->CR1 |= ADC2_CR1_ADON;
1575  0000 72105401      	bset	21505,#0
1576                     ; 311 }
1579  0004 81            	ret	
1619                     ; 320 uint16_t ADC2_GetConversionValue(void)
1619                     ; 321 {
1620                     .text:	section	.text,new
1621  0000               _ADC2_GetConversionValue:
1623  0000 5205          	subw	sp,#5
1624       00000005      OFST:	set	5
1627                     ; 322   uint16_t temph = 0;
1629                     ; 323   uint8_t templ = 0;
1631                     ; 325   if ((ADC2->CR2 & ADC2_CR2_ALIGN) != 0) /* Right alignment */
1633  0002 720754020e    	btjf	21506,#3,L135
1634                     ; 328     templ = ADC2->DRL;
1636  0007 c65405        	ld	a,21509
1637  000a 6b03          	ld	(OFST-2,sp),a
1638                     ; 330     temph = ADC2->DRH;
1640  000c c65404        	ld	a,21508
1641  000f 97            	ld	xl,a
1642                     ; 332     temph = (uint16_t)(templ | (uint16_t)(temph << (uint8_t)8));
1644  0010 7b03          	ld	a,(OFST-2,sp)
1645  0012 02            	rlwa	x,a
1647  0013 201a          	jra	L335
1648  0015               L135:
1649                     ; 337     temph = ADC2->DRH;
1651  0015 c65404        	ld	a,21508
1652  0018 97            	ld	xl,a
1653                     ; 339     templ = ADC2->DRL;
1655  0019 c65405        	ld	a,21509
1656  001c 6b03          	ld	(OFST-2,sp),a
1657                     ; 341     temph = (uint16_t)((uint16_t)((uint16_t)templ << 6) | (uint16_t)((uint16_t)temph << 8));
1659  001e 4f            	clr	a
1660  001f 02            	rlwa	x,a
1661  0020 1f01          	ldw	(OFST-4,sp),x
1662  0022 7b03          	ld	a,(OFST-2,sp)
1663  0024 97            	ld	xl,a
1664  0025 a640          	ld	a,#64
1665  0027 42            	mul	x,a
1666  0028 01            	rrwa	x,a
1667  0029 1a02          	or	a,(OFST-3,sp)
1668  002b 01            	rrwa	x,a
1669  002c 1a01          	or	a,(OFST-4,sp)
1670  002e 01            	rrwa	x,a
1671  002f               L335:
1672                     ; 344   return ((uint16_t)temph);
1676  002f 5b05          	addw	sp,#5
1677  0031 81            	ret	
1721                     ; 352 FlagStatus ADC2_GetFlagStatus(void)
1721                     ; 353 {
1722                     .text:	section	.text,new
1723  0000               _ADC2_GetFlagStatus:
1727                     ; 355   return (FlagStatus)(ADC2->CSR & ADC2_CSR_EOC);
1729  0000 c65400        	ld	a,21504
1730  0003 a480          	and	a,#128
1733  0005 81            	ret	
1756                     ; 363 void ADC2_ClearFlag(void)
1756                     ; 364 {
1757                     .text:	section	.text,new
1758  0000               _ADC2_ClearFlag:
1762                     ; 365   ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
1764  0000 721f5400      	bres	21504,#7
1765                     ; 366 }
1768  0004 81            	ret	
1792                     ; 374 ITStatus ADC2_GetITStatus(void)
1792                     ; 375 {
1793                     .text:	section	.text,new
1794  0000               _ADC2_GetITStatus:
1798                     ; 376   return (ITStatus)(ADC2->CSR & ADC2_CSR_EOC);
1800  0000 c65400        	ld	a,21504
1801  0003 a480          	and	a,#128
1804  0005 81            	ret	
1828                     ; 384 void ADC2_ClearITPendingBit(void)
1828                     ; 385 {
1829                     .text:	section	.text,new
1830  0000               _ADC2_ClearITPendingBit:
1834                     ; 386   ADC2->CSR &= (uint8_t)(~ADC2_CSR_EOC);
1836  0000 721f5400      	bres	21504,#7
1837                     ; 387 }
1840  0004 81            	ret	
1853                     	xdef	_ADC2_ClearITPendingBit
1854                     	xdef	_ADC2_GetITStatus
1855                     	xdef	_ADC2_ClearFlag
1856                     	xdef	_ADC2_GetFlagStatus
1857                     	xdef	_ADC2_GetConversionValue
1858                     	xdef	_ADC2_StartConversion
1859                     	xdef	_ADC2_ExternalTriggerConfig
1860                     	xdef	_ADC2_ConversionConfig
1861                     	xdef	_ADC2_SchmittTriggerConfig
1862                     	xdef	_ADC2_PrescalerConfig
1863                     	xdef	_ADC2_ITConfig
1864                     	xdef	_ADC2_Cmd
1865                     	xdef	_ADC2_Init
1866                     	xdef	_ADC2_DeInit
1867                     	xref	_assert_failed
1868                     .const:	section	.text
1869  0000               L172:
1870  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
1871  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
1872  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
1873  0036 5f616463322e  	dc.b	"_adc2.c",0
1893                     	end
