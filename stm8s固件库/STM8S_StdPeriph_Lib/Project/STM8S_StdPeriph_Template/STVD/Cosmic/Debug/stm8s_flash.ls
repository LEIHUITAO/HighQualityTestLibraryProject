   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  66                     ; 87 void FLASH_Unlock(FLASH_MemType_TypeDef FLASH_MemType)
  66                     ; 88 {
  68                     .text:	section	.text,new
  69  0000               _FLASH_Unlock:
  71  0000 88            	push	a
  72       00000000      OFST:	set	0
  75                     ; 90   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
  77  0001 a1fd          	cp	a,#253
  78  0003 2712          	jreq	L21
  79  0005 a1f7          	cp	a,#247
  80  0007 270e          	jreq	L21
  81  0009 ae005a        	ldw	x,#90
  82  000c 89            	pushw	x
  83  000d 5f            	clrw	x
  84  000e 89            	pushw	x
  85  000f ae0010        	ldw	x,#L73
  86  0012 cd0000        	call	_assert_failed
  88  0015 5b04          	addw	sp,#4
  89  0017               L21:
  90                     ; 93   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
  92  0017 7b01          	ld	a,(OFST+1,sp)
  93  0019 a1fd          	cp	a,#253
  94  001b 260a          	jrne	L14
  95                     ; 95     FLASH->PUKR = FLASH_RASS_KEY1;
  97  001d 35565062      	mov	20578,#86
  98                     ; 96     FLASH->PUKR = FLASH_RASS_KEY2;
 100  0021 35ae5062      	mov	20578,#174
 102  0025 2008          	jra	L34
 103  0027               L14:
 104                     ; 101     FLASH->DUKR = FLASH_RASS_KEY2; /* Warning: keys are reversed on data memory !!! */
 106  0027 35ae5064      	mov	20580,#174
 107                     ; 102     FLASH->DUKR = FLASH_RASS_KEY1;
 109  002b 35565064      	mov	20580,#86
 110  002f               L34:
 111                     ; 104 }
 114  002f 84            	pop	a
 115  0030 81            	ret	
 151                     ; 112 void FLASH_Lock(FLASH_MemType_TypeDef FLASH_MemType)
 151                     ; 113 {
 152                     .text:	section	.text,new
 153  0000               _FLASH_Lock:
 155  0000 88            	push	a
 156       00000000      OFST:	set	0
 159                     ; 115   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
 161  0001 a1fd          	cp	a,#253
 162  0003 2712          	jreq	L42
 163  0005 a1f7          	cp	a,#247
 164  0007 270e          	jreq	L42
 165  0009 ae0073        	ldw	x,#115
 166  000c 89            	pushw	x
 167  000d 5f            	clrw	x
 168  000e 89            	pushw	x
 169  000f ae0010        	ldw	x,#L73
 170  0012 cd0000        	call	_assert_failed
 172  0015 5b04          	addw	sp,#4
 173  0017               L42:
 174                     ; 118   FLASH->IAPSR &= (uint8_t)FLASH_MemType;
 176  0017 c6505f        	ld	a,20575
 177  001a 1401          	and	a,(OFST+1,sp)
 178  001c c7505f        	ld	20575,a
 179                     ; 119 }
 182  001f 84            	pop	a
 183  0020 81            	ret	
 206                     ; 126 void FLASH_DeInit(void)
 206                     ; 127 {
 207                     .text:	section	.text,new
 208  0000               _FLASH_DeInit:
 212                     ; 128   FLASH->CR1 = FLASH_CR1_RESET_VALUE;
 214  0000 725f505a      	clr	20570
 215                     ; 129   FLASH->CR2 = FLASH_CR2_RESET_VALUE;
 217  0004 725f505b      	clr	20571
 218                     ; 130   FLASH->NCR2 = FLASH_NCR2_RESET_VALUE;
 220  0008 35ff505c      	mov	20572,#255
 221                     ; 131   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_DUL);
 223  000c 7217505f      	bres	20575,#3
 224                     ; 132   FLASH->IAPSR &= (uint8_t)(~FLASH_IAPSR_PUL);
 226  0010 7213505f      	bres	20575,#1
 227                     ; 133   (void) FLASH->IAPSR; /* Reading of this register causes the clearing of status flags */
 229  0014 c6505f        	ld	a,20575
 230                     ; 134 }
 233  0017 81            	ret	
 289                     ; 142 void FLASH_ITConfig(FunctionalState NewState)
 289                     ; 143 {
 290                     .text:	section	.text,new
 291  0000               _FLASH_ITConfig:
 293  0000 88            	push	a
 294       00000000      OFST:	set	0
 297                     ; 145   assert_param(IS_FUNCTIONALSTATE_OK(NewState));
 299  0001 4d            	tnz	a
 300  0002 2711          	jreq	L04
 301  0004 4a            	dec	a
 302  0005 270e          	jreq	L04
 303  0007 ae0091        	ldw	x,#145
 304  000a 89            	pushw	x
 305  000b 5f            	clrw	x
 306  000c 89            	pushw	x
 307  000d ae0010        	ldw	x,#L73
 308  0010 cd0000        	call	_assert_failed
 310  0013 5b04          	addw	sp,#4
 311  0015               L04:
 312                     ; 147   if(NewState != DISABLE)
 314  0015 7b01          	ld	a,(OFST+1,sp)
 315  0017 2706          	jreq	L121
 316                     ; 149     FLASH->CR1 |= FLASH_CR1_IE; /* Enables the interrupt sources */
 318  0019 7212505a      	bset	20570,#1
 320  001d 2004          	jra	L321
 321  001f               L121:
 322                     ; 153     FLASH->CR1 &= (uint8_t)(~FLASH_CR1_IE); /* Disables the interrupt sources */
 324  001f 7213505a      	bres	20570,#1
 325  0023               L321:
 326                     ; 155 }
 329  0023 84            	pop	a
 330  0024 81            	ret	
 363                     .const:	section	.text
 364  0000               L45:
 365  0000 00008000      	dc.l	32768
 366  0004               L65:
 367  0004 00010000      	dc.l	65536
 368  0008               L06:
 369  0008 00004000      	dc.l	16384
 370  000c               L26:
 371  000c 00004400      	dc.l	17408
 372                     ; 164 void FLASH_EraseByte(uint32_t Address)
 372                     ; 165 {
 373                     .text:	section	.text,new
 374  0000               _FLASH_EraseByte:
 376       00000000      OFST:	set	0
 379                     ; 167   assert_param(IS_FLASH_ADDRESS_OK(Address));
 381  0000 96            	ldw	x,sp
 382  0001 1c0003        	addw	x,#OFST+3
 383  0004 cd0000        	call	c_ltor
 385  0007 ae0000        	ldw	x,#L45
 386  000a cd0000        	call	c_lcmp
 388  000d 250f          	jrult	L25
 389  000f 96            	ldw	x,sp
 390  0010 1c0003        	addw	x,#OFST+3
 391  0013 cd0000        	call	c_ltor
 393  0016 ae0004        	ldw	x,#L65
 394  0019 cd0000        	call	c_lcmp
 396  001c 252c          	jrult	L46
 397  001e               L25:
 398  001e 96            	ldw	x,sp
 399  001f 1c0003        	addw	x,#OFST+3
 400  0022 cd0000        	call	c_ltor
 402  0025 ae0008        	ldw	x,#L06
 403  0028 cd0000        	call	c_lcmp
 405  002b 250f          	jrult	L64
 406  002d 96            	ldw	x,sp
 407  002e 1c0003        	addw	x,#OFST+3
 408  0031 cd0000        	call	c_ltor
 410  0034 ae000c        	ldw	x,#L26
 411  0037 cd0000        	call	c_lcmp
 413  003a 250e          	jrult	L46
 414  003c               L64:
 415  003c ae00a7        	ldw	x,#167
 416  003f 89            	pushw	x
 417  0040 5f            	clrw	x
 418  0041 89            	pushw	x
 419  0042 ae0010        	ldw	x,#L73
 420  0045 cd0000        	call	_assert_failed
 422  0048 5b04          	addw	sp,#4
 423  004a               L46:
 424                     ; 170   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = FLASH_CLEAR_BYTE; 
 426  004a 1e05          	ldw	x,(OFST+5,sp)
 427  004c 7f            	clr	(x)
 428                     ; 171 }
 431  004d 81            	ret	
 471                     ; 181 void FLASH_ProgramByte(uint32_t Address, uint8_t Data)
 471                     ; 182 {
 472                     .text:	section	.text,new
 473  0000               _FLASH_ProgramByte:
 475       00000000      OFST:	set	0
 478                     ; 184   assert_param(IS_FLASH_ADDRESS_OK(Address));
 480  0000 96            	ldw	x,sp
 481  0001 1c0003        	addw	x,#OFST+3
 482  0004 cd0000        	call	c_ltor
 484  0007 ae0000        	ldw	x,#L45
 485  000a cd0000        	call	c_lcmp
 487  000d 250f          	jrult	L67
 488  000f 96            	ldw	x,sp
 489  0010 1c0003        	addw	x,#OFST+3
 490  0013 cd0000        	call	c_ltor
 492  0016 ae0004        	ldw	x,#L65
 493  0019 cd0000        	call	c_lcmp
 495  001c 252c          	jrult	L001
 496  001e               L67:
 497  001e 96            	ldw	x,sp
 498  001f 1c0003        	addw	x,#OFST+3
 499  0022 cd0000        	call	c_ltor
 501  0025 ae0008        	ldw	x,#L06
 502  0028 cd0000        	call	c_lcmp
 504  002b 250f          	jrult	L27
 505  002d 96            	ldw	x,sp
 506  002e 1c0003        	addw	x,#OFST+3
 507  0031 cd0000        	call	c_ltor
 509  0034 ae000c        	ldw	x,#L26
 510  0037 cd0000        	call	c_lcmp
 512  003a 250e          	jrult	L001
 513  003c               L27:
 514  003c ae00b8        	ldw	x,#184
 515  003f 89            	pushw	x
 516  0040 5f            	clrw	x
 517  0041 89            	pushw	x
 518  0042 ae0010        	ldw	x,#L73
 519  0045 cd0000        	call	_assert_failed
 521  0048 5b04          	addw	sp,#4
 522  004a               L001:
 523                     ; 185   *(PointerAttr uint8_t*) (MemoryAddressCast)Address = Data;
 525  004a 7b07          	ld	a,(OFST+7,sp)
 526  004c 1e05          	ldw	x,(OFST+5,sp)
 527  004e f7            	ld	(x),a
 528                     ; 186 }
 531  004f 81            	ret	
 564                     ; 195 uint8_t FLASH_ReadByte(uint32_t Address)
 564                     ; 196 {
 565                     .text:	section	.text,new
 566  0000               _FLASH_ReadByte:
 568       00000000      OFST:	set	0
 571                     ; 198   assert_param(IS_FLASH_ADDRESS_OK(Address));
 573  0000 96            	ldw	x,sp
 574  0001 1c0003        	addw	x,#OFST+3
 575  0004 cd0000        	call	c_ltor
 577  0007 ae0000        	ldw	x,#L45
 578  000a cd0000        	call	c_lcmp
 580  000d 250f          	jrult	L211
 581  000f 96            	ldw	x,sp
 582  0010 1c0003        	addw	x,#OFST+3
 583  0013 cd0000        	call	c_ltor
 585  0016 ae0004        	ldw	x,#L65
 586  0019 cd0000        	call	c_lcmp
 588  001c 252c          	jrult	L411
 589  001e               L211:
 590  001e 96            	ldw	x,sp
 591  001f 1c0003        	addw	x,#OFST+3
 592  0022 cd0000        	call	c_ltor
 594  0025 ae0008        	ldw	x,#L06
 595  0028 cd0000        	call	c_lcmp
 597  002b 250f          	jrult	L601
 598  002d 96            	ldw	x,sp
 599  002e 1c0003        	addw	x,#OFST+3
 600  0031 cd0000        	call	c_ltor
 602  0034 ae000c        	ldw	x,#L26
 603  0037 cd0000        	call	c_lcmp
 605  003a 250e          	jrult	L411
 606  003c               L601:
 607  003c ae00c6        	ldw	x,#198
 608  003f 89            	pushw	x
 609  0040 5f            	clrw	x
 610  0041 89            	pushw	x
 611  0042 ae0010        	ldw	x,#L73
 612  0045 cd0000        	call	_assert_failed
 614  0048 5b04          	addw	sp,#4
 615  004a               L411:
 616                     ; 201   return(*(PointerAttr uint8_t *) (MemoryAddressCast)Address); 
 618  004a 1e05          	ldw	x,(OFST+5,sp)
 619  004c f6            	ld	a,(x)
 622  004d 81            	ret	
 662                     ; 212 void FLASH_ProgramWord(uint32_t Address, uint32_t Data)
 662                     ; 213 {
 663                     .text:	section	.text,new
 664  0000               _FLASH_ProgramWord:
 666       00000000      OFST:	set	0
 669                     ; 215   assert_param(IS_FLASH_ADDRESS_OK(Address));
 671  0000 96            	ldw	x,sp
 672  0001 1c0003        	addw	x,#OFST+3
 673  0004 cd0000        	call	c_ltor
 675  0007 ae0000        	ldw	x,#L45
 676  000a cd0000        	call	c_lcmp
 678  000d 250f          	jrult	L621
 679  000f 96            	ldw	x,sp
 680  0010 1c0003        	addw	x,#OFST+3
 681  0013 cd0000        	call	c_ltor
 683  0016 ae0004        	ldw	x,#L65
 684  0019 cd0000        	call	c_lcmp
 686  001c 252c          	jrult	L031
 687  001e               L621:
 688  001e 96            	ldw	x,sp
 689  001f 1c0003        	addw	x,#OFST+3
 690  0022 cd0000        	call	c_ltor
 692  0025 ae0008        	ldw	x,#L06
 693  0028 cd0000        	call	c_lcmp
 695  002b 250f          	jrult	L221
 696  002d 96            	ldw	x,sp
 697  002e 1c0003        	addw	x,#OFST+3
 698  0031 cd0000        	call	c_ltor
 700  0034 ae000c        	ldw	x,#L26
 701  0037 cd0000        	call	c_lcmp
 703  003a 250e          	jrult	L031
 704  003c               L221:
 705  003c ae00d7        	ldw	x,#215
 706  003f 89            	pushw	x
 707  0040 5f            	clrw	x
 708  0041 89            	pushw	x
 709  0042 ae0010        	ldw	x,#L73
 710  0045 cd0000        	call	_assert_failed
 712  0048 5b04          	addw	sp,#4
 713  004a               L031:
 714                     ; 218   FLASH->CR2 |= FLASH_CR2_WPRG;
 716  004a 721c505b      	bset	20571,#6
 717                     ; 219   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NWPRG);
 719  004e 721d505c      	bres	20572,#6
 720                     ; 222   *((PointerAttr uint8_t*)(MemoryAddressCast)Address)       = *((uint8_t*)(&Data));
 722  0052 7b07          	ld	a,(OFST+7,sp)
 723  0054 1e05          	ldw	x,(OFST+5,sp)
 724  0056 f7            	ld	(x),a
 725                     ; 224   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 1) = *((uint8_t*)(&Data)+1); 
 727  0057 7b08          	ld	a,(OFST+8,sp)
 728  0059 e701          	ld	(1,x),a
 729                     ; 226   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 2) = *((uint8_t*)(&Data)+2); 
 731  005b 7b09          	ld	a,(OFST+9,sp)
 732  005d e702          	ld	(2,x),a
 733                     ; 228   *(((PointerAttr uint8_t*)(MemoryAddressCast)Address) + 3) = *((uint8_t*)(&Data)+3); 
 735  005f 7b0a          	ld	a,(OFST+10,sp)
 736  0061 e703          	ld	(3,x),a
 737                     ; 229 }
 740  0063 81            	ret	
 782                     ; 237 void FLASH_ProgramOptionByte(uint16_t Address, uint8_t Data)
 782                     ; 238 {
 783                     .text:	section	.text,new
 784  0000               _FLASH_ProgramOptionByte:
 786  0000 89            	pushw	x
 787       00000000      OFST:	set	0
 790                     ; 240   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 792  0001 a34800        	cpw	x,#18432
 793  0004 2505          	jrult	L631
 794  0006 a34880        	cpw	x,#18560
 795  0009 250e          	jrult	L041
 796  000b               L631:
 797  000b ae00f0        	ldw	x,#240
 798  000e 89            	pushw	x
 799  000f 5f            	clrw	x
 800  0010 89            	pushw	x
 801  0011 ae0010        	ldw	x,#L73
 802  0014 cd0000        	call	_assert_failed
 804  0017 5b04          	addw	sp,#4
 805  0019               L041:
 806                     ; 243   FLASH->CR2 |= FLASH_CR2_OPT;
 808  0019 721e505b      	bset	20571,#7
 809                     ; 244   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 811  001d 721f505c      	bres	20572,#7
 812                     ; 247   if(Address == 0x4800)
 814  0021 1e01          	ldw	x,(OFST+1,sp)
 815  0023 a34800        	cpw	x,#18432
 816  0026 2605          	jrne	L722
 817                     ; 250     *((NEAR uint8_t*)Address) = Data;
 819  0028 7b05          	ld	a,(OFST+5,sp)
 820  002a f7            	ld	(x),a
 822  002b 2006          	jra	L132
 823  002d               L722:
 824                     ; 255     *((NEAR uint8_t*)Address) = Data;
 826  002d 7b05          	ld	a,(OFST+5,sp)
 827  002f f7            	ld	(x),a
 828                     ; 256     *((NEAR uint8_t*)((uint16_t)(Address + 1))) = (uint8_t)(~Data);
 830  0030 43            	cpl	a
 831  0031 e701          	ld	(1,x),a
 832  0033               L132:
 833                     ; 258   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 835  0033 a6fd          	ld	a,#253
 836  0035 cd0000        	call	_FLASH_WaitForLastOperation
 838                     ; 261   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 840  0038 721f505b      	bres	20571,#7
 841                     ; 262   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 843  003c 721e505c      	bset	20572,#7
 844                     ; 263 }
 847  0040 85            	popw	x
 848  0041 81            	ret	
 883                     ; 270 void FLASH_EraseOptionByte(uint16_t Address)
 883                     ; 271 {
 884                     .text:	section	.text,new
 885  0000               _FLASH_EraseOptionByte:
 887  0000 89            	pushw	x
 888       00000000      OFST:	set	0
 891                     ; 273   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
 893  0001 a34800        	cpw	x,#18432
 894  0004 2505          	jrult	L051
 895  0006 a34880        	cpw	x,#18560
 896  0009 250e          	jrult	L251
 897  000b               L051:
 898  000b ae0111        	ldw	x,#273
 899  000e 89            	pushw	x
 900  000f 5f            	clrw	x
 901  0010 89            	pushw	x
 902  0011 ae0010        	ldw	x,#L73
 903  0014 cd0000        	call	_assert_failed
 905  0017 5b04          	addw	sp,#4
 906  0019               L251:
 907                     ; 276   FLASH->CR2 |= FLASH_CR2_OPT;
 909  0019 721e505b      	bset	20571,#7
 910                     ; 277   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NOPT);
 912  001d 721f505c      	bres	20572,#7
 913                     ; 280   if(Address == 0x4800)
 915  0021 1e01          	ldw	x,(OFST+1,sp)
 916  0023 a34800        	cpw	x,#18432
 917  0026 2603          	jrne	L742
 918                     ; 283     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 920  0028 7f            	clr	(x)
 922  0029 2005          	jra	L152
 923  002b               L742:
 924                     ; 288     *((NEAR uint8_t*)Address) = FLASH_CLEAR_BYTE;
 926  002b 7f            	clr	(x)
 927                     ; 289     *((NEAR uint8_t*)((uint16_t)(Address + (uint16_t)1 ))) = FLASH_SET_BYTE;
 929  002c a6ff          	ld	a,#255
 930  002e e701          	ld	(1,x),a
 931  0030               L152:
 932                     ; 291   FLASH_WaitForLastOperation(FLASH_MEMTYPE_PROG);
 934  0030 a6fd          	ld	a,#253
 935  0032 cd0000        	call	_FLASH_WaitForLastOperation
 937                     ; 294   FLASH->CR2 &= (uint8_t)(~FLASH_CR2_OPT);
 939  0035 721f505b      	bres	20571,#7
 940                     ; 295   FLASH->NCR2 |= FLASH_NCR2_NOPT;
 942  0039 721e505c      	bset	20572,#7
 943                     ; 296 }
 946  003d 85            	popw	x
 947  003e 81            	ret	
