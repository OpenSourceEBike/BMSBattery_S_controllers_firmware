;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.0 #9615 (Linux)
;--------------------------------------------------------
	.module stm8s_iwdg
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _IWDG_WriteAccessCmd
	.globl _IWDG_SetPrescaler
	.globl _IWDG_SetReload
	.globl _IWDG_ReloadCounter
	.globl _IWDG_Enable
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
	Sstm8s_iwdg$IWDG_WriteAccessCmd$0 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
;	-----------------------------------------
;	 function IWDG_WriteAccessCmd
;	-----------------------------------------
_IWDG_WriteAccessCmd:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_iwdg$IWDG_WriteAccessCmd$1 ==.
	Sstm8s_iwdg$IWDG_WriteAccessCmd$2 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
	ldw	x, #0x50e0
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_iwdg$IWDG_WriteAccessCmd$3 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 54: }
	Sstm8s_iwdg$IWDG_WriteAccessCmd$4 ==.
	XG$IWDG_WriteAccessCmd$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_iwdg$IWDG_WriteAccessCmd$5 ==.
	Sstm8s_iwdg$IWDG_SetPrescaler$6 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
;	-----------------------------------------
;	 function IWDG_SetPrescaler
;	-----------------------------------------
_IWDG_SetPrescaler:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_iwdg$IWDG_SetPrescaler$7 ==.
	Sstm8s_iwdg$IWDG_SetPrescaler$8 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
	ldw	x, #0x50e1
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_iwdg$IWDG_SetPrescaler$9 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 69: }
	Sstm8s_iwdg$IWDG_SetPrescaler$10 ==.
	XG$IWDG_SetPrescaler$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_iwdg$IWDG_SetPrescaler$11 ==.
	Sstm8s_iwdg$IWDG_SetReload$12 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
;	-----------------------------------------
;	 function IWDG_SetReload
;	-----------------------------------------
_IWDG_SetReload:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_iwdg$IWDG_SetReload$13 ==.
	Sstm8s_iwdg$IWDG_SetReload$14 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
	ldw	x, #0x50e2
	ld	a, (0x05, sp)
	ld	(x), a
	Sstm8s_iwdg$IWDG_SetReload$15 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 81: }
	Sstm8s_iwdg$IWDG_SetReload$16 ==.
	XG$IWDG_SetReload$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_iwdg$IWDG_SetReload$17 ==.
	Sstm8s_iwdg$IWDG_ReloadCounter$18 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
;	-----------------------------------------
;	 function IWDG_ReloadCounter
;	-----------------------------------------
_IWDG_ReloadCounter:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_iwdg$IWDG_ReloadCounter$19 ==.
	Sstm8s_iwdg$IWDG_ReloadCounter$20 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
	mov	0x50e0+0, #0xaa
	Sstm8s_iwdg$IWDG_ReloadCounter$21 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 92: }
	Sstm8s_iwdg$IWDG_ReloadCounter$22 ==.
	XG$IWDG_ReloadCounter$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_iwdg$IWDG_ReloadCounter$23 ==.
	Sstm8s_iwdg$IWDG_Enable$24 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 99: void IWDG_Enable(void)
;	-----------------------------------------
;	 function IWDG_Enable
;	-----------------------------------------
_IWDG_Enable:
	push	_fp_+1
	push	_fp_
	ldw	y, sp
	ldw	_fp_, y
	Sstm8s_iwdg$IWDG_Enable$25 ==.
	Sstm8s_iwdg$IWDG_Enable$26 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
	mov	0x50e0+0, #0xcc
	Sstm8s_iwdg$IWDG_Enable$27 ==.
;	StdPeriphLib/src/stm8s_iwdg.c: 102: }
	Sstm8s_iwdg$IWDG_Enable$28 ==.
	XG$IWDG_Enable$0$0 ==.
	pop	_fp_
	pop	_fp_+1
	ret
	Sstm8s_iwdg$IWDG_Enable$29 ==.
	.area CODE
	.area INITIALIZER
	.area CABS (ABS)

	.area .debug_line (NOLOAD)
	.dw	0,Ldebug_line_end-Ldebug_line_start
