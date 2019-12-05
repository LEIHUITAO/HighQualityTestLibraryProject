   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
   5                     	switch	.data
   6  0000               __Id:
   7  0000 00000000      	dc.l	0
   8  0004               __IDE:
   9  0004 00            	dc.b	0
  10  0005               __RTR:
  11  0005 00            	dc.b	0
  12  0006               __DLC:
  13  0006 00            	dc.b	0
  14  0007               __Data:
  15  0007 00            	dc.b	0
  16  0008 000000000000  	ds.b	7
  17  000f               __FMI:
  18  000f 00            	dc.b	0
  48                     ; 62 void CAN_DeInit(void)
  48                     ; 63 {
  50                     .text:	section	.text,new
  51  0000               _CAN_DeInit:
  55                     ; 65   CAN->MCR = CAN_MCR_INRQ;
  57  0000 35015420      	mov	21536,#1
  58                     ; 66   CAN->PSR = CAN_Page_Config;
  60  0004 35065427      	mov	21543,#6
  61                     ; 67   CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
  63  0008 4f            	clr	a
  64  0009 cd0000        	call	_CAN_OperatingModeRequest
  66                     ; 68   CAN->Page.Config.ESR = CAN_ESR_RESET_VALUE;
  68  000c 725f5428      	clr	21544
  69                     ; 69   CAN->Page.Config.EIER = CAN_EIER_RESET_VALUE;
  71  0010 725f5429      	clr	21545
  72                     ; 70   CAN->Page.Config.BTR1 = CAN_BTR1_RESET_VALUE;
  74  0014 3540542c      	mov	21548,#64
  75                     ; 71   CAN->Page.Config.BTR2 = CAN_BTR2_RESET_VALUE;
  77  0018 3523542d      	mov	21549,#35
  78                     ; 72   CAN->Page.Config.FMR1 = CAN_FMR1_RESET_VALUE;
  80  001c 725f5430      	clr	21552
  81                     ; 73   CAN->Page.Config.FMR2 = CAN_FMR2_RESET_VALUE;
  83  0020 725f5431      	clr	21553
  84                     ; 74   CAN->Page.Config.FCR1 = CAN_FCR_RESET_VALUE;
  86  0024 725f5432      	clr	21554
  87                     ; 75   CAN->Page.Config.FCR2 = CAN_FCR_RESET_VALUE;
  89  0028 725f5433      	clr	21555
  90                     ; 76   CAN->Page.Config.FCR3 = CAN_FCR_RESET_VALUE;
  92  002c 725f5434      	clr	21556
  93                     ; 77   CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
  95  0030 a601          	ld	a,#1
  96  0032 cd0000        	call	_CAN_OperatingModeRequest
  98                     ; 78   CAN->PSR = CAN_Page_RxFifo;
 100  0035 35075427      	mov	21543,#7
 101                     ; 79   CAN->Page.RxFIFO.MDLCR = CAN_MDLC_RESET_VALUE;
 103  0039 725f5429      	clr	21545
 104                     ; 80   CAN->PSR = CAN_Page_TxMailBox0;
 106  003d 725f5427      	clr	21543
 107                     ; 81   CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 109  0041 725f5429      	clr	21545
 110                     ; 82   CAN->PSR = CAN_Page_TxMailBox1;
 112  0045 35015427      	mov	21543,#1
 113                     ; 83   CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 115  0049 725f5429      	clr	21545
 116                     ; 84   CAN->PSR = CAN_Page_TxMailBox2;
 118  004d 35055427      	mov	21543,#5
 119                     ; 85   CAN->Page.TxMailbox.MDLCR = CAN_MDLC_RESET_VALUE;
 121  0051 725f5429      	clr	21545
 122                     ; 87   CAN->MCR = CAN_MCR_RESET_VALUE;
 124  0055 35025420      	mov	21536,#2
 125                     ; 88   CAN->MSR = (uint8_t)(~CAN_MSR_RESET_VALUE);/* rc_w1 */
 127  0059 35fd5421      	mov	21537,#253
 128                     ; 89   CAN->TSR = (uint8_t)(~CAN_TSR_RESET_VALUE);/* rc_w1 */
 130  005d 35ff5422      	mov	21538,#255
 131                     ; 90   CAN->RFR = (uint8_t)(~CAN_RFR_RESET_VALUE);/* rc_w1 */
 133  0061 35ff5424      	mov	21540,#255
 134                     ; 91   CAN->IER = CAN_IER_RESET_VALUE;
 136  0065 725f5425      	clr	21541
 137                     ; 92   CAN->DGR = CAN_DGR_RESET_VALUE;
 139  0069 350c5426      	mov	21542,#12
 140                     ; 93   CAN->PSR = CAN_PSR_RESET_VALUE;
 142  006d 725f5427      	clr	21543
 143                     ; 94 }
 146  0071 81            	ret	
 693                     ; 106 CAN_InitStatus_TypeDef CAN_Init(CAN_MasterCtrl_TypeDef CAN_MasterCtrl,
 693                     ; 107                                 CAN_Mode_TypeDef CAN_Mode,
 693                     ; 108                                 CAN_SynJumpWidth_TypeDef CAN_SynJumpWidth,
 693                     ; 109                                 CAN_BitSeg1_TypeDef CAN_BitSeg1,
 693                     ; 110                                 CAN_BitSeg2_TypeDef CAN_BitSeg2,
 693                     ; 111                                 uint8_t CAN_Prescaler)
 693                     ; 112 {
 694                     .text:	section	.text,new
 695  0000               _CAN_Init:
 697  0000 89            	pushw	x
 698  0001 5204          	subw	sp,#4
 699       00000004      OFST:	set	4
 702                     ; 113   CAN_InitStatus_TypeDef InitStatus =  CAN_InitStatus_Failed;
 704                     ; 114   uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
 706  0003 aeffff        	ldw	x,#65535
 707  0006 1f03          	ldw	(OFST-1,sp),x
 708                     ; 115   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
 710  0008 cd0000        	call	_CAN_GetSelectedPage
 712  000b 6b01          	ld	(OFST-3,sp),a
 713                     ; 119   assert_param(IS_CAN_MASTERCTRL_OK(CAN_MasterCtrl));
 715  000d 7b05          	ld	a,(OFST+1,sp)
 716  000f 270e          	jreq	L22
 717  0011 a1fd          	cp	a,#253
 718  0013 2404          	jruge	L61
 719  0015 a104          	cp	a,#4
 720  0017 2406          	jruge	L22
 721  0019               L61:
 722  0019 ae0077        	ldw	x,#119
 723  001c cd00dd        	call	LC002
 724  001f               L22:
 725                     ; 120   assert_param(IS_CAN_MODE_OK(CAN_Mode));
 727  001f 7b06          	ld	a,(OFST+2,sp)
 728  0021 2712          	jreq	L23
 729  0023 a101          	cp	a,#1
 730  0025 270e          	jreq	L23
 731  0027 a102          	cp	a,#2
 732  0029 270a          	jreq	L23
 733  002b a103          	cp	a,#3
 734  002d 2706          	jreq	L23
 735  002f ae0078        	ldw	x,#120
 736  0032 cd00dd        	call	LC002
 737  0035               L23:
 738                     ; 121   assert_param(IS_CAN_SYNJUMPWIDTH_OK(CAN_SynJumpWidth));
 740  0035 7b09          	ld	a,(OFST+5,sp)
 741  0037 2712          	jreq	L24
 742  0039 a140          	cp	a,#64
 743  003b 270e          	jreq	L24
 744  003d a180          	cp	a,#128
 745  003f 270a          	jreq	L24
 746  0041 a1c0          	cp	a,#192
 747  0043 2706          	jreq	L24
 748  0045 ae0079        	ldw	x,#121
 749  0048 cd00dd        	call	LC002
 750  004b               L24:
 751                     ; 122   assert_param(IS_CAN_BITSEG1_OK(CAN_BitSeg1));
 753  004b 7b0a          	ld	a,(OFST+6,sp)
 754  004d a110          	cp	a,#16
 755  004f 2506          	jrult	L05
 756  0051 ae007a        	ldw	x,#122
 757  0054 cd00dd        	call	LC002
 758  0057               L05:
 759                     ; 123   assert_param(IS_CAN_BITSEG2_OK(CAN_BitSeg2));
 761  0057 7b0b          	ld	a,(OFST+7,sp)
 762  0059 a110          	cp	a,#16
 763  005b 2504          	jrult	L06
 764  005d a171          	cp	a,#113
 765  005f 2509          	jrult	L26
 766  0061               L06:
 767  0061 7b0b          	ld	a,(OFST+7,sp)
 768  0063 2705          	jreq	L26
 769  0065 ae007b        	ldw	x,#123
 770  0068 ad73          	call	LC002
 771  006a               L26:
 772                     ; 124   assert_param(IS_CAN_PRESCALER_OK(CAN_Prescaler));
 774  006a 7b0c          	ld	a,(OFST+8,sp)
 775  006c 2704          	jreq	L66
 776  006e a141          	cp	a,#65
 777  0070 2505          	jrult	L07
 778  0072               L66:
 779  0072 ae007c        	ldw	x,#124
 780  0075 ad66          	call	LC002
 781  0077               L07:
 782                     ; 127   CAN->MCR = CAN_MCR_INRQ;
 784  0077 35015420      	mov	21536,#1
 786  007b 2003          	jra	L303
 787  007d               L772:
 788                     ; 131     timeout--;
 790  007d 5a            	decw	x
 791  007e 1f03          	ldw	(OFST-1,sp),x
 792  0080               L303:
 793                     ; 129   while (((uint8_t)(CAN->MSR & CAN_MSR_INAK) != 0x01) && ((uint16_t)timeout != 0))
 795  0080 7200542104    	btjt	21537,#0,L703
 797  0085 1e03          	ldw	x,(OFST-1,sp)
 798  0087 26f4          	jrne	L772
 799  0089               L703:
 800                     ; 135   if ((CAN->MSR & CAN_MSR_INAK) != CAN_MSR_INAK)
 802  0089 720054210c    	btjt	21537,#0,L113
 803                     ; 138     InitStatus =  CAN_InitStatus_Failed;
 805  008e               LC001:
 807  008e 0f02          	clr	(OFST-2,sp)
 809  0090               L313:
 810                     ; 172   CAN_SelectPage(can_page);
 812  0090 7b01          	ld	a,(OFST-3,sp)
 813  0092 cd0000        	call	_CAN_SelectPage
 815                     ; 175   return (CAN_InitStatus_TypeDef)InitStatus;
 817  0095 7b02          	ld	a,(OFST-2,sp)
 820  0097 5b06          	addw	sp,#6
 821  0099 81            	ret	
 822  009a               L113:
 823                     ; 145     CAN->MCR |= (uint8_t)CAN_MasterCtrl;
 825  009a c65420        	ld	a,21536
 826  009d 1a05          	or	a,(OFST+1,sp)
 827  009f c75420        	ld	21536,a
 828                     ; 148     CAN->DGR |= (uint8_t)CAN_Mode ;
 830  00a2 c65426        	ld	a,21542
 831  00a5 1a06          	or	a,(OFST+2,sp)
 832  00a7 c75426        	ld	21542,a
 833                     ; 149     CAN->PSR = CAN_Page_Config;
 835  00aa 35065427      	mov	21543,#6
 836                     ; 150     CAN->Page.Config.BTR1 = (uint8_t)((uint8_t)(CAN_Prescaler - (uint8_t)1) | CAN_SynJumpWidth);
 838  00ae 7b0c          	ld	a,(OFST+8,sp)
 839  00b0 4a            	dec	a
 840  00b1 1a09          	or	a,(OFST+5,sp)
 841  00b3 c7542c        	ld	21548,a
 842                     ; 151     CAN->Page.Config.BTR2 = (uint8_t)(CAN_BitSeg1 | (uint8_t)CAN_BitSeg2);
 844  00b6 7b0a          	ld	a,(OFST+6,sp)
 845  00b8 1a0b          	or	a,(OFST+7,sp)
 846  00ba c7542d        	ld	21549,a
 847                     ; 154     CAN->MCR &= (uint8_t)(~CAN_MCR_INRQ);
 849  00bd 72115420      	bres	21536,#0
 850                     ; 156     timeout = 0xFFFF;
 852  00c1 aeffff        	ldw	x,#65535
 854  00c4 2001          	jra	L123
 855  00c6               L513:
 856                     ; 159       timeout--;
 858  00c6 5a            	decw	x
 859  00c7               L123:
 860  00c7 1f03          	ldw	(OFST-1,sp),x
 861                     ; 157     while ((((uint8_t)(CAN->MSR & CAN_MSR_INAK) == 0x01))&&(timeout != 0))
 863  00c9 7201542102    	btjf	21537,#0,L523
 865  00ce 26f6          	jrne	L513
 866  00d0               L523:
 867                     ; 162     if ((CAN->MSR & CAN_MSR_INAK) == CAN_MSR_INAK)
 869  00d0 7201542102    	btjf	21537,#0,L723
 870                     ; 164       InitStatus = CAN_InitStatus_Failed;
 872  00d5 20b7          	jp	LC001
 873  00d7               L723:
 874                     ; 168       InitStatus = CAN_InitStatus_Success;
 876  00d7 a601          	ld	a,#1
 877  00d9 6b02          	ld	(OFST-2,sp),a
 878  00db 20b3          	jra	L313
 880  00dd               LC002:
 881  00dd 89            	pushw	x
 882  00de 5f            	clrw	x
 883  00df 89            	pushw	x
 884  00e0 ae0008        	ldw	x,#L572
 885  00e3 cd0000        	call	_assert_failed
 887  00e6 5b04          	addw	sp,#4
 888  00e8 81            	ret	
1198                     ; 194 void CAN_FilterInit(CAN_FilterNumber_TypeDef CAN_FilterNumber,
1198                     ; 195                     FunctionalState CAN_FilterActivation,
1198                     ; 196                     CAN_FilterMode_TypeDef CAN_FilterMode,
1198                     ; 197                     CAN_FilterScale_TypeDef CAN_FilterScale,
1198                     ; 198                     uint8_t CAN_FilterID1,
1198                     ; 199                     uint8_t CAN_FilterID2,
1198                     ; 200                     uint8_t CAN_FilterID3,
1198                     ; 201                     uint8_t CAN_FilterID4,
1198                     ; 202                     uint8_t CAN_FilterIDMask1,
1198                     ; 203                     uint8_t CAN_FilterIDMask2,
1198                     ; 204                     uint8_t CAN_FilterIDMask3,
1198                     ; 205                     uint8_t CAN_FilterIDMask4)
1198                     ; 206 {
1199                     .text:	section	.text,new
1200  0000               _CAN_FilterInit:
1202  0000 89            	pushw	x
1203  0001 5205          	subw	sp,#5
1204       00000005      OFST:	set	5
1207                     ; 207   uint8_t fact = 0;
1209                     ; 208   uint8_t fsc  = 0;
1211                     ; 209   uint8_t fmhl = 0;
1213                     ; 211   CAN_Page_TypeDef can_page_filter = CAN_Page_Filter01;
1215                     ; 212   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
1217  0003 cd0000        	call	_CAN_GetSelectedPage
1219  0006 6b01          	ld	(OFST-4,sp),a
1220                     ; 215   assert_param(IS_CAN_FILTER_NUMBER_OK(CAN_FilterNumber));
1222  0008 7b06          	ld	a,(OFST+1,sp)
1223  000a 271a          	jreq	L601
1224  000c a101          	cp	a,#1
1225  000e 2716          	jreq	L601
1226  0010 a102          	cp	a,#2
1227  0012 2712          	jreq	L601
1228  0014 a103          	cp	a,#3
1229  0016 270e          	jreq	L601
1230  0018 a104          	cp	a,#4
1231  001a 270a          	jreq	L601
1232  001c a105          	cp	a,#5
1233  001e 2706          	jreq	L601
1234  0020 ae00d7        	ldw	x,#215
1235  0023 cd030c        	call	LC013
1236  0026               L601:
1237                     ; 216   assert_param(IS_FUNCTIONALSTATE_OK(CAN_FilterActivation));
1239  0026 7b07          	ld	a,(OFST+2,sp)
1240  0028 2709          	jreq	L611
1241  002a 4a            	dec	a
1242  002b 2706          	jreq	L611
1243  002d ae00d8        	ldw	x,#216
1244  0030 cd030c        	call	LC013
1245  0033               L611:
1246                     ; 217   assert_param(IS_CAN_FILTER_MODE_OK(CAN_FilterMode));
1248  0033 7b0a          	ld	a,(OFST+5,sp)
1249  0035 2711          	jreq	L621
1250  0037 a110          	cp	a,#16
1251  0039 270d          	jreq	L621
1252  003b a111          	cp	a,#17
1253  003d 2709          	jreq	L621
1254  003f 4a            	dec	a
1255  0040 2706          	jreq	L621
1256  0042 ae00d9        	ldw	x,#217
1257  0045 cd030c        	call	LC013
1258  0048               L621:
1259                     ; 218   assert_param(IS_CAN_FILTER_SCALE_OK(CAN_FilterScale));
1261  0048 7b0b          	ld	a,(OFST+6,sp)
1262  004a 2712          	jreq	L631
1263  004c a102          	cp	a,#2
1264  004e 270e          	jreq	L631
1265  0050 a104          	cp	a,#4
1266  0052 270a          	jreq	L631
1267  0054 a106          	cp	a,#6
1268  0056 2706          	jreq	L631
1269  0058 ae00da        	ldw	x,#218
1270  005b cd030c        	call	LC013
1271  005e               L631:
1272                     ; 221   if (CAN_FilterNumber == CAN_FilterNumber_0)
1274  005e 7b06          	ld	a,(OFST+1,sp)
1275  0060 260d          	jrne	L305
1276                     ; 223     fact = 0x01;
1278  0062 4c            	inc	a
1279  0063 6b03          	ld	(OFST-2,sp),a
1280                     ; 224     fsc  = 0x00;
1282  0065 0f04          	clr	(OFST-1,sp)
1283                     ; 225     fmhl = 0x03;
1285  0067 a603          	ld	a,#3
1286  0069 6b05          	ld	(OFST+0,sp),a
1287                     ; 227     can_page_filter = CAN_Page_Filter01;
1289  006b a602          	ld	a,#2
1291  006d 2059          	jra	L505
1292  006f               L305:
1293                     ; 229   else if (CAN_FilterNumber == CAN_FilterNumber_1)
1295  006f a101          	cp	a,#1
1296  0071 2610          	jrne	L705
1297                     ; 231     fact = 0x10;
1299  0073 a610          	ld	a,#16
1300  0075 6b03          	ld	(OFST-2,sp),a
1301                     ; 232     fsc  = 0x04;
1303  0077 a604          	ld	a,#4
1304  0079 6b04          	ld	(OFST-1,sp),a
1305                     ; 233     fmhl = 0x0C;
1307  007b a60c          	ld	a,#12
1308  007d 6b05          	ld	(OFST+0,sp),a
1309                     ; 235     can_page_filter = CAN_Page_Filter01;
1311  007f a602          	ld	a,#2
1313  0081 2045          	jra	L505
1314  0083               L705:
1315                     ; 237   else if (CAN_FilterNumber == CAN_FilterNumber_2)
1317  0083 a102          	cp	a,#2
1318  0085 260e          	jrne	L315
1319                     ; 239     fact = 0x01;
1321  0087 a601          	ld	a,#1
1322  0089 6b03          	ld	(OFST-2,sp),a
1323                     ; 240     fsc  = 0x00;
1325  008b 0f04          	clr	(OFST-1,sp)
1326                     ; 241     fmhl = 0x30;
1328  008d a630          	ld	a,#48
1329  008f 6b05          	ld	(OFST+0,sp),a
1330                     ; 243     can_page_filter = CAN_Page_Filter23;
1332  0091 a603          	ld	a,#3
1334  0093 2033          	jra	L505
1335  0095               L315:
1336                     ; 245   else if (CAN_FilterNumber == CAN_FilterNumber_3)
1338  0095 a103          	cp	a,#3
1339  0097 2610          	jrne	L715
1340                     ; 247     fact = 0x10;
1342  0099 a610          	ld	a,#16
1343  009b 6b03          	ld	(OFST-2,sp),a
1344                     ; 248     fsc  = 0x04;
1346  009d a604          	ld	a,#4
1347  009f 6b04          	ld	(OFST-1,sp),a
1348                     ; 249     fmhl = 0xC0;
1350  00a1 a6c0          	ld	a,#192
1351  00a3 6b05          	ld	(OFST+0,sp),a
1352                     ; 251     can_page_filter = CAN_Page_Filter23;
1354  00a5 a603          	ld	a,#3
1356  00a7 201f          	jra	L505
1357  00a9               L715:
1358                     ; 253   else if (CAN_FilterNumber == CAN_FilterNumber_4)
1360  00a9 a104          	cp	a,#4
1361  00ab 260d          	jrne	L325
1362                     ; 255     fact = 0x01;
1364  00ad a601          	ld	a,#1
1365  00af 6b03          	ld	(OFST-2,sp),a
1366                     ; 256     fsc  = 0x00;
1368  00b1 0f04          	clr	(OFST-1,sp)
1369                     ; 257     fmhl = 0x03;
1371  00b3 a603          	ld	a,#3
1372  00b5 6b05          	ld	(OFST+0,sp),a
1373                     ; 259     can_page_filter = CAN_Page_Filter45;
1375  00b7 4c            	inc	a
1377  00b8 200e          	jra	L505
1378  00ba               L325:
1379                     ; 263     fact = 0x10;
1381  00ba a610          	ld	a,#16
1382  00bc 6b03          	ld	(OFST-2,sp),a
1383                     ; 264     fsc  = 0x04;
1385  00be a604          	ld	a,#4
1386  00c0 6b04          	ld	(OFST-1,sp),a
1387                     ; 265     fmhl = 0x0C;
1389  00c2 a60c          	ld	a,#12
1390  00c4 6b05          	ld	(OFST+0,sp),a
1391                     ; 267     can_page_filter = CAN_Page_Filter45;
1393  00c6 a604          	ld	a,#4
1394  00c8               L505:
1395  00c8 6b02          	ld	(OFST-3,sp),a
1396                     ; 271   CAN_OperatingModeRequest(CAN_OperatingMode_Initialization);
1398  00ca 4f            	clr	a
1399  00cb cd0000        	call	_CAN_OperatingModeRequest
1401                     ; 273   CAN->PSR = CAN_Page_Config;
1403  00ce 35065427      	mov	21543,#6
1404                     ; 278   if (can_page_filter == CAN_Page_Filter01) /* FCR1 */
1406  00d2 7b02          	ld	a,(OFST-3,sp)
1407  00d4 a102          	cp	a,#2
1408  00d6 2629          	jrne	L725
1409                     ; 281     CAN->Page.Config.FCR1 &= (uint8_t)(~(uint8_t)(fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc )));
1411  00d8 7b04          	ld	a,(OFST-1,sp)
1412  00da cd0318        	call	LC014
1413  00dd 2704          	jreq	L441
1414  00df               L641:
1415  00df 48            	sll	a
1416  00e0 5a            	decw	x
1417  00e1 26fc          	jrne	L641
1418  00e3               L441:
1419  00e3 1a03          	or	a,(OFST-2,sp)
1420  00e5 43            	cpl	a
1421  00e6 c45432        	and	a,21554
1422  00e9 c75432        	ld	21554,a
1423                     ; 283     CAN->Page.Config.FCR1 |= (uint8_t)(CAN_FilterScale << fsc);
1425  00ec 7b04          	ld	a,(OFST-1,sp)
1426  00ee 5f            	clrw	x
1427  00ef 97            	ld	xl,a
1428  00f0 7b0b          	ld	a,(OFST+6,sp)
1429  00f2 5d            	tnzw	x
1430  00f3 2704          	jreq	L051
1431  00f5               L251:
1432  00f5 48            	sll	a
1433  00f6 5a            	decw	x
1434  00f7 26fc          	jrne	L251
1435  00f9               L051:
1436  00f9 ca5432        	or	a,21554
1437  00fc c75432        	ld	21554,a
1439  00ff 2054          	jra	L135
1440  0101               L725:
1441                     ; 285   else if (can_page_filter == CAN_Page_Filter23) /* FCR2*/
1443  0101 a103          	cp	a,#3
1444  0103 2629          	jrne	L335
1445                     ; 288     CAN->Page.Config.FCR2 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
1447  0105 7b04          	ld	a,(OFST-1,sp)
1448  0107 cd0318        	call	LC014
1449  010a 2704          	jreq	L451
1450  010c               L651:
1451  010c 48            	sll	a
1452  010d 5a            	decw	x
1453  010e 26fc          	jrne	L651
1454  0110               L451:
1455  0110 1a03          	or	a,(OFST-2,sp)
1456  0112 43            	cpl	a
1457  0113 c45433        	and	a,21555
1458  0116 c75433        	ld	21555,a
1459                     ; 291     CAN->Page.Config.FCR2 |= (uint8_t)(CAN_FilterScale << fsc);
1461  0119 7b04          	ld	a,(OFST-1,sp)
1462  011b 5f            	clrw	x
1463  011c 97            	ld	xl,a
1464  011d 7b0b          	ld	a,(OFST+6,sp)
1465  011f 5d            	tnzw	x
1466  0120 2704          	jreq	L061
1467  0122               L261:
1468  0122 48            	sll	a
1469  0123 5a            	decw	x
1470  0124 26fc          	jrne	L261
1471  0126               L061:
1472  0126 ca5433        	or	a,21555
1473  0129 c75433        	ld	21555,a
1475  012c 2027          	jra	L135
1476  012e               L335:
1477                     ; 297     CAN->Page.Config.FCR3 &= (uint8_t)~(uint8_t)( fact | (uint8_t)((uint8_t)(CAN_FCR1_FSC00|CAN_FCR1_FSC01) << fsc ));
1479  012e 7b04          	ld	a,(OFST-1,sp)
1480  0130 cd0318        	call	LC014
1481  0133 2704          	jreq	L461
1482  0135               L661:
1483  0135 48            	sll	a
1484  0136 5a            	decw	x
1485  0137 26fc          	jrne	L661
1486  0139               L461:
1487  0139 1a03          	or	a,(OFST-2,sp)
1488  013b 43            	cpl	a
1489  013c c45434        	and	a,21556
1490  013f c75434        	ld	21556,a
1491                     ; 300     CAN->Page.Config.FCR3 |= (uint8_t)(CAN_FilterScale << fsc);
1493  0142 7b04          	ld	a,(OFST-1,sp)
1494  0144 5f            	clrw	x
1495  0145 97            	ld	xl,a
1496  0146 7b0b          	ld	a,(OFST+6,sp)
1497  0148 5d            	tnzw	x
1498  0149 2704          	jreq	L071
1499  014b               L271:
1500  014b 48            	sll	a
1501  014c 5a            	decw	x
1502  014d 26fc          	jrne	L271
1503  014f               L071:
1504  014f ca5434        	or	a,21556
1505  0152 c75434        	ld	21556,a
1506  0155               L135:
1507                     ; 306   if (can_page_filter != CAN_Page_Filter45) /* FMR1*/
1509  0155 7b02          	ld	a,(OFST-3,sp)
1510  0157 a104          	cp	a,#4
1511  0159 272d          	jreq	L735
1512                     ; 309     if (CAN_FilterMode == CAN_FilterMode_IdMask)
1514  015b 7b0a          	ld	a,(OFST+5,sp)
1515  015d 2608          	jrne	L145
1516                     ; 312       CAN->Page.Config.FMR1 &= (uint8_t)~(fmhl);
1518  015f 7b05          	ld	a,(OFST+0,sp)
1519  0161 43            	cpl	a
1520  0162 c45430        	and	a,21552
1522  0165 201c          	jp	LC005
1523  0167               L145:
1524                     ; 314     else if ( CAN_FilterMode == CAN_FilterMode_IdList)
1526  0167 a101          	cp	a,#1
1527  0169 2607          	jrne	L545
1528                     ; 317       CAN->Page.Config.FMR1 |= (uint8_t)(fmhl);
1530  016b c65430        	ld	a,21552
1531  016e 1a05          	or	a,(OFST+0,sp)
1533  0170 2011          	jp	LC005
1534  0172               L545:
1535                     ; 319     else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
1537  0172 a111          	cp	a,#17
1538  0174 2606          	jrne	L155
1539                     ; 322       CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
1541  0176 7b05          	ld	a,(OFST+0,sp)
1542  0178 a455          	and	a,#85
1544  017a 2004          	jp	LC006
1545  017c               L155:
1546                     ; 327       CAN->Page.Config.FMR1 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
1548  017c 7b05          	ld	a,(OFST+0,sp)
1549  017e a4aa          	and	a,#170
1550  0180               LC006:
1551  0180 ca5430        	or	a,21552
1552  0183               LC005:
1553  0183 c75430        	ld	21552,a
1554  0186 202b          	jra	L555
1555  0188               L735:
1556                     ; 336     if (CAN_FilterMode == CAN_FilterMode_IdMask)
1558  0188 7b0a          	ld	a,(OFST+5,sp)
1559  018a 2608          	jrne	L755
1560                     ; 339       CAN->Page.Config.FMR2 &= (uint8_t)~(fmhl);
1562  018c 7b05          	ld	a,(OFST+0,sp)
1563  018e 43            	cpl	a
1564  018f c45431        	and	a,21553
1566  0192 201c          	jp	LC003
1567  0194               L755:
1568                     ; 341     else if ( CAN_FilterMode == CAN_FilterMode_IdList)
1570  0194 a101          	cp	a,#1
1571  0196 2607          	jrne	L365
1572                     ; 344       CAN->Page.Config.FMR2 |= (uint8_t)(fmhl);
1574  0198 c65431        	ld	a,21553
1575  019b 1a05          	or	a,(OFST+0,sp)
1577  019d 2011          	jp	LC003
1578  019f               L365:
1579                     ; 346     else if ( CAN_FilterMode == CAN_FilterMode_IdList_IdMask)
1581  019f a111          	cp	a,#17
1582  01a1 2606          	jrne	L765
1583                     ; 349       CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDLIST_IDMASK_MASK);
1585  01a3 7b05          	ld	a,(OFST+0,sp)
1586  01a5 a455          	and	a,#85
1588  01a7 2004          	jp	LC004
1589  01a9               L765:
1590                     ; 354       CAN->Page.Config.FMR2 |= (uint8_t)(fmhl & CAN_IDMASK_IDLIST_MASK);
1592  01a9 7b05          	ld	a,(OFST+0,sp)
1593  01ab a4aa          	and	a,#170
1594  01ad               LC004:
1595  01ad ca5431        	or	a,21553
1596  01b0               LC003:
1597  01b0 c75431        	ld	21553,a
1598  01b3               L555:
1599                     ; 360   CAN->PSR = (uint8_t)can_page_filter;
1601  01b3 7b02          	ld	a,(OFST-3,sp)
1602  01b5 c75427        	ld	21543,a
1603                     ; 361   if (fsc != 0)
1605  01b8 7b04          	ld	a,(OFST-1,sp)
1606  01ba 2603cc024a    	jreq	L375
1607                     ; 364     if (CAN_FilterScale == CAN_FilterScale_8Bit)
1609  01bf 7b0b          	ld	a,(OFST+6,sp)
1610  01c1 260e          	jrne	L575
1611                     ; 366       CAN->Page.Filter.FR09 = CAN_FilterID1;
1613  01c3 7b0c          	ld	a,(OFST+7,sp)
1614  01c5 c75430        	ld	21552,a
1615                     ; 367       CAN->Page.Filter.FR10 = CAN_FilterIDMask1;
1617  01c8 7b10          	ld	a,(OFST+11,sp)
1618  01ca c75431        	ld	21553,a
1619                     ; 368       CAN->Page.Filter.FR11 = CAN_FilterID2;
1621  01cd 7b0d          	ld	a,(OFST+8,sp)
1622                     ; 369       CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1623                     ; 370       CAN->Page.Filter.FR13 = CAN_FilterID3;
1624                     ; 371       CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
1625                     ; 372       CAN->Page.Filter.FR15 = CAN_FilterID4;
1626                     ; 373       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1628  01cf 2010          	jp	LC012
1629  01d1               L575:
1630                     ; 375     else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
1632  01d1 a102          	cp	a,#2
1633  01d3 2622          	jrne	L106
1634                     ; 377       CAN->Page.Filter.FR09 = CAN_FilterID1;
1636  01d5 7b0c          	ld	a,(OFST+7,sp)
1637  01d7 c75430        	ld	21552,a
1638                     ; 378       CAN->Page.Filter.FR10 = CAN_FilterID2;
1640  01da 7b0d          	ld	a,(OFST+8,sp)
1641  01dc c75431        	ld	21553,a
1642                     ; 379       CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
1644  01df 7b10          	ld	a,(OFST+11,sp)
1645                     ; 380       CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1647                     ; 381       CAN->Page.Filter.FR13 = CAN_FilterID3;
1649                     ; 382       CAN->Page.Filter.FR14 = CAN_FilterIDMask3;
1651                     ; 383       CAN->Page.Filter.FR15 = CAN_FilterID4;
1653  01e1               LC012:
1654  01e1 c75432        	ld	21554,a
1656  01e4 7b11          	ld	a,(OFST+12,sp)
1657  01e6 c75433        	ld	21555,a
1659  01e9 7b0e          	ld	a,(OFST+9,sp)
1660  01eb c75434        	ld	21556,a
1662  01ee 7b12          	ld	a,(OFST+13,sp)
1663  01f0 c75435        	ld	21557,a
1665  01f3 7b0f          	ld	a,(OFST+10,sp)
1666                     ; 384       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1668  01f5 2048          	jp	LC010
1669  01f7               L106:
1670                     ; 386     else if (CAN_FilterScale == CAN_FilterScale_16Bit)
1672  01f7 a104          	cp	a,#4
1673  01f9 261d          	jrne	L506
1674                     ; 388       CAN->Page.Filter.FR09 = CAN_FilterID1;
1676  01fb 7b0c          	ld	a,(OFST+7,sp)
1677  01fd c75430        	ld	21552,a
1678                     ; 389       CAN->Page.Filter.FR10 = CAN_FilterID2;
1680  0200 7b0d          	ld	a,(OFST+8,sp)
1681  0202 c75431        	ld	21553,a
1682                     ; 390       CAN->Page.Filter.FR11 = CAN_FilterIDMask1;
1684  0205 7b10          	ld	a,(OFST+11,sp)
1685  0207 c75432        	ld	21554,a
1686                     ; 391       CAN->Page.Filter.FR12 = CAN_FilterIDMask2;
1688  020a 7b11          	ld	a,(OFST+12,sp)
1689  020c c75433        	ld	21555,a
1690                     ; 392       CAN->Page.Filter.FR13 = CAN_FilterID3;
1692  020f 7b0e          	ld	a,(OFST+9,sp)
1693  0211 c75434        	ld	21556,a
1694                     ; 393       CAN->Page.Filter.FR14 = CAN_FilterID4;
1696  0214 7b0f          	ld	a,(OFST+10,sp)
1697                     ; 394       CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
1698                     ; 395       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1700  0216 2022          	jp	LC011
1701  0218               L506:
1702                     ; 397     else if (CAN_FilterScale == CAN_FilterScale_32Bit)
1704  0218 a106          	cp	a,#6
1705  021a 2703cc02cf    	jrne	L316
1706                     ; 399       CAN->Page.Filter.FR09 = CAN_FilterID1;
1708  021f 7b0c          	ld	a,(OFST+7,sp)
1709  0221 c75430        	ld	21552,a
1710                     ; 400       CAN->Page.Filter.FR10 = CAN_FilterID2;
1712  0224 7b0d          	ld	a,(OFST+8,sp)
1713  0226 c75431        	ld	21553,a
1714                     ; 401       CAN->Page.Filter.FR11 = CAN_FilterID3;
1716  0229 7b0e          	ld	a,(OFST+9,sp)
1717  022b c75432        	ld	21554,a
1718                     ; 402       CAN->Page.Filter.FR12 = CAN_FilterID4;
1720  022e 7b0f          	ld	a,(OFST+10,sp)
1721  0230 c75433        	ld	21555,a
1722                     ; 403       CAN->Page.Filter.FR13 = CAN_FilterIDMask1;
1724  0233 7b10          	ld	a,(OFST+11,sp)
1725  0235 c75434        	ld	21556,a
1726                     ; 404       CAN->Page.Filter.FR14 = CAN_FilterIDMask2;
1728  0238 7b11          	ld	a,(OFST+12,sp)
1729                     ; 405       CAN->Page.Filter.FR15 = CAN_FilterIDMask3;
1731  023a               LC011:
1732  023a c75435        	ld	21557,a
1734  023d 7b12          	ld	a,(OFST+13,sp)
1735                     ; 406       CAN->Page.Filter.FR16 = CAN_FilterIDMask4;
1737  023f               LC010:
1738  023f c75436        	ld	21558,a
1742  0242 7b13          	ld	a,(OFST+14,sp)
1743  0244 c75437        	ld	21559,a
1744  0247 cc02cf        	jra	L316
1745  024a               L375:
1746                     ; 412     if (CAN_FilterScale == CAN_FilterScale_8Bit)
1748  024a 7b0b          	ld	a,(OFST+6,sp)
1749  024c 260e          	jrne	L516
1750                     ; 414       CAN->Page.Filter.FR01 = CAN_FilterID1;
1752  024e 7b0c          	ld	a,(OFST+7,sp)
1753  0250 c75428        	ld	21544,a
1754                     ; 415       CAN->Page.Filter.FR02 = CAN_FilterIDMask1;
1756  0253 7b10          	ld	a,(OFST+11,sp)
1757  0255 c75429        	ld	21545,a
1758                     ; 416       CAN->Page.Filter.FR03 = CAN_FilterID2;
1760  0258 7b0d          	ld	a,(OFST+8,sp)
1761                     ; 417       CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1762                     ; 418       CAN->Page.Filter.FR05 = CAN_FilterID3;
1763                     ; 419       CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
1764                     ; 420       CAN->Page.Filter.FR07 = CAN_FilterID4;
1765                     ; 421       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1767  025a 2010          	jp	LC009
1768  025c               L516:
1769                     ; 423     else if (CAN_FilterScale == CAN_FilterScale_16_8Bit)
1771  025c a102          	cp	a,#2
1772  025e 2622          	jrne	L126
1773                     ; 425       CAN->Page.Filter.FR01 = CAN_FilterID1;
1775  0260 7b0c          	ld	a,(OFST+7,sp)
1776  0262 c75428        	ld	21544,a
1777                     ; 426       CAN->Page.Filter.FR02 = CAN_FilterID2;
1779  0265 7b0d          	ld	a,(OFST+8,sp)
1780  0267 c75429        	ld	21545,a
1781                     ; 427       CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
1783  026a 7b10          	ld	a,(OFST+11,sp)
1784                     ; 428       CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1786                     ; 429       CAN->Page.Filter.FR05 = CAN_FilterID3;
1788                     ; 430       CAN->Page.Filter.FR06 = CAN_FilterIDMask3;
1790                     ; 431       CAN->Page.Filter.FR07 = CAN_FilterID4;
1792  026c               LC009:
1793  026c c7542a        	ld	21546,a
1795  026f 7b11          	ld	a,(OFST+12,sp)
1796  0271 c7542b        	ld	21547,a
1798  0274 7b0e          	ld	a,(OFST+9,sp)
1799  0276 c7542c        	ld	21548,a
1801  0279 7b12          	ld	a,(OFST+13,sp)
1802  027b c7542d        	ld	21549,a
1804  027e 7b0f          	ld	a,(OFST+10,sp)
1805                     ; 432       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1807  0280 2045          	jp	LC007
1808  0282               L126:
1809                     ; 434     else if (CAN_FilterScale == CAN_FilterScale_16Bit)
1811  0282 a104          	cp	a,#4
1812  0284 261d          	jrne	L526
1813                     ; 436       CAN->Page.Filter.FR01 = CAN_FilterID1;
1815  0286 7b0c          	ld	a,(OFST+7,sp)
1816  0288 c75428        	ld	21544,a
1817                     ; 437       CAN->Page.Filter.FR02 = CAN_FilterID2;
1819  028b 7b0d          	ld	a,(OFST+8,sp)
1820  028d c75429        	ld	21545,a
1821                     ; 438       CAN->Page.Filter.FR03 = CAN_FilterIDMask1;
1823  0290 7b10          	ld	a,(OFST+11,sp)
1824  0292 c7542a        	ld	21546,a
1825                     ; 439       CAN->Page.Filter.FR04 = CAN_FilterIDMask2;
1827  0295 7b11          	ld	a,(OFST+12,sp)
1828  0297 c7542b        	ld	21547,a
1829                     ; 440       CAN->Page.Filter.FR05 = CAN_FilterID3;
1831  029a 7b0e          	ld	a,(OFST+9,sp)
1832  029c c7542c        	ld	21548,a
1833                     ; 441       CAN->Page.Filter.FR06 = CAN_FilterID4;
1835  029f 7b0f          	ld	a,(OFST+10,sp)
1836                     ; 442       CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
1837                     ; 443       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1839  02a1 201f          	jp	LC008
1840  02a3               L526:
1841                     ; 445     else if (CAN_FilterScale == CAN_FilterScale_32Bit)
1843  02a3 a106          	cp	a,#6
1844  02a5 2628          	jrne	L316
1845                     ; 447       CAN->Page.Filter.FR01 = CAN_FilterID1;
1847  02a7 7b0c          	ld	a,(OFST+7,sp)
1848  02a9 c75428        	ld	21544,a
1849                     ; 448       CAN->Page.Filter.FR02 = CAN_FilterID2;
1851  02ac 7b0d          	ld	a,(OFST+8,sp)
1852  02ae c75429        	ld	21545,a
1853                     ; 449       CAN->Page.Filter.FR03 = CAN_FilterID3;
1855  02b1 7b0e          	ld	a,(OFST+9,sp)
1856  02b3 c7542a        	ld	21546,a
1857                     ; 450       CAN->Page.Filter.FR04 = CAN_FilterID4;
1859  02b6 7b0f          	ld	a,(OFST+10,sp)
1860  02b8 c7542b        	ld	21547,a
1861                     ; 451       CAN->Page.Filter.FR05 = CAN_FilterIDMask1;
1863  02bb 7b10          	ld	a,(OFST+11,sp)
1864  02bd c7542c        	ld	21548,a
1865                     ; 452       CAN->Page.Filter.FR06 = CAN_FilterIDMask2;
1867  02c0 7b11          	ld	a,(OFST+12,sp)
1868                     ; 453       CAN->Page.Filter.FR07 = CAN_FilterIDMask3;
1870  02c2               LC008:
1871  02c2 c7542d        	ld	21549,a
1873  02c5 7b12          	ld	a,(OFST+13,sp)
1874                     ; 454       CAN->Page.Filter.FR08 = CAN_FilterIDMask4;
1876  02c7               LC007:
1877  02c7 c7542e        	ld	21550,a
1881  02ca 7b13          	ld	a,(OFST+14,sp)
1882  02cc c7542f        	ld	21551,a
1883  02cf               L316:
1884                     ; 463   CAN->PSR = CAN_Page_Config;
1886  02cf 35065427      	mov	21543,#6
1887                     ; 464   if (CAN_FilterActivation != DISABLE)
1889  02d3 7b07          	ld	a,(OFST+2,sp)
1890  02d5 2728          	jreq	L336
1891                     ; 466     if ((CAN_FilterNumber & 0x06) == 0x00) /* FCR1*/
1893  02d7 7b06          	ld	a,(OFST+1,sp)
1894  02d9 a506          	bcp	a,#6
1895  02db 260a          	jrne	L536
1896                     ; 467     {   CAN->Page.Config.FCR1 |= (uint8_t)fact;
1898  02dd c65432        	ld	a,21554
1899  02e0 1a03          	or	a,(OFST-2,sp)
1900  02e2 c75432        	ld	21554,a
1902  02e5 2018          	jra	L336
1903  02e7               L536:
1904                     ; 469     else if ((CAN_FilterNumber & 0x06) == 0x02) /*FCR2*/
1906  02e7 a406          	and	a,#6
1907  02e9 a102          	cp	a,#2
1908  02eb 260a          	jrne	L146
1909                     ; 470     { CAN->Page.Config.FCR2 |= (uint8_t)fact;
1911  02ed c65433        	ld	a,21555
1912  02f0 1a03          	or	a,(OFST-2,sp)
1913  02f2 c75433        	ld	21555,a
1915  02f5 2008          	jra	L336
1916  02f7               L146:
1917                     ; 473     { CAN->Page.Config.FCR3 |= (uint8_t)fact;
1919  02f7 c65434        	ld	a,21556
1920  02fa 1a03          	or	a,(OFST-2,sp)
1921  02fc c75434        	ld	21556,a
1922  02ff               L336:
1923                     ; 476   CAN_OperatingModeRequest(CAN_OperatingMode_Normal);
1925  02ff a601          	ld	a,#1
1926  0301 cd0000        	call	_CAN_OperatingModeRequest
1928                     ; 478   CAN_SelectPage(can_page);
1930  0304 7b01          	ld	a,(OFST-4,sp)
1931  0306 cd0000        	call	_CAN_SelectPage
1933                     ; 479 }
1936  0309 5b07          	addw	sp,#7
1937  030b 81            	ret	
1939  030c               LC013:
1940  030c 89            	pushw	x
1941  030d 5f            	clrw	x
1942  030e 89            	pushw	x
1943  030f ae0008        	ldw	x,#L572
1944  0312 cd0000        	call	_assert_failed
1946  0315 5b04          	addw	sp,#4
1947  0317 81            	ret	
1948  0318               LC014:
1949  0318 5f            	clrw	x
1950  0319 97            	ld	xl,a
1951  031a a606          	ld	a,#6
1952  031c 5d            	tnzw	x
1953  031d 81            	ret	
2093                     ; 487 void CAN_ITConfig(CAN_IT_TypeDef CAN_IT, FunctionalState NewState)
2093                     ; 488 {
2094                     .text:	section	.text,new
2095  0000               _CAN_ITConfig:
2097  0000 89            	pushw	x
2098  0001 5203          	subw	sp,#3
2099       00000003      OFST:	set	3
2102                     ; 489   uint8_t tmperrorinterrupt = 0;
2104                     ; 490   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2106  0003 cd0000        	call	_CAN_GetSelectedPage
2108  0006 6b02          	ld	(OFST-1,sp),a
2109                     ; 494   assert_param(IS_CAN_IT_CONFIG_OK(CAN_IT));
2111  0008 1e04          	ldw	x,(OFST+1,sp)
2112  000a 270a          	jreq	L402
2113  000c 01            	rrwa	x,a
2114  000d a470          	and	a,#112
2115  000f 01            	rrwa	x,a
2116  0010 a4b0          	and	a,#176
2117  0012 01            	rrwa	x,a
2118  0013 5d            	tnzw	x
2119  0014 2705          	jreq	L602
2120  0016               L402:
2121  0016 ae01ee        	ldw	x,#494
2122  0019 ad55          	call	LC015
2123  001b               L602:
2124                     ; 495   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2126  001b 7b08          	ld	a,(OFST+5,sp)
2127  001d 2708          	jreq	L612
2128  001f 4a            	dec	a
2129  0020 2705          	jreq	L612
2130  0022 ae01ef        	ldw	x,#495
2131  0025 ad49          	call	LC015
2132  0027               L612:
2133                     ; 497   tmperrorinterrupt = (uint8_t)(((uint16_t)CAN_IT) >>7);
2135  0027 1e04          	ldw	x,(OFST+1,sp)
2136  0029 a607          	ld	a,#7
2137  002b               L222:
2138  002b 54            	srlw	x
2139  002c 4a            	dec	a
2140  002d 26fc          	jrne	L222
2141  002f 9f            	ld	a,xl
2142  0030 6b03          	ld	(OFST+0,sp),a
2143                     ; 498   tmperrorinterrupt = (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0xF0) | 
2143                     ; 499                                 (uint8_t)((uint8_t)((uint16_t)tmperrorinterrupt & 0x0F) >>1));
2145  0032 a40f          	and	a,#15
2146  0034 44            	srl	a
2147  0035 6b01          	ld	(OFST-2,sp),a
2148  0037 7b03          	ld	a,(OFST+0,sp)
2149  0039 a4f0          	and	a,#240
2150  003b 1a01          	or	a,(OFST-2,sp)
2151  003d 6b03          	ld	(OFST+0,sp),a
2152                     ; 501   CAN->PSR = CAN_Page_Config;
2154  003f 35065427      	mov	21543,#6
2155                     ; 502   if (NewState != DISABLE)
2157  0043 7b08          	ld	a,(OFST+5,sp)
2158  0045 270f          	jreq	L527
2159                     ; 505     CAN->IER |= (uint8_t)(CAN_IT);
2161  0047 c65425        	ld	a,21541
2162  004a 1a05          	or	a,(OFST+2,sp)
2163  004c c75425        	ld	21541,a
2164                     ; 506     CAN->Page.Config.EIER |= (uint8_t)(tmperrorinterrupt);
2166  004f c65429        	ld	a,21545
2167  0052 1a03          	or	a,(OFST+0,sp)
2169  0054 200f          	jra	L727
2170  0056               L527:
2171                     ; 511     CAN->IER &= (uint8_t)~(uint8_t)((uint16_t)CAN_IT);
2173  0056 7b05          	ld	a,(OFST+2,sp)
2174  0058 43            	cpl	a
2175  0059 c45425        	and	a,21541
2176  005c c75425        	ld	21541,a
2177                     ; 512     CAN->Page.Config.EIER &= (uint8_t)~(tmperrorinterrupt);
2179  005f 7b03          	ld	a,(OFST+0,sp)
2180  0061 43            	cpl	a
2181  0062 c45429        	and	a,21545
2182  0065               L727:
2183  0065 c75429        	ld	21545,a
2184                     ; 515   CAN_SelectPage(can_page);
2186  0068 7b02          	ld	a,(OFST-1,sp)
2187  006a cd0000        	call	_CAN_SelectPage
2189                     ; 516 }
2192  006d 5b05          	addw	sp,#5
2193  006f 81            	ret	
2195  0070               LC015:
2196  0070 89            	pushw	x
2197  0071 5f            	clrw	x
2198  0072 89            	pushw	x
2199  0073 ae0008        	ldw	x,#L572
2200  0076 cd0000        	call	_assert_failed
2202  0079 5b04          	addw	sp,#4
2203  007b 81            	ret	
2262                     ; 525 void CAN_ST7CompatibilityCmd(CAN_ST7Compatibility_TypeDef CAN_ST7Compatibility)
2262                     ; 526 {
2263                     .text:	section	.text,new
2264  0000               _CAN_ST7CompatibilityCmd:
2266  0000 88            	push	a
2267       00000000      OFST:	set	0
2270                     ; 528   assert_param(IS_CAN_ST7_COMPATIBILITY_OK(CAN_ST7Compatibility));
2272  0001 4d            	tnz	a
2273  0002 2712          	jreq	L432
2274  0004 a110          	cp	a,#16
2275  0006 270e          	jreq	L432
2276  0008 ae0210        	ldw	x,#528
2277  000b 89            	pushw	x
2278  000c 5f            	clrw	x
2279  000d 89            	pushw	x
2280  000e ae0008        	ldw	x,#L572
2281  0011 cd0000        	call	_assert_failed
2283  0014 5b04          	addw	sp,#4
2284  0016               L432:
2285                     ; 530   CAN->DGR &= (uint8_t)(~CAN_DGR_TXM2E);
2287  0016 72195426      	bres	21542,#4
2288                     ; 533   CAN->DGR |= (uint8_t)CAN_ST7Compatibility;
2290  001a c65426        	ld	a,21542
2291  001d 1a01          	or	a,(OFST+1,sp)
2292  001f c75426        	ld	21542,a
2293                     ; 534 }
2296  0022 84            	pop	a
2297  0023 81            	ret	
2345                     ; 541 void CAN_TTComModeCmd(FunctionalState NewState)
2345                     ; 542 {
2346                     .text:	section	.text,new
2347  0000               _CAN_TTComModeCmd:
2349  0000 88            	push	a
2350  0001 88            	push	a
2351       00000001      OFST:	set	1
2354                     ; 543   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2356  0002 cd0000        	call	_CAN_GetSelectedPage
2358  0005 6b01          	ld	(OFST+0,sp),a
2359                     ; 545   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
2361  0007 7b02          	ld	a,(OFST+1,sp)
2362  0009 2711          	jreq	L052
2363  000b 4a            	dec	a
2364  000c 270e          	jreq	L052
2365  000e ae0221        	ldw	x,#545
2366  0011 89            	pushw	x
2367  0012 5f            	clrw	x
2368  0013 89            	pushw	x
2369  0014 ae0008        	ldw	x,#L572
2370  0017 cd0000        	call	_assert_failed
2372  001a 5b04          	addw	sp,#4
2373  001c               L052:
2374                     ; 546   if (NewState != DISABLE)
2376  001c 7b02          	ld	a,(OFST+1,sp)
2377  001e 2726          	jreq	L1001
2378                     ; 549     CAN->MCR |= CAN_MCR_TTCM;
2380  0020 721e5420      	bset	21536,#7
2381                     ; 551     CAN->PSR = CAN_Page_TxMailBox0;
2383  0024 725f5427      	clr	21543
2384                     ; 552     CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2386  0028 721e5429      	bset	21545,#7
2387                     ; 553     CAN->PSR = CAN_Page_TxMailBox1;
2389  002c 35015427      	mov	21543,#1
2390                     ; 554     CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2392  0030 721e5429      	bset	21545,#7
2393                     ; 555     CAN->PSR = CAN_Page_TxMailBox2;
2395  0034 35055427      	mov	21543,#5
2396                     ; 556     CAN->Page.TxMailbox.MDLCR |= CAN_MDLCR_TGT;
2398  0038 721e5429      	bset	21545,#7
2399                     ; 557     CAN->PSR = CAN_Page_RxFifo;
2401  003c 35075427      	mov	21543,#7
2402                     ; 558     CAN->Page.RxFIFO.MDLCR |= CAN_MDLCR_TGT;
2404  0040 721e5429      	bset	21545,#7
2406  0044 2023          	jra	L3001
2407  0046               L1001:
2408                     ; 563     CAN->MCR &= ((uint8_t)~CAN_MCR_TTCM);
2410  0046 721f5420      	bres	21536,#7
2411                     ; 565     CAN->PSR = CAN_Page_TxMailBox0;
2413  004a c75427        	ld	21543,a
2414                     ; 566     CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2416  004d 721f5429      	bres	21545,#7
2417                     ; 567     CAN->PSR = CAN_Page_TxMailBox1;
2419  0051 35015427      	mov	21543,#1
2420                     ; 568     CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2422  0055 721f5429      	bres	21545,#7
2423                     ; 569     CAN->PSR = CAN_Page_TxMailBox2;
2425  0059 35055427      	mov	21543,#5
2426                     ; 570     CAN->Page.TxMailbox.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2428  005d 721f5429      	bres	21545,#7
2429                     ; 571     CAN->PSR = CAN_Page_RxFifo;
2431  0061 35075427      	mov	21543,#7
2432                     ; 572     CAN->Page.RxFIFO.MDLCR &= ((uint8_t)~CAN_MDLCR_TGT);
2434  0065 721f5429      	bres	21545,#7
2435  0069               L3001:
2436                     ; 575   CAN_SelectPage(can_page);
2438  0069 7b01          	ld	a,(OFST+0,sp)
2439  006b cd0000        	call	_CAN_SelectPage
2441                     ; 576 }
2444  006e 85            	popw	x
2445  006f 81            	ret	
2647                     .const:	section	.text
2648  0000               L472:
2649  0000 20000000      	dc.l	536870912
2650  0004               L403:
2651  0004 00000800      	dc.l	2048
2652                     ; 587 CAN_TxStatus_TypeDef CAN_Transmit(uint32_t CAN_Id,
2652                     ; 588                                   CAN_Id_TypeDef CAN_IDE,
2652                     ; 589                                   CAN_RTR_TypeDef CAN_RTR,
2652                     ; 590                                   uint8_t CAN_DLC,
2652                     ; 591                                   uint8_t *CAN_Data)
2652                     ; 592 {
2653                     .text:	section	.text,new
2654  0000               _CAN_Transmit:
2656  0000 5206          	subw	sp,#6
2657       00000006      OFST:	set	6
2660                     ; 593   CAN_TxStatus_TypeDef CAN_TxStatus = CAN_TxStatus_NoMailBox;
2662                     ; 594   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
2664  0002 cd0000        	call	_CAN_GetSelectedPage
2666  0005 6b05          	ld	(OFST-1,sp),a
2667                     ; 596   assert_param(IS_CAN_IDTYPE_OK(CAN_IDE));
2669  0007 7b0d          	ld	a,(OFST+7,sp)
2670  0009 270a          	jreq	L662
2671  000b a140          	cp	a,#64
2672  000d 2706          	jreq	L662
2673  000f ae0254        	ldw	x,#596
2674  0012 cd0130        	call	LC018
2675  0015               L662:
2676                     ; 597   if (CAN_IDE != CAN_Id_Standard)
2678  0015 0d0d          	tnz	(OFST+7,sp)
2679  0017 96            	ldw	x,sp
2680  0018 2713          	jreq	L3111
2681                     ; 599     assert_param(IS_CAN_EXTID_OK(CAN_Id));
2683  001a 1c0009        	addw	x,#OFST+3
2684  001d cd0000        	call	c_ltor
2686  0020 ae0000        	ldw	x,#L472
2687  0023 cd0000        	call	c_lcmp
2689  0026 2519          	jrult	L603
2690  0028 ae0257        	ldw	x,#599
2693  002b 2011          	jp	LC016
2694  002d               L3111:
2695                     ; 603     assert_param(IS_CAN_STDID_OK(CAN_Id));
2697  002d 1c0009        	addw	x,#OFST+3
2698  0030 cd0000        	call	c_ltor
2700  0033 ae0004        	ldw	x,#L403
2701  0036 cd0000        	call	c_lcmp
2703  0039 2506          	jrult	L603
2704  003b ae025b        	ldw	x,#603
2706  003e               LC016:
2707  003e cd0130        	call	LC018
2708  0041               L603:
2709                     ; 605   assert_param(IS_CAN_RTR_OK(CAN_RTR));
2711  0041 7b0e          	ld	a,(OFST+8,sp)
2712  0043 270a          	jreq	L613
2713  0045 a120          	cp	a,#32
2714  0047 2706          	jreq	L613
2715  0049 ae025d        	ldw	x,#605
2716  004c cd0130        	call	LC018
2717  004f               L613:
2718                     ; 606   assert_param(IS_CAN_DLC_OK(CAN_DLC));
2720  004f 7b0f          	ld	a,(OFST+9,sp)
2721  0051 a109          	cp	a,#9
2722  0053 2506          	jrult	L423
2723  0055 ae025e        	ldw	x,#606
2724  0058 cd0130        	call	LC018
2725  005b               L423:
2726                     ; 608   if ((CAN->TPR & CAN_TPR_TME0) == CAN_TPR_TME0)
2728  005b 7205542303    	btjf	21539,#2,L7111
2729                     ; 610     CAN_TxStatus = CAN_TxStatus_MailBox0Ok;
2731  0060 4f            	clr	a
2733  0061 2014          	jra	LC017
2734  0063               L7111:
2735                     ; 612   else if ((CAN->TPR & CAN_TPR_TME1) == CAN_TPR_TME1)
2737  0063 7207542304    	btjf	21539,#3,L3211
2738                     ; 614     CAN_TxStatus = CAN_TxStatus_MailBox1Ok;
2740  0068 a601          	ld	a,#1
2742  006a 200b          	jp	LC017
2743  006c               L3211:
2744                     ; 616   else if ((CAN->TPR & CAN_TPR_TME2) == CAN_TPR_TME2)
2746  006c 7209542304    	btjf	21539,#4,L7211
2747                     ; 618     CAN_TxStatus = CAN_TxStatus_MailBox2Ok;
2749  0071 a605          	ld	a,#5
2751  0073 2002          	jp	LC017
2752  0075               L7211:
2753                     ; 622     CAN_TxStatus = CAN_TxStatus_NoMailBox;
2755  0075 a6f4          	ld	a,#244
2756  0077               LC017:
2757  0077 6b06          	ld	(OFST+0,sp),a
2758                     ; 624   if (CAN_TxStatus != CAN_TxStatus_NoMailBox)
2760  0079 a1f4          	cp	a,#244
2761  007b 2603cc0126    	jreq	L3311
2762                     ; 626     CAN->PSR = (uint8_t)CAN_TxStatus;
2764  0080 c75427        	ld	21543,a
2765                     ; 628     if (CAN_IDE != CAN_Id_Standard)
2767  0083 7b0d          	ld	a,(OFST+7,sp)
2768  0085 272c          	jreq	L5311
2769                     ; 630       CAN_Id &= (uint32_t)CAN_EXTID_SIZE;
2771  0087 7b09          	ld	a,(OFST+3,sp)
2772  0089 a41f          	and	a,#31
2773  008b 6b09          	ld	(OFST+3,sp),a
2774                     ; 631       CAN->Page.TxMailbox.MIDR4 = (uint8_t)(CAN_Id);
2776  008d 7b0c          	ld	a,(OFST+6,sp)
2777  008f c7542d        	ld	21549,a
2778                     ; 632       CAN_Id = CAN_Id>>8;
2780  0092 96            	ldw	x,sp
2781  0093 cd013c        	call	LC019
2783                     ; 633       CAN->Page.TxMailbox.MIDR3 = (uint8_t)(CAN_Id);
2785  0096 7b0c          	ld	a,(OFST+6,sp)
2786  0098 c7542c        	ld	21548,a
2787                     ; 634       CAN_Id = CAN_Id>>8;
2789  009b 96            	ldw	x,sp
2790  009c cd013c        	call	LC019
2792                     ; 635       CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id);
2794  009f 7b0c          	ld	a,(OFST+6,sp)
2795  00a1 c7542b        	ld	21547,a
2796                     ; 636       CAN_Id = CAN_Id>>8;
2798  00a4 96            	ldw	x,sp
2799  00a5 cd013c        	call	LC019
2801                     ; 637       CAN->Page.TxMailbox.MIDR1 = (uint8_t)(CAN_Id |CAN_IDE | CAN_RTR);
2803  00a8 7b0c          	ld	a,(OFST+6,sp)
2804  00aa 1a0d          	or	a,(OFST+7,sp)
2805  00ac 1a0e          	or	a,(OFST+8,sp)
2806  00ae c7542a        	ld	21546,a
2808  00b1 2036          	jra	L7311
2809  00b3               L5311:
2810                     ; 641       CAN_Id &= (uint16_t)CAN_STDID_SIZE;
2812  00b3 7b0b          	ld	a,(OFST+5,sp)
2813  00b5 a407          	and	a,#7
2814  00b7 6b0b          	ld	(OFST+5,sp),a
2815  00b9 0f0a          	clr	(OFST+4,sp)
2816  00bb 0f09          	clr	(OFST+3,sp)
2817                     ; 642       CAN->Page.TxMailbox.MIDR1 = (uint8_t)((CAN_Id>>6) | (CAN_RTR)) ;
2819  00bd 7b0e          	ld	a,(OFST+8,sp)
2820  00bf b703          	ld	c_lreg+3,a
2821  00c1 3f02          	clr	c_lreg+2
2822  00c3 3f01          	clr	c_lreg+1
2823  00c5 3f00          	clr	c_lreg
2824  00c7 96            	ldw	x,sp
2825  00c8 5c            	incw	x
2826  00c9 cd0000        	call	c_rtol
2828  00cc 96            	ldw	x,sp
2829  00cd 1c0009        	addw	x,#OFST+3
2830  00d0 cd0000        	call	c_ltor
2832  00d3 a606          	ld	a,#6
2833  00d5 cd0000        	call	c_lursh
2835  00d8 96            	ldw	x,sp
2836  00d9 5c            	incw	x
2837  00da cd0000        	call	c_lor
2839  00dd 550003542a    	mov	21546,c_lreg+3
2840                     ; 643       CAN->Page.TxMailbox.MIDR2 = (uint8_t)(CAN_Id<<2);
2842  00e2 7b0c          	ld	a,(OFST+6,sp)
2843  00e4 48            	sll	a
2844  00e5 48            	sll	a
2845  00e6 c7542b        	ld	21547,a
2846  00e9               L7311:
2847                     ; 647     CAN->Page.TxMailbox.MDLCR &= (uint8_t)0xF0;
2849  00e9 c65429        	ld	a,21545
2850  00ec a4f0          	and	a,#240
2851  00ee c75429        	ld	21545,a
2852                     ; 649     CAN->Page.TxMailbox.MDLCR |= CAN_DLC;
2854  00f1 c65429        	ld	a,21545
2855  00f4 1a0f          	or	a,(OFST+9,sp)
2856  00f6 c75429        	ld	21545,a
2857                     ; 651     CAN->Page.TxMailbox.MDAR1 = CAN_Data[0];
2859  00f9 1e10          	ldw	x,(OFST+10,sp)
2860  00fb f6            	ld	a,(x)
2861  00fc c7542e        	ld	21550,a
2862                     ; 652     CAN->Page.TxMailbox.MDAR2 = CAN_Data[1];
2864  00ff e601          	ld	a,(1,x)
2865  0101 c7542f        	ld	21551,a
2866                     ; 653     CAN->Page.TxMailbox.MDAR3 = CAN_Data[2];
2868  0104 e602          	ld	a,(2,x)
2869  0106 c75430        	ld	21552,a
2870                     ; 654     CAN->Page.TxMailbox.MDAR4 = CAN_Data[3];
2872  0109 e603          	ld	a,(3,x)
2873  010b c75431        	ld	21553,a
2874                     ; 655     CAN->Page.TxMailbox.MDAR5 = CAN_Data[4];
2876  010e e604          	ld	a,(4,x)
2877  0110 c75432        	ld	21554,a
2878                     ; 656     CAN->Page.TxMailbox.MDAR6 = CAN_Data[5];
2880  0113 e605          	ld	a,(5,x)
2881  0115 c75433        	ld	21555,a
2882                     ; 657     CAN->Page.TxMailbox.MDAR7 = CAN_Data[6];
2884  0118 e606          	ld	a,(6,x)
2885  011a c75434        	ld	21556,a
2886                     ; 658     CAN->Page.TxMailbox.MDAR8 = CAN_Data[7];
2888  011d e607          	ld	a,(7,x)
2889  011f c75435        	ld	21557,a
2890                     ; 660     CAN->Page.TxMailbox.MCSR |= CAN_MCSR_TXRQ;
2892  0122 72105428      	bset	21544,#0
2893  0126               L3311:
2894                     ; 663   CAN_SelectPage(can_page);
2896  0126 7b05          	ld	a,(OFST-1,sp)
2897  0128 cd0000        	call	_CAN_SelectPage
2899                     ; 664   return (CAN_TxStatus_TypeDef)CAN_TxStatus;
2901  012b 7b06          	ld	a,(OFST+0,sp)
2904  012d 5b06          	addw	sp,#6
2905  012f 81            	ret	
2907  0130               LC018:
2908  0130 89            	pushw	x
2909  0131 5f            	clrw	x
2910  0132 89            	pushw	x
2911  0133 ae0008        	ldw	x,#L572
2912  0136 cd0000        	call	_assert_failed
2914  0139 5b04          	addw	sp,#4
2915  013b 81            	ret	
2916  013c               LC019:
2917  013c 1c0009        	addw	x,#OFST+3
2918  013f a608          	ld	a,#8
2919  0141 cc0000        	jp	c_lgursh
3003                     ; 672 CAN_TxStatus_TypeDef CAN_TransmitStatus(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
3003                     ; 673 {
3004                     .text:	section	.text,new
3005  0000               _CAN_TransmitStatus:
3007  0000 88            	push	a
3008  0001 89            	pushw	x
3009       00000002      OFST:	set	2
3012                     ; 675   CAN_TxStatus_TypeDef tstate = CAN_TxStatus_Failed;
3014  0002 a6f0          	ld	a,#240
3015  0004 6b01          	ld	(OFST-1,sp),a
3016                     ; 676   uint8_t tmpstate=0;
3018  0006 0f02          	clr	(OFST+0,sp)
3019                     ; 679   assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
3021  0008 7b03          	ld	a,(OFST+1,sp)
3022  000a 2716          	jreq	L043
3023  000c a101          	cp	a,#1
3024  000e 2712          	jreq	L043
3025  0010 a105          	cp	a,#5
3026  0012 270e          	jreq	L043
3027  0014 ae02a7        	ldw	x,#679
3028  0017 89            	pushw	x
3029  0018 5f            	clrw	x
3030  0019 89            	pushw	x
3031  001a ae0008        	ldw	x,#L572
3032  001d cd0000        	call	_assert_failed
3034  0020 5b04          	addw	sp,#4
3035  0022               L043:
3036                     ; 681   switch (CAN_TransmitMailbox)
3038  0022 7b03          	ld	a,(OFST+1,sp)
3040                     ; 694     break;
3041  0024 270d          	jreq	L1411
3042  0026 4a            	dec	a
3043  0027 2718          	jreq	L3411
3044  0029 a004          	sub	a,#4
3045  002b 2723          	jreq	L5411
3046                     ; 692   default:
3046                     ; 693     tstate = CAN_TxStatus_Failed;
3048  002d a6f0          	ld	a,#240
3049  002f 6b01          	ld	(OFST-1,sp),a
3050                     ; 694     break;
3052  0031 2031          	jra	L3221
3053  0033               L1411:
3054                     ; 683   case (CAN_TransmitMailBox_0): tmpstate = (uint8_t)((CAN->TSR & (uint8_t)(CAN_TSR_RQCP0|CAN_TSR_TXOK0)));
3056  0033 c65422        	ld	a,21538
3057  0036 a411          	and	a,#17
3058  0038 6b02          	ld	(OFST+0,sp),a
3059                     ; 684   tmpstate |= (uint8_t)((CAN->TPR & CAN_TPR_TME0));
3061  003a c65423        	ld	a,21539
3062  003d a404          	and	a,#4
3063                     ; 685   break;
3065  003f 201f          	jp	LC020
3066  0041               L3411:
3067                     ; 686   case (CAN_TransmitMailBox_1): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP1|CAN_TSR_TXOK1))>>1);
3069  0041 c65422        	ld	a,21538
3070  0044 a422          	and	a,#34
3071  0046 44            	srl	a
3072  0047 6b02          	ld	(OFST+0,sp),a
3073                     ; 687   tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME1) >> 1);
3075  0049 c65423        	ld	a,21539
3076  004c a408          	and	a,#8
3077                     ; 688   break;
3079  004e 200f          	jp	LC021
3080  0050               L5411:
3081                     ; 689   case (CAN_TransmitMailBox_2): tmpstate = (uint8_t)((uint8_t)(CAN->TSR & (uint8_t)(CAN_TSR_RQCP2|CAN_TSR_TXOK2))>>2);
3083  0050 c65422        	ld	a,21538
3084  0053 a444          	and	a,#68
3085  0055 44            	srl	a
3086  0056 44            	srl	a
3087  0057 6b02          	ld	(OFST+0,sp),a
3088                     ; 690   tmpstate |= (uint8_t)((uint8_t)(CAN->TPR & CAN_TPR_TME2) >> 2);
3090  0059 c65423        	ld	a,21539
3091  005c a410          	and	a,#16
3092  005e 44            	srl	a
3093  005f               LC021:
3094  005f 44            	srl	a
3095  0060               LC020:
3096  0060 1a02          	or	a,(OFST+0,sp)
3097  0062 6b02          	ld	(OFST+0,sp),a
3098                     ; 691   break;
3100  0064               L3221:
3101                     ; 697   switch (tmpstate)
3103  0064 7b02          	ld	a,(OFST+0,sp)
3105                     ; 713     break;
3106  0066 270f          	jreq	L1511
3107  0068 a004          	sub	a,#4
3108  006a 2717          	jreq	L7511
3109  006c 4a            	dec	a
3110  006d 270c          	jreq	L3511
3111  006f a010          	sub	a,#16
3112  0071 270c          	jreq	L5511
3113                     ; 711   default:
3113                     ; 712     tstate = CAN_TxStatus_Failed;
3115  0073 a6f0          	ld	a,#240
3116                     ; 713     break;
3118  0075 200e          	jra	L7221
3119  0077               L1511:
3120                     ; 700   case (0x00): tstate = CAN_TxStatus_Pending;
3122  0077 a6f2          	ld	a,#242
3123                     ; 701   break;
3125  0079 200a          	jra	L7221
3126  007b               L3511:
3127                     ; 703   case (0x05): tstate = CAN_TxStatus_Failed;
3129  007b a6f0          	ld	a,#240
3130                     ; 704   break;
3132  007d 2006          	jra	L7221
3133  007f               L5511:
3134                     ; 706   case (0x15): tstate = CAN_TxStatus_Ok;
3136  007f a6f1          	ld	a,#241
3137                     ; 707   break;
3139  0081 2002          	jra	L7221
3140  0083               L7511:
3141                     ; 709   case (0x04): tstate = CAN_TxStatus_MailBoxEmpty;
3143  0083 a6f5          	ld	a,#245
3144                     ; 710   break;
3146  0085               L7221:
3147                     ; 716   return (CAN_TxStatus_TypeDef)tstate;
3151  0085 5b03          	addw	sp,#3
3152  0087 81            	ret	
3201                     ; 724 void CAN_CancelTransmit(CAN_TransmitMailBox_TypeDef CAN_TransmitMailbox)
3201                     ; 725 {
3202                     .text:	section	.text,new
3203  0000               _CAN_CancelTransmit:
3205  0000 88            	push	a
3206  0001 88            	push	a
3207       00000001      OFST:	set	1
3210                     ; 726   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3212  0002 cd0000        	call	_CAN_GetSelectedPage
3214  0005 6b01          	ld	(OFST+0,sp),a
3215                     ; 728   assert_param(IS_CAN_TRANSMITMAILBOX_OK(CAN_TransmitMailbox));
3217  0007 7b02          	ld	a,(OFST+1,sp)
3218  0009 2718          	jreq	L453
3219  000b a101          	cp	a,#1
3220  000d 2714          	jreq	L453
3221  000f a105          	cp	a,#5
3222  0011 2710          	jreq	L453
3223  0013 ae02d8        	ldw	x,#728
3224  0016 89            	pushw	x
3225  0017 5f            	clrw	x
3226  0018 89            	pushw	x
3227  0019 ae0008        	ldw	x,#L572
3228  001c cd0000        	call	_assert_failed
3230  001f 5b04          	addw	sp,#4
3231  0021 7b02          	ld	a,(OFST+1,sp)
3232  0023               L453:
3233                     ; 730   CAN->PSR = (uint8_t)CAN_TransmitMailbox;
3235  0023 c75427        	ld	21543,a
3236                     ; 732   CAN->Page.TxMailbox.MCSR |= CAN_MCSR_ABRQ;
3238  0026 72125428      	bset	21544,#1
3239                     ; 734   CAN_SelectPage(can_page);
3241  002a 7b01          	ld	a,(OFST+0,sp)
3242  002c cd0000        	call	_CAN_SelectPage
3244                     ; 735 }
3247  002f 85            	popw	x
3248  0030 81            	ret	
3271                     ; 742 void CAN_FIFORelease(void)
3271                     ; 743 {
3272                     .text:	section	.text,new
3273  0000               _CAN_FIFORelease:
3277                     ; 745   CAN->RFR = CAN_RFR_RFOM; /*rc-w1*/
3279  0000 35205424      	mov	21540,#32
3280                     ; 746 }
3283  0004 81            	ret	
3357                     ; 752 CAN_NbrPendingMessage_TypeDef CAN_MessagePending(void)
3357                     ; 753 {
3358                     .text:	section	.text,new
3359  0000               _CAN_MessagePending:
3361  0000 88            	push	a
3362       00000001      OFST:	set	1
3365                     ; 754   CAN_NbrPendingMessage_TypeDef msgpending = CAN_NbrPendingMessage_0;
3367  0001 0f01          	clr	(OFST+0,sp)
3368                     ; 755   msgpending = (CAN_NbrPendingMessage_TypeDef)(CAN->RFR & CAN_RFR_FMP01);
3370  0003 c65424        	ld	a,21540
3371  0006 a403          	and	a,#3
3372                     ; 756   return (CAN_NbrPendingMessage_TypeDef)msgpending;
3376  0008 5b01          	addw	sp,#1
3377  000a 81            	ret	
3442                     ; 767 void CAN_Receive(void)
3442                     ; 768 {
3443                     .text:	section	.text,new
3444  0000               _CAN_Receive:
3446  0000 520d          	subw	sp,#13
3447       0000000d      OFST:	set	13
3450                     ; 769   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3452  0002 cd0000        	call	_CAN_GetSelectedPage
3454  0005 6b01          	ld	(OFST-12,sp),a
3455                     ; 770   uint32_t temp1 = 0, temp2 = 0, temp3 = 0;
3457  0007 96            	ldw	x,sp
3458  0008 1c0006        	addw	x,#OFST-7
3459  000b cd0000        	call	c_ltor
3463  000e 96            	ldw	x,sp
3464  000f 1c000a        	addw	x,#OFST-3
3465  0012 cd0000        	call	c_ltor
3469  0015 96            	ldw	x,sp
3470  0016 1c0002        	addw	x,#OFST-11
3471  0019 cd0000        	call	c_ltor
3473                     ; 773   CAN->PSR = CAN_Page_RxFifo;
3475  001c 35075427      	mov	21543,#7
3476                     ; 776   _IDE = (uint8_t)(CAN->Page.RxFIFO.MIDR1 & CAN_Id_Extended);
3478  0020 c6542a        	ld	a,21546
3479  0023 a440          	and	a,#64
3480  0025 c70004        	ld	__IDE,a
3481                     ; 777   if (_IDE != CAN_Id_Standard)
3483  0028 725d0004      	tnz	__IDE
3484  002c 2759          	jreq	L1431
3485                     ; 779     temp1 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR3) << 8);
3487  002e c6542c        	ld	a,21548
3488  0031 5f            	clrw	x
3489  0032 97            	ld	xl,a
3490  0033 90ae0100      	ldw	y,#256
3491  0037 cd0000        	call	c_umul
3493  003a 96            	ldw	x,sp
3494  003b cd011c        	call	LC023
3495  003e cd0113        	call	LC022
3496  0041 a610          	ld	a,#16
3497  0043 cd0000        	call	c_llsh
3499  0046 96            	ldw	x,sp
3500  0047 1c000a        	addw	x,#OFST-3
3501  004a cd0000        	call	c_rtol
3503                     ; 781     temp3 = ((uint32_t)((uint32_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 24);
3505  004d c6542a        	ld	a,21546
3506  0050 cd0113        	call	LC022
3507  0053 a41f          	and	a,#31
3508  0055 cd0113        	call	LC022
3509  0058 a618          	ld	a,#24
3510  005a cd0000        	call	c_llsh
3512  005d 96            	ldw	x,sp
3513  005e 1c0002        	addw	x,#OFST-11
3514  0061 cd0000        	call	c_rtol
3516                     ; 783     _Id = (uint32_t)CAN_EXTID_SIZE & ((CAN->Page.RxFIFO.MIDR4) | temp1 | temp2 | temp3 );
3518  0064 c6542d        	ld	a,21549
3519  0067 cd0113        	call	LC022
3520  006a 96            	ldw	x,sp
3521  006b 1c0006        	addw	x,#OFST-7
3522  006e cd0000        	call	c_lor
3524  0071 96            	ldw	x,sp
3525  0072 1c000a        	addw	x,#OFST-3
3526  0075 cd0000        	call	c_lor
3528  0078 96            	ldw	x,sp
3529  0079 1c0002        	addw	x,#OFST-11
3530  007c cd0000        	call	c_lor
3532  007f b600          	ld	a,c_lreg
3533  0081 a41f          	and	a,#31
3534  0083 b700          	ld	c_lreg,a
3537  0085 203e          	jra	L3431
3538  0087               L1431:
3539                     ; 787     temp1 = (uint16_t)((uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR1 & 0x1F) << 6));
3541  0087 c6542a        	ld	a,21546
3542  008a a41f          	and	a,#31
3543  008c 5f            	clrw	x
3544  008d 02            	rlwa	x,a
3545  008e 58            	sllw	x
3546  008f 58            	sllw	x
3547  0090 58            	sllw	x
3548  0091 58            	sllw	x
3549  0092 58            	sllw	x
3550  0093 58            	sllw	x
3551  0094 cd0000        	call	c_uitolx
3553  0097 96            	ldw	x,sp
3554  0098 cd011c        	call	LC023
3555  009b 5f            	clrw	x
3556  009c 97            	ld	xl,a
3557  009d 54            	srlw	x
3558  009e 54            	srlw	x
3559  009f 9f            	ld	a,xl
3560  00a0 a43f          	and	a,#63
3561  00a2 5f            	clrw	x
3562  00a3 cd0000        	call	c_uitol
3564  00a6 96            	ldw	x,sp
3565  00a7 1c000a        	addw	x,#OFST-3
3566  00aa cd0000        	call	c_rtol
3568                     ; 790     _Id = (uint16_t)CAN_STDID_SIZE & (temp1 | temp2 );
3570  00ad 96            	ldw	x,sp
3571  00ae 1c0006        	addw	x,#OFST-7
3572  00b1 cd0000        	call	c_ltor
3574  00b4 96            	ldw	x,sp
3575  00b5 1c000a        	addw	x,#OFST-3
3576  00b8 cd0000        	call	c_lor
3578  00bb b602          	ld	a,c_lreg+2
3579  00bd a407          	and	a,#7
3580  00bf b702          	ld	c_lreg+2,a
3581  00c1 3f01          	clr	c_lreg+1
3582  00c3 3f00          	clr	c_lreg
3584  00c5               L3431:
3585  00c5 ae0000        	ldw	x,#__Id
3586  00c8 cd0000        	call	c_rtol
3587                     ; 793   _RTR = (uint8_t)((uint8_t)0x20 & CAN->Page.RxFIFO.MIDR1);
3589  00cb c6542a        	ld	a,21546
3590  00ce a420          	and	a,#32
3591  00d0 c70005        	ld	__RTR,a
3592                     ; 796   _DLC = (uint8_t)(CAN->Page.RxFIFO.MDLCR & (uint8_t)0x0F);
3594  00d3 c65429        	ld	a,21545
3595  00d6 a40f          	and	a,#15
3596  00d8 c70006        	ld	__DLC,a
3597                     ; 799   _FMI = CAN->Page.RxFIFO.MFMI;
3599  00db 555428000f    	mov	__FMI,21544
3600                     ; 802   _Data[0] = CAN->Page.RxFIFO.MDAR1;
3602  00e0 55542e0007    	mov	__Data,21550
3603                     ; 803   _Data[1] = CAN->Page.RxFIFO.MDAR2;
3605  00e5 55542f0008    	mov	__Data+1,21551
3606                     ; 804   _Data[2] = CAN->Page.RxFIFO.MDAR3;
3608  00ea 5554300009    	mov	__Data+2,21552
3609                     ; 805   _Data[3] = CAN->Page.RxFIFO.MDAR4;
3611  00ef 555431000a    	mov	__Data+3,21553
3612                     ; 806   _Data[4] = CAN->Page.RxFIFO.MDAR5;
3614  00f4 555432000b    	mov	__Data+4,21554
3615                     ; 807   _Data[5] = CAN->Page.RxFIFO.MDAR6;
3617  00f9 555433000c    	mov	__Data+5,21555
3618                     ; 808   _Data[6] = CAN->Page.RxFIFO.MDAR7;
3620  00fe 555434000d    	mov	__Data+6,21556
3621                     ; 809   _Data[7] = CAN->Page.RxFIFO.MDAR8;
3623  0103 555435000e    	mov	__Data+7,21557
3624                     ; 812   CAN_FIFORelease();
3626  0108 cd0000        	call	_CAN_FIFORelease
3628                     ; 814   CAN_SelectPage(can_page);
3630  010b 7b01          	ld	a,(OFST-12,sp)
3631  010d cd0000        	call	_CAN_SelectPage
3633                     ; 815 }
3636  0110 5b0d          	addw	sp,#13
3637  0112 81            	ret	
3639  0113               LC022:
3640  0113 b703          	ld	c_lreg+3,a
3641  0115 3f02          	clr	c_lreg+2
3642  0117 3f01          	clr	c_lreg+1
3643  0119 3f00          	clr	c_lreg
3644  011b 81            	ret	
3645  011c               LC023:
3646  011c 1c0006        	addw	x,#OFST-7
3647  011f cd0000        	call	c_rtol
3649                     ; 788     temp2 = (uint16_t)((uint16_t)((uint16_t)CAN->Page.RxFIFO.MIDR2 >> 2)&0x3F);
3651  0122 c6542b        	ld	a,21547
3652  0125 81            	ret	
3675                     ; 825 uint32_t CAN_GetReceivedId(void)
3675                     ; 826 {
3676                     .text:	section	.text,new
3677  0000               _CAN_GetReceivedId:
3681                     ; 827   return (_Id);
3683  0000 ae0000        	ldw	x,#__Id
3687  0003 cc0000        	jp	c_ltor
3712                     ; 838 CAN_Id_TypeDef CAN_GetReceivedIDE(void)
3712                     ; 839 {
3713                     .text:	section	.text,new
3714  0000               _CAN_GetReceivedIDE:
3718                     ; 840   return (CAN_Id_TypeDef)(_IDE);
3720  0000 c60004        	ld	a,__IDE
3723  0003 81            	ret	
3748                     ; 851 CAN_RTR_TypeDef CAN_GetReceivedRTR(void)
3748                     ; 852 {
3749                     .text:	section	.text,new
3750  0000               _CAN_GetReceivedRTR:
3754                     ; 853   return (CAN_RTR_TypeDef)(_RTR);
3756  0000 c60005        	ld	a,__RTR
3759  0003 81            	ret	
3783                     ; 864 uint8_t CAN_GetReceivedDLC(void)
3783                     ; 865 {
3784                     .text:	section	.text,new
3785  0000               _CAN_GetReceivedDLC:
3789                     ; 866   return (_DLC);
3791  0000 c60006        	ld	a,__DLC
3794  0003 81            	ret	
3829                     ; 878 uint8_t CAN_GetReceivedData(uint8_t CAN_DataIndex)
3829                     ; 879 {
3830                     .text:	section	.text,new
3831  0000               _CAN_GetReceivedData:
3833  0000 88            	push	a
3834       00000000      OFST:	set	0
3837                     ; 880   assert_param(IS_CAN_DLC_OK(CAN_DataIndex));
3839  0001 a109          	cp	a,#9
3840  0003 250e          	jrult	L214
3841  0005 ae0370        	ldw	x,#880
3842  0008 89            	pushw	x
3843  0009 5f            	clrw	x
3844  000a 89            	pushw	x
3845  000b ae0008        	ldw	x,#L572
3846  000e cd0000        	call	_assert_failed
3848  0011 5b04          	addw	sp,#4
3849  0013               L214:
3850                     ; 881   return (_Data[CAN_DataIndex]);
3852  0013 7b01          	ld	a,(OFST+1,sp)
3853  0015 5f            	clrw	x
3854  0016 97            	ld	xl,a
3855  0017 d60007        	ld	a,(__Data,x)
3858  001a 5b01          	addw	sp,#1
3859  001c 81            	ret	
3883                     ; 892 uint8_t CAN_GetReceivedFMI(void)
3883                     ; 893 {
3884                     .text:	section	.text,new
3885  0000               _CAN_GetReceivedFMI:
3889                     ; 894   return (_FMI);
3891  0000 c6000f        	ld	a,__FMI
3894  0003 81            	ret	
3939                     ; 902 uint16_t CAN_GetMessageTimeStamp(void)
3939                     ; 903 {
3940                     .text:	section	.text,new
3941  0000               _CAN_GetMessageTimeStamp:
3943  0000 5203          	subw	sp,#3
3944       00000003      OFST:	set	3
3947                     ; 904   uint16_t timestamp = 0;
3949                     ; 905   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
3951  0002 cd0000        	call	_CAN_GetSelectedPage
3953  0005 6b01          	ld	(OFST-2,sp),a
3954                     ; 908   CAN->PSR = CAN_Page_RxFifo;
3956  0007 35075427      	mov	21543,#7
3957                     ; 910   timestamp = CAN->Page.RxFIFO.MTSRL;
3959  000b c65436        	ld	a,21558
3960  000e 5f            	clrw	x
3961  000f 97            	ld	xl,a
3962  0010 1f02          	ldw	(OFST-1,sp),x
3963                     ; 911   timestamp |= (uint16_t)(((uint16_t)CAN->Page.RxFIFO.MTSRH)<<8);
3965  0012 c65437        	ld	a,21559
3966  0015 97            	ld	xl,a
3967  0016 7b03          	ld	a,(OFST+0,sp)
3968  0018 01            	rrwa	x,a
3969  0019 1a02          	or	a,(OFST-1,sp)
3970  001b 01            	rrwa	x,a
3971  001c 1f02          	ldw	(OFST-1,sp),x
3972                     ; 914   CAN_SelectPage(can_page);
3974  001e 7b01          	ld	a,(OFST-2,sp)
3975  0020 cd0000        	call	_CAN_SelectPage
3977                     ; 916   return (uint16_t)(timestamp);
3979  0023 1e02          	ldw	x,(OFST-1,sp)
3982  0025 5b03          	addw	sp,#3
3983  0027 81            	ret	
4039                     ; 924 CAN_Sleep_TypeDef CAN_Sleep(void)
4039                     ; 925 {
4040                     .text:	section	.text,new
4041  0000               _CAN_Sleep:
4043  0000 88            	push	a
4044       00000001      OFST:	set	1
4047                     ; 926   CAN_Sleep_TypeDef sleepstatus = CAN_Sleep_Failed;
4049  0001 0f01          	clr	(OFST+0,sp)
4050                     ; 929   CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
4052  0003 c65420        	ld	a,21536
4053  0006 a4fe          	and	a,#254
4054  0008 aa02          	or	a,#2
4055  000a c75420        	ld	21536,a
4056                     ; 932   if ((CAN->MSR & (CAN_MSR_SLAK|CAN_MSR_INAK)) == CAN_MSR_SLAK)
4058  000d c65421        	ld	a,21537
4059  0010 a403          	and	a,#3
4060  0012 a102          	cp	a,#2
4061  0014 2604          	jrne	L7741
4062                     ; 935     sleepstatus =  CAN_Sleep_Ok;
4064  0016 a601          	ld	a,#1
4065  0018 6b01          	ld	(OFST+0,sp),a
4066  001a               L7741:
4067                     ; 939   return (CAN_Sleep_TypeDef) sleepstatus;
4069  001a 7b01          	ld	a,(OFST+0,sp)
4072  001c 5b01          	addw	sp,#1
4073  001e 81            	ret	
4129                     ; 947 CAN_WakeUp_TypeDef CAN_WakeUp(void)
4129                     ; 948 {
4130                     .text:	section	.text,new
4131  0000               _CAN_WakeUp:
4133  0000 88            	push	a
4134       00000001      OFST:	set	1
4137                     ; 949   CAN_WakeUp_TypeDef wakeupstatus = CAN_WakeUp_Failed;
4139  0001 0f01          	clr	(OFST+0,sp)
4140                     ; 952   CAN->MCR &= (uint8_t)(~CAN_MCR_SLEEP);
4142  0003 72135420      	bres	21536,#1
4143                     ; 955   if ((CAN->MSR & CAN_MSR_SLAK) != CAN_MSR_SLAK)
4145  0007 7202542104    	btjt	21537,#1,L7251
4146                     ; 958     wakeupstatus = CAN_WakeUp_Ok;
4148  000c a601          	ld	a,#1
4149  000e 6b01          	ld	(OFST+0,sp),a
4150  0010               L7251:
4151                     ; 962   return (CAN_WakeUp_TypeDef)wakeupstatus;
4153  0010 7b01          	ld	a,(OFST+0,sp)
4156  0012 5b01          	addw	sp,#1
4157  0014 81            	ret	
4261                     ; 974 CAN_ModeStatus_TypeDef CAN_OperatingModeRequest(CAN_OperatingMode_TypeDef CAN_OperatingMode)
4261                     ; 975 {
4262                     .text:	section	.text,new
4263  0000               _CAN_OperatingModeRequest:
4265  0000 88            	push	a
4266  0001 5203          	subw	sp,#3
4267       00000003      OFST:	set	3
4270                     ; 976   uint16_t timeout = CAN_ACKNOWLEDGE_TIMEOUT;
4272  0003 aeffff        	ldw	x,#65535
4273  0006 1f02          	ldw	(OFST-1,sp),x
4274                     ; 977   uint8_t modestatus = 0;
4276  0008 7b01          	ld	a,(OFST-2,sp)
4277  000a 97            	ld	xl,a
4278                     ; 979   assert_param(IS_CAN_OPERATINGMODE_OK(CAN_OperatingMode));
4280  000b 7b04          	ld	a,(OFST+1,sp)
4281  000d 2716          	jreq	L044
4282  000f a101          	cp	a,#1
4283  0011 2712          	jreq	L044
4284  0013 a102          	cp	a,#2
4285  0015 270e          	jreq	L044
4286  0017 ae03d3        	ldw	x,#979
4287  001a 89            	pushw	x
4288  001b 5f            	clrw	x
4289  001c 89            	pushw	x
4290  001d ae0008        	ldw	x,#L572
4291  0020 cd0000        	call	_assert_failed
4293  0023 5b04          	addw	sp,#4
4294  0025               L044:
4295                     ; 981   if (CAN_OperatingMode == CAN_OperatingMode_Initialization)
4297  0025 7b04          	ld	a,(OFST+1,sp)
4298  0027 2623          	jrne	L5751
4299                     ; 984     CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_SLEEP)) | CAN_MCR_INRQ);
4301  0029 c65420        	ld	a,21536
4302  002c a4fd          	and	a,#253
4303  002e aa01          	or	a,#1
4304  0030 c75420        	ld	21536,a
4306  0033 2003          	jra	L3061
4307  0035               L7751:
4308                     ; 989       timeout--;
4310  0035 5a            	decw	x
4311  0036 1f02          	ldw	(OFST-1,sp),x
4312  0038               L3061:
4313                     ; 987     while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK) && (timeout != 0))
4315  0038 c65421        	ld	a,21537
4316  003b a403          	and	a,#3
4317  003d 4a            	dec	a
4318  003e 2704          	jreq	L7061
4320  0040 1e02          	ldw	x,(OFST-1,sp)
4321  0042 26f1          	jrne	L7751
4322  0044               L7061:
4323                     ; 991     if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_INAK)
4325  0044 c65421        	ld	a,21537
4326  0047 a403          	and	a,#3
4327  0049 4a            	dec	a
4328                     ; 993       modestatus = CAN_ModeStatus_Failed;
4330  004a 204e          	jp	LC026
4331                     ; 997       modestatus = CAN_ModeStatus_Success;  
4332  004c               L5751:
4333                     ; 1001   else  if (CAN_OperatingMode == CAN_OperatingMode_Normal)
4335  004c a101          	cp	a,#1
4336  004e 2623          	jrne	L7161
4337                     ; 1004     CAN->MCR &= (uint8_t)(~(CAN_MCR_SLEEP|CAN_MCR_INRQ));
4339  0050 c65420        	ld	a,21536
4340  0053 a4fc          	and	a,#252
4341  0055 c75420        	ld	21536,a
4343  0058 2003          	jra	L3261
4344  005a               L1261:
4345                     ; 1009       timeout--;
4347  005a 5a            	decw	x
4348  005b 1f02          	ldw	(OFST-1,sp),x
4349  005d               L3261:
4350                     ; 1007     while (((CAN->MSR & CAN_MODE_MASK) != 0) && (timeout!=0))
4352  005d c65421        	ld	a,21537
4353  0060 a503          	bcp	a,#3
4354  0062 2704          	jreq	L7261
4356  0064 1e02          	ldw	x,(OFST-1,sp)
4357  0066 26f2          	jrne	L1261
4358  0068               L7261:
4359                     ; 1011     if ((CAN->MSR & CAN_MODE_MASK) != 0)
4361  0068 c65421        	ld	a,21537
4362  006b a503          	bcp	a,#3
4363                     ; 1013       modestatus = CAN_ModeStatus_Failed;
4365  006d 262d          	jrne	L7361
4366  006f               L1361:
4367                     ; 1017       modestatus = CAN_ModeStatus_Success;  
4371  006f a601          	ld	a,#1
4372  0071 202a          	jra	L5161
4373  0073               L7161:
4374                     ; 1020   else  if (CAN_OperatingMode == CAN_OperatingMode_Sleep)
4376  0073 a102          	cp	a,#2
4377  0075 2625          	jrne	L7361
4378                     ; 1023     CAN->MCR = (uint8_t)((uint8_t)(CAN->MCR & (uint8_t)(~CAN_MCR_INRQ)) | CAN_MCR_SLEEP);
4380  0077 c65420        	ld	a,21536
4381  007a a4fe          	and	a,#254
4382  007c aa02          	or	a,#2
4383  007e c75420        	ld	21536,a
4385  0081 2003          	jra	L5461
4386  0083               L1461:
4387                     ; 1028       timeout--;
4389  0083 5a            	decw	x
4390  0084 1f02          	ldw	(OFST-1,sp),x
4391  0086               L5461:
4392                     ; 1026     while (((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK) && (timeout!=0))
4394  0086 c65421        	ld	a,21537
4395  0089 a403          	and	a,#3
4396  008b a102          	cp	a,#2
4397  008d 2704          	jreq	L1561
4399  008f 1e02          	ldw	x,(OFST-1,sp)
4400  0091 26f0          	jrne	L1461
4401  0093               L1561:
4402                     ; 1030     if ((CAN->MSR & CAN_MODE_MASK) != CAN_MSR_SLAK)
4404  0093 c65421        	ld	a,21537
4405  0096 a403          	and	a,#3
4406  0098 a102          	cp	a,#2
4407  009a               LC026:
4408  009a 27d3          	jreq	L1361
4409                     ; 1032       modestatus = CAN_ModeStatus_Failed;  
4411                     ; 1036       modestatus = CAN_ModeStatus_Success;  
4412  009c               L7361:
4413                     ; 1041     modestatus = CAN_ModeStatus_Failed;
4418  009c 4f            	clr	a
4419  009d               L5161:
4420                     ; 1043   return (CAN_ModeStatus_TypeDef)(modestatus);
4424  009d 5b04          	addw	sp,#4
4425  009f 81            	ret	
4544                     ; 1051 CAN_ErrorCode_TypeDef CAN_GetLastErrorCode(void)
4544                     ; 1052 {
4545                     .text:	section	.text,new
4546  0000               _CAN_GetLastErrorCode:
4548  0000 89            	pushw	x
4549       00000002      OFST:	set	2
4552                     ; 1053   CAN_ErrorCode_TypeDef errcode = CAN_ErrorCode_NoErr;
4554                     ; 1054   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
4556  0001 cd0000        	call	_CAN_GetSelectedPage
4558  0004 6b01          	ld	(OFST-1,sp),a
4559                     ; 1056   CAN->PSR = CAN_Page_Config;
4561  0006 35065427      	mov	21543,#6
4562                     ; 1057   errcode = (CAN_ErrorCode_TypeDef)((CAN->Page.Config.ESR) & (CAN_ESR_LEC));
4564  000a c65428        	ld	a,21544
4565  000d a470          	and	a,#112
4566  000f 6b02          	ld	(OFST+0,sp),a
4567                     ; 1060   CAN_SelectPage(can_page);
4569  0011 7b01          	ld	a,(OFST-1,sp)
4570  0013 cd0000        	call	_CAN_SelectPage
4572                     ; 1062   return (CAN_ErrorCode_TypeDef)(errcode);
4574  0016 7b02          	ld	a,(OFST+0,sp)
4577  0018 85            	popw	x
4578  0019 81            	ret	
4709                     ; 1077 void CAN_ClearFlag(CAN_FLAG_TypeDef CAN_Flag)
4709                     ; 1078 {
4710                     .text:	section	.text,new
4711  0000               _CAN_ClearFlag:
4713  0000 89            	pushw	x
4714  0001 88            	push	a
4715       00000001      OFST:	set	1
4718                     ; 1079   CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
4720  0002 0f01          	clr	(OFST+0,sp)
4721                     ; 1081   assert_param(IS_CAN_FLAG_CLEAR_OK(CAN_Flag));
4723  0004 a33401        	cpw	x,#13313
4724  0007 272c          	jreq	L064
4725  0009 a33402        	cpw	x,#13314
4726  000c 2727          	jreq	L064
4727  000e a33404        	cpw	x,#13316
4728  0011 2722          	jreq	L064
4729  0013 a33208        	cpw	x,#12808
4730  0016 271d          	jreq	L064
4731  0018 a33210        	cpw	x,#12816
4732  001b 2718          	jreq	L064
4733  001d a33108        	cpw	x,#12552
4734  0020 2713          	jreq	L064
4735  0022 a33070        	cpw	x,#12400
4736  0025 270e          	jreq	L064
4737  0027 ae0439        	ldw	x,#1081
4738  002a 89            	pushw	x
4739  002b 5f            	clrw	x
4740  002c 89            	pushw	x
4741  002d ae0008        	ldw	x,#L572
4742  0030 cd0000        	call	_assert_failed
4744  0033 5b04          	addw	sp,#4
4745  0035               L064:
4746                     ; 1082   if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
4748  0035 7b02          	ld	a,(OFST+1,sp)
4749  0037 a507          	bcp	a,#7
4750  0039 272d          	jreq	L3002
4751                     ; 1084     if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
4753  003b 1e02          	ldw	x,(OFST+1,sp)
4754  003d 01            	rrwa	x,a
4755  003e a40b          	and	a,#11
4756  0040 01            	rrwa	x,a
4757  0041 a402          	and	a,#2
4758  0043 01            	rrwa	x,a
4759  0044 5d            	tnzw	x
4760  0045 2707          	jreq	L5002
4761                     ; 1087       CAN->RFR = (uint8_t)(CAN_Flag);
4763  0047 7b03          	ld	a,(OFST+2,sp)
4764  0049 c75424        	ld	21540,a
4766  004c 202a          	jra	L5102
4767  004e               L5002:
4768                     ; 1089     else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
4770  004e 1e02          	ldw	x,(OFST+1,sp)
4771  0050 01            	rrwa	x,a
4772  0051 a403          	and	a,#3
4773  0053 01            	rrwa	x,a
4774  0054 a404          	and	a,#4
4775  0056 01            	rrwa	x,a
4776  0057 5d            	tnzw	x
4777  0058 2707          	jreq	L1102
4778                     ; 1092       CAN->TSR = (uint8_t)(CAN_Flag);
4780  005a 7b03          	ld	a,(OFST+2,sp)
4781  005c c75422        	ld	21538,a
4783  005f 2017          	jra	L5102
4784  0061               L1102:
4785                     ; 1097       CAN->MSR = (uint8_t)(CAN_Flag);
4787  0061 7b03          	ld	a,(OFST+2,sp)
4788  0063 c75421        	ld	21537,a
4789  0066 2010          	jra	L5102
4790  0068               L3002:
4791                     ; 1103     can_page = CAN_GetSelectedPage();
4793  0068 cd0000        	call	_CAN_GetSelectedPage
4795  006b 6b01          	ld	(OFST+0,sp),a
4796                     ; 1106     CAN->PSR = CAN_Page_Config;
4798  006d 35065427      	mov	21543,#6
4799                     ; 1107     CAN->Page.Config.ESR = (uint8_t)RESET;
4801  0071 725f5428      	clr	21544
4802                     ; 1110     CAN_SelectPage(can_page);
4804  0075 cd0000        	call	_CAN_SelectPage
4806  0078               L5102:
4807                     ; 1112 }
4810  0078 5b03          	addw	sp,#3
4811  007a 81            	ret	
4890                     ; 1119 FlagStatus CAN_GetFlagStatus(CAN_FLAG_TypeDef CAN_Flag)
4890                     ; 1120 {
4891                     .text:	section	.text,new
4892  0000               _CAN_GetFlagStatus:
4894  0000 89            	pushw	x
4895  0001 89            	pushw	x
4896       00000002      OFST:	set	2
4899                     ; 1121   FlagStatus bitstatus = RESET;
4901                     ; 1122   CAN_Page_TypeDef can_page = (CAN_Page_TypeDef)0;
4903                     ; 1125   assert_param(IS_CAN_FLAG_STATUS_OK(CAN_Flag));
4905  0002 1e03          	ldw	x,(OFST+1,sp)
4906  0004 a33401        	cpw	x,#13313
4907  0007 2740          	jreq	L674
4908  0009 a33402        	cpw	x,#13314
4909  000c 273b          	jreq	L674
4910  000e a33404        	cpw	x,#13316
4911  0011 2736          	jreq	L674
4912  0013 a31203        	cpw	x,#4611
4913  0016 2731          	jreq	L674
4914  0018 a33208        	cpw	x,#12808
4915  001b 272c          	jreq	L674
4916  001d a33210        	cpw	x,#12816
4917  0020 2727          	jreq	L674
4918  0022 a33108        	cpw	x,#12552
4919  0025 2722          	jreq	L674
4920  0027 a31001        	cpw	x,#4097
4921  002a 271d          	jreq	L674
4922  002c a31002        	cpw	x,#4098
4923  002f 2718          	jreq	L674
4924  0031 a31004        	cpw	x,#4100
4925  0034 2713          	jreq	L674
4926  0036 a33070        	cpw	x,#12400
4927  0039 270e          	jreq	L674
4928  003b ae0465        	ldw	x,#1125
4929  003e 89            	pushw	x
4930  003f 5f            	clrw	x
4931  0040 89            	pushw	x
4932  0041 ae0008        	ldw	x,#L572
4933  0044 cd0000        	call	_assert_failed
4935  0047 5b04          	addw	sp,#4
4936  0049               L674:
4937                     ; 1127   if (((uint16_t)CAN_Flag & 0x0700)!= RESET)
4939  0049 7b03          	ld	a,(OFST+1,sp)
4940  004b a507          	bcp	a,#7
4941  004d 272d          	jreq	L5502
4942                     ; 1129     if (((uint16_t)CAN_Flag & 0x020B)!= RESET)
4944  004f 1e03          	ldw	x,(OFST+1,sp)
4945  0051 01            	rrwa	x,a
4946  0052 a40b          	and	a,#11
4947  0054 01            	rrwa	x,a
4948  0055 a402          	and	a,#2
4949  0057 01            	rrwa	x,a
4950  0058 5d            	tnzw	x
4951  0059 2705          	jreq	L7502
4952                     ; 1132       if ((CAN->RFR & (uint16_t)CAN_Flag )!= RESET)
4954  005b c65424        	ld	a,21540
4955                     ; 1135         bitstatus = SET;
4957  005e 2014          	jp	LC028
4958                     ; 1140         bitstatus = RESET;
4959  0060               L7502:
4960                     ; 1144     else if (((uint16_t)CAN_Flag & 0x0403)!= RESET)
4962  0060 1e03          	ldw	x,(OFST+1,sp)
4963  0062 01            	rrwa	x,a
4964  0063 a403          	and	a,#3
4965  0065 01            	rrwa	x,a
4966  0066 a404          	and	a,#4
4967  0068 01            	rrwa	x,a
4968  0069 5d            	tnzw	x
4969  006a 2705          	jreq	L7602
4970                     ; 1147       if ((CAN->TSR & (uint16_t)CAN_Flag )!= RESET)
4972  006c c65422        	ld	a,21538
4973                     ; 1150         bitstatus = SET;
4975  006f 2003          	jp	LC028
4976                     ; 1155         bitstatus = RESET;
4977  0071               L7602:
4978                     ; 1161       if ((CAN->MSR & (uint16_t)CAN_Flag )!= RESET)
4980  0071 c65421        	ld	a,21537
4981                     ; 1164         bitstatus = SET;
4983  0074               LC028:
4984  0074 1404          	and	a,(OFST+2,sp)
4985  0076 271f          	jreq	L3012
4988  0078 a601          	ld	a,#1
4990                     ; 1169         bitstatus = RESET;
4994  007a 201b          	jra	L3012
4995  007c               L5502:
4996                     ; 1176     can_page = CAN_GetSelectedPage();
4998  007c cd0000        	call	_CAN_GetSelectedPage
5000  007f 6b01          	ld	(OFST-1,sp),a
5001                     ; 1178     CAN->PSR = CAN_Page_Config;
5003  0081 35065427      	mov	21543,#6
5004                     ; 1179     if ((CAN->Page.Config.ESR & (uint16_t)CAN_Flag) != RESET)
5006  0085 c65428        	ld	a,21544
5007  0088 1404          	and	a,(OFST+2,sp)
5008  008a 2702          	jreq	L5012
5009                     ; 1182       bitstatus = SET;
5011  008c a601          	ld	a,#1
5013  008e               L5012:
5014                     ; 1187       bitstatus = RESET;
5016  008e 6b02          	ld	(OFST+0,sp),a
5017                     ; 1190     CAN_SelectPage(can_page);
5019  0090 7b01          	ld	a,(OFST-1,sp)
5020  0092 cd0000        	call	_CAN_SelectPage
5022  0095 7b02          	ld	a,(OFST+0,sp)
5023  0097               L3012:
5024                     ; 1195   return  (FlagStatus)bitstatus;
5028  0097 5b04          	addw	sp,#4
5029  0099 81            	ret	
5089                     ; 1203 ITStatus CAN_GetITStatus(CAN_IT_TypeDef CAN_IT)
5089                     ; 1204 {
5090                     .text:	section	.text,new
5091  0000               _CAN_GetITStatus:
5093  0000 89            	pushw	x
5094  0001 89            	pushw	x
5095       00000002      OFST:	set	2
5098                     ; 1205   ITStatus pendingbitstatus = RESET;
5100  0002 0f02          	clr	(OFST+0,sp)
5101                     ; 1206   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
5103  0004 cd0000        	call	_CAN_GetSelectedPage
5105  0007 6b01          	ld	(OFST-1,sp),a
5106                     ; 1209   assert_param(IS_CAN_IT_STATUS_OK(CAN_IT));
5108  0009 1e03          	ldw	x,(OFST+1,sp)
5109  000b a30001        	cpw	x,#1
5110  000e 273d          	jreq	L615
5111  0010 a30002        	cpw	x,#2
5112  0013 2738          	jreq	L615
5113  0015 a30004        	cpw	x,#4
5114  0018 2733          	jreq	L615
5115  001a a30008        	cpw	x,#8
5116  001d 272e          	jreq	L615
5117  001f a30080        	cpw	x,#128
5118  0022 2729          	jreq	L615
5119  0024 a34000        	cpw	x,#16384
5120  0027 2724          	jreq	L615
5121  0029 a30100        	cpw	x,#256
5122  002c 271f          	jreq	L615
5123  002e a30200        	cpw	x,#512
5124  0031 271a          	jreq	L615
5125  0033 a30400        	cpw	x,#1024
5126  0036 2715          	jreq	L615
5127  0038 a30800        	cpw	x,#2048
5128  003b 2710          	jreq	L615
5129  003d ae04b9        	ldw	x,#1209
5130  0040 89            	pushw	x
5131  0041 5f            	clrw	x
5132  0042 89            	pushw	x
5133  0043 ae0008        	ldw	x,#L572
5134  0046 cd0000        	call	_assert_failed
5136  0049 5b04          	addw	sp,#4
5137  004b 1e03          	ldw	x,(OFST+1,sp)
5138  004d               L615:
5139                     ; 1212   switch (CAN_IT)
5142                     ; 1325     break;
5143  004d 5a            	decw	x
5144  004e 273a          	jreq	L1112
5145  0050 5a            	decw	x
5146  0051 2747          	jreq	L3112
5147  0053 1d0002        	subw	x,#2
5148  0056 274f          	jreq	L5112
5149  0058 1d0004        	subw	x,#4
5150  005b 2759          	jreq	L7112
5151  005d 1d0078        	subw	x,#120
5152  0060 2760          	jreq	L1212
5153  0062 1d0080        	subw	x,#128
5154  0065 2603cc00e7    	jreq	L5212
5155  006a 1d0100        	subw	x,#256
5156  006d 2603cc00f5    	jreq	L7212
5157  0072 1d0200        	subw	x,#512
5158  0075 2603cc0105    	jreq	L1312
5159  007a 1d0400        	subw	x,#1024
5160  007d 2603cc0118    	jreq	L3312
5161  0082 1d3800        	subw	x,#14336
5162  0085 2750          	jreq	L3212
5163                     ; 1323   default :
5163                     ; 1324     pendingbitstatus = RESET;
5164                     ; 1325     break;
5166  0087 cc0126        	jp	L5322
5167  008a               L1112:
5168                     ; 1214   case CAN_IT_TME:
5168                     ; 1215     if ((CAN->IER & CAN_IER_TMEIE) !=RESET)
5170  008a 7201542508    	btjf	21541,#0,L1712
5171                     ; 1217       pendingbitstatus = CheckITStatus(CAN->TSR, CAN_TSR_RQCP012);
5173  008f ae0007        	ldw	x,#7
5174  0092 c65422        	ld	a,21538
5177  0095 2036          	jp	LC030
5178  0097               L1712:
5179                     ; 1221       pendingbitstatus = RESET;
5180  0097 cc0126        	jp	L5322
5181  009a               L3112:
5182                     ; 1225   case CAN_IT_FMP:
5182                     ; 1226     if ((CAN->IER & CAN_IER_FMPIE) !=RESET)
5184  009a 7203542505    	btjf	21541,#1,L5712
5185                     ; 1228       pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FMP01);
5187  009f ae0003        	ldw	x,#3
5190  00a2 200b          	jp	LC032
5191  00a4               L5712:
5192                     ; 1232       pendingbitstatus = RESET;
5193  00a4 cc0126        	jp	L5322
5194  00a7               L5112:
5195                     ; 1235   case CAN_IT_FF:
5195                     ; 1236     if ((CAN->IER & CAN_IER_FFIE) !=RESET)
5197  00a7 7205542508    	btjf	21541,#2,L1022
5198                     ; 1238       pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FULL);
5200  00ac ae0008        	ldw	x,#8
5201  00af               LC032:
5202  00af c65424        	ld	a,21540
5205  00b2 2019          	jp	LC030
5206  00b4               L1022:
5207                     ; 1242       pendingbitstatus = RESET;
5208  00b4 2070          	jp	L5322
5209  00b6               L7112:
5210                     ; 1245   case CAN_IT_FOV:
5210                     ; 1246     if ((CAN->IER & CAN_IER_FOVIE) !=RESET)
5212  00b6 7207542505    	btjf	21541,#3,L5022
5213                     ; 1248       pendingbitstatus = CheckITStatus(CAN->RFR, CAN_RFR_FOVR);
5215  00bb ae0010        	ldw	x,#16
5218  00be 20ef          	jp	LC032
5219  00c0               L5022:
5220                     ; 1252       pendingbitstatus = RESET;
5221  00c0 2064          	jp	L5322
5222  00c2               L1212:
5223                     ; 1255   case CAN_IT_WKU:
5223                     ; 1256     if ((CAN->IER & CAN_IER_WKUIE) !=RESET)
5225  00c2 720f54250e    	btjf	21541,#7,L1122
5226                     ; 1258       pendingbitstatus = CheckITStatus(CAN->MSR, CAN_MSR_WKUI);
5228  00c7 ae0008        	ldw	x,#8
5229  00ca c65421        	ld	a,21537
5231  00cd               LC030:
5232  00cd 95            	ld	xh,a
5233  00ce cd0000        	call	L3_CheckITStatus
5234  00d1 6b02          	ld	(OFST+0,sp),a
5236  00d3 2053          	jra	L7612
5237  00d5               L1122:
5238                     ; 1262       pendingbitstatus = RESET;
5239  00d5 204f          	jp	L5322
5240  00d7               L3212:
5241                     ; 1266   case CAN_IT_ERR:
5241                     ; 1267     CAN->PSR = CAN_Page_Config;
5243  00d7 35065427      	mov	21543,#6
5244                     ; 1268     if ((CAN->Page.Config.EIER & CAN_EIER_ERRIE) !=RESET)
5246  00db 720f542905    	btjf	21545,#7,L5122
5247                     ; 1270       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF|CAN_ESR_EPVF|CAN_ESR_BOFF|CAN_ESR_LEC);
5249  00e0 ae0077        	ldw	x,#119
5252  00e3 202c          	jp	LC031
5253  00e5               L5122:
5254                     ; 1274       pendingbitstatus = RESET;
5255  00e5 203f          	jp	L5322
5256  00e7               L5212:
5257                     ; 1278   case CAN_IT_EWG:
5257                     ; 1279     CAN->PSR = CAN_Page_Config;
5259  00e7 35065427      	mov	21543,#6
5260                     ; 1280     if ((CAN->Page.Config.EIER & CAN_EIER_EWGIE) !=RESET)
5262  00eb 7201542903    	btjf	21545,#0,L1222
5263                     ; 1282       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EWGF);
5265  00f0 5c            	incw	x
5268  00f1 201e          	jp	LC031
5269  00f3               L1222:
5270                     ; 1286       pendingbitstatus = RESET;
5271  00f3 2031          	jp	L5322
5272  00f5               L7212:
5273                     ; 1290   case CAN_IT_EPV:
5273                     ; 1291     CAN->PSR = CAN_Page_Config;
5275  00f5 35065427      	mov	21543,#6
5276                     ; 1292     if ((CAN->Page.Config.EIER & CAN_EIER_EPVIE) !=RESET)
5278  00f9 7203542905    	btjf	21545,#1,L5222
5279                     ; 1294       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_EPVF);
5281  00fe ae0002        	ldw	x,#2
5284  0101 200e          	jp	LC031
5285  0103               L5222:
5286                     ; 1298       pendingbitstatus = RESET;
5287  0103 2021          	jp	L5322
5288  0105               L1312:
5289                     ; 1301   case CAN_IT_BOF:
5289                     ; 1302     CAN->PSR = CAN_Page_Config;
5291  0105 35065427      	mov	21543,#6
5292                     ; 1303     if ((CAN->Page.Config.EIER & CAN_EIER_BOFIE) !=RESET)
5294  0109 7205542908    	btjf	21545,#2,L1322
5295                     ; 1305       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_BOFF);
5297  010e ae0004        	ldw	x,#4
5298  0111               LC031:
5299  0111 c65428        	ld	a,21544
5302  0114 20b7          	jp	LC030
5303  0116               L1322:
5304                     ; 1309       pendingbitstatus = RESET;
5305  0116 200e          	jp	L5322
5306  0118               L3312:
5307                     ; 1312   case CAN_IT_LEC:
5307                     ; 1313     CAN->PSR = CAN_Page_Config;
5309  0118 35065427      	mov	21543,#6
5310                     ; 1314     if ((CAN->Page.Config.EIER & CAN_EIER_LECIE) !=RESET)
5312  011c 7209542905    	btjf	21545,#4,L5322
5313                     ; 1316       pendingbitstatus = CheckITStatus(CAN->Page.Config.ESR, CAN_ESR_LEC);
5315  0121 ae0070        	ldw	x,#112
5318  0124 20eb          	jp	LC031
5319  0126               L5322:
5320                     ; 1320       pendingbitstatus = RESET;
5332  0126 0f02          	clr	(OFST+0,sp)
5333  0128               L7612:
5334                     ; 1328   CAN_SelectPage(can_page);
5336  0128 7b01          	ld	a,(OFST-1,sp)
5337  012a cd0000        	call	_CAN_SelectPage
5339                     ; 1330   return  (ITStatus)pendingbitstatus;
5341  012d 7b02          	ld	a,(OFST+0,sp)
5344  012f 5b04          	addw	sp,#4
5345  0131 81            	ret	
5394                     ; 1348 void CAN_ClearITPendingBit(CAN_IT_TypeDef CAN_IT)
5394                     ; 1349 {
5395                     .text:	section	.text,new
5396  0000               _CAN_ClearITPendingBit:
5398  0000 89            	pushw	x
5399  0001 88            	push	a
5400       00000001      OFST:	set	1
5403                     ; 1350   CAN_Page_TypeDef can_page = CAN_GetSelectedPage();
5405  0002 cd0000        	call	_CAN_GetSelectedPage
5407  0005 6b01          	ld	(OFST+0,sp),a
5408                     ; 1352   assert_param(IS_CAN_IT_PENDING_BIT_OK(CAN_IT));
5410  0007 1e02          	ldw	x,(OFST+1,sp)
5411  0009 a30001        	cpw	x,#1
5412  000c 2738          	jreq	L065
5413  000e a30004        	cpw	x,#4
5414  0011 2733          	jreq	L065
5415  0013 a30008        	cpw	x,#8
5416  0016 272e          	jreq	L065
5417  0018 a30080        	cpw	x,#128
5418  001b 2729          	jreq	L065
5419  001d a34000        	cpw	x,#16384
5420  0020 2724          	jreq	L065
5421  0022 a30100        	cpw	x,#256
5422  0025 271f          	jreq	L065
5423  0027 a30200        	cpw	x,#512
5424  002a 271a          	jreq	L065
5425  002c a30400        	cpw	x,#1024
5426  002f 2715          	jreq	L065
5427  0031 a30800        	cpw	x,#2048
5428  0034 2710          	jreq	L065
5429  0036 ae0548        	ldw	x,#1352
5430  0039 89            	pushw	x
5431  003a 5f            	clrw	x
5432  003b 89            	pushw	x
5433  003c ae0008        	ldw	x,#L572
5434  003f cd0000        	call	_assert_failed
5436  0042 5b04          	addw	sp,#4
5437  0044 1e02          	ldw	x,(OFST+1,sp)
5438  0046               L065:
5439                     ; 1354   switch (CAN_IT)
5442                     ; 1395   default :
5442                     ; 1396     break;
5443  0046 5a            	decw	x
5444  0047 272a          	jreq	L1422
5445  0049 1d0003        	subw	x,#3
5446  004c 272b          	jreq	L3422
5447  004e 1d0004        	subw	x,#4
5448  0051 272c          	jreq	L5422
5449  0053 1d0078        	subw	x,#120
5450  0056 272d          	jreq	L7422
5451  0058 1d0080        	subw	x,#128
5452  005b 2736          	jreq	L3522
5453  005d 1d0100        	subw	x,#256
5454  0060 2731          	jreq	L3522
5455  0062 1d0200        	subw	x,#512
5456  0065 272c          	jreq	L3522
5457  0067 1d0400        	subw	x,#1024
5458  006a 272d          	jreq	L1622
5459  006c 1d3800        	subw	x,#14336
5460  006f 271a          	jreq	L1522
5461  0071 202e          	jra	L1132
5462  0073               L1422:
5463                     ; 1356   case CAN_IT_TME:
5463                     ; 1357     CAN->TSR = CAN_TSR_RQCP012;/* rc_w1*/
5465  0073 35075422      	mov	21538,#7
5466                     ; 1358     break;
5468  0077 2028          	jra	L1132
5469  0079               L3422:
5470                     ; 1360   case CAN_IT_FF:
5470                     ; 1361     CAN->RFR = CAN_RFR_FULL; /* rc_w1*/
5472  0079 35085424      	mov	21540,#8
5473                     ; 1362     break;
5475  007d 2022          	jra	L1132
5476  007f               L5422:
5477                     ; 1364   case CAN_IT_FOV:
5477                     ; 1365     CAN->RFR = CAN_RFR_FOVR; /* rc_w1*/
5479  007f 35105424      	mov	21540,#16
5480                     ; 1366     break;
5482  0083 201c          	jra	L1132
5483  0085               L7422:
5484                     ; 1368   case CAN_IT_WKU:
5484                     ; 1369     CAN->MSR = CAN_MSR_WKUI;  /* rc_w1*/
5486  0085 35085421      	mov	21537,#8
5487                     ; 1370     break;
5489  0089 2016          	jra	L1132
5490  008b               L1522:
5491                     ; 1372   case CAN_IT_ERR:
5491                     ; 1373     CAN->PSR = CAN_Page_Config;
5493  008b 35065427      	mov	21543,#6
5494                     ; 1374     CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
5496  008f 725f5428      	clr	21544
5497                     ; 1375     CAN->MSR = CAN_MSR_ERRI;
5498                     ; 1376     break;
5500  0093               L3522:
5501                     ; 1378   case CAN_IT_EWG:
5501                     ; 1379     CAN->MSR = CAN_MSR_ERRI;
5502                     ; 1380     break;
5504                     ; 1382   case CAN_IT_EPV:
5504                     ; 1383     CAN->MSR = CAN_MSR_ERRI;
5505                     ; 1384     break;
5507                     ; 1386   case CAN_IT_BOF:
5507                     ; 1387     CAN->MSR = CAN_MSR_ERRI;
5512  0093 35045421      	mov	21537,#4
5513                     ; 1388     break;
5515  0097 2008          	jra	L1132
5516  0099               L1622:
5517                     ; 1390   case CAN_IT_LEC:
5517                     ; 1391     CAN->PSR = CAN_Page_Config;
5519  0099 35065427      	mov	21543,#6
5520                     ; 1392     CAN->Page.Config.ESR = (uint8_t)CAN_ESR_RESET_VALUE;
5522  009d 725f5428      	clr	21544
5523                     ; 1393     break;
5525                     ; 1395   default :
5525                     ; 1396     break;
5527  00a1               L1132:
5528                     ; 1399   CAN_SelectPage(can_page);
5530  00a1 7b01          	ld	a,(OFST+0,sp)
5531  00a3 cd0000        	call	_CAN_SelectPage
5533                     ; 1400 }
5536  00a6 5b03          	addw	sp,#3
5537  00a8 81            	ret	
5562                     ; 1407 CAN_Page_TypeDef CAN_GetSelectedPage(void)
5562                     ; 1408 {
5563                     .text:	section	.text,new
5564  0000               _CAN_GetSelectedPage:
5568                     ; 1409   return (CAN_Page_TypeDef)(CAN->PSR);
5570  0000 c65427        	ld	a,21543
5573  0003 81            	ret	
5608                     ; 1417 void CAN_SelectPage(CAN_Page_TypeDef CAN_Page)
5608                     ; 1418 {
5609                     .text:	section	.text,new
5610  0000               _CAN_SelectPage:
5614                     ; 1419   CAN->PSR = (uint8_t)CAN_Page;
5616  0000 c75427        	ld	21543,a
5617                     ; 1420 }
5620  0003 81            	ret	
5670                     ; 1428 static ITStatus CheckITStatus(uint8_t CAN_Reg, uint8_t It_Bit)
5670                     ; 1429 {
5671                     .text:	section	.text,new
5672  0000               L3_CheckITStatus:
5674  0000 89            	pushw	x
5675  0001 88            	push	a
5676       00000001      OFST:	set	1
5679                     ; 1430   ITStatus pendingbitstatus = RESET;
5681  0002 0f01          	clr	(OFST+0,sp)
5682                     ; 1431   if ((CAN_Reg & It_Bit) != (uint8_t)RESET)
5684  0004 9f            	ld	a,xl
5685  0005 1402          	and	a,(OFST+1,sp)
5686  0007 2702          	jreq	L3632
5687                     ; 1434     pendingbitstatus = SET;
5689  0009 a601          	ld	a,#1
5691  000b               L3632:
5692                     ; 1439     pendingbitstatus = RESET;
5694                     ; 1441   return (ITStatus)pendingbitstatus;
5698  000b 5b03          	addw	sp,#3
5699  000d 81            	ret	
5769                     	xdef	__FMI
5770                     	xdef	__Data
5771                     	xdef	__DLC
5772                     	xdef	__RTR
5773                     	xdef	__IDE
5774                     	xdef	__Id
5775                     	xdef	_CAN_ClearITPendingBit
5776                     	xdef	_CAN_GetITStatus
5777                     	xdef	_CAN_ClearFlag
5778                     	xdef	_CAN_GetFlagStatus
5779                     	xdef	_CAN_SelectPage
5780                     	xdef	_CAN_GetSelectedPage
5781                     	xdef	_CAN_GetLastErrorCode
5782                     	xdef	_CAN_OperatingModeRequest
5783                     	xdef	_CAN_WakeUp
5784                     	xdef	_CAN_Sleep
5785                     	xdef	_CAN_GetMessageTimeStamp
5786                     	xdef	_CAN_GetReceivedFMI
5787                     	xdef	_CAN_GetReceivedData
5788                     	xdef	_CAN_GetReceivedDLC
5789                     	xdef	_CAN_GetReceivedRTR
5790                     	xdef	_CAN_GetReceivedIDE
5791                     	xdef	_CAN_GetReceivedId
5792                     	xdef	_CAN_Receive
5793                     	xdef	_CAN_MessagePending
5794                     	xdef	_CAN_FIFORelease
5795                     	xdef	_CAN_CancelTransmit
5796                     	xdef	_CAN_TransmitStatus
5797                     	xdef	_CAN_TTComModeCmd
5798                     	xdef	_CAN_Transmit
5799                     	xdef	_CAN_ST7CompatibilityCmd
5800                     	xdef	_CAN_ITConfig
5801                     	xdef	_CAN_FilterInit
5802                     	xdef	_CAN_Init
5803                     	xdef	_CAN_DeInit
5804                     	xref	_assert_failed
5805                     	switch	.const
5806  0008               L572:
5807  0008 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
5808  001a 6965735c7374  	dc.b	"ies\stm8s_stdperip"
5809  002c 685f64726976  	dc.b	"h_driver\src\stm8s"
5810  003e 5f63616e2e63  	dc.b	"_can.c",0
5811                     	xref.b	c_lreg
5831                     	xref	c_uitol
5832                     	xref	c_uitolx
5833                     	xref	c_llsh
5834                     	xref	c_umul
5835                     	xref	c_lor
5836                     	xref	c_rtol
5837                     	xref	c_lursh
5838                     	xref	c_lgursh
5839                     	xref	c_lcmp
5840                     	xref	c_ltor
5841                     	end