1003                     ; 303 uint16_t FLASH_ReadOptionByte(uint16_t Address)
1003                     ; 304 {
1004                     .text:	section	.text,new
1005  0000               _FLASH_ReadOptionByte:
1007  0000 89            	pushw	x
1008  0001 5204          	subw	sp,#4
1009       00000004      OFST:	set	4
1012                     ; 305   uint8_t value_optbyte, value_optbyte_complement = 0;
1014                     ; 306   uint16_t res_value = 0;
1016                     ; 309   assert_param(IS_OPTION_BYTE_ADDRESS_OK(Address));
1018  0003 1e05          	ldw	x,(OFST+1,sp)
1019  0005 a34800        	cpw	x,#18432
1020  0008 2505          	jrult	L261
1021  000a a34880        	cpw	x,#18560
1022  000d 2510          	jrult	L461
1023  000f               L261:
1024  000f ae0135        	ldw	x,#309
1025  0012 89            	pushw	x
1026  0013 5f            	clrw	x
1027  0014 89            	pushw	x
1028  0015 ae0010        	ldw	x,#L73
1029  0018 cd0000        	call	_assert_failed
1031  001b 5b04          	addw	sp,#4
1032  001d 1e05          	ldw	x,(OFST+1,sp)
1033  001f               L461:
1034                     ; 311   value_optbyte = *((NEAR uint8_t*)Address); /* Read option byte */
1036  001f f6            	ld	a,(x)
1037  0020 6b02          	ld	(OFST-2,sp),a
1038                     ; 312   value_optbyte_complement = *(((NEAR uint8_t*)Address) + 1); /* Read option byte complement */
1040  0022 e601          	ld	a,(1,x)
1041  0024 6b01          	ld	(OFST-3,sp),a
1042                     ; 315   if(Address == 0x4800)	 
1044  0026 a34800        	cpw	x,#18432
1045  0029 2606          	jrne	L572
1046                     ; 317     res_value =	 value_optbyte;
1048  002b 7b02          	ld	a,(OFST-2,sp)
1049  002d 5f            	clrw	x
1050  002e 97            	ld	xl,a
1052  002f 201c          	jra	L772
1053  0031               L572:
1054                     ; 321     if(value_optbyte == (uint8_t)(~value_optbyte_complement))
1056  0031 43            	cpl	a
1057  0032 1102          	cp	a,(OFST-2,sp)
1058  0034 2614          	jrne	L103
1059                     ; 323       res_value = (uint16_t)((uint16_t)value_optbyte << 8);
1061  0036 7b02          	ld	a,(OFST-2,sp)
1062  0038 97            	ld	xl,a
1063  0039 4f            	clr	a
1064  003a 02            	rlwa	x,a
1065  003b 1f03          	ldw	(OFST-1,sp),x
1066                     ; 324       res_value = res_value | (uint16_t)value_optbyte_complement;
1068  003d 7b01          	ld	a,(OFST-3,sp)
1069  003f 5f            	clrw	x
1070  0040 97            	ld	xl,a
1071  0041 01            	rrwa	x,a
1072  0042 1a04          	or	a,(OFST+0,sp)
1073  0044 01            	rrwa	x,a
1074  0045 1a03          	or	a,(OFST-1,sp)
1075  0047 01            	rrwa	x,a
1077  0048 2003          	jra	L772
1078  004a               L103:
1079                     ; 328       res_value = FLASH_OPTIONBYTE_ERROR;
1081  004a ae5555        	ldw	x,#21845
1082  004d               L772:
1083                     ; 331   return(res_value);
1087  004d 5b06          	addw	sp,#6
1088  004f 81            	ret	
1163                     ; 340 void FLASH_SetLowPowerMode(FLASH_LPMode_TypeDef FLASH_LPMode)
1163                     ; 341 {
1164                     .text:	section	.text,new
1165  0000               _FLASH_SetLowPowerMode:
1167  0000 88            	push	a
1168       00000000      OFST:	set	0
1171                     ; 343   assert_param(IS_FLASH_LOW_POWER_MODE_OK(FLASH_LPMode));
1173  0001 a104          	cp	a,#4
1174  0003 2719          	jreq	L671
1175  0005 a108          	cp	a,#8
1176  0007 2715          	jreq	L671
1177  0009 4d            	tnz	a
1178  000a 2712          	jreq	L671
1179  000c a10c          	cp	a,#12
1180  000e 270e          	jreq	L671
1181  0010 ae0157        	ldw	x,#343
1182  0013 89            	pushw	x
1183  0014 5f            	clrw	x
1184  0015 89            	pushw	x
1185  0016 ae0010        	ldw	x,#L73
1186  0019 cd0000        	call	_assert_failed
1188  001c 5b04          	addw	sp,#4
1189  001e               L671:
1190                     ; 346   FLASH->CR1 &= (uint8_t)(~(FLASH_CR1_HALT | FLASH_CR1_AHALT)); 
1192  001e c6505a        	ld	a,20570
1193  0021 a4f3          	and	a,#243
1194  0023 c7505a        	ld	20570,a
1195                     ; 349   FLASH->CR1 |= (uint8_t)FLASH_LPMode; 
1197  0026 c6505a        	ld	a,20570
1198  0029 1a01          	or	a,(OFST+1,sp)
1199  002b c7505a        	ld	20570,a
1200                     ; 350 }
1203  002e 84            	pop	a
1204  002f 81            	ret	
1263                     ; 358 void FLASH_SetProgrammingTime(FLASH_ProgramTime_TypeDef FLASH_ProgTime)
1263                     ; 359 {
1264                     .text:	section	.text,new
1265  0000               _FLASH_SetProgrammingTime:
1267  0000 88            	push	a
1268       00000000      OFST:	set	0
1271                     ; 361   assert_param(IS_FLASH_PROGRAM_TIME_OK(FLASH_ProgTime));
1273  0001 4d            	tnz	a
1274  0002 2711          	jreq	L012
1275  0004 4a            	dec	a
1276  0005 270e          	jreq	L012
1277  0007 ae0169        	ldw	x,#361
1278  000a 89            	pushw	x
1279  000b 5f            	clrw	x
1280  000c 89            	pushw	x
1281  000d ae0010        	ldw	x,#L73
1282  0010 cd0000        	call	_assert_failed
1284  0013 5b04          	addw	sp,#4
1285  0015               L012:
1286                     ; 363   FLASH->CR1 &= (uint8_t)(~FLASH_CR1_FIX);
1288  0015 7211505a      	bres	20570,#0
1289                     ; 364   FLASH->CR1 |= (uint8_t)FLASH_ProgTime;
1291  0019 c6505a        	ld	a,20570
1292  001c 1a01          	or	a,(OFST+1,sp)
1293  001e c7505a        	ld	20570,a
1294                     ; 365 }
1297  0021 84            	pop	a
1298  0022 81            	ret	
1323                     ; 372 FLASH_LPMode_TypeDef FLASH_GetLowPowerMode(void)
1323                     ; 373 {
1324                     .text:	section	.text,new
1325  0000               _FLASH_GetLowPowerMode:
1329                     ; 374   return((FLASH_LPMode_TypeDef)(FLASH->CR1 & (uint8_t)(FLASH_CR1_HALT | FLASH_CR1_AHALT)));
1331  0000 c6505a        	ld	a,20570
1332  0003 a40c          	and	a,#12
1335  0005 81            	ret	
1360                     ; 382 FLASH_ProgramTime_TypeDef FLASH_GetProgrammingTime(void)
1360                     ; 383 {
1361                     .text:	section	.text,new
1362  0000               _FLASH_GetProgrammingTime:
1366                     ; 384   return((FLASH_ProgramTime_TypeDef)(FLASH->CR1 & FLASH_CR1_FIX));
1368  0000 c6505a        	ld	a,20570
1369  0003 a401          	and	a,#1
1372  0005 81            	ret	
1404                     ; 392 uint32_t FLASH_GetBootSize(void)
1404                     ; 393 {
1405                     .text:	section	.text,new
1406  0000               _FLASH_GetBootSize:
1408  0000 5204          	subw	sp,#4
1409       00000004      OFST:	set	4
1412                     ; 394   uint32_t temp = 0;
1414  0002 5f            	clrw	x
1415  0003 1f03          	ldw	(OFST-1,sp),x
1416  0005 1f01          	ldw	(OFST-3,sp),x
1417                     ; 397   temp = (uint32_t)((uint32_t)FLASH->FPR * (uint32_t)512);
1419  0007 c6505d        	ld	a,20573
1420  000a 97            	ld	xl,a
1421  000b 90ae0200      	ldw	y,#512
1422  000f cd0000        	call	c_umul
1424  0012 96            	ldw	x,sp
1425  0013 5c            	incw	x
1426  0014 cd0000        	call	c_rtol
1428                     ; 400   if(FLASH->FPR == 0xFF)
1430  0017 c6505d        	ld	a,20573
1431  001a 4c            	inc	a
1432  001b 260d          	jrne	L124
1433                     ; 402     temp += 512;
1435  001d ae0200        	ldw	x,#512
1436  0020 bf02          	ldw	c_lreg+2,x
1437  0022 5f            	clrw	x
1438  0023 bf00          	ldw	c_lreg,x
1439  0025 96            	ldw	x,sp
1440  0026 5c            	incw	x
1441  0027 cd0000        	call	c_lgadd
1443  002a               L124:
1444                     ; 406   return(temp);
1446  002a 96            	ldw	x,sp
1447  002b 5c            	incw	x
1448  002c cd0000        	call	c_ltor
1452  002f 5b04          	addw	sp,#4
1453  0031 81            	ret	
1563                     ; 417 FlagStatus FLASH_GetFlagStatus(FLASH_Flag_TypeDef FLASH_FLAG)
1563                     ; 418 {
1564                     .text:	section	.text,new
1565  0000               _FLASH_GetFlagStatus:
1567  0000 88            	push	a
1568  0001 88            	push	a
1569       00000001      OFST:	set	1
1572                     ; 419   FlagStatus status = RESET;
1574  0002 0f01          	clr	(OFST+0,sp)
1575                     ; 421   assert_param(IS_FLASH_FLAGS_OK(FLASH_FLAG));
1577  0004 a140          	cp	a,#64
1578  0006 271d          	jreq	L032
1579  0008 a108          	cp	a,#8
1580  000a 2719          	jreq	L032
1581  000c a104          	cp	a,#4
1582  000e 2715          	jreq	L032
1583  0010 a102          	cp	a,#2
1584  0012 2711          	jreq	L032
1585  0014 4a            	dec	a
1586  0015 270e          	jreq	L032
1587  0017 ae01a5        	ldw	x,#421
1588  001a 89            	pushw	x
1589  001b 5f            	clrw	x
1590  001c 89            	pushw	x
1591  001d ae0010        	ldw	x,#L73
1592  0020 cd0000        	call	_assert_failed
1594  0023 5b04          	addw	sp,#4
1595  0025               L032:
1596                     ; 424   if((FLASH->IAPSR & (uint8_t)FLASH_FLAG) != (uint8_t)RESET)
1598  0025 c6505f        	ld	a,20575
1599  0028 1502          	bcp	a,(OFST+1,sp)
1600  002a 2704          	jreq	L374
1601                     ; 426     status = SET; /* FLASH_FLAG is set */
1603  002c a601          	ld	a,#1
1605  002e 2001          	jra	L574
1606  0030               L374:
1607                     ; 430     status = RESET; /* FLASH_FLAG is reset*/
1609  0030 4f            	clr	a
1610  0031               L574:
1611                     ; 434   return status;
1615  0031 85            	popw	x
1616  0032 81            	ret	
1705                     ; 549 IN_RAM(FLASH_Status_TypeDef FLASH_WaitForLastOperation(FLASH_MemType_TypeDef FLASH_MemType)) 
1705                     ; 550 {
1706                     .text:	section	.text,new
1707  0000               _FLASH_WaitForLastOperation:
1709  0000 5203          	subw	sp,#3
1710       00000003      OFST:	set	3
1713                     ; 551   uint8_t flagstatus = 0x00;
1715  0002 0f03          	clr	(OFST+0,sp)
1716                     ; 552   uint16_t timeout = OPERATION_TIMEOUT;
1718  0004 aeffff        	ldw	x,#65535
1719  0007 1f01          	ldw	(OFST-2,sp),x
1720                     ; 557     if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1722  0009 a1fd          	cp	a,#253
1723  000b 2620          	jrne	L355
1725  000d 200a          	jra	L145
1726  000f               L735:
1727                     ; 561         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_EOP |
1727                     ; 562                                                         FLASH_IAPSR_WR_PG_DIS));
1729  000f c6505f        	ld	a,20575
1730  0012 a405          	and	a,#5
1731  0014 6b03          	ld	(OFST+0,sp),a
1732                     ; 563         timeout--;
1734  0016 5a            	decw	x
1735  0017 1f01          	ldw	(OFST-2,sp),x
1736  0019               L145:
1737                     ; 559       while((flagstatus == 0x00) && (timeout != 0x00))
1739  0019 7b03          	ld	a,(OFST+0,sp)
1740  001b 2618          	jrne	L745
1742  001d 1e01          	ldw	x,(OFST-2,sp)
1743  001f 26ee          	jrne	L735
1744  0021 2012          	jra	L745
1745  0023               L155:
1746                     ; 570         flagstatus = (uint8_t)(FLASH->IAPSR & (uint8_t)(FLASH_IAPSR_HVOFF |
1746                     ; 571                                                         FLASH_IAPSR_WR_PG_DIS));
1748  0023 c6505f        	ld	a,20575
1749  0026 a441          	and	a,#65
1750  0028 6b03          	ld	(OFST+0,sp),a
1751                     ; 572         timeout--;
1753  002a 5a            	decw	x
1754  002b 1f01          	ldw	(OFST-2,sp),x
1755  002d               L355:
1756                     ; 568       while((flagstatus == 0x00) && (timeout != 0x00))
1758  002d 7b03          	ld	a,(OFST+0,sp)
1759  002f 2604          	jrne	L745
1761  0031 1e01          	ldw	x,(OFST-2,sp)
1762  0033 26ee          	jrne	L155
1763  0035               L745:
1764                     ; 583   if(timeout == 0x00 )
1766  0035 1e01          	ldw	x,(OFST-2,sp)
1767  0037 2602          	jrne	L165
1768                     ; 585     flagstatus = FLASH_STATUS_TIMEOUT;
1770  0039 a602          	ld	a,#2
1771  003b               L165:
1772                     ; 588   return((FLASH_Status_TypeDef)flagstatus);
1776  003b 5b03          	addw	sp,#3
1777  003d 81            	ret	
1837                     ; 598 IN_RAM(void FLASH_EraseBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType))
1837                     ; 599 {
1838                     .text:	section	.text,new
1839  0000               _FLASH_EraseBlock:
1841  0000 89            	pushw	x
1842  0001 5206          	subw	sp,#6
1843       00000006      OFST:	set	6
1846                     ; 600   uint32_t startaddress = 0;
1848  0003 96            	ldw	x,sp
1849  0004 1c0003        	addw	x,#OFST-3
1850  0007 cd0000        	call	c_ltor
1852                     ; 610   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
1854  000a 7b0b          	ld	a,(OFST+5,sp)
1855  000c a1fd          	cp	a,#253
1856  000e 270b          	jreq	L442
1857  0010 a1f7          	cp	a,#247
1858  0012 2707          	jreq	L442
1859  0014 ae0262        	ldw	x,#610
1860  0017 ad50          	call	LC001
1861  0019 7b0b          	ld	a,(OFST+5,sp)
1862  001b               L442:
1863                     ; 611   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
1865  001b a1fd          	cp	a,#253
1866  001d 2611          	jrne	L116
1867                     ; 613     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
1869  001f 1e07          	ldw	x,(OFST+1,sp)
1870  0021 a30100        	cpw	x,#256
1871  0024 2505          	jrult	L252
1872  0026 ae0265        	ldw	x,#613
1873  0029 ad3e          	call	LC001
1874  002b               L252:
1875                     ; 614     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
1877  002b ae8000        	ldw	x,#32768
1879  002e 200f          	jra	L316
1880  0030               L116:
1881                     ; 618     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
1883  0030 1e07          	ldw	x,(OFST+1,sp)
1884  0032 a30008        	cpw	x,#8
1885  0035 2505          	jrult	L062
1886  0037 ae026a        	ldw	x,#618
1887  003a ad2d          	call	LC001
1888  003c               L062:
1889                     ; 619     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
1891  003c ae4000        	ldw	x,#16384
1892  003f               L316:
1893  003f 1f05          	ldw	(OFST-1,sp),x
1894  0041 5f            	clrw	x
1895  0042 1f03          	ldw	(OFST-3,sp),x
1896                     ; 627     pwFlash = (PointerAttr uint32_t *)(MemoryAddressCast)(startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE));
1898  0044 1e07          	ldw	x,(OFST+1,sp)
1899  0046 a680          	ld	a,#128
1900  0048 cd0000        	call	c_cmulx
1902  004b 96            	ldw	x,sp
1903  004c 1c0003        	addw	x,#OFST-3
1904  004f cd0000        	call	c_ladd
1906  0052 be02          	ldw	x,c_lreg+2
1907  0054 1f01          	ldw	(OFST-5,sp),x
1908                     ; 631   FLASH->CR2 |= FLASH_CR2_ERASE;
1910  0056 721a505b      	bset	20571,#5
1911                     ; 632   FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NERASE);
1913  005a 721b505c      	bres	20572,#5
1914                     ; 636     *pwFlash = (uint32_t)0;
1916  005e 4f            	clr	a
1917  005f e703          	ld	(3,x),a
1918  0061 e702          	ld	(2,x),a
1919  0063 e701          	ld	(1,x),a
1920  0065 f7            	ld	(x),a
1921                     ; 644 }
1924  0066 5b08          	addw	sp,#8
1925  0068 81            	ret	
1927  0069               LC001:
1928  0069 89            	pushw	x
1929  006a 5f            	clrw	x
1930  006b 89            	pushw	x
1931  006c ae0010        	ldw	x,#L73
1932  006f cd0000        	call	_assert_failed
1934  0072 5b04          	addw	sp,#4
1935  0074 81            	ret	
2033                     ; 655 IN_RAM(void FLASH_ProgramBlock(uint16_t BlockNum, FLASH_MemType_TypeDef FLASH_MemType, 
2033                     ; 656                         FLASH_ProgramMode_TypeDef FLASH_ProgMode, uint8_t *Buffer))
2033                     ; 657 {
2034                     .text:	section	.text,new
2035  0000               _FLASH_ProgramBlock:
2037  0000 89            	pushw	x
2038  0001 5206          	subw	sp,#6
2039       00000006      OFST:	set	6
2042                     ; 658   uint16_t Count = 0;
2044                     ; 659   uint32_t startaddress = 0;
2046  0003 96            	ldw	x,sp
2047  0004 5c            	incw	x
2048  0005 cd0000        	call	c_ltor
2050                     ; 662   assert_param(IS_MEMORY_TYPE_OK(FLASH_MemType));
2052  0008 7b0b          	ld	a,(OFST+5,sp)
2053  000a a1fd          	cp	a,#253
2054  000c 2709          	jreq	L272
2055  000e a1f7          	cp	a,#247
2056  0010 2705          	jreq	L272
2057  0012 ae0296        	ldw	x,#662
2058  0015 ad76          	call	LC002
2059  0017               L272:
2060                     ; 663   assert_param(IS_FLASH_PROGRAM_MODE_OK(FLASH_ProgMode));
2062  0017 7b0c          	ld	a,(OFST+6,sp)
2063  0019 2709          	jreq	L203
2064  001b a110          	cp	a,#16
2065  001d 2705          	jreq	L203
2066  001f ae0297        	ldw	x,#663
2067  0022 ad69          	call	LC002
2068  0024               L203:
2069                     ; 664   if(FLASH_MemType == FLASH_MEMTYPE_PROG)
2071  0024 7b0b          	ld	a,(OFST+5,sp)
2072  0026 a1fd          	cp	a,#253
2073  0028 2611          	jrne	L166
2074                     ; 666     assert_param(IS_FLASH_PROG_BLOCK_NUMBER_OK(BlockNum));
2076  002a 1e07          	ldw	x,(OFST+1,sp)
2077  002c a30100        	cpw	x,#256
2078  002f 2505          	jrult	L013
2079  0031 ae029a        	ldw	x,#666
2080  0034 ad57          	call	LC002
2081  0036               L013:
2082                     ; 667     startaddress = FLASH_PROG_START_PHYSICAL_ADDRESS;
2084  0036 ae8000        	ldw	x,#32768
2086  0039 200f          	jra	L366
2087  003b               L166:
2088                     ; 671     assert_param(IS_FLASH_DATA_BLOCK_NUMBER_OK(BlockNum));
2090  003b 1e07          	ldw	x,(OFST+1,sp)
2091  003d a30008        	cpw	x,#8
2092  0040 2505          	jrult	L613
2093  0042 ae029f        	ldw	x,#671
2094  0045 ad46          	call	LC002
2095  0047               L613:
2096                     ; 672     startaddress = FLASH_DATA_START_PHYSICAL_ADDRESS;
2098  0047 ae4000        	ldw	x,#16384
2099  004a               L366:
2100  004a 1f03          	ldw	(OFST-3,sp),x
2101  004c 5f            	clrw	x
2102  004d 1f01          	ldw	(OFST-5,sp),x
2103                     ; 676   startaddress = startaddress + ((uint32_t)BlockNum * FLASH_BLOCK_SIZE);
2105  004f 1e07          	ldw	x,(OFST+1,sp)
2106  0051 a680          	ld	a,#128
2107  0053 cd0000        	call	c_cmulx
2109  0056 96            	ldw	x,sp
2110  0057 5c            	incw	x
2111  0058 cd0000        	call	c_lgadd
2113                     ; 679   if(FLASH_ProgMode == FLASH_PROGRAMMODE_STANDARD)
2115  005b 7b0c          	ld	a,(OFST+6,sp)
2116  005d 260a          	jrne	L566
2117                     ; 682     FLASH->CR2 |= FLASH_CR2_PRG;
2119  005f 7210505b      	bset	20571,#0
2120                     ; 683     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NPRG);
2122  0063 7211505c      	bres	20572,#0
2124  0067 2008          	jra	L766
2125  0069               L566:
2126                     ; 688     FLASH->CR2 |= FLASH_CR2_FPRG;
2128  0069 7218505b      	bset	20571,#4
2129                     ; 689     FLASH->NCR2 &= (uint8_t)(~FLASH_NCR2_NFPRG);
2131  006d 7219505c      	bres	20572,#4
2132  0071               L766:
2133                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2135  0071 5f            	clrw	x
2136  0072 1f05          	ldw	(OFST-1,sp),x
2137  0074               L176:
2138                     ; 695     *((PointerAttr uint8_t*) (MemoryAddressCast)startaddress + Count) = ((uint8_t)(Buffer[Count]));
2140  0074 1e0d          	ldw	x,(OFST+7,sp)
2141  0076 72fb05        	addw	x,(OFST-1,sp)
2142  0079 f6            	ld	a,(x)
2143  007a 1e03          	ldw	x,(OFST-3,sp)
2144  007c 72fb05        	addw	x,(OFST-1,sp)
2145  007f f7            	ld	(x),a
2146                     ; 693   for(Count = 0; Count < FLASH_BLOCK_SIZE; Count++)
2148  0080 1e05          	ldw	x,(OFST-1,sp)
2149  0082 5c            	incw	x
2150  0083 1f05          	ldw	(OFST-1,sp),x
2153  0085 a30080        	cpw	x,#128
2154  0088 25ea          	jrult	L176
2155                     ; 697 }
2158  008a 5b08          	addw	sp,#8
2159  008c 81            	ret	
2161  008d               LC002:
2162  008d 89            	pushw	x
2163  008e 5f            	clrw	x
2164  008f 89            	pushw	x
2165  0090 ae0010        	ldw	x,#L73
2166  0093 cd0000        	call	_assert_failed
2168  0096 5b04          	addw	sp,#4
2169  0098 81            	ret	
2181                     	xdef	_FLASH_WaitForLastOperation
2182                     	xdef	_FLASH_ProgramBlock
2183                     	xdef	_FLASH_EraseBlock
2184                     	xdef	_FLASH_GetFlagStatus
2185                     	xdef	_FLASH_GetBootSize
2186                     	xdef	_FLASH_GetProgrammingTime
2187                     	xdef	_FLASH_GetLowPowerMode
2188                     	xdef	_FLASH_SetProgrammingTime
2189                     	xdef	_FLASH_SetLowPowerMode
2190                     	xdef	_FLASH_EraseOptionByte
2191                     	xdef	_FLASH_ProgramOptionByte
2192                     	xdef	_FLASH_ReadOptionByte
2193                     	xdef	_FLASH_ProgramWord
2194                     	xdef	_FLASH_ReadByte
2195                     	xdef	_FLASH_ProgramByte
2196                     	xdef	_FLASH_EraseByte
2197                     	xdef	_FLASH_ITConfig
2198                     	xdef	_FLASH_DeInit
2199                     	xdef	_FLASH_Lock
2200                     	xdef	_FLASH_Unlock
2201                     	xref	_assert_failed
2202                     	switch	.const
2203  0010               L73:
2204  0010 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
2205  0022 6965735c7374  	dc.b	"ies\stm8s_stdperip"
2206  0034 685f64726976  	dc.b	"h_driver\src\stm8s"
2207  0046 5f666c617368  	dc.b	"_flash.c",0
2208                     	xref.b	c_lreg
2228                     	xref	c_ladd
2229                     	xref	c_cmulx
2230                     	xref	c_lgadd
2231                     	xref	c_rtol
2232                     	xref	c_umul
2233                     	xref	c_lcmp
2234                     	xref	c_ltor
2235                     	end