Ldebug_line_start:
	.dw	2
	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
	.db	1
	.db	1
	.db	-5
	.db	15
	.db	10
	.db	0
	.db	1
	.db	1
	.db	1
	.db	1
	.db	0
	.db	0
	.db	0
	.db	1
	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
	.db	0
	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
	.db	0
	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
	.db	0
	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
	.db	0
	.db	0
	.ascii "StdPeriphLib/src/stm8s_iwdg.c"
	.db	0
	.uleb128	0
	.uleb128	0
	.uleb128	0
	.db	0
Ldebug_line_stmt:
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_iwdg$IWDG_WriteAccessCmd$0)
	.db	3
	.sleb128	47
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_WriteAccessCmd$2-Sstm8s_iwdg$IWDG_WriteAccessCmd$0
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_WriteAccessCmd$3-Sstm8s_iwdg$IWDG_WriteAccessCmd$2
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_iwdg$IWDG_WriteAccessCmd$4-Sstm8s_iwdg$IWDG_WriteAccessCmd$3
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_iwdg$IWDG_SetPrescaler$6)
	.db	3
	.sleb128	62
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_SetPrescaler$8-Sstm8s_iwdg$IWDG_SetPrescaler$6
	.db	3
	.sleb128	5
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_SetPrescaler$9-Sstm8s_iwdg$IWDG_SetPrescaler$8
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_iwdg$IWDG_SetPrescaler$10-Sstm8s_iwdg$IWDG_SetPrescaler$9
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_iwdg$IWDG_SetReload$12)
	.db	3
	.sleb128	77
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_SetReload$14-Sstm8s_iwdg$IWDG_SetReload$12
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_SetReload$15-Sstm8s_iwdg$IWDG_SetReload$14
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_iwdg$IWDG_SetReload$16-Sstm8s_iwdg$IWDG_SetReload$15
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_iwdg$IWDG_ReloadCounter$18)
	.db	3
	.sleb128	88
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_ReloadCounter$20-Sstm8s_iwdg$IWDG_ReloadCounter$18
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_ReloadCounter$21-Sstm8s_iwdg$IWDG_ReloadCounter$20
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_iwdg$IWDG_ReloadCounter$22-Sstm8s_iwdg$IWDG_ReloadCounter$21
	.db	0
	.uleb128	1
	.db	1
	.db	0
	.uleb128	5
	.db	2
	.dw	0,(Sstm8s_iwdg$IWDG_Enable$24)
	.db	3
	.sleb128	98
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_Enable$26-Sstm8s_iwdg$IWDG_Enable$24
	.db	3
	.sleb128	2
	.db	1
	.db	9
	.dw	Sstm8s_iwdg$IWDG_Enable$27-Sstm8s_iwdg$IWDG_Enable$26
	.db	3
	.sleb128	1
	.db	1
	.db	9
	.dw	7+Sstm8s_iwdg$IWDG_Enable$28-Sstm8s_iwdg$IWDG_Enable$27
	.db	0
	.uleb128	1
	.db	1
Ldebug_line_end:

	.area .debug_loc (NOLOAD)
Ldebug_loc_start:
	.dw	0,(Sstm8s_iwdg$IWDG_Enable$25)
	.dw	0,(Sstm8s_iwdg$IWDG_Enable$29)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_iwdg$IWDG_ReloadCounter$19)
	.dw	0,(Sstm8s_iwdg$IWDG_ReloadCounter$23)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_iwdg$IWDG_SetReload$13)
	.dw	0,(Sstm8s_iwdg$IWDG_SetReload$17)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_iwdg$IWDG_SetPrescaler$7)
	.dw	0,(Sstm8s_iwdg$IWDG_SetPrescaler$11)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0
	.dw	0,(Sstm8s_iwdg$IWDG_WriteAccessCmd$1)
	.dw	0,(Sstm8s_iwdg$IWDG_WriteAccessCmd$5)
	.dw	2
	.db	143
	.sleb128	1
	.dw	0,0
	.dw	0,0

	.area .debug_abbrev (NOLOAD)
