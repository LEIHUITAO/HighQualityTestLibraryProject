   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
 108                     ; 54 FlagStatus RST_GetFlagStatus(RST_Flag_TypeDef RST_Flag)
 108                     ; 55 {
 110                     .text:	section	.text,new
 111  0000               _RST_GetFlagStatus:
 113  0000 88            	push	a
 114       00000000      OFST:	set	0
 117                     ; 57   assert_param(IS_RST_FLAG_OK(RST_Flag));
 119  0001 a110          	cp	a,#16
 120  0003 271d          	jreq	L21
 121  0005 a108          	cp	a,#8
 122  0007 2719          	jreq	L21
 123  0009 a104          	cp	a,#4
 124  000b 2715          	jreq	L21
 125  000d a102          	cp	a,#2
 126  000f 2711          	jreq	L21
 127  0011 4a            	dec	a
 128  0012 270e          	jreq	L21
 129  0014 ae0039        	ldw	x,#57
 130  0017 89            	pushw	x
 131  0018 5f            	clrw	x
 132  0019 89            	pushw	x
 133  001a ae0000        	ldw	x,#L55
 134  001d cd0000        	call	_assert_failed
 136  0020 5b04          	addw	sp,#4
 137  0022               L21:
 138                     ; 60   return((FlagStatus)(((uint8_t)(RST->SR & RST_Flag) == (uint8_t)0x00) ? RESET : SET));
 140  0022 c650b3        	ld	a,20659
 141  0025 1501          	bcp	a,(OFST+1,sp)
 142  0027 2603          	jrne	L61
 143  0029 4f            	clr	a
 144  002a 2002          	jra	L02
 145  002c               L61:
 146  002c a601          	ld	a,#1
 147  002e               L02:
 150  002e 5b01          	addw	sp,#1
 151  0030 81            	ret	
 187                     ; 69 void RST_ClearFlag(RST_Flag_TypeDef RST_Flag)
 187                     ; 70 {
 188                     .text:	section	.text,new
 189  0000               _RST_ClearFlag:
 191  0000 88            	push	a
 192       00000000      OFST:	set	0
 195                     ; 72   assert_param(IS_RST_FLAG_OK(RST_Flag));
 197  0001 a110          	cp	a,#16
 198  0003 271d          	jreq	L03
 199  0005 a108          	cp	a,#8
 200  0007 2719          	jreq	L03
 201  0009 a104          	cp	a,#4
 202  000b 2715          	jreq	L03
 203  000d a102          	cp	a,#2
 204  000f 2711          	jreq	L03
 205  0011 4a            	dec	a
 206  0012 270e          	jreq	L03
 207  0014 ae0048        	ldw	x,#72
 208  0017 89            	pushw	x
 209  0018 5f            	clrw	x
 210  0019 89            	pushw	x
 211  001a ae0000        	ldw	x,#L55
 212  001d cd0000        	call	_assert_failed
 214  0020 5b04          	addw	sp,#4
 215  0022               L03:
 216                     ; 74   RST->SR = (uint8_t)RST_Flag;
 218  0022 7b01          	ld	a,(OFST+1,sp)
 219  0024 c750b3        	ld	20659,a
 220                     ; 75 }
 223  0027 84            	pop	a
 224  0028 81            	ret	
 237                     	xdef	_RST_ClearFlag
 238                     	xdef	_RST_GetFlagStatus
 239                     	xref	_assert_failed
 240                     .const:	section	.text
 241  0000               L55:
 242  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 243  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 244  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 245  0036 5f7273742e63  	dc.b	"_rst.c",0
 265                     	end
