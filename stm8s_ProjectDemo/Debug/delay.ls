   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
  61                     ; 10 void delay_ms(u32 ms)
  61                     ; 11 {
  63                     	switch	.text
  64  0000               _delay_ms:
  66  0000 5208          	subw	sp,#8
  67       00000008      OFST:	set	8
  70                     ; 13 	for(i = ms; i > 0; i--)
  72  0002 1e0d          	ldw	x,(OFST+5,sp)
  73  0004 1f03          	ldw	(OFST-5,sp),x
  74  0006 1e0b          	ldw	x,(OFST+3,sp)
  75  0008 1f01          	ldw	(OFST-7,sp),x
  77  000a 2025          	jra	L34
  78  000c               L73:
  79                     ; 14 	for(j = 110; j > 0; j--);
  81  000c ae006e        	ldw	x,#110
  82  000f 1f07          	ldw	(OFST-1,sp),x
  83  0011 ae0000        	ldw	x,#0
  84  0014 1f05          	ldw	(OFST-3,sp),x
  85  0016               L74:
  89  0016 96            	ldw	x,sp
  90  0017 1c0005        	addw	x,#OFST-3
  91  001a a601          	ld	a,#1
  92  001c cd0000        	call	c_lgsbc
  96  001f 96            	ldw	x,sp
  97  0020 1c0005        	addw	x,#OFST-3
  98  0023 cd0000        	call	c_lzmp
 100  0026 26ee          	jrne	L74
 101                     ; 13 	for(i = ms; i > 0; i--)
 103  0028 96            	ldw	x,sp
 104  0029 1c0001        	addw	x,#OFST-7
 105  002c a601          	ld	a,#1
 106  002e cd0000        	call	c_lgsbc
 108  0031               L34:
 111  0031 96            	ldw	x,sp
 112  0032 1c0001        	addw	x,#OFST-7
 113  0035 cd0000        	call	c_lzmp
 115  0038 26d2          	jrne	L73
 116                     ; 15 }
 119  003a 5b08          	addw	sp,#8
 120  003c 81            	ret
 133                     	xdef	_delay_ms
 152                     	xref	c_lzmp
 153                     	xref	c_lgsbc
 154                     	end