Ldebug_abbrev:
	.uleb128	3
	.uleb128	5
	.db	0
	.uleb128	2
	.uleb128	10
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	19
	.uleb128	0
	.uleb128	0
	.uleb128	2
	.uleb128	46
	.db	1
	.uleb128	1
	.uleb128	19
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	1
	.uleb128	17
	.db	1
	.uleb128	3
	.uleb128	8
	.uleb128	16
	.uleb128	6
	.uleb128	19
	.uleb128	11
	.uleb128	37
	.uleb128	8
	.uleb128	0
	.uleb128	0
	.uleb128	5
	.uleb128	46
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	63
	.uleb128	12
	.uleb128	64
	.uleb128	6
	.uleb128	0
	.uleb128	0
	.uleb128	4
	.uleb128	36
	.db	0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	62
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.uleb128	0

	.area .debug_info (NOLOAD)
	.dw	0,Ldebug_info_end-Ldebug_info_start
Ldebug_info_start:
	.dw	2
	.dw	0,(Ldebug_abbrev)
	.db	4
	.uleb128	1
	.ascii "StdPeriphLib/src/stm8s_iwdg.c"
	.db	0
	.dw	0,(Ldebug_line_start+-4)
	.db	1
	.ascii "SDCC version 3.6.0 #9615"
	.db	0
	.uleb128	2
	.dw	0,136
	.ascii "IWDG_WriteAccessCmd"
	.db	0
	.dw	0,(_IWDG_WriteAccessCmd)
	.dw	0,(XG$IWDG_WriteAccessCmd$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+80)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "IWDG_WriteAccess"
	.db	0
	.dw	0,136
	.uleb128	0
	.uleb128	4
	.ascii "unsigned char"
	.db	0
	.db	1
	.db	8
	.uleb128	2
	.dw	0,213
	.ascii "IWDG_SetPrescaler"
	.db	0
	.dw	0,(_IWDG_SetPrescaler)
	.dw	0,(XG$IWDG_SetPrescaler$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+60)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "IWDG_Prescaler"
	.db	0
	.dw	0,136
	.uleb128	0
	.uleb128	2
	.dw	0,267
	.ascii "IWDG_SetReload"
	.db	0
	.dw	0,(_IWDG_SetReload)
	.dw	0,(XG$IWDG_SetReload$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+40)
	.uleb128	3
	.db	2
	.db	145
	.sleb128	4
	.ascii "IWDG_Reload"
	.db	0
	.dw	0,136
	.uleb128	0
	.uleb128	5
	.ascii "IWDG_ReloadCounter"
	.db	0
	.dw	0,(_IWDG_ReloadCounter)
	.dw	0,(XG$IWDG_ReloadCounter$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start+20)
	.uleb128	5
	.ascii "IWDG_Enable"
	.db	0
	.dw	0,(_IWDG_Enable)
	.dw	0,(XG$IWDG_Enable$0$0+7)
	.db	1
	.dw	0,(Ldebug_loc_start)
	.uleb128	0
	.uleb128	0
	.uleb128	0
Ldebug_info_end:

	.area .debug_pubnames (NOLOAD)
	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
Ldebug_pubnames_start:
	.dw	2
	.dw	0,(Ldebug_info_start-4)
	.dw	0,4+Ldebug_info_end-Ldebug_info_start
	.dw	0,72
	.ascii "IWDG_WriteAccessCmd"
	.db	0
	.dw	0,153
	.ascii "IWDG_SetPrescaler"
	.db	0
	.dw	0,213
	.ascii "IWDG_SetReload"
	.db	0
	.dw	0,267
	.ascii "IWDG_ReloadCounter"
	.db	0
	.dw	0,300
	.ascii "IWDG_Enable"
	.db	0
	.dw	0,0
Ldebug_pubnames_end:

	.area .debug_frame (NOLOAD)
	.dw	0
	.dw	Ldebug_CIE_end-Ldebug_CIE_start
Ldebug_CIE_start:
	.dw	0xffff
	.dw	0xffff
	.db	1
	.db	0
	.uleb128	1
	.sleb128	1
	.db	0
	.db	12
	.uleb128	0
	.uleb128	0
	.db	128
	.uleb128	0
Ldebug_CIE_end:
