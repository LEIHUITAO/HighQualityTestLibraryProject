   1                     ; C Compiler for STM8 (COSMIC Software)
   2                     ; Generator V4.2.4 - 19 Dec 2007
   3                     ; Optimizer V4.2.4 - 18 Dec 2007
  50                     ; 53 void WWDG_Init(uint8_t Counter, uint8_t WindowValue)
  50                     ; 54 {
  52                     .text:	section	.text,new
  53  0000               _WWDG_Init:
  55  0000 89            	pushw	x
  56       00000000      OFST:	set	0
  59                     ; 56   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
  61  0001 9f            	ld	a,xl
  62  0002 a180          	cp	a,#128
  63  0004 250e          	jrult	L01
  64  0006 ae0038        	ldw	x,#56
  65  0009 89            	pushw	x
  66  000a 5f            	clrw	x
  67  000b 89            	pushw	x
  68  000c ae0000        	ldw	x,#L72
  69  000f cd0000        	call	_assert_failed
  71  0012 5b04          	addw	sp,#4
  72  0014               L01:
  73                     ; 58   WWDG->WR = WWDG_WR_RESET_VALUE;
  75  0014 357f50d2      	mov	20690,#127
  76                     ; 59   WWDG->CR = (uint8_t)((uint8_t)(WWDG_CR_WDGA | WWDG_CR_T6) | (uint8_t)Counter);
  78  0018 7b01          	ld	a,(OFST+1,sp)
  79  001a aac0          	or	a,#192
  80  001c c750d1        	ld	20689,a
  81                     ; 60   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
  83  001f 7b02          	ld	a,(OFST+2,sp)
  84  0021 a47f          	and	a,#127
  85  0023 aa40          	or	a,#64
  86  0025 c750d2        	ld	20690,a
  87                     ; 61 }
  90  0028 85            	popw	x
  91  0029 81            	ret	
 124                     ; 69 void WWDG_SetCounter(uint8_t Counter)
 124                     ; 70 {
 125                     .text:	section	.text,new
 126  0000               _WWDG_SetCounter:
 128  0000 88            	push	a
 129       00000000      OFST:	set	0
 132                     ; 72   assert_param(IS_WWDG_COUNTERVALUE_OK(Counter));
 134  0001 a180          	cp	a,#128
 135  0003 250e          	jrult	L02
 136  0005 ae0048        	ldw	x,#72
 137  0008 89            	pushw	x
 138  0009 5f            	clrw	x
 139  000a 89            	pushw	x
 140  000b ae0000        	ldw	x,#L72
 141  000e cd0000        	call	_assert_failed
 143  0011 5b04          	addw	sp,#4
 144  0013               L02:
 145                     ; 76   WWDG->CR = (uint8_t)(Counter & (uint8_t)BIT_MASK);
 147  0013 7b01          	ld	a,(OFST+1,sp)
 148  0015 a47f          	and	a,#127
 149  0017 c750d1        	ld	20689,a
 150                     ; 77 }
 153  001a 84            	pop	a
 154  001b 81            	ret	
 177                     ; 86 uint8_t WWDG_GetCounter(void)
 177                     ; 87 {
 178                     .text:	section	.text,new
 179  0000               _WWDG_GetCounter:
 183                     ; 88   return(WWDG->CR);
 185  0000 c650d1        	ld	a,20689
 188  0003 81            	ret	
 211                     ; 96 void WWDG_SWReset(void)
 211                     ; 97 {
 212                     .text:	section	.text,new
 213  0000               _WWDG_SWReset:
 217                     ; 98   WWDG->CR = WWDG_CR_WDGA; /* Activate WWDG, with clearing T6 */
 219  0000 358050d1      	mov	20689,#128
 220                     ; 99 }
 223  0004 81            	ret	
 257                     ; 108 void WWDG_SetWindowValue(uint8_t WindowValue)
 257                     ; 109 {
 258                     .text:	section	.text,new
 259  0000               _WWDG_SetWindowValue:
 261  0000 88            	push	a
 262       00000000      OFST:	set	0
 265                     ; 111   assert_param(IS_WWDG_WINDOWLIMITVALUE_OK(WindowValue));
 267  0001 a180          	cp	a,#128
 268  0003 250e          	jrult	L43
 269  0005 ae006f        	ldw	x,#111
 270  0008 89            	pushw	x
 271  0009 5f            	clrw	x
 272  000a 89            	pushw	x
 273  000b ae0000        	ldw	x,#L72
 274  000e cd0000        	call	_assert_failed
 276  0011 5b04          	addw	sp,#4
 277  0013               L43:
 278                     ; 113   WWDG->WR = (uint8_t)((uint8_t)(~WWDG_CR_WDGA) & (uint8_t)(WWDG_CR_T6 | WindowValue));
 280  0013 7b01          	ld	a,(OFST+1,sp)
 281  0015 a47f          	and	a,#127
 282  0017 aa40          	or	a,#64
 283  0019 c750d2        	ld	20690,a
 284                     ; 114 }
 287  001c 84            	pop	a
 288  001d 81            	ret	
 301                     	xdef	_WWDG_SetWindowValue
 302                     	xdef	_WWDG_SWReset
 303                     	xdef	_WWDG_GetCounter
 304                     	xdef	_WWDG_SetCounter
 305                     	xdef	_WWDG_Init
 306                     	xref	_assert_failed
 307                     .const:	section	.text
 308  0000               L72:
 309  0000 2e2e5c2e2e5c  	dc.b	"..\..\..\..\librar"
 310  0012 6965735c7374  	dc.b	"ies\stm8s_stdperip"
 311  0024 685f64726976  	dc.b	"h_driver\src\stm8s"
 312  0036 5f777764672e  	dc.b	"_wwdg.c",0
 332                     	end
