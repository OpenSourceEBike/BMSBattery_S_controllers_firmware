                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_clk
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _CLKPrescTable
                                     12 	.globl _HSIDivFactor
                                     13 	.globl _CLK_DeInit
                                     14 	.globl _CLK_FastHaltWakeUpCmd
                                     15 	.globl _CLK_HSECmd
                                     16 	.globl _CLK_HSICmd
                                     17 	.globl _CLK_LSICmd
                                     18 	.globl _CLK_CCOCmd
                                     19 	.globl _CLK_ClockSwitchCmd
                                     20 	.globl _CLK_SlowActiveHaltWakeUpCmd
                                     21 	.globl _CLK_PeripheralClockConfig
                                     22 	.globl _CLK_ClockSwitchConfig
                                     23 	.globl _CLK_HSIPrescalerConfig
                                     24 	.globl _CLK_CCOConfig
                                     25 	.globl _CLK_ITConfig
                                     26 	.globl _CLK_SYSCLKConfig
                                     27 	.globl _CLK_SWIMConfig
                                     28 	.globl _CLK_ClockSecuritySystemEnable
                                     29 	.globl _CLK_GetSYSCLKSource
                                     30 	.globl _CLK_GetClockFreq
                                     31 	.globl _CLK_AdjustHSICalibrationValue
                                     32 	.globl _CLK_SYSCLKEmergencyClear
                                     33 	.globl _CLK_GetFlagStatus
                                     34 	.globl _CLK_GetITStatus
                                     35 	.globl _CLK_ClearITPendingBit
                                     36 ;--------------------------------------------------------
                                     37 ; ram data
                                     38 ;--------------------------------------------------------
                                     39 	.area DATA
                                     40 ;--------------------------------------------------------
                                     41 ; ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area INITIALIZED
                                     44 ;--------------------------------------------------------
                                     45 ; absolute external ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area DABS (ABS)
                                     48 ;--------------------------------------------------------
                                     49 ; global & static initialisations
                                     50 ;--------------------------------------------------------
                                     51 	.area HOME
                                     52 	.area GSINIT
                                     53 	.area GSFINAL
                                     54 	.area GSINIT
                                     55 ;--------------------------------------------------------
                                     56 ; Home
                                     57 ;--------------------------------------------------------
                                     58 	.area HOME
                                     59 	.area HOME
                                     60 ;--------------------------------------------------------
                                     61 ; code
                                     62 ;--------------------------------------------------------
                                     63 	.area CODE
                           000000    64 	Sstm8s_clk$CLK_DeInit$0 ==.
                                     65 ;	StdPeriphLib/src/stm8s_clk.c: 72: void CLK_DeInit(void)
                                     66 ;	-----------------------------------------
                                     67 ;	 function CLK_DeInit
                                     68 ;	-----------------------------------------
      00836E                         69 _CLK_DeInit:
      00836E 3B 01 A5         [ 1]   70 	push	_fp_+1
      008371 3B 01 A4         [ 1]   71 	push	_fp_
      008374 90 96            [ 1]   72 	ldw	y, sp
      008376 90 CF 01 A4      [ 2]   73 	ldw	_fp_, y
                           00000C    74 	Sstm8s_clk$CLK_DeInit$1 ==.
                           00000C    75 	Sstm8s_clk$CLK_DeInit$2 ==.
                                     76 ;	StdPeriphLib/src/stm8s_clk.c: 74: CLK->ICKR = CLK_ICKR_RESET_VALUE;
      00837A 35 01 50 C0      [ 1]   77 	mov	0x50c0+0, #0x01
                           000010    78 	Sstm8s_clk$CLK_DeInit$3 ==.
                                     79 ;	StdPeriphLib/src/stm8s_clk.c: 75: CLK->ECKR = CLK_ECKR_RESET_VALUE;
      00837E 35 00 50 C1      [ 1]   80 	mov	0x50c1+0, #0x00
                           000014    81 	Sstm8s_clk$CLK_DeInit$4 ==.
                                     82 ;	StdPeriphLib/src/stm8s_clk.c: 76: CLK->SWR  = CLK_SWR_RESET_VALUE;
      008382 35 E1 50 C4      [ 1]   83 	mov	0x50c4+0, #0xe1
                           000018    84 	Sstm8s_clk$CLK_DeInit$5 ==.
                                     85 ;	StdPeriphLib/src/stm8s_clk.c: 77: CLK->SWCR = CLK_SWCR_RESET_VALUE;
      008386 35 00 50 C5      [ 1]   86 	mov	0x50c5+0, #0x00
                           00001C    87 	Sstm8s_clk$CLK_DeInit$6 ==.
                                     88 ;	StdPeriphLib/src/stm8s_clk.c: 78: CLK->CKDIVR = CLK_CKDIVR_RESET_VALUE;
      00838A 35 18 50 C6      [ 1]   89 	mov	0x50c6+0, #0x18
                           000020    90 	Sstm8s_clk$CLK_DeInit$7 ==.
                                     91 ;	StdPeriphLib/src/stm8s_clk.c: 79: CLK->PCKENR1 = CLK_PCKENR1_RESET_VALUE;
      00838E 35 FF 50 C7      [ 1]   92 	mov	0x50c7+0, #0xff
                           000024    93 	Sstm8s_clk$CLK_DeInit$8 ==.
                                     94 ;	StdPeriphLib/src/stm8s_clk.c: 80: CLK->PCKENR2 = CLK_PCKENR2_RESET_VALUE;
      008392 35 FF 50 CA      [ 1]   95 	mov	0x50ca+0, #0xff
                           000028    96 	Sstm8s_clk$CLK_DeInit$9 ==.
                                     97 ;	StdPeriphLib/src/stm8s_clk.c: 81: CLK->CSSR = CLK_CSSR_RESET_VALUE;
      008396 35 00 50 C8      [ 1]   98 	mov	0x50c8+0, #0x00
                           00002C    99 	Sstm8s_clk$CLK_DeInit$10 ==.
                                    100 ;	StdPeriphLib/src/stm8s_clk.c: 82: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      00839A 35 00 50 C9      [ 1]  101 	mov	0x50c9+0, #0x00
                           000030   102 	Sstm8s_clk$CLK_DeInit$11 ==.
                                    103 ;	StdPeriphLib/src/stm8s_clk.c: 83: while ((CLK->CCOR & CLK_CCOR_CCOEN)!= 0)
      00839E                        104 00101$:
      00839E AE 50 C9         [ 2]  105 	ldw	x, #0x50c9
      0083A1 F6               [ 1]  106 	ld	a, (x)
      0083A2 44               [ 1]  107 	srl	a
      0083A3 25 F9            [ 1]  108 	jrc	00101$
                           000037   109 	Sstm8s_clk$CLK_DeInit$12 ==.
                                    110 ;	StdPeriphLib/src/stm8s_clk.c: 85: CLK->CCOR = CLK_CCOR_RESET_VALUE;
      0083A5 35 00 50 C9      [ 1]  111 	mov	0x50c9+0, #0x00
                           00003B   112 	Sstm8s_clk$CLK_DeInit$13 ==.
                                    113 ;	StdPeriphLib/src/stm8s_clk.c: 86: CLK->HSITRIMR = CLK_HSITRIMR_RESET_VALUE;
      0083A9 35 00 50 CC      [ 1]  114 	mov	0x50cc+0, #0x00
                           00003F   115 	Sstm8s_clk$CLK_DeInit$14 ==.
                                    116 ;	StdPeriphLib/src/stm8s_clk.c: 87: CLK->SWIMCCR = CLK_SWIMCCR_RESET_VALUE;
      0083AD 35 00 50 CD      [ 1]  117 	mov	0x50cd+0, #0x00
                           000043   118 	Sstm8s_clk$CLK_DeInit$15 ==.
                                    119 ;	StdPeriphLib/src/stm8s_clk.c: 88: }
                           000043   120 	Sstm8s_clk$CLK_DeInit$16 ==.
                           000043   121 	XG$CLK_DeInit$0$0 ==.
      0083B1 32 01 A4         [ 1]  122 	pop	_fp_
      0083B4 32 01 A5         [ 1]  123 	pop	_fp_+1
      0083B7 81               [ 4]  124 	ret
                           00004A   125 	Sstm8s_clk$CLK_DeInit$17 ==.
                           00004A   126 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$18 ==.
                                    127 ;	StdPeriphLib/src/stm8s_clk.c: 99: void CLK_FastHaltWakeUpCmd(FunctionalState NewState)
                                    128 ;	-----------------------------------------
                                    129 ;	 function CLK_FastHaltWakeUpCmd
                                    130 ;	-----------------------------------------
      0083B8                        131 _CLK_FastHaltWakeUpCmd:
      0083B8 3B 01 A5         [ 1]  132 	push	_fp_+1
      0083BB 3B 01 A4         [ 1]  133 	push	_fp_
      0083BE 90 96            [ 1]  134 	ldw	y, sp
      0083C0 90 CF 01 A4      [ 2]  135 	ldw	_fp_, y
                           000056   136 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$19 ==.
                           000056   137 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20 ==.
                                    138 ;	StdPeriphLib/src/stm8s_clk.c: 104: if (NewState != DISABLE)
      0083C4 0D 05            [ 1]  139 	tnz	(0x05, sp)
      0083C6 27 09            [ 1]  140 	jreq	00102$
                           00005A   141 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21 ==.
                                    142 ;	StdPeriphLib/src/stm8s_clk.c: 107: CLK->ICKR |= CLK_ICKR_FHWU;
      0083C8 AE 50 C0         [ 2]  143 	ldw	x, #0x50c0
      0083CB F6               [ 1]  144 	ld	a, (x)
      0083CC AA 04            [ 1]  145 	or	a, #0x04
      0083CE F7               [ 1]  146 	ld	(x), a
      0083CF 20 07            [ 2]  147 	jra	00104$
      0083D1                        148 00102$:
                           000063   149 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22 ==.
                                    150 ;	StdPeriphLib/src/stm8s_clk.c: 112: CLK->ICKR &= (uint8_t)(~CLK_ICKR_FHWU);
      0083D1 AE 50 C0         [ 2]  151 	ldw	x, #0x50c0
      0083D4 F6               [ 1]  152 	ld	a, (x)
      0083D5 A4 FB            [ 1]  153 	and	a, #0xfb
      0083D7 F7               [ 1]  154 	ld	(x), a
      0083D8                        155 00104$:
                           00006A   156 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23 ==.
                                    157 ;	StdPeriphLib/src/stm8s_clk.c: 114: }
                           00006A   158 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$24 ==.
                           00006A   159 	XG$CLK_FastHaltWakeUpCmd$0$0 ==.
      0083D8 32 01 A4         [ 1]  160 	pop	_fp_
      0083DB 32 01 A5         [ 1]  161 	pop	_fp_+1
      0083DE 81               [ 4]  162 	ret
                           000071   163 	Sstm8s_clk$CLK_FastHaltWakeUpCmd$25 ==.
                           000071   164 	Sstm8s_clk$CLK_HSECmd$26 ==.
                                    165 ;	StdPeriphLib/src/stm8s_clk.c: 121: void CLK_HSECmd(FunctionalState NewState)
                                    166 ;	-----------------------------------------
                                    167 ;	 function CLK_HSECmd
                                    168 ;	-----------------------------------------
      0083DF                        169 _CLK_HSECmd:
      0083DF 3B 01 A5         [ 1]  170 	push	_fp_+1
      0083E2 3B 01 A4         [ 1]  171 	push	_fp_
      0083E5 90 96            [ 1]  172 	ldw	y, sp
      0083E7 90 CF 01 A4      [ 2]  173 	ldw	_fp_, y
                           00007D   174 	Sstm8s_clk$CLK_HSECmd$27 ==.
                           00007D   175 	Sstm8s_clk$CLK_HSECmd$28 ==.
                                    176 ;	StdPeriphLib/src/stm8s_clk.c: 126: if (NewState != DISABLE)
      0083EB 0D 05            [ 1]  177 	tnz	(0x05, sp)
      0083ED 27 06            [ 1]  178 	jreq	00102$
                           000081   179 	Sstm8s_clk$CLK_HSECmd$29 ==.
                                    180 ;	StdPeriphLib/src/stm8s_clk.c: 129: CLK->ECKR |= CLK_ECKR_HSEEN;
      0083EF 72 10 50 C1      [ 1]  181 	bset	0x50c1, #0
      0083F3 20 04            [ 2]  182 	jra	00104$
      0083F5                        183 00102$:
                           000087   184 	Sstm8s_clk$CLK_HSECmd$30 ==.
                                    185 ;	StdPeriphLib/src/stm8s_clk.c: 134: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      0083F5 72 11 50 C1      [ 1]  186 	bres	0x50c1, #0
      0083F9                        187 00104$:
                           00008B   188 	Sstm8s_clk$CLK_HSECmd$31 ==.
                                    189 ;	StdPeriphLib/src/stm8s_clk.c: 136: }
                           00008B   190 	Sstm8s_clk$CLK_HSECmd$32 ==.
                           00008B   191 	XG$CLK_HSECmd$0$0 ==.
      0083F9 32 01 A4         [ 1]  192 	pop	_fp_
      0083FC 32 01 A5         [ 1]  193 	pop	_fp_+1
      0083FF 81               [ 4]  194 	ret
                           000092   195 	Sstm8s_clk$CLK_HSECmd$33 ==.
                           000092   196 	Sstm8s_clk$CLK_HSICmd$34 ==.
                                    197 ;	StdPeriphLib/src/stm8s_clk.c: 143: void CLK_HSICmd(FunctionalState NewState)
                                    198 ;	-----------------------------------------
                                    199 ;	 function CLK_HSICmd
                                    200 ;	-----------------------------------------
      008400                        201 _CLK_HSICmd:
      008400 3B 01 A5         [ 1]  202 	push	_fp_+1
      008403 3B 01 A4         [ 1]  203 	push	_fp_
      008406 90 96            [ 1]  204 	ldw	y, sp
      008408 90 CF 01 A4      [ 2]  205 	ldw	_fp_, y
                           00009E   206 	Sstm8s_clk$CLK_HSICmd$35 ==.
                           00009E   207 	Sstm8s_clk$CLK_HSICmd$36 ==.
                                    208 ;	StdPeriphLib/src/stm8s_clk.c: 148: if (NewState != DISABLE)
      00840C 0D 05            [ 1]  209 	tnz	(0x05, sp)
      00840E 27 06            [ 1]  210 	jreq	00102$
                           0000A2   211 	Sstm8s_clk$CLK_HSICmd$37 ==.
                                    212 ;	StdPeriphLib/src/stm8s_clk.c: 151: CLK->ICKR |= CLK_ICKR_HSIEN;
      008410 72 10 50 C0      [ 1]  213 	bset	0x50c0, #0
      008414 20 04            [ 2]  214 	jra	00104$
      008416                        215 00102$:
                           0000A8   216 	Sstm8s_clk$CLK_HSICmd$38 ==.
                                    217 ;	StdPeriphLib/src/stm8s_clk.c: 156: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008416 72 11 50 C0      [ 1]  218 	bres	0x50c0, #0
      00841A                        219 00104$:
                           0000AC   220 	Sstm8s_clk$CLK_HSICmd$39 ==.
                                    221 ;	StdPeriphLib/src/stm8s_clk.c: 158: }
                           0000AC   222 	Sstm8s_clk$CLK_HSICmd$40 ==.
                           0000AC   223 	XG$CLK_HSICmd$0$0 ==.
      00841A 32 01 A4         [ 1]  224 	pop	_fp_
      00841D 32 01 A5         [ 1]  225 	pop	_fp_+1
      008420 81               [ 4]  226 	ret
                           0000B3   227 	Sstm8s_clk$CLK_HSICmd$41 ==.
                           0000B3   228 	Sstm8s_clk$CLK_LSICmd$42 ==.
                                    229 ;	StdPeriphLib/src/stm8s_clk.c: 166: void CLK_LSICmd(FunctionalState NewState)
                                    230 ;	-----------------------------------------
                                    231 ;	 function CLK_LSICmd
                                    232 ;	-----------------------------------------
      008421                        233 _CLK_LSICmd:
      008421 3B 01 A5         [ 1]  234 	push	_fp_+1
      008424 3B 01 A4         [ 1]  235 	push	_fp_
      008427 90 96            [ 1]  236 	ldw	y, sp
      008429 90 CF 01 A4      [ 2]  237 	ldw	_fp_, y
                           0000BF   238 	Sstm8s_clk$CLK_LSICmd$43 ==.
                           0000BF   239 	Sstm8s_clk$CLK_LSICmd$44 ==.
                                    240 ;	StdPeriphLib/src/stm8s_clk.c: 171: if (NewState != DISABLE)
      00842D 0D 05            [ 1]  241 	tnz	(0x05, sp)
      00842F 27 09            [ 1]  242 	jreq	00102$
                           0000C3   243 	Sstm8s_clk$CLK_LSICmd$45 ==.
                                    244 ;	StdPeriphLib/src/stm8s_clk.c: 174: CLK->ICKR |= CLK_ICKR_LSIEN;
      008431 AE 50 C0         [ 2]  245 	ldw	x, #0x50c0
      008434 F6               [ 1]  246 	ld	a, (x)
      008435 AA 08            [ 1]  247 	or	a, #0x08
      008437 F7               [ 1]  248 	ld	(x), a
      008438 20 07            [ 2]  249 	jra	00104$
      00843A                        250 00102$:
                           0000CC   251 	Sstm8s_clk$CLK_LSICmd$46 ==.
                                    252 ;	StdPeriphLib/src/stm8s_clk.c: 179: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      00843A AE 50 C0         [ 2]  253 	ldw	x, #0x50c0
      00843D F6               [ 1]  254 	ld	a, (x)
      00843E A4 F7            [ 1]  255 	and	a, #0xf7
      008440 F7               [ 1]  256 	ld	(x), a
      008441                        257 00104$:
                           0000D3   258 	Sstm8s_clk$CLK_LSICmd$47 ==.
                                    259 ;	StdPeriphLib/src/stm8s_clk.c: 181: }
                           0000D3   260 	Sstm8s_clk$CLK_LSICmd$48 ==.
                           0000D3   261 	XG$CLK_LSICmd$0$0 ==.
      008441 32 01 A4         [ 1]  262 	pop	_fp_
      008444 32 01 A5         [ 1]  263 	pop	_fp_+1
      008447 81               [ 4]  264 	ret
                           0000DA   265 	Sstm8s_clk$CLK_LSICmd$49 ==.
                           0000DA   266 	Sstm8s_clk$CLK_CCOCmd$50 ==.
                                    267 ;	StdPeriphLib/src/stm8s_clk.c: 189: void CLK_CCOCmd(FunctionalState NewState)
                                    268 ;	-----------------------------------------
                                    269 ;	 function CLK_CCOCmd
                                    270 ;	-----------------------------------------
      008448                        271 _CLK_CCOCmd:
      008448 3B 01 A5         [ 1]  272 	push	_fp_+1
      00844B 3B 01 A4         [ 1]  273 	push	_fp_
      00844E 90 96            [ 1]  274 	ldw	y, sp
      008450 90 CF 01 A4      [ 2]  275 	ldw	_fp_, y
                           0000E6   276 	Sstm8s_clk$CLK_CCOCmd$51 ==.
                           0000E6   277 	Sstm8s_clk$CLK_CCOCmd$52 ==.
                                    278 ;	StdPeriphLib/src/stm8s_clk.c: 194: if (NewState != DISABLE)
      008454 0D 05            [ 1]  279 	tnz	(0x05, sp)
      008456 27 06            [ 1]  280 	jreq	00102$
                           0000EA   281 	Sstm8s_clk$CLK_CCOCmd$53 ==.
                                    282 ;	StdPeriphLib/src/stm8s_clk.c: 197: CLK->CCOR |= CLK_CCOR_CCOEN;
      008458 72 10 50 C9      [ 1]  283 	bset	0x50c9, #0
      00845C 20 04            [ 2]  284 	jra	00104$
      00845E                        285 00102$:
                           0000F0   286 	Sstm8s_clk$CLK_CCOCmd$54 ==.
                                    287 ;	StdPeriphLib/src/stm8s_clk.c: 202: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOEN);
      00845E 72 11 50 C9      [ 1]  288 	bres	0x50c9, #0
      008462                        289 00104$:
                           0000F4   290 	Sstm8s_clk$CLK_CCOCmd$55 ==.
                                    291 ;	StdPeriphLib/src/stm8s_clk.c: 204: }
                           0000F4   292 	Sstm8s_clk$CLK_CCOCmd$56 ==.
                           0000F4   293 	XG$CLK_CCOCmd$0$0 ==.
      008462 32 01 A4         [ 1]  294 	pop	_fp_
      008465 32 01 A5         [ 1]  295 	pop	_fp_+1
      008468 81               [ 4]  296 	ret
                           0000FB   297 	Sstm8s_clk$CLK_CCOCmd$57 ==.
                           0000FB   298 	Sstm8s_clk$CLK_ClockSwitchCmd$58 ==.
                                    299 ;	StdPeriphLib/src/stm8s_clk.c: 213: void CLK_ClockSwitchCmd(FunctionalState NewState)
                                    300 ;	-----------------------------------------
                                    301 ;	 function CLK_ClockSwitchCmd
                                    302 ;	-----------------------------------------
      008469                        303 _CLK_ClockSwitchCmd:
      008469 3B 01 A5         [ 1]  304 	push	_fp_+1
      00846C 3B 01 A4         [ 1]  305 	push	_fp_
      00846F 90 96            [ 1]  306 	ldw	y, sp
      008471 90 CF 01 A4      [ 2]  307 	ldw	_fp_, y
                           000107   308 	Sstm8s_clk$CLK_ClockSwitchCmd$59 ==.
                           000107   309 	Sstm8s_clk$CLK_ClockSwitchCmd$60 ==.
                                    310 ;	StdPeriphLib/src/stm8s_clk.c: 218: if (NewState != DISABLE )
      008475 0D 05            [ 1]  311 	tnz	(0x05, sp)
      008477 27 09            [ 1]  312 	jreq	00102$
                           00010B   313 	Sstm8s_clk$CLK_ClockSwitchCmd$61 ==.
                                    314 ;	StdPeriphLib/src/stm8s_clk.c: 221: CLK->SWCR |= CLK_SWCR_SWEN;
      008479 AE 50 C5         [ 2]  315 	ldw	x, #0x50c5
      00847C F6               [ 1]  316 	ld	a, (x)
      00847D AA 02            [ 1]  317 	or	a, #0x02
      00847F F7               [ 1]  318 	ld	(x), a
      008480 20 07            [ 2]  319 	jra	00104$
      008482                        320 00102$:
                           000114   321 	Sstm8s_clk$CLK_ClockSwitchCmd$62 ==.
                                    322 ;	StdPeriphLib/src/stm8s_clk.c: 226: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWEN);
      008482 AE 50 C5         [ 2]  323 	ldw	x, #0x50c5
      008485 F6               [ 1]  324 	ld	a, (x)
      008486 A4 FD            [ 1]  325 	and	a, #0xfd
      008488 F7               [ 1]  326 	ld	(x), a
      008489                        327 00104$:
                           00011B   328 	Sstm8s_clk$CLK_ClockSwitchCmd$63 ==.
                                    329 ;	StdPeriphLib/src/stm8s_clk.c: 228: }
                           00011B   330 	Sstm8s_clk$CLK_ClockSwitchCmd$64 ==.
                           00011B   331 	XG$CLK_ClockSwitchCmd$0$0 ==.
      008489 32 01 A4         [ 1]  332 	pop	_fp_
      00848C 32 01 A5         [ 1]  333 	pop	_fp_+1
      00848F 81               [ 4]  334 	ret
                           000122   335 	Sstm8s_clk$CLK_ClockSwitchCmd$65 ==.
                           000122   336 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$66 ==.
                                    337 ;	StdPeriphLib/src/stm8s_clk.c: 238: void CLK_SlowActiveHaltWakeUpCmd(FunctionalState NewState)
                                    338 ;	-----------------------------------------
                                    339 ;	 function CLK_SlowActiveHaltWakeUpCmd
                                    340 ;	-----------------------------------------
      008490                        341 _CLK_SlowActiveHaltWakeUpCmd:
      008490 3B 01 A5         [ 1]  342 	push	_fp_+1
      008493 3B 01 A4         [ 1]  343 	push	_fp_
      008496 90 96            [ 1]  344 	ldw	y, sp
      008498 90 CF 01 A4      [ 2]  345 	ldw	_fp_, y
                           00012E   346 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$67 ==.
                           00012E   347 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$68 ==.
                                    348 ;	StdPeriphLib/src/stm8s_clk.c: 243: if (NewState != DISABLE)
      00849C 0D 05            [ 1]  349 	tnz	(0x05, sp)
      00849E 27 09            [ 1]  350 	jreq	00102$
                           000132   351 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$69 ==.
                                    352 ;	StdPeriphLib/src/stm8s_clk.c: 246: CLK->ICKR |= CLK_ICKR_SWUAH;
      0084A0 AE 50 C0         [ 2]  353 	ldw	x, #0x50c0
      0084A3 F6               [ 1]  354 	ld	a, (x)
      0084A4 AA 20            [ 1]  355 	or	a, #0x20
      0084A6 F7               [ 1]  356 	ld	(x), a
      0084A7 20 07            [ 2]  357 	jra	00104$
      0084A9                        358 00102$:
                           00013B   359 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$70 ==.
                                    360 ;	StdPeriphLib/src/stm8s_clk.c: 251: CLK->ICKR &= (uint8_t)(~CLK_ICKR_SWUAH);
      0084A9 AE 50 C0         [ 2]  361 	ldw	x, #0x50c0
      0084AC F6               [ 1]  362 	ld	a, (x)
      0084AD A4 DF            [ 1]  363 	and	a, #0xdf
      0084AF F7               [ 1]  364 	ld	(x), a
      0084B0                        365 00104$:
                           000142   366 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$71 ==.
                                    367 ;	StdPeriphLib/src/stm8s_clk.c: 253: }
                           000142   368 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$72 ==.
                           000142   369 	XG$CLK_SlowActiveHaltWakeUpCmd$0$0 ==.
      0084B0 32 01 A4         [ 1]  370 	pop	_fp_
      0084B3 32 01 A5         [ 1]  371 	pop	_fp_+1
      0084B6 81               [ 4]  372 	ret
                           000149   373 	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$73 ==.
                           000149   374 	Sstm8s_clk$CLK_PeripheralClockConfig$74 ==.
                                    375 ;	StdPeriphLib/src/stm8s_clk.c: 263: void CLK_PeripheralClockConfig(CLK_Peripheral_TypeDef CLK_Peripheral, FunctionalState NewState)
                                    376 ;	-----------------------------------------
                                    377 ;	 function CLK_PeripheralClockConfig
                                    378 ;	-----------------------------------------
      0084B7                        379 _CLK_PeripheralClockConfig:
      0084B7 3B 01 A5         [ 1]  380 	push	_fp_+1
      0084BA 3B 01 A4         [ 1]  381 	push	_fp_
      0084BD 90 96            [ 1]  382 	ldw	y, sp
      0084BF 90 CF 01 A4      [ 2]  383 	ldw	_fp_, y
                           000155   384 	Sstm8s_clk$CLK_PeripheralClockConfig$75 ==.
      0084C3 52 04            [ 2]  385 	sub	sp, #4
                           000157   386 	Sstm8s_clk$CLK_PeripheralClockConfig$76 ==.
                                    387 ;	StdPeriphLib/src/stm8s_clk.c: 269: if (((uint8_t)CLK_Peripheral & (uint8_t)0x10) == 0x00)
      0084C5 7B 09            [ 1]  388 	ld	a, (0x09, sp)
      0084C7 A5 10            [ 1]  389 	bcp	a, #0x10
      0084C9 26 46            [ 1]  390 	jrne	00108$
                           00015D   391 	Sstm8s_clk$CLK_PeripheralClockConfig$77 ==.
                                    392 ;	StdPeriphLib/src/stm8s_clk.c: 271: if (NewState != DISABLE)
      0084CB 0D 0A            [ 1]  393 	tnz	(0x0a, sp)
      0084CD 27 21            [ 1]  394 	jreq	00102$
                           000161   395 	Sstm8s_clk$CLK_PeripheralClockConfig$78 ==.
                                    396 ;	StdPeriphLib/src/stm8s_clk.c: 274: CLK->PCKENR1 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      0084CF AE 50 C7         [ 2]  397 	ldw	x, #0x50c7
      0084D2 F6               [ 1]  398 	ld	a, (x)
      0084D3 97               [ 1]  399 	ld	xl, a
      0084D4 7B 09            [ 1]  400 	ld	a, (0x09, sp)
      0084D6 A4 0F            [ 1]  401 	and	a, #0x0f
      0084D8 88               [ 1]  402 	push	a
      0084D9 A6 01            [ 1]  403 	ld	a, #0x01
      0084DB 6B 05            [ 1]  404 	ld	(0x05, sp), a
      0084DD 84               [ 1]  405 	pop	a
      0084DE 4D               [ 1]  406 	tnz	a
      0084DF 27 05            [ 1]  407 	jreq	00124$
      0084E1                        408 00123$:
      0084E1 08 04            [ 1]  409 	sll	(0x04, sp)
      0084E3 4A               [ 1]  410 	dec	a
      0084E4 26 FB            [ 1]  411 	jrne	00123$
      0084E6                        412 00124$:
      0084E6 9F               [ 1]  413 	ld	a, xl
      0084E7 1A 04            [ 1]  414 	or	a, (0x04, sp)
      0084E9 AE 50 C7         [ 2]  415 	ldw	x, #0x50c7
      0084EC F7               [ 1]  416 	ld	(x), a
      0084ED CC 85 54         [ 2]  417 	jp	00110$
      0084F0                        418 00102$:
                           000182   419 	Sstm8s_clk$CLK_PeripheralClockConfig$79 ==.
                                    420 ;	StdPeriphLib/src/stm8s_clk.c: 279: CLK->PCKENR1 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      0084F0 AE 50 C7         [ 2]  421 	ldw	x, #0x50c7
      0084F3 F6               [ 1]  422 	ld	a, (x)
      0084F4 6B 03            [ 1]  423 	ld	(0x03, sp), a
      0084F6 7B 09            [ 1]  424 	ld	a, (0x09, sp)
      0084F8 A4 0F            [ 1]  425 	and	a, #0x0f
      0084FA 97               [ 1]  426 	ld	xl, a
      0084FB A6 01            [ 1]  427 	ld	a, #0x01
      0084FD 88               [ 1]  428 	push	a
      0084FE 9F               [ 1]  429 	ld	a, xl
      0084FF 4D               [ 1]  430 	tnz	a
      008500 27 05            [ 1]  431 	jreq	00126$
      008502                        432 00125$:
      008502 08 01            [ 1]  433 	sll	(1, sp)
      008504 4A               [ 1]  434 	dec	a
      008505 26 FB            [ 1]  435 	jrne	00125$
      008507                        436 00126$:
      008507 84               [ 1]  437 	pop	a
      008508 43               [ 1]  438 	cpl	a
      008509 14 03            [ 1]  439 	and	a, (0x03, sp)
      00850B AE 50 C7         [ 2]  440 	ldw	x, #0x50c7
      00850E F7               [ 1]  441 	ld	(x), a
      00850F 20 43            [ 2]  442 	jra	00110$
      008511                        443 00108$:
                           0001A3   444 	Sstm8s_clk$CLK_PeripheralClockConfig$80 ==.
                                    445 ;	StdPeriphLib/src/stm8s_clk.c: 284: if (NewState != DISABLE)
      008511 0D 0A            [ 1]  446 	tnz	(0x0a, sp)
      008513 27 20            [ 1]  447 	jreq	00105$
                           0001A7   448 	Sstm8s_clk$CLK_PeripheralClockConfig$81 ==.
                                    449 ;	StdPeriphLib/src/stm8s_clk.c: 287: CLK->PCKENR2 |= (uint8_t)((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F));
      008515 AE 50 CA         [ 2]  450 	ldw	x, #0x50ca
      008518 F6               [ 1]  451 	ld	a, (x)
      008519 97               [ 1]  452 	ld	xl, a
      00851A 7B 09            [ 1]  453 	ld	a, (0x09, sp)
      00851C A4 0F            [ 1]  454 	and	a, #0x0f
      00851E 88               [ 1]  455 	push	a
      00851F A6 01            [ 1]  456 	ld	a, #0x01
      008521 6B 03            [ 1]  457 	ld	(0x03, sp), a
      008523 84               [ 1]  458 	pop	a
      008524 4D               [ 1]  459 	tnz	a
      008525 27 05            [ 1]  460 	jreq	00129$
      008527                        461 00128$:
      008527 08 02            [ 1]  462 	sll	(0x02, sp)
      008529 4A               [ 1]  463 	dec	a
      00852A 26 FB            [ 1]  464 	jrne	00128$
      00852C                        465 00129$:
      00852C 9F               [ 1]  466 	ld	a, xl
      00852D 1A 02            [ 1]  467 	or	a, (0x02, sp)
      00852F AE 50 CA         [ 2]  468 	ldw	x, #0x50ca
      008532 F7               [ 1]  469 	ld	(x), a
      008533 20 1F            [ 2]  470 	jra	00110$
      008535                        471 00105$:
                           0001C7   472 	Sstm8s_clk$CLK_PeripheralClockConfig$82 ==.
                                    473 ;	StdPeriphLib/src/stm8s_clk.c: 292: CLK->PCKENR2 &= (uint8_t)(~(uint8_t)(((uint8_t)1 << ((uint8_t)CLK_Peripheral & (uint8_t)0x0F))));
      008535 AE 50 CA         [ 2]  474 	ldw	x, #0x50ca
      008538 F6               [ 1]  475 	ld	a, (x)
      008539 6B 01            [ 1]  476 	ld	(0x01, sp), a
      00853B 7B 09            [ 1]  477 	ld	a, (0x09, sp)
      00853D A4 0F            [ 1]  478 	and	a, #0x0f
      00853F 97               [ 1]  479 	ld	xl, a
      008540 A6 01            [ 1]  480 	ld	a, #0x01
      008542 88               [ 1]  481 	push	a
      008543 9F               [ 1]  482 	ld	a, xl
      008544 4D               [ 1]  483 	tnz	a
      008545 27 05            [ 1]  484 	jreq	00131$
      008547                        485 00130$:
      008547 08 01            [ 1]  486 	sll	(1, sp)
      008549 4A               [ 1]  487 	dec	a
      00854A 26 FB            [ 1]  488 	jrne	00130$
      00854C                        489 00131$:
      00854C 84               [ 1]  490 	pop	a
      00854D 43               [ 1]  491 	cpl	a
      00854E 14 01            [ 1]  492 	and	a, (0x01, sp)
      008550 AE 50 CA         [ 2]  493 	ldw	x, #0x50ca
      008553 F7               [ 1]  494 	ld	(x), a
      008554                        495 00110$:
                           0001E6   496 	Sstm8s_clk$CLK_PeripheralClockConfig$83 ==.
                                    497 ;	StdPeriphLib/src/stm8s_clk.c: 295: }
      008554 5B 04            [ 2]  498 	addw	sp, #4
                           0001E8   499 	Sstm8s_clk$CLK_PeripheralClockConfig$84 ==.
                           0001E8   500 	XG$CLK_PeripheralClockConfig$0$0 ==.
      008556 32 01 A4         [ 1]  501 	pop	_fp_
      008559 32 01 A5         [ 1]  502 	pop	_fp_+1
      00855C 81               [ 4]  503 	ret
                           0001EF   504 	Sstm8s_clk$CLK_PeripheralClockConfig$85 ==.
                           0001EF   505 	Sstm8s_clk$CLK_ClockSwitchConfig$86 ==.
                                    506 ;	StdPeriphLib/src/stm8s_clk.c: 309: ErrorStatus CLK_ClockSwitchConfig(CLK_SwitchMode_TypeDef CLK_SwitchMode, CLK_Source_TypeDef CLK_NewClock, FunctionalState ITState, CLK_CurrentClockState_TypeDef CLK_CurrentClockState)
                                    507 ;	-----------------------------------------
                                    508 ;	 function CLK_ClockSwitchConfig
                                    509 ;	-----------------------------------------
      00855D                        510 _CLK_ClockSwitchConfig:
      00855D 3B 01 A5         [ 1]  511 	push	_fp_+1
      008560 3B 01 A4         [ 1]  512 	push	_fp_
      008563 90 96            [ 1]  513 	ldw	y, sp
      008565 90 CF 01 A4      [ 2]  514 	ldw	_fp_, y
                           0001FB   515 	Sstm8s_clk$CLK_ClockSwitchConfig$87 ==.
      008569 52 02            [ 2]  516 	sub	sp, #2
                           0001FD   517 	Sstm8s_clk$CLK_ClockSwitchConfig$88 ==.
                                    518 ;	StdPeriphLib/src/stm8s_clk.c: 322: clock_master = (CLK_Source_TypeDef)CLK->CMSR;
      00856B AE 50 C3         [ 2]  519 	ldw	x, #0x50c3
      00856E F6               [ 1]  520 	ld	a, (x)
      00856F 6B 02            [ 1]  521 	ld	(0x02, sp), a
                           000203   522 	Sstm8s_clk$CLK_ClockSwitchConfig$89 ==.
                                    523 ;	StdPeriphLib/src/stm8s_clk.c: 325: if (CLK_SwitchMode == CLK_SWITCHMODE_AUTO)
      008571 7B 07            [ 1]  524 	ld	a, (0x07, sp)
      008573 A1 01            [ 1]  525 	cp	a, #0x01
      008575 26 40            [ 1]  526 	jrne	00122$
                           000209   527 	Sstm8s_clk$CLK_ClockSwitchConfig$90 ==.
                                    528 ;	StdPeriphLib/src/stm8s_clk.c: 328: CLK->SWCR |= CLK_SWCR_SWEN;
      008577 AE 50 C5         [ 2]  529 	ldw	x, #0x50c5
      00857A F6               [ 1]  530 	ld	a, (x)
      00857B AA 02            [ 1]  531 	or	a, #0x02
      00857D F7               [ 1]  532 	ld	(x), a
                           000210   533 	Sstm8s_clk$CLK_ClockSwitchConfig$91 ==.
                                    534 ;	StdPeriphLib/src/stm8s_clk.c: 331: if (ITState != DISABLE)
      00857E 0D 09            [ 1]  535 	tnz	(0x09, sp)
      008580 27 09            [ 1]  536 	jreq	00102$
                           000214   537 	Sstm8s_clk$CLK_ClockSwitchConfig$92 ==.
                                    538 ;	StdPeriphLib/src/stm8s_clk.c: 333: CLK->SWCR |= CLK_SWCR_SWIEN;
      008582 AE 50 C5         [ 2]  539 	ldw	x, #0x50c5
      008585 F6               [ 1]  540 	ld	a, (x)
      008586 AA 04            [ 1]  541 	or	a, #0x04
      008588 F7               [ 1]  542 	ld	(x), a
      008589 20 07            [ 2]  543 	jra	00103$
      00858B                        544 00102$:
                           00021D   545 	Sstm8s_clk$CLK_ClockSwitchConfig$93 ==.
                                    546 ;	StdPeriphLib/src/stm8s_clk.c: 337: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      00858B AE 50 C5         [ 2]  547 	ldw	x, #0x50c5
      00858E F6               [ 1]  548 	ld	a, (x)
      00858F A4 FB            [ 1]  549 	and	a, #0xfb
      008591 F7               [ 1]  550 	ld	(x), a
      008592                        551 00103$:
                           000224   552 	Sstm8s_clk$CLK_ClockSwitchConfig$94 ==.
                                    553 ;	StdPeriphLib/src/stm8s_clk.c: 341: CLK->SWR = (uint8_t)CLK_NewClock;
      008592 AE 50 C4         [ 2]  554 	ldw	x, #0x50c4
      008595 7B 08            [ 1]  555 	ld	a, (0x08, sp)
      008597 F7               [ 1]  556 	ld	(x), a
                           00022A   557 	Sstm8s_clk$CLK_ClockSwitchConfig$95 ==.
                                    558 ;	StdPeriphLib/src/stm8s_clk.c: 344: while((((CLK->SWCR & CLK_SWCR_SWBSY) != 0 )&& (DownCounter != 0)))
      008598 AE FF FF         [ 2]  559 	ldw	x, #0xffff
      00859B                        560 00105$:
      00859B 90 AE 50 C5      [ 2]  561 	ldw	y, #0x50c5
      00859F 90 F6            [ 1]  562 	ld	a, (y)
      0085A1 44               [ 1]  563 	srl	a
      0085A2 24 06            [ 1]  564 	jrnc	00107$
      0085A4 5D               [ 2]  565 	tnzw	x
      0085A5 27 03            [ 1]  566 	jreq	00107$
                           000239   567 	Sstm8s_clk$CLK_ClockSwitchConfig$96 ==.
                                    568 ;	StdPeriphLib/src/stm8s_clk.c: 346: DownCounter--;
      0085A7 5A               [ 2]  569 	decw	x
      0085A8 20 F1            [ 2]  570 	jra	00105$
      0085AA                        571 00107$:
                           00023C   572 	Sstm8s_clk$CLK_ClockSwitchConfig$97 ==.
                                    573 ;	StdPeriphLib/src/stm8s_clk.c: 349: if(DownCounter != 0)
      0085AA 5D               [ 2]  574 	tnzw	x
      0085AB 27 06            [ 1]  575 	jreq	00109$
                           00023F   576 	Sstm8s_clk$CLK_ClockSwitchConfig$98 ==.
                                    577 ;	StdPeriphLib/src/stm8s_clk.c: 351: Swif = SUCCESS;
      0085AD A6 01            [ 1]  578 	ld	a, #0x01
      0085AF 6B 01            [ 1]  579 	ld	(0x01, sp), a
      0085B1 20 43            [ 2]  580 	jra	00123$
      0085B3                        581 00109$:
                           000245   582 	Sstm8s_clk$CLK_ClockSwitchConfig$99 ==.
                                    583 ;	StdPeriphLib/src/stm8s_clk.c: 355: Swif = ERROR;
      0085B3 0F 01            [ 1]  584 	clr	(0x01, sp)
      0085B5 20 3F            [ 2]  585 	jra	00123$
      0085B7                        586 00122$:
                           000249   587 	Sstm8s_clk$CLK_ClockSwitchConfig$100 ==.
                                    588 ;	StdPeriphLib/src/stm8s_clk.c: 361: if (ITState != DISABLE)
      0085B7 0D 09            [ 1]  589 	tnz	(0x09, sp)
      0085B9 27 09            [ 1]  590 	jreq	00112$
                           00024D   591 	Sstm8s_clk$CLK_ClockSwitchConfig$101 ==.
                                    592 ;	StdPeriphLib/src/stm8s_clk.c: 363: CLK->SWCR |= CLK_SWCR_SWIEN;
      0085BB AE 50 C5         [ 2]  593 	ldw	x, #0x50c5
      0085BE F6               [ 1]  594 	ld	a, (x)
      0085BF AA 04            [ 1]  595 	or	a, #0x04
      0085C1 F7               [ 1]  596 	ld	(x), a
      0085C2 20 07            [ 2]  597 	jra	00113$
      0085C4                        598 00112$:
                           000256   599 	Sstm8s_clk$CLK_ClockSwitchConfig$102 ==.
                                    600 ;	StdPeriphLib/src/stm8s_clk.c: 367: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIEN);
      0085C4 AE 50 C5         [ 2]  601 	ldw	x, #0x50c5
      0085C7 F6               [ 1]  602 	ld	a, (x)
      0085C8 A4 FB            [ 1]  603 	and	a, #0xfb
      0085CA F7               [ 1]  604 	ld	(x), a
      0085CB                        605 00113$:
                           00025D   606 	Sstm8s_clk$CLK_ClockSwitchConfig$103 ==.
                                    607 ;	StdPeriphLib/src/stm8s_clk.c: 371: CLK->SWR = (uint8_t)CLK_NewClock;
      0085CB AE 50 C4         [ 2]  608 	ldw	x, #0x50c4
      0085CE 7B 08            [ 1]  609 	ld	a, (0x08, sp)
      0085D0 F7               [ 1]  610 	ld	(x), a
                           000263   611 	Sstm8s_clk$CLK_ClockSwitchConfig$104 ==.
                                    612 ;	StdPeriphLib/src/stm8s_clk.c: 374: while((((CLK->SWCR & CLK_SWCR_SWIF) != 0 ) && (DownCounter != 0)))
      0085D1 AE FF FF         [ 2]  613 	ldw	x, #0xffff
      0085D4                        614 00115$:
      0085D4 90 AE 50 C5      [ 2]  615 	ldw	y, #0x50c5
      0085D8 90 F6            [ 1]  616 	ld	a, (y)
      0085DA A5 08            [ 1]  617 	bcp	a, #0x08
      0085DC 27 06            [ 1]  618 	jreq	00117$
      0085DE 5D               [ 2]  619 	tnzw	x
      0085DF 27 03            [ 1]  620 	jreq	00117$
                           000273   621 	Sstm8s_clk$CLK_ClockSwitchConfig$105 ==.
                                    622 ;	StdPeriphLib/src/stm8s_clk.c: 376: DownCounter--;
      0085E1 5A               [ 2]  623 	decw	x
      0085E2 20 F0            [ 2]  624 	jra	00115$
      0085E4                        625 00117$:
                           000276   626 	Sstm8s_clk$CLK_ClockSwitchConfig$106 ==.
                                    627 ;	StdPeriphLib/src/stm8s_clk.c: 379: if(DownCounter != 0)
      0085E4 5D               [ 2]  628 	tnzw	x
      0085E5 27 0D            [ 1]  629 	jreq	00119$
                           000279   630 	Sstm8s_clk$CLK_ClockSwitchConfig$107 ==.
                                    631 ;	StdPeriphLib/src/stm8s_clk.c: 382: CLK->SWCR |= CLK_SWCR_SWEN;
      0085E7 AE 50 C5         [ 2]  632 	ldw	x, #0x50c5
      0085EA F6               [ 1]  633 	ld	a, (x)
      0085EB AA 02            [ 1]  634 	or	a, #0x02
      0085ED F7               [ 1]  635 	ld	(x), a
                           000280   636 	Sstm8s_clk$CLK_ClockSwitchConfig$108 ==.
                                    637 ;	StdPeriphLib/src/stm8s_clk.c: 383: Swif = SUCCESS;
      0085EE A6 01            [ 1]  638 	ld	a, #0x01
      0085F0 6B 01            [ 1]  639 	ld	(0x01, sp), a
      0085F2 20 02            [ 2]  640 	jra	00123$
      0085F4                        641 00119$:
                           000286   642 	Sstm8s_clk$CLK_ClockSwitchConfig$109 ==.
                                    643 ;	StdPeriphLib/src/stm8s_clk.c: 387: Swif = ERROR;
      0085F4 0F 01            [ 1]  644 	clr	(0x01, sp)
      0085F6                        645 00123$:
                           000288   646 	Sstm8s_clk$CLK_ClockSwitchConfig$110 ==.
                                    647 ;	StdPeriphLib/src/stm8s_clk.c: 390: if(Swif != ERROR)
      0085F6 0D 01            [ 1]  648 	tnz	(0x01, sp)
      0085F8 27 37            [ 1]  649 	jreq	00136$
                           00028C   650 	Sstm8s_clk$CLK_ClockSwitchConfig$111 ==.
                                    651 ;	StdPeriphLib/src/stm8s_clk.c: 393: if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSI))
      0085FA 0D 0A            [ 1]  652 	tnz	(0x0a, sp)
      0085FC 26 0F            [ 1]  653 	jrne	00132$
      0085FE 7B 02            [ 1]  654 	ld	a, (0x02, sp)
      008600 A1 E1            [ 1]  655 	cp	a, #0xe1
      008602 26 09            [ 1]  656 	jrne	00132$
                           000296   657 	Sstm8s_clk$CLK_ClockSwitchConfig$112 ==.
                                    658 ;	StdPeriphLib/src/stm8s_clk.c: 395: CLK->ICKR &= (uint8_t)(~CLK_ICKR_HSIEN);
      008604 AE 50 C0         [ 2]  659 	ldw	x, #0x50c0
      008607 F6               [ 1]  660 	ld	a, (x)
      008608 A4 FE            [ 1]  661 	and	a, #0xfe
      00860A F7               [ 1]  662 	ld	(x), a
      00860B 20 24            [ 2]  663 	jra	00136$
      00860D                        664 00132$:
                           00029F   665 	Sstm8s_clk$CLK_ClockSwitchConfig$113 ==.
                                    666 ;	StdPeriphLib/src/stm8s_clk.c: 397: else if((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_LSI))
      00860D 0D 0A            [ 1]  667 	tnz	(0x0a, sp)
      00860F 26 0F            [ 1]  668 	jrne	00128$
      008611 7B 02            [ 1]  669 	ld	a, (0x02, sp)
      008613 A1 D2            [ 1]  670 	cp	a, #0xd2
      008615 26 09            [ 1]  671 	jrne	00128$
                           0002A9   672 	Sstm8s_clk$CLK_ClockSwitchConfig$114 ==.
                                    673 ;	StdPeriphLib/src/stm8s_clk.c: 399: CLK->ICKR &= (uint8_t)(~CLK_ICKR_LSIEN);
      008617 AE 50 C0         [ 2]  674 	ldw	x, #0x50c0
      00861A F6               [ 1]  675 	ld	a, (x)
      00861B A4 F7            [ 1]  676 	and	a, #0xf7
      00861D F7               [ 1]  677 	ld	(x), a
      00861E 20 11            [ 2]  678 	jra	00136$
      008620                        679 00128$:
                           0002B2   680 	Sstm8s_clk$CLK_ClockSwitchConfig$115 ==.
                                    681 ;	StdPeriphLib/src/stm8s_clk.c: 401: else if ((CLK_CurrentClockState == CLK_CURRENTCLOCKSTATE_DISABLE) && ( clock_master == CLK_SOURCE_HSE))
      008620 0D 0A            [ 1]  682 	tnz	(0x0a, sp)
      008622 26 0D            [ 1]  683 	jrne	00136$
      008624 7B 02            [ 1]  684 	ld	a, (0x02, sp)
      008626 A1 B4            [ 1]  685 	cp	a, #0xb4
      008628 26 07            [ 1]  686 	jrne	00136$
                           0002BC   687 	Sstm8s_clk$CLK_ClockSwitchConfig$116 ==.
                                    688 ;	StdPeriphLib/src/stm8s_clk.c: 403: CLK->ECKR &= (uint8_t)(~CLK_ECKR_HSEEN);
      00862A AE 50 C1         [ 2]  689 	ldw	x, #0x50c1
      00862D F6               [ 1]  690 	ld	a, (x)
      00862E A4 FE            [ 1]  691 	and	a, #0xfe
      008630 F7               [ 1]  692 	ld	(x), a
      008631                        693 00136$:
                           0002C3   694 	Sstm8s_clk$CLK_ClockSwitchConfig$117 ==.
                                    695 ;	StdPeriphLib/src/stm8s_clk.c: 406: return(Swif);
      008631 7B 01            [ 1]  696 	ld	a, (0x01, sp)
                           0002C5   697 	Sstm8s_clk$CLK_ClockSwitchConfig$118 ==.
                                    698 ;	StdPeriphLib/src/stm8s_clk.c: 407: }
      008633 5B 02            [ 2]  699 	addw	sp, #2
                           0002C7   700 	Sstm8s_clk$CLK_ClockSwitchConfig$119 ==.
                           0002C7   701 	XG$CLK_ClockSwitchConfig$0$0 ==.
      008635 32 01 A4         [ 1]  702 	pop	_fp_
      008638 32 01 A5         [ 1]  703 	pop	_fp_+1
      00863B 81               [ 4]  704 	ret
                           0002CE   705 	Sstm8s_clk$CLK_ClockSwitchConfig$120 ==.
                           0002CE   706 	Sstm8s_clk$CLK_HSIPrescalerConfig$121 ==.
                                    707 ;	StdPeriphLib/src/stm8s_clk.c: 415: void CLK_HSIPrescalerConfig(CLK_Prescaler_TypeDef HSIPrescaler)
                                    708 ;	-----------------------------------------
                                    709 ;	 function CLK_HSIPrescalerConfig
                                    710 ;	-----------------------------------------
      00863C                        711 _CLK_HSIPrescalerConfig:
      00863C 3B 01 A5         [ 1]  712 	push	_fp_+1
      00863F 3B 01 A4         [ 1]  713 	push	_fp_
      008642 90 96            [ 1]  714 	ldw	y, sp
      008644 90 CF 01 A4      [ 2]  715 	ldw	_fp_, y
                           0002DA   716 	Sstm8s_clk$CLK_HSIPrescalerConfig$122 ==.
                           0002DA   717 	Sstm8s_clk$CLK_HSIPrescalerConfig$123 ==.
                                    718 ;	StdPeriphLib/src/stm8s_clk.c: 421: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      008648 AE 50 C6         [ 2]  719 	ldw	x, #0x50c6
      00864B F6               [ 1]  720 	ld	a, (x)
      00864C A4 E7            [ 1]  721 	and	a, #0xe7
      00864E F7               [ 1]  722 	ld	(x), a
                           0002E1   723 	Sstm8s_clk$CLK_HSIPrescalerConfig$124 ==.
                                    724 ;	StdPeriphLib/src/stm8s_clk.c: 424: CLK->CKDIVR |= (uint8_t)HSIPrescaler;
      00864F AE 50 C6         [ 2]  725 	ldw	x, #0x50c6
      008652 F6               [ 1]  726 	ld	a, (x)
      008653 1A 05            [ 1]  727 	or	a, (0x05, sp)
      008655 AE 50 C6         [ 2]  728 	ldw	x, #0x50c6
      008658 F7               [ 1]  729 	ld	(x), a
                           0002EB   730 	Sstm8s_clk$CLK_HSIPrescalerConfig$125 ==.
                                    731 ;	StdPeriphLib/src/stm8s_clk.c: 425: }
                           0002EB   732 	Sstm8s_clk$CLK_HSIPrescalerConfig$126 ==.
                           0002EB   733 	XG$CLK_HSIPrescalerConfig$0$0 ==.
      008659 32 01 A4         [ 1]  734 	pop	_fp_
      00865C 32 01 A5         [ 1]  735 	pop	_fp_+1
      00865F 81               [ 4]  736 	ret
                           0002F2   737 	Sstm8s_clk$CLK_HSIPrescalerConfig$127 ==.
                           0002F2   738 	Sstm8s_clk$CLK_CCOConfig$128 ==.
                                    739 ;	StdPeriphLib/src/stm8s_clk.c: 436: void CLK_CCOConfig(CLK_Output_TypeDef CLK_CCO)
                                    740 ;	-----------------------------------------
                                    741 ;	 function CLK_CCOConfig
                                    742 ;	-----------------------------------------
      008660                        743 _CLK_CCOConfig:
      008660 3B 01 A5         [ 1]  744 	push	_fp_+1
      008663 3B 01 A4         [ 1]  745 	push	_fp_
      008666 90 96            [ 1]  746 	ldw	y, sp
      008668 90 CF 01 A4      [ 2]  747 	ldw	_fp_, y
                           0002FE   748 	Sstm8s_clk$CLK_CCOConfig$129 ==.
                           0002FE   749 	Sstm8s_clk$CLK_CCOConfig$130 ==.
                                    750 ;	StdPeriphLib/src/stm8s_clk.c: 442: CLK->CCOR &= (uint8_t)(~CLK_CCOR_CCOSEL);
      00866C AE 50 C9         [ 2]  751 	ldw	x, #0x50c9
      00866F F6               [ 1]  752 	ld	a, (x)
      008670 A4 E1            [ 1]  753 	and	a, #0xe1
      008672 F7               [ 1]  754 	ld	(x), a
                           000305   755 	Sstm8s_clk$CLK_CCOConfig$131 ==.
                                    756 ;	StdPeriphLib/src/stm8s_clk.c: 445: CLK->CCOR |= (uint8_t)CLK_CCO;
      008673 AE 50 C9         [ 2]  757 	ldw	x, #0x50c9
      008676 F6               [ 1]  758 	ld	a, (x)
      008677 1A 05            [ 1]  759 	or	a, (0x05, sp)
      008679 AE 50 C9         [ 2]  760 	ldw	x, #0x50c9
      00867C F7               [ 1]  761 	ld	(x), a
                           00030F   762 	Sstm8s_clk$CLK_CCOConfig$132 ==.
                                    763 ;	StdPeriphLib/src/stm8s_clk.c: 448: CLK->CCOR |= CLK_CCOR_CCOEN;
      00867D 72 10 50 C9      [ 1]  764 	bset	0x50c9, #0
                           000313   765 	Sstm8s_clk$CLK_CCOConfig$133 ==.
                                    766 ;	StdPeriphLib/src/stm8s_clk.c: 449: }
                           000313   767 	Sstm8s_clk$CLK_CCOConfig$134 ==.
                           000313   768 	XG$CLK_CCOConfig$0$0 ==.
      008681 32 01 A4         [ 1]  769 	pop	_fp_
      008684 32 01 A5         [ 1]  770 	pop	_fp_+1
      008687 81               [ 4]  771 	ret
                           00031A   772 	Sstm8s_clk$CLK_CCOConfig$135 ==.
                           00031A   773 	Sstm8s_clk$CLK_ITConfig$136 ==.
                                    774 ;	StdPeriphLib/src/stm8s_clk.c: 459: void CLK_ITConfig(CLK_IT_TypeDef CLK_IT, FunctionalState NewState)
                                    775 ;	-----------------------------------------
                                    776 ;	 function CLK_ITConfig
                                    777 ;	-----------------------------------------
      008688                        778 _CLK_ITConfig:
      008688 3B 01 A5         [ 1]  779 	push	_fp_+1
      00868B 3B 01 A4         [ 1]  780 	push	_fp_
      00868E 90 96            [ 1]  781 	ldw	y, sp
      008690 90 CF 01 A4      [ 2]  782 	ldw	_fp_, y
                           000326   783 	Sstm8s_clk$CLK_ITConfig$137 ==.
                           000326   784 	Sstm8s_clk$CLK_ITConfig$138 ==.
                                    785 ;	StdPeriphLib/src/stm8s_clk.c: 465: if (NewState != DISABLE)
      008694 0D 06            [ 1]  786 	tnz	(0x06, sp)
      008696 27 1E            [ 1]  787 	jreq	00110$
                           00032A   788 	Sstm8s_clk$CLK_ITConfig$139 ==.
                                    789 ;	StdPeriphLib/src/stm8s_clk.c: 467: switch (CLK_IT)
      008698 7B 05            [ 1]  790 	ld	a, (0x05, sp)
      00869A A1 0C            [ 1]  791 	cp	a, #0x0c
      00869C 27 0F            [ 1]  792 	jreq	00102$
      00869E 7B 05            [ 1]  793 	ld	a, (0x05, sp)
      0086A0 A1 1C            [ 1]  794 	cp	a, #0x1c
      0086A2 26 2E            [ 1]  795 	jrne	00112$
                           000336   796 	Sstm8s_clk$CLK_ITConfig$140 ==.
                                    797 ;	StdPeriphLib/src/stm8s_clk.c: 470: CLK->SWCR |= CLK_SWCR_SWIEN;
      0086A4 AE 50 C5         [ 2]  798 	ldw	x, #0x50c5
      0086A7 F6               [ 1]  799 	ld	a, (x)
      0086A8 AA 04            [ 1]  800 	or	a, #0x04
      0086AA F7               [ 1]  801 	ld	(x), a
                           00033D   802 	Sstm8s_clk$CLK_ITConfig$141 ==.
                                    803 ;	StdPeriphLib/src/stm8s_clk.c: 471: break;
      0086AB 20 25            [ 2]  804 	jra	00112$
                           00033F   805 	Sstm8s_clk$CLK_ITConfig$142 ==.
                                    806 ;	StdPeriphLib/src/stm8s_clk.c: 472: case CLK_IT_CSSD: /* Enable the clock security system detection interrupt */
      0086AD                        807 00102$:
                           00033F   808 	Sstm8s_clk$CLK_ITConfig$143 ==.
                                    809 ;	StdPeriphLib/src/stm8s_clk.c: 473: CLK->CSSR |= CLK_CSSR_CSSDIE;
      0086AD AE 50 C8         [ 2]  810 	ldw	x, #0x50c8
      0086B0 F6               [ 1]  811 	ld	a, (x)
      0086B1 AA 04            [ 1]  812 	or	a, #0x04
      0086B3 F7               [ 1]  813 	ld	(x), a
                           000346   814 	Sstm8s_clk$CLK_ITConfig$144 ==.
                                    815 ;	StdPeriphLib/src/stm8s_clk.c: 474: break;
      0086B4 20 1C            [ 2]  816 	jra	00112$
                           000348   817 	Sstm8s_clk$CLK_ITConfig$145 ==.
                                    818 ;	StdPeriphLib/src/stm8s_clk.c: 477: }
      0086B6                        819 00110$:
                           000348   820 	Sstm8s_clk$CLK_ITConfig$146 ==.
                                    821 ;	StdPeriphLib/src/stm8s_clk.c: 481: switch (CLK_IT)
      0086B6 7B 05            [ 1]  822 	ld	a, (0x05, sp)
      0086B8 A1 0C            [ 1]  823 	cp	a, #0x0c
      0086BA 27 0F            [ 1]  824 	jreq	00106$
      0086BC 7B 05            [ 1]  825 	ld	a, (0x05, sp)
      0086BE A1 1C            [ 1]  826 	cp	a, #0x1c
      0086C0 26 10            [ 1]  827 	jrne	00112$
                           000354   828 	Sstm8s_clk$CLK_ITConfig$147 ==.
                                    829 ;	StdPeriphLib/src/stm8s_clk.c: 484: CLK->SWCR  &= (uint8_t)(~CLK_SWCR_SWIEN);
      0086C2 AE 50 C5         [ 2]  830 	ldw	x, #0x50c5
      0086C5 F6               [ 1]  831 	ld	a, (x)
      0086C6 A4 FB            [ 1]  832 	and	a, #0xfb
      0086C8 F7               [ 1]  833 	ld	(x), a
                           00035B   834 	Sstm8s_clk$CLK_ITConfig$148 ==.
                                    835 ;	StdPeriphLib/src/stm8s_clk.c: 485: break;
      0086C9 20 07            [ 2]  836 	jra	00112$
                           00035D   837 	Sstm8s_clk$CLK_ITConfig$149 ==.
                                    838 ;	StdPeriphLib/src/stm8s_clk.c: 486: case CLK_IT_CSSD: /* Disable the clock security system detection interrupt */
      0086CB                        839 00106$:
                           00035D   840 	Sstm8s_clk$CLK_ITConfig$150 ==.
                                    841 ;	StdPeriphLib/src/stm8s_clk.c: 487: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSDIE);
      0086CB AE 50 C8         [ 2]  842 	ldw	x, #0x50c8
      0086CE F6               [ 1]  843 	ld	a, (x)
      0086CF A4 FB            [ 1]  844 	and	a, #0xfb
      0086D1 F7               [ 1]  845 	ld	(x), a
                           000364   846 	Sstm8s_clk$CLK_ITConfig$151 ==.
                                    847 ;	StdPeriphLib/src/stm8s_clk.c: 491: }
      0086D2                        848 00112$:
                           000364   849 	Sstm8s_clk$CLK_ITConfig$152 ==.
                                    850 ;	StdPeriphLib/src/stm8s_clk.c: 493: }
                           000364   851 	Sstm8s_clk$CLK_ITConfig$153 ==.
                           000364   852 	XG$CLK_ITConfig$0$0 ==.
      0086D2 32 01 A4         [ 1]  853 	pop	_fp_
      0086D5 32 01 A5         [ 1]  854 	pop	_fp_+1
      0086D8 81               [ 4]  855 	ret
                           00036B   856 	Sstm8s_clk$CLK_ITConfig$154 ==.
                           00036B   857 	Sstm8s_clk$CLK_SYSCLKConfig$155 ==.
                                    858 ;	StdPeriphLib/src/stm8s_clk.c: 500: void CLK_SYSCLKConfig(CLK_Prescaler_TypeDef CLK_Prescaler)
                                    859 ;	-----------------------------------------
                                    860 ;	 function CLK_SYSCLKConfig
                                    861 ;	-----------------------------------------
      0086D9                        862 _CLK_SYSCLKConfig:
      0086D9 3B 01 A5         [ 1]  863 	push	_fp_+1
      0086DC 3B 01 A4         [ 1]  864 	push	_fp_
      0086DF 90 96            [ 1]  865 	ldw	y, sp
      0086E1 90 CF 01 A4      [ 2]  866 	ldw	_fp_, y
                           000377   867 	Sstm8s_clk$CLK_SYSCLKConfig$156 ==.
      0086E5 52 02            [ 2]  868 	sub	sp, #2
                           000379   869 	Sstm8s_clk$CLK_SYSCLKConfig$157 ==.
                                    870 ;	StdPeriphLib/src/stm8s_clk.c: 505: if (((uint8_t)CLK_Prescaler & (uint8_t)0x80) == 0x00) /* Bit7 = 0 means HSI divider */
      0086E7 0D 07            [ 1]  871 	tnz	(0x07, sp)
      0086E9 2B 19            [ 1]  872 	jrmi	00102$
                           00037D   873 	Sstm8s_clk$CLK_SYSCLKConfig$158 ==.
                                    874 ;	StdPeriphLib/src/stm8s_clk.c: 507: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_HSIDIV);
      0086EB AE 50 C6         [ 2]  875 	ldw	x, #0x50c6
      0086EE F6               [ 1]  876 	ld	a, (x)
      0086EF A4 E7            [ 1]  877 	and	a, #0xe7
      0086F1 F7               [ 1]  878 	ld	(x), a
                           000384   879 	Sstm8s_clk$CLK_SYSCLKConfig$159 ==.
                                    880 ;	StdPeriphLib/src/stm8s_clk.c: 508: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_HSIDIV);
      0086F2 AE 50 C6         [ 2]  881 	ldw	x, #0x50c6
      0086F5 F6               [ 1]  882 	ld	a, (x)
      0086F6 6B 02            [ 1]  883 	ld	(0x02, sp), a
      0086F8 7B 07            [ 1]  884 	ld	a, (0x07, sp)
      0086FA A4 18            [ 1]  885 	and	a, #0x18
      0086FC 1A 02            [ 1]  886 	or	a, (0x02, sp)
      0086FE AE 50 C6         [ 2]  887 	ldw	x, #0x50c6
      008701 F7               [ 1]  888 	ld	(x), a
      008702 20 17            [ 2]  889 	jra	00104$
      008704                        890 00102$:
                           000396   891 	Sstm8s_clk$CLK_SYSCLKConfig$160 ==.
                                    892 ;	StdPeriphLib/src/stm8s_clk.c: 512: CLK->CKDIVR &= (uint8_t)(~CLK_CKDIVR_CPUDIV);
      008704 AE 50 C6         [ 2]  893 	ldw	x, #0x50c6
      008707 F6               [ 1]  894 	ld	a, (x)
      008708 A4 F8            [ 1]  895 	and	a, #0xf8
      00870A F7               [ 1]  896 	ld	(x), a
                           00039D   897 	Sstm8s_clk$CLK_SYSCLKConfig$161 ==.
                                    898 ;	StdPeriphLib/src/stm8s_clk.c: 513: CLK->CKDIVR |= (uint8_t)((uint8_t)CLK_Prescaler & (uint8_t)CLK_CKDIVR_CPUDIV);
      00870B AE 50 C6         [ 2]  899 	ldw	x, #0x50c6
      00870E F6               [ 1]  900 	ld	a, (x)
      00870F 6B 01            [ 1]  901 	ld	(0x01, sp), a
      008711 7B 07            [ 1]  902 	ld	a, (0x07, sp)
      008713 A4 07            [ 1]  903 	and	a, #0x07
      008715 1A 01            [ 1]  904 	or	a, (0x01, sp)
      008717 AE 50 C6         [ 2]  905 	ldw	x, #0x50c6
      00871A F7               [ 1]  906 	ld	(x), a
      00871B                        907 00104$:
                           0003AD   908 	Sstm8s_clk$CLK_SYSCLKConfig$162 ==.
                                    909 ;	StdPeriphLib/src/stm8s_clk.c: 515: }
      00871B 5B 02            [ 2]  910 	addw	sp, #2
                           0003AF   911 	Sstm8s_clk$CLK_SYSCLKConfig$163 ==.
                           0003AF   912 	XG$CLK_SYSCLKConfig$0$0 ==.
      00871D 32 01 A4         [ 1]  913 	pop	_fp_
      008720 32 01 A5         [ 1]  914 	pop	_fp_+1
      008723 81               [ 4]  915 	ret
                           0003B6   916 	Sstm8s_clk$CLK_SYSCLKConfig$164 ==.
                           0003B6   917 	Sstm8s_clk$CLK_SWIMConfig$165 ==.
                                    918 ;	StdPeriphLib/src/stm8s_clk.c: 523: void CLK_SWIMConfig(CLK_SWIMDivider_TypeDef CLK_SWIMDivider)
                                    919 ;	-----------------------------------------
                                    920 ;	 function CLK_SWIMConfig
                                    921 ;	-----------------------------------------
      008724                        922 _CLK_SWIMConfig:
      008724 3B 01 A5         [ 1]  923 	push	_fp_+1
      008727 3B 01 A4         [ 1]  924 	push	_fp_
      00872A 90 96            [ 1]  925 	ldw	y, sp
      00872C 90 CF 01 A4      [ 2]  926 	ldw	_fp_, y
                           0003C2   927 	Sstm8s_clk$CLK_SWIMConfig$166 ==.
                           0003C2   928 	Sstm8s_clk$CLK_SWIMConfig$167 ==.
                                    929 ;	StdPeriphLib/src/stm8s_clk.c: 528: if (CLK_SWIMDivider != CLK_SWIMDIVIDER_2)
      008730 0D 05            [ 1]  930 	tnz	(0x05, sp)
      008732 27 06            [ 1]  931 	jreq	00102$
                           0003C6   932 	Sstm8s_clk$CLK_SWIMConfig$168 ==.
                                    933 ;	StdPeriphLib/src/stm8s_clk.c: 531: CLK->SWIMCCR |= CLK_SWIMCCR_SWIMDIV;
      008734 72 10 50 CD      [ 1]  934 	bset	0x50cd, #0
      008738 20 04            [ 2]  935 	jra	00104$
      00873A                        936 00102$:
                           0003CC   937 	Sstm8s_clk$CLK_SWIMConfig$169 ==.
                                    938 ;	StdPeriphLib/src/stm8s_clk.c: 536: CLK->SWIMCCR &= (uint8_t)(~CLK_SWIMCCR_SWIMDIV);
      00873A 72 11 50 CD      [ 1]  939 	bres	0x50cd, #0
      00873E                        940 00104$:
                           0003D0   941 	Sstm8s_clk$CLK_SWIMConfig$170 ==.
                                    942 ;	StdPeriphLib/src/stm8s_clk.c: 538: }
                           0003D0   943 	Sstm8s_clk$CLK_SWIMConfig$171 ==.
                           0003D0   944 	XG$CLK_SWIMConfig$0$0 ==.
      00873E 32 01 A4         [ 1]  945 	pop	_fp_
      008741 32 01 A5         [ 1]  946 	pop	_fp_+1
      008744 81               [ 4]  947 	ret
                           0003D7   948 	Sstm8s_clk$CLK_SWIMConfig$172 ==.
                           0003D7   949 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$173 ==.
                                    950 ;	StdPeriphLib/src/stm8s_clk.c: 547: void CLK_ClockSecuritySystemEnable(void)
                                    951 ;	-----------------------------------------
                                    952 ;	 function CLK_ClockSecuritySystemEnable
                                    953 ;	-----------------------------------------
      008745                        954 _CLK_ClockSecuritySystemEnable:
      008745 3B 01 A5         [ 1]  955 	push	_fp_+1
      008748 3B 01 A4         [ 1]  956 	push	_fp_
      00874B 90 96            [ 1]  957 	ldw	y, sp
      00874D 90 CF 01 A4      [ 2]  958 	ldw	_fp_, y
                           0003E3   959 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$174 ==.
                           0003E3   960 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$175 ==.
                                    961 ;	StdPeriphLib/src/stm8s_clk.c: 550: CLK->CSSR |= CLK_CSSR_CSSEN;
      008751 72 10 50 C8      [ 1]  962 	bset	0x50c8, #0
                           0003E7   963 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$176 ==.
                                    964 ;	StdPeriphLib/src/stm8s_clk.c: 551: }
                           0003E7   965 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$177 ==.
                           0003E7   966 	XG$CLK_ClockSecuritySystemEnable$0$0 ==.
      008755 32 01 A4         [ 1]  967 	pop	_fp_
      008758 32 01 A5         [ 1]  968 	pop	_fp_+1
      00875B 81               [ 4]  969 	ret
                           0003EE   970 	Sstm8s_clk$CLK_ClockSecuritySystemEnable$178 ==.
                           0003EE   971 	Sstm8s_clk$CLK_GetSYSCLKSource$179 ==.
                                    972 ;	StdPeriphLib/src/stm8s_clk.c: 559: CLK_Source_TypeDef CLK_GetSYSCLKSource(void)
                                    973 ;	-----------------------------------------
                                    974 ;	 function CLK_GetSYSCLKSource
                                    975 ;	-----------------------------------------
      00875C                        976 _CLK_GetSYSCLKSource:
      00875C 3B 01 A5         [ 1]  977 	push	_fp_+1
      00875F 3B 01 A4         [ 1]  978 	push	_fp_
      008762 90 96            [ 1]  979 	ldw	y, sp
      008764 90 CF 01 A4      [ 2]  980 	ldw	_fp_, y
                           0003FA   981 	Sstm8s_clk$CLK_GetSYSCLKSource$180 ==.
                           0003FA   982 	Sstm8s_clk$CLK_GetSYSCLKSource$181 ==.
                                    983 ;	StdPeriphLib/src/stm8s_clk.c: 561: return((CLK_Source_TypeDef)CLK->CMSR);
      008768 AE 50 C3         [ 2]  984 	ldw	x, #0x50c3
      00876B F6               [ 1]  985 	ld	a, (x)
                           0003FE   986 	Sstm8s_clk$CLK_GetSYSCLKSource$182 ==.
                                    987 ;	StdPeriphLib/src/stm8s_clk.c: 562: }
                           0003FE   988 	Sstm8s_clk$CLK_GetSYSCLKSource$183 ==.
                           0003FE   989 	XG$CLK_GetSYSCLKSource$0$0 ==.
      00876C 32 01 A4         [ 1]  990 	pop	_fp_
      00876F 32 01 A5         [ 1]  991 	pop	_fp_+1
      008772 81               [ 4]  992 	ret
                           000405   993 	Sstm8s_clk$CLK_GetSYSCLKSource$184 ==.
                           000405   994 	Sstm8s_clk$CLK_GetClockFreq$185 ==.
                                    995 ;	StdPeriphLib/src/stm8s_clk.c: 569: uint32_t CLK_GetClockFreq(void)
                                    996 ;	-----------------------------------------
                                    997 ;	 function CLK_GetClockFreq
                                    998 ;	-----------------------------------------
      008773                        999 _CLK_GetClockFreq:
      008773 3B 01 A5         [ 1] 1000 	push	_fp_+1
      008776 3B 01 A4         [ 1] 1001 	push	_fp_
      008779 90 96            [ 1] 1002 	ldw	y, sp
      00877B 90 CF 01 A4      [ 2] 1003 	ldw	_fp_, y
                           000411  1004 	Sstm8s_clk$CLK_GetClockFreq$186 ==.
      00877F 52 07            [ 2] 1005 	sub	sp, #7
                           000413  1006 	Sstm8s_clk$CLK_GetClockFreq$187 ==.
                                   1007 ;	StdPeriphLib/src/stm8s_clk.c: 576: clocksource = (CLK_Source_TypeDef)CLK->CMSR;
      008781 AE 50 C3         [ 2] 1008 	ldw	x, #0x50c3
      008784 F6               [ 1] 1009 	ld	a, (x)
      008785 6B 01            [ 1] 1010 	ld	(0x01, sp), a
                           000419  1011 	Sstm8s_clk$CLK_GetClockFreq$188 ==.
                                   1012 ;	StdPeriphLib/src/stm8s_clk.c: 578: if (clocksource == CLK_SOURCE_HSI)
      008787 7B 01            [ 1] 1013 	ld	a, (0x01, sp)
      008789 A1 E1            [ 1] 1014 	cp	a, #0xe1
      00878B 26 2C            [ 1] 1015 	jrne	00105$
                           00041F  1016 	Sstm8s_clk$CLK_GetClockFreq$189 ==.
                                   1017 ;	StdPeriphLib/src/stm8s_clk.c: 580: tmp = (uint8_t)(CLK->CKDIVR & CLK_CKDIVR_HSIDIV);
      00878D AE 50 C6         [ 2] 1018 	ldw	x, #0x50c6
      008790 F6               [ 1] 1019 	ld	a, (x)
      008791 A4 18            [ 1] 1020 	and	a, #0x18
                           000425  1021 	Sstm8s_clk$CLK_GetClockFreq$190 ==.
                                   1022 ;	StdPeriphLib/src/stm8s_clk.c: 581: tmp = (uint8_t)(tmp >> 3);
      008793 44               [ 1] 1023 	srl	a
      008794 44               [ 1] 1024 	srl	a
      008795 44               [ 1] 1025 	srl	a
                           000428  1026 	Sstm8s_clk$CLK_GetClockFreq$191 ==.
                                   1027 ;	StdPeriphLib/src/stm8s_clk.c: 582: presc = HSIDivFactor[tmp];
      008796 AE 88 D1         [ 2] 1028 	ldw	x, #_HSIDivFactor+0
      008799 1F 06            [ 2] 1029 	ldw	(0x06, sp), x
      00879B 5F               [ 1] 1030 	clrw	x
      00879C 97               [ 1] 1031 	ld	xl, a
      00879D 72 FB 06         [ 2] 1032 	addw	x, (0x06, sp)
      0087A0 F6               [ 1] 1033 	ld	a, (x)
                           000433  1034 	Sstm8s_clk$CLK_GetClockFreq$192 ==.
                                   1035 ;	StdPeriphLib/src/stm8s_clk.c: 583: clockfrequency = HSI_VALUE / presc;
      0087A1 5F               [ 1] 1036 	clrw	x
      0087A2 97               [ 1] 1037 	ld	xl, a
      0087A3 90 5F            [ 1] 1038 	clrw	y
      0087A5 89               [ 2] 1039 	pushw	x
      0087A6 90 89            [ 2] 1040 	pushw	y
      0087A8 4B 00            [ 1] 1041 	push	#0x00
      0087AA 4B 24            [ 1] 1042 	push	#0x24
      0087AC 4B F4            [ 1] 1043 	push	#0xf4
      0087AE 4B 00            [ 1] 1044 	push	#0x00
      0087B0 CD DA 75         [ 4] 1045 	call	__divulong
      0087B3 5B 08            [ 2] 1046 	addw	sp, #8
      0087B5 1F 04            [ 2] 1047 	ldw	(0x04, sp), x
      0087B7 20 1A            [ 2] 1048 	jra	00106$
      0087B9                       1049 00105$:
                           00044B  1050 	Sstm8s_clk$CLK_GetClockFreq$193 ==.
                                   1051 ;	StdPeriphLib/src/stm8s_clk.c: 585: else if ( clocksource == CLK_SOURCE_LSI)
      0087B9 7B 01            [ 1] 1052 	ld	a, (0x01, sp)
      0087BB A1 D2            [ 1] 1053 	cp	a, #0xd2
      0087BD 26 0B            [ 1] 1054 	jrne	00102$
                           000451  1055 	Sstm8s_clk$CLK_GetClockFreq$194 ==.
                                   1056 ;	StdPeriphLib/src/stm8s_clk.c: 587: clockfrequency = LSI_VALUE;
      0087BF AE F4 00         [ 2] 1057 	ldw	x, #0xf400
      0087C2 1F 04            [ 2] 1058 	ldw	(0x04, sp), x
      0087C4 90 AE 00 01      [ 2] 1059 	ldw	y, #0x0001
      0087C8 20 09            [ 2] 1060 	jra	00106$
      0087CA                       1061 00102$:
                           00045C  1062 	Sstm8s_clk$CLK_GetClockFreq$195 ==.
                                   1063 ;	StdPeriphLib/src/stm8s_clk.c: 591: clockfrequency = HSE_VALUE;
      0087CA AE 24 00         [ 2] 1064 	ldw	x, #0x2400
      0087CD 1F 04            [ 2] 1065 	ldw	(0x04, sp), x
      0087CF 90 AE 00 F4      [ 2] 1066 	ldw	y, #0x00f4
      0087D3                       1067 00106$:
                           000465  1068 	Sstm8s_clk$CLK_GetClockFreq$196 ==.
                                   1069 ;	StdPeriphLib/src/stm8s_clk.c: 594: return((uint32_t)clockfrequency);
      0087D3 1E 04            [ 2] 1070 	ldw	x, (0x04, sp)
                           000467  1071 	Sstm8s_clk$CLK_GetClockFreq$197 ==.
                                   1072 ;	StdPeriphLib/src/stm8s_clk.c: 595: }
      0087D5 5B 07            [ 2] 1073 	addw	sp, #7
                           000469  1074 	Sstm8s_clk$CLK_GetClockFreq$198 ==.
                           000469  1075 	XG$CLK_GetClockFreq$0$0 ==.
      0087D7 32 01 A4         [ 1] 1076 	pop	_fp_
      0087DA 32 01 A5         [ 1] 1077 	pop	_fp_+1
      0087DD 81               [ 4] 1078 	ret
                           000470  1079 	Sstm8s_clk$CLK_GetClockFreq$199 ==.
                           000470  1080 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$200 ==.
                                   1081 ;	StdPeriphLib/src/stm8s_clk.c: 604: void CLK_AdjustHSICalibrationValue(CLK_HSITrimValue_TypeDef CLK_HSICalibrationValue)
                                   1082 ;	-----------------------------------------
                                   1083 ;	 function CLK_AdjustHSICalibrationValue
                                   1084 ;	-----------------------------------------
      0087DE                       1085 _CLK_AdjustHSICalibrationValue:
      0087DE 3B 01 A5         [ 1] 1086 	push	_fp_+1
      0087E1 3B 01 A4         [ 1] 1087 	push	_fp_
      0087E4 90 96            [ 1] 1088 	ldw	y, sp
      0087E6 90 CF 01 A4      [ 2] 1089 	ldw	_fp_, y
                           00047C  1090 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$201 ==.
                           00047C  1091 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$202 ==.
                                   1092 ;	StdPeriphLib/src/stm8s_clk.c: 610: CLK->HSITRIMR = (uint8_t)( (uint8_t)(CLK->HSITRIMR & (uint8_t)(~CLK_HSITRIMR_HSITRIM))|((uint8_t)CLK_HSICalibrationValue));
      0087EA AE 50 CC         [ 2] 1093 	ldw	x, #0x50cc
      0087ED F6               [ 1] 1094 	ld	a, (x)
      0087EE A4 F8            [ 1] 1095 	and	a, #0xf8
      0087F0 1A 05            [ 1] 1096 	or	a, (0x05, sp)
      0087F2 AE 50 CC         [ 2] 1097 	ldw	x, #0x50cc
      0087F5 F7               [ 1] 1098 	ld	(x), a
                           000488  1099 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$203 ==.
                                   1100 ;	StdPeriphLib/src/stm8s_clk.c: 611: }
                           000488  1101 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$204 ==.
                           000488  1102 	XG$CLK_AdjustHSICalibrationValue$0$0 ==.
      0087F6 32 01 A4         [ 1] 1103 	pop	_fp_
      0087F9 32 01 A5         [ 1] 1104 	pop	_fp_+1
      0087FC 81               [ 4] 1105 	ret
                           00048F  1106 	Sstm8s_clk$CLK_AdjustHSICalibrationValue$205 ==.
                           00048F  1107 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$206 ==.
                                   1108 ;	StdPeriphLib/src/stm8s_clk.c: 622: void CLK_SYSCLKEmergencyClear(void)
                                   1109 ;	-----------------------------------------
                                   1110 ;	 function CLK_SYSCLKEmergencyClear
                                   1111 ;	-----------------------------------------
      0087FD                       1112 _CLK_SYSCLKEmergencyClear:
      0087FD 3B 01 A5         [ 1] 1113 	push	_fp_+1
      008800 3B 01 A4         [ 1] 1114 	push	_fp_
      008803 90 96            [ 1] 1115 	ldw	y, sp
      008805 90 CF 01 A4      [ 2] 1116 	ldw	_fp_, y
                           00049B  1117 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$207 ==.
                           00049B  1118 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$208 ==.
                                   1119 ;	StdPeriphLib/src/stm8s_clk.c: 624: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWBSY);
      008809 72 11 50 C5      [ 1] 1120 	bres	0x50c5, #0
                           00049F  1121 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$209 ==.
                                   1122 ;	StdPeriphLib/src/stm8s_clk.c: 625: }
                           00049F  1123 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$210 ==.
                           00049F  1124 	XG$CLK_SYSCLKEmergencyClear$0$0 ==.
      00880D 32 01 A4         [ 1] 1125 	pop	_fp_
      008810 32 01 A5         [ 1] 1126 	pop	_fp_+1
      008813 81               [ 4] 1127 	ret
                           0004A6  1128 	Sstm8s_clk$CLK_SYSCLKEmergencyClear$211 ==.
                           0004A6  1129 	Sstm8s_clk$CLK_GetFlagStatus$212 ==.
                                   1130 ;	StdPeriphLib/src/stm8s_clk.c: 634: FlagStatus CLK_GetFlagStatus(CLK_Flag_TypeDef CLK_FLAG)
                                   1131 ;	-----------------------------------------
                                   1132 ;	 function CLK_GetFlagStatus
                                   1133 ;	-----------------------------------------
      008814                       1134 _CLK_GetFlagStatus:
      008814 3B 01 A5         [ 1] 1135 	push	_fp_+1
      008817 3B 01 A4         [ 1] 1136 	push	_fp_
      00881A 90 96            [ 1] 1137 	ldw	y, sp
      00881C 90 CF 01 A4      [ 2] 1138 	ldw	_fp_, y
                           0004B2  1139 	Sstm8s_clk$CLK_GetFlagStatus$213 ==.
      008820 88               [ 1] 1140 	push	a
                           0004B3  1141 	Sstm8s_clk$CLK_GetFlagStatus$214 ==.
                                   1142 ;	StdPeriphLib/src/stm8s_clk.c: 644: statusreg = (uint16_t)((uint16_t)CLK_FLAG & (uint16_t)0xFF00);
      008821 4F               [ 1] 1143 	clr	a
      008822 97               [ 1] 1144 	ld	xl, a
      008823 7B 06            [ 1] 1145 	ld	a, (0x06, sp)
      008825 95               [ 1] 1146 	ld	xh, a
                           0004B8  1147 	Sstm8s_clk$CLK_GetFlagStatus$215 ==.
                                   1148 ;	StdPeriphLib/src/stm8s_clk.c: 647: if (statusreg == 0x0100) /* The flag to check is in ICKRregister */
      008826 A3 01 00         [ 2] 1149 	cpw	x, #0x0100
      008829 26 06            [ 1] 1150 	jrne	00111$
                           0004BD  1151 	Sstm8s_clk$CLK_GetFlagStatus$216 ==.
                                   1152 ;	StdPeriphLib/src/stm8s_clk.c: 649: tmpreg = CLK->ICKR;
      00882B AE 50 C0         [ 2] 1153 	ldw	x, #0x50c0
      00882E F6               [ 1] 1154 	ld	a, (x)
      00882F 20 25            [ 2] 1155 	jra	00112$
      008831                       1156 00111$:
                           0004C3  1157 	Sstm8s_clk$CLK_GetFlagStatus$217 ==.
                                   1158 ;	StdPeriphLib/src/stm8s_clk.c: 651: else if (statusreg == 0x0200) /* The flag to check is in ECKRregister */
      008831 A3 02 00         [ 2] 1159 	cpw	x, #0x0200
      008834 26 06            [ 1] 1160 	jrne	00108$
                           0004C8  1161 	Sstm8s_clk$CLK_GetFlagStatus$218 ==.
                                   1162 ;	StdPeriphLib/src/stm8s_clk.c: 653: tmpreg = CLK->ECKR;
      008836 AE 50 C1         [ 2] 1163 	ldw	x, #0x50c1
      008839 F6               [ 1] 1164 	ld	a, (x)
      00883A 20 1A            [ 2] 1165 	jra	00112$
      00883C                       1166 00108$:
                           0004CE  1167 	Sstm8s_clk$CLK_GetFlagStatus$219 ==.
                                   1168 ;	StdPeriphLib/src/stm8s_clk.c: 655: else if (statusreg == 0x0300) /* The flag to check is in SWIC register */
      00883C A3 03 00         [ 2] 1169 	cpw	x, #0x0300
      00883F 26 06            [ 1] 1170 	jrne	00105$
                           0004D3  1171 	Sstm8s_clk$CLK_GetFlagStatus$220 ==.
                                   1172 ;	StdPeriphLib/src/stm8s_clk.c: 657: tmpreg = CLK->SWCR;
      008841 AE 50 C5         [ 2] 1173 	ldw	x, #0x50c5
      008844 F6               [ 1] 1174 	ld	a, (x)
      008845 20 0F            [ 2] 1175 	jra	00112$
      008847                       1176 00105$:
                           0004D9  1177 	Sstm8s_clk$CLK_GetFlagStatus$221 ==.
                                   1178 ;	StdPeriphLib/src/stm8s_clk.c: 659: else if (statusreg == 0x0400) /* The flag to check is in CSS register */
      008847 A3 04 00         [ 2] 1179 	cpw	x, #0x0400
      00884A 26 06            [ 1] 1180 	jrne	00102$
                           0004DE  1181 	Sstm8s_clk$CLK_GetFlagStatus$222 ==.
                                   1182 ;	StdPeriphLib/src/stm8s_clk.c: 661: tmpreg = CLK->CSSR;
      00884C AE 50 C8         [ 2] 1183 	ldw	x, #0x50c8
      00884F F6               [ 1] 1184 	ld	a, (x)
      008850 20 04            [ 2] 1185 	jra	00112$
      008852                       1186 00102$:
                           0004E4  1187 	Sstm8s_clk$CLK_GetFlagStatus$223 ==.
                                   1188 ;	StdPeriphLib/src/stm8s_clk.c: 665: tmpreg = CLK->CCOR;
      008852 AE 50 C9         [ 2] 1189 	ldw	x, #0x50c9
      008855 F6               [ 1] 1190 	ld	a, (x)
      008856                       1191 00112$:
                           0004E8  1192 	Sstm8s_clk$CLK_GetFlagStatus$224 ==.
                                   1193 ;	StdPeriphLib/src/stm8s_clk.c: 668: if ((tmpreg & (uint8_t)CLK_FLAG) != (uint8_t)RESET)
      008856 88               [ 1] 1194 	push	a
      008857 7B 08            [ 1] 1195 	ld	a, (0x08, sp)
      008859 6B 02            [ 1] 1196 	ld	(0x02, sp), a
      00885B 84               [ 1] 1197 	pop	a
      00885C 14 01            [ 1] 1198 	and	a, (0x01, sp)
      00885E 4D               [ 1] 1199 	tnz	a
      00885F 27 04            [ 1] 1200 	jreq	00114$
                           0004F3  1201 	Sstm8s_clk$CLK_GetFlagStatus$225 ==.
                                   1202 ;	StdPeriphLib/src/stm8s_clk.c: 670: bitstatus = SET;
      008861 A6 01            [ 1] 1203 	ld	a, #0x01
      008863 20 01            [ 2] 1204 	jra	00115$
      008865                       1205 00114$:
                           0004F7  1206 	Sstm8s_clk$CLK_GetFlagStatus$226 ==.
                                   1207 ;	StdPeriphLib/src/stm8s_clk.c: 674: bitstatus = RESET;
      008865 4F               [ 1] 1208 	clr	a
      008866                       1209 00115$:
                           0004F8  1210 	Sstm8s_clk$CLK_GetFlagStatus$227 ==.
                                   1211 ;	StdPeriphLib/src/stm8s_clk.c: 678: return((FlagStatus)bitstatus);
                           0004F8  1212 	Sstm8s_clk$CLK_GetFlagStatus$228 ==.
                                   1213 ;	StdPeriphLib/src/stm8s_clk.c: 679: }
      008866 5B 01            [ 2] 1214 	addw	sp, #1
                           0004FA  1215 	Sstm8s_clk$CLK_GetFlagStatus$229 ==.
                           0004FA  1216 	XG$CLK_GetFlagStatus$0$0 ==.
      008868 32 01 A4         [ 1] 1217 	pop	_fp_
      00886B 32 01 A5         [ 1] 1218 	pop	_fp_+1
      00886E 81               [ 4] 1219 	ret
                           000501  1220 	Sstm8s_clk$CLK_GetFlagStatus$230 ==.
                           000501  1221 	Sstm8s_clk$CLK_GetITStatus$231 ==.
                                   1222 ;	StdPeriphLib/src/stm8s_clk.c: 687: ITStatus CLK_GetITStatus(CLK_IT_TypeDef CLK_IT)
                                   1223 ;	-----------------------------------------
                                   1224 ;	 function CLK_GetITStatus
                                   1225 ;	-----------------------------------------
      00886F                       1226 _CLK_GetITStatus:
      00886F 3B 01 A5         [ 1] 1227 	push	_fp_+1
      008872 3B 01 A4         [ 1] 1228 	push	_fp_
      008875 90 96            [ 1] 1229 	ldw	y, sp
      008877 90 CF 01 A4      [ 2] 1230 	ldw	_fp_, y
                           00050D  1231 	Sstm8s_clk$CLK_GetITStatus$232 ==.
                           00050D  1232 	Sstm8s_clk$CLK_GetITStatus$233 ==.
                                   1233 ;	StdPeriphLib/src/stm8s_clk.c: 694: if (CLK_IT == CLK_IT_SWIF)
      00887B 7B 05            [ 1] 1234 	ld	a, (0x05, sp)
      00887D A1 1C            [ 1] 1235 	cp	a, #0x1c
      00887F 26 11            [ 1] 1236 	jrne	00108$
                           000513  1237 	Sstm8s_clk$CLK_GetITStatus$234 ==.
                                   1238 ;	StdPeriphLib/src/stm8s_clk.c: 697: if ((CLK->SWCR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008881 AE 50 C5         [ 2] 1239 	ldw	x, #0x50c5
      008884 F6               [ 1] 1240 	ld	a, (x)
      008885 14 05            [ 1] 1241 	and	a, (0x05, sp)
      008887 A1 0C            [ 1] 1242 	cp	a, #0x0c
      008889 26 04            [ 1] 1243 	jrne	00102$
                           00051D  1244 	Sstm8s_clk$CLK_GetITStatus$235 ==.
                                   1245 ;	StdPeriphLib/src/stm8s_clk.c: 699: bitstatus = SET;
      00888B A6 01            [ 1] 1246 	ld	a, #0x01
      00888D 20 12            [ 2] 1247 	jra	00109$
      00888F                       1248 00102$:
                           000521  1249 	Sstm8s_clk$CLK_GetITStatus$236 ==.
                                   1250 ;	StdPeriphLib/src/stm8s_clk.c: 703: bitstatus = RESET;
      00888F 4F               [ 1] 1251 	clr	a
      008890 20 0F            [ 2] 1252 	jra	00109$
      008892                       1253 00108$:
                           000524  1254 	Sstm8s_clk$CLK_GetITStatus$237 ==.
                                   1255 ;	StdPeriphLib/src/stm8s_clk.c: 709: if ((CLK->CSSR & (uint8_t)CLK_IT) == (uint8_t)0x0C)
      008892 AE 50 C8         [ 2] 1256 	ldw	x, #0x50c8
      008895 F6               [ 1] 1257 	ld	a, (x)
      008896 14 05            [ 1] 1258 	and	a, (0x05, sp)
      008898 A1 0C            [ 1] 1259 	cp	a, #0x0c
      00889A 26 04            [ 1] 1260 	jrne	00105$
                           00052E  1261 	Sstm8s_clk$CLK_GetITStatus$238 ==.
                                   1262 ;	StdPeriphLib/src/stm8s_clk.c: 711: bitstatus = SET;
      00889C A6 01            [ 1] 1263 	ld	a, #0x01
      00889E 20 01            [ 2] 1264 	jra	00109$
      0088A0                       1265 00105$:
                           000532  1266 	Sstm8s_clk$CLK_GetITStatus$239 ==.
                                   1267 ;	StdPeriphLib/src/stm8s_clk.c: 715: bitstatus = RESET;
      0088A0 4F               [ 1] 1268 	clr	a
      0088A1                       1269 00109$:
                           000533  1270 	Sstm8s_clk$CLK_GetITStatus$240 ==.
                                   1271 ;	StdPeriphLib/src/stm8s_clk.c: 720: return bitstatus;
                           000533  1272 	Sstm8s_clk$CLK_GetITStatus$241 ==.
                                   1273 ;	StdPeriphLib/src/stm8s_clk.c: 721: }
                           000533  1274 	Sstm8s_clk$CLK_GetITStatus$242 ==.
                           000533  1275 	XG$CLK_GetITStatus$0$0 ==.
      0088A1 32 01 A4         [ 1] 1276 	pop	_fp_
      0088A4 32 01 A5         [ 1] 1277 	pop	_fp_+1
      0088A7 81               [ 4] 1278 	ret
                           00053A  1279 	Sstm8s_clk$CLK_GetITStatus$243 ==.
                           00053A  1280 	Sstm8s_clk$CLK_ClearITPendingBit$244 ==.
                                   1281 ;	StdPeriphLib/src/stm8s_clk.c: 729: void CLK_ClearITPendingBit(CLK_IT_TypeDef CLK_IT)
                                   1282 ;	-----------------------------------------
                                   1283 ;	 function CLK_ClearITPendingBit
                                   1284 ;	-----------------------------------------
      0088A8                       1285 _CLK_ClearITPendingBit:
      0088A8 3B 01 A5         [ 1] 1286 	push	_fp_+1
      0088AB 3B 01 A4         [ 1] 1287 	push	_fp_
      0088AE 90 96            [ 1] 1288 	ldw	y, sp
      0088B0 90 CF 01 A4      [ 2] 1289 	ldw	_fp_, y
                           000546  1290 	Sstm8s_clk$CLK_ClearITPendingBit$245 ==.
                           000546  1291 	Sstm8s_clk$CLK_ClearITPendingBit$246 ==.
                                   1292 ;	StdPeriphLib/src/stm8s_clk.c: 734: if (CLK_IT == (uint8_t)CLK_IT_CSSD)
      0088B4 7B 05            [ 1] 1293 	ld	a, (0x05, sp)
      0088B6 A1 0C            [ 1] 1294 	cp	a, #0x0c
      0088B8 26 09            [ 1] 1295 	jrne	00102$
                           00054C  1296 	Sstm8s_clk$CLK_ClearITPendingBit$247 ==.
                                   1297 ;	StdPeriphLib/src/stm8s_clk.c: 737: CLK->CSSR &= (uint8_t)(~CLK_CSSR_CSSD);
      0088BA AE 50 C8         [ 2] 1298 	ldw	x, #0x50c8
      0088BD F6               [ 1] 1299 	ld	a, (x)
      0088BE A4 F7            [ 1] 1300 	and	a, #0xf7
      0088C0 F7               [ 1] 1301 	ld	(x), a
      0088C1 20 07            [ 2] 1302 	jra	00104$
      0088C3                       1303 00102$:
                           000555  1304 	Sstm8s_clk$CLK_ClearITPendingBit$248 ==.
                                   1305 ;	StdPeriphLib/src/stm8s_clk.c: 742: CLK->SWCR &= (uint8_t)(~CLK_SWCR_SWIF);
      0088C3 AE 50 C5         [ 2] 1306 	ldw	x, #0x50c5
      0088C6 F6               [ 1] 1307 	ld	a, (x)
      0088C7 A4 F7            [ 1] 1308 	and	a, #0xf7
      0088C9 F7               [ 1] 1309 	ld	(x), a
      0088CA                       1310 00104$:
                           00055C  1311 	Sstm8s_clk$CLK_ClearITPendingBit$249 ==.
                                   1312 ;	StdPeriphLib/src/stm8s_clk.c: 745: }
                           00055C  1313 	Sstm8s_clk$CLK_ClearITPendingBit$250 ==.
                           00055C  1314 	XG$CLK_ClearITPendingBit$0$0 ==.
      0088CA 32 01 A4         [ 1] 1315 	pop	_fp_
      0088CD 32 01 A5         [ 1] 1316 	pop	_fp_+1
      0088D0 81               [ 4] 1317 	ret
                           000563  1318 	Sstm8s_clk$CLK_ClearITPendingBit$251 ==.
                                   1319 	.area CODE
                           000563  1320 G$HSIDivFactor$0$0 == .
      0088D1                       1321 _HSIDivFactor:
      0088D1 01                    1322 	.db #0x01	; 1
      0088D2 02                    1323 	.db #0x02	; 2
      0088D3 04                    1324 	.db #0x04	; 4
      0088D4 08                    1325 	.db #0x08	; 8
                           000567  1326 G$CLKPrescTable$0$0 == .
      0088D5                       1327 _CLKPrescTable:
      0088D5 01                    1328 	.db #0x01	; 1
      0088D6 02                    1329 	.db #0x02	; 2
      0088D7 04                    1330 	.db #0x04	; 4
      0088D8 08                    1331 	.db #0x08	; 8
      0088D9 0A                    1332 	.db #0x0a	; 10
      0088DA 10                    1333 	.db #0x10	; 16
      0088DB 14                    1334 	.db #0x14	; 20
      0088DC 28                    1335 	.db #0x28	; 40
                                   1336 	.area INITIALIZER
                                   1337 	.area CABS (ABS)
                                   1338 
                                   1339 	.area .debug_line (NOLOAD)
      0005B1 00 00 06 65           1340 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0005B5                       1341 Ldebug_line_start:
      0005B5 00 02                 1342 	.dw	2
      0005B7 00 00 01 18           1343 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0005BB 01                    1344 	.db	1
      0005BC 01                    1345 	.db	1
      0005BD FB                    1346 	.db	-5
      0005BE 0F                    1347 	.db	15
      0005BF 0A                    1348 	.db	10
      0005C0 00                    1349 	.db	0
      0005C1 01                    1350 	.db	1
      0005C2 01                    1351 	.db	1
      0005C3 01                    1352 	.db	1
      0005C4 01                    1353 	.db	1
      0005C5 00                    1354 	.db	0
      0005C6 00                    1355 	.db	0
      0005C7 00                    1356 	.db	0
      0005C8 01                    1357 	.db	1
      0005C9 2F 68 6F 6D 65 2F 63  1358 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000608 00                    1359 	.db	0
      000609 2F 68 6F 6D 65 2F 63  1360 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000641 00                    1361 	.db	0
      000642 2F 68 6F 6D 65 2F 63  1362 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      00067C 00                    1363 	.db	0
      00067D 2F 68 6F 6D 65 2F 63  1364 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      0006B0 00                    1365 	.db	0
      0006B1 00                    1366 	.db	0
      0006B2 53 74 64 50 65 72 69  1367 	.ascii "StdPeriphLib/src/stm8s_clk.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 63 6C 6B 2E 63
      0006CE 00                    1368 	.db	0
      0006CF 00                    1369 	.uleb128	0
      0006D0 00                    1370 	.uleb128	0
      0006D1 00                    1371 	.uleb128	0
      0006D2 00                    1372 	.db	0
      0006D3                       1373 Ldebug_line_stmt:
      0006D3 00                    1374 	.db	0
      0006D4 05                    1375 	.uleb128	5
      0006D5 02                    1376 	.db	2
      0006D6 00 00 83 6E           1377 	.dw	0,(Sstm8s_clk$CLK_DeInit$0)
      0006DA 03                    1378 	.db	3
      0006DB C7 00                 1379 	.sleb128	71
      0006DD 01                    1380 	.db	1
      0006DE 09                    1381 	.db	9
      0006DF 00 0C                 1382 	.dw	Sstm8s_clk$CLK_DeInit$2-Sstm8s_clk$CLK_DeInit$0
      0006E1 03                    1383 	.db	3
      0006E2 02                    1384 	.sleb128	2
      0006E3 01                    1385 	.db	1
      0006E4 09                    1386 	.db	9
      0006E5 00 04                 1387 	.dw	Sstm8s_clk$CLK_DeInit$3-Sstm8s_clk$CLK_DeInit$2
      0006E7 03                    1388 	.db	3
      0006E8 01                    1389 	.sleb128	1
      0006E9 01                    1390 	.db	1
      0006EA 09                    1391 	.db	9
      0006EB 00 04                 1392 	.dw	Sstm8s_clk$CLK_DeInit$4-Sstm8s_clk$CLK_DeInit$3
      0006ED 03                    1393 	.db	3
      0006EE 01                    1394 	.sleb128	1
      0006EF 01                    1395 	.db	1
      0006F0 09                    1396 	.db	9
      0006F1 00 04                 1397 	.dw	Sstm8s_clk$CLK_DeInit$5-Sstm8s_clk$CLK_DeInit$4
      0006F3 03                    1398 	.db	3
      0006F4 01                    1399 	.sleb128	1
      0006F5 01                    1400 	.db	1
      0006F6 09                    1401 	.db	9
      0006F7 00 04                 1402 	.dw	Sstm8s_clk$CLK_DeInit$6-Sstm8s_clk$CLK_DeInit$5
      0006F9 03                    1403 	.db	3
      0006FA 01                    1404 	.sleb128	1
      0006FB 01                    1405 	.db	1
      0006FC 09                    1406 	.db	9
      0006FD 00 04                 1407 	.dw	Sstm8s_clk$CLK_DeInit$7-Sstm8s_clk$CLK_DeInit$6
      0006FF 03                    1408 	.db	3
      000700 01                    1409 	.sleb128	1
      000701 01                    1410 	.db	1
      000702 09                    1411 	.db	9
      000703 00 04                 1412 	.dw	Sstm8s_clk$CLK_DeInit$8-Sstm8s_clk$CLK_DeInit$7
      000705 03                    1413 	.db	3
      000706 01                    1414 	.sleb128	1
      000707 01                    1415 	.db	1
      000708 09                    1416 	.db	9
      000709 00 04                 1417 	.dw	Sstm8s_clk$CLK_DeInit$9-Sstm8s_clk$CLK_DeInit$8
      00070B 03                    1418 	.db	3
      00070C 01                    1419 	.sleb128	1
      00070D 01                    1420 	.db	1
      00070E 09                    1421 	.db	9
      00070F 00 04                 1422 	.dw	Sstm8s_clk$CLK_DeInit$10-Sstm8s_clk$CLK_DeInit$9
      000711 03                    1423 	.db	3
      000712 01                    1424 	.sleb128	1
      000713 01                    1425 	.db	1
      000714 09                    1426 	.db	9
      000715 00 04                 1427 	.dw	Sstm8s_clk$CLK_DeInit$11-Sstm8s_clk$CLK_DeInit$10
      000717 03                    1428 	.db	3
      000718 01                    1429 	.sleb128	1
      000719 01                    1430 	.db	1
      00071A 09                    1431 	.db	9
      00071B 00 07                 1432 	.dw	Sstm8s_clk$CLK_DeInit$12-Sstm8s_clk$CLK_DeInit$11
      00071D 03                    1433 	.db	3
      00071E 02                    1434 	.sleb128	2
      00071F 01                    1435 	.db	1
      000720 09                    1436 	.db	9
      000721 00 04                 1437 	.dw	Sstm8s_clk$CLK_DeInit$13-Sstm8s_clk$CLK_DeInit$12
      000723 03                    1438 	.db	3
      000724 01                    1439 	.sleb128	1
      000725 01                    1440 	.db	1
      000726 09                    1441 	.db	9
      000727 00 04                 1442 	.dw	Sstm8s_clk$CLK_DeInit$14-Sstm8s_clk$CLK_DeInit$13
      000729 03                    1443 	.db	3
      00072A 01                    1444 	.sleb128	1
      00072B 01                    1445 	.db	1
      00072C 09                    1446 	.db	9
      00072D 00 04                 1447 	.dw	Sstm8s_clk$CLK_DeInit$15-Sstm8s_clk$CLK_DeInit$14
      00072F 03                    1448 	.db	3
      000730 01                    1449 	.sleb128	1
      000731 01                    1450 	.db	1
      000732 09                    1451 	.db	9
      000733 00 07                 1452 	.dw	7+Sstm8s_clk$CLK_DeInit$16-Sstm8s_clk$CLK_DeInit$15
      000735 00                    1453 	.db	0
      000736 01                    1454 	.uleb128	1
      000737 01                    1455 	.db	1
      000738 00                    1456 	.db	0
      000739 05                    1457 	.uleb128	5
      00073A 02                    1458 	.db	2
      00073B 00 00 83 B8           1459 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$18)
      00073F 03                    1460 	.db	3
      000740 E2 00                 1461 	.sleb128	98
      000742 01                    1462 	.db	1
      000743 09                    1463 	.db	9
      000744 00 0C                 1464 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$20-Sstm8s_clk$CLK_FastHaltWakeUpCmd$18
      000746 03                    1465 	.db	3
      000747 05                    1466 	.sleb128	5
      000748 01                    1467 	.db	1
      000749 09                    1468 	.db	9
      00074A 00 04                 1469 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$21-Sstm8s_clk$CLK_FastHaltWakeUpCmd$20
      00074C 03                    1470 	.db	3
      00074D 03                    1471 	.sleb128	3
      00074E 01                    1472 	.db	1
      00074F 09                    1473 	.db	9
      000750 00 09                 1474 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$22-Sstm8s_clk$CLK_FastHaltWakeUpCmd$21
      000752 03                    1475 	.db	3
      000753 05                    1476 	.sleb128	5
      000754 01                    1477 	.db	1
      000755 09                    1478 	.db	9
      000756 00 07                 1479 	.dw	Sstm8s_clk$CLK_FastHaltWakeUpCmd$23-Sstm8s_clk$CLK_FastHaltWakeUpCmd$22
      000758 03                    1480 	.db	3
      000759 02                    1481 	.sleb128	2
      00075A 01                    1482 	.db	1
      00075B 09                    1483 	.db	9
      00075C 00 07                 1484 	.dw	7+Sstm8s_clk$CLK_FastHaltWakeUpCmd$24-Sstm8s_clk$CLK_FastHaltWakeUpCmd$23
      00075E 00                    1485 	.db	0
      00075F 01                    1486 	.uleb128	1
      000760 01                    1487 	.db	1
      000761 00                    1488 	.db	0
      000762 05                    1489 	.uleb128	5
      000763 02                    1490 	.db	2
      000764 00 00 83 DF           1491 	.dw	0,(Sstm8s_clk$CLK_HSECmd$26)
      000768 03                    1492 	.db	3
      000769 F8 00                 1493 	.sleb128	120
      00076B 01                    1494 	.db	1
      00076C 09                    1495 	.db	9
      00076D 00 0C                 1496 	.dw	Sstm8s_clk$CLK_HSECmd$28-Sstm8s_clk$CLK_HSECmd$26
      00076F 03                    1497 	.db	3
      000770 05                    1498 	.sleb128	5
      000771 01                    1499 	.db	1
      000772 09                    1500 	.db	9
      000773 00 04                 1501 	.dw	Sstm8s_clk$CLK_HSECmd$29-Sstm8s_clk$CLK_HSECmd$28
      000775 03                    1502 	.db	3
      000776 03                    1503 	.sleb128	3
      000777 01                    1504 	.db	1
      000778 09                    1505 	.db	9
      000779 00 06                 1506 	.dw	Sstm8s_clk$CLK_HSECmd$30-Sstm8s_clk$CLK_HSECmd$29
      00077B 03                    1507 	.db	3
      00077C 05                    1508 	.sleb128	5
      00077D 01                    1509 	.db	1
      00077E 09                    1510 	.db	9
      00077F 00 04                 1511 	.dw	Sstm8s_clk$CLK_HSECmd$31-Sstm8s_clk$CLK_HSECmd$30
      000781 03                    1512 	.db	3
      000782 02                    1513 	.sleb128	2
      000783 01                    1514 	.db	1
      000784 09                    1515 	.db	9
      000785 00 07                 1516 	.dw	7+Sstm8s_clk$CLK_HSECmd$32-Sstm8s_clk$CLK_HSECmd$31
      000787 00                    1517 	.db	0
      000788 01                    1518 	.uleb128	1
      000789 01                    1519 	.db	1
      00078A 00                    1520 	.db	0
      00078B 05                    1521 	.uleb128	5
      00078C 02                    1522 	.db	2
      00078D 00 00 84 00           1523 	.dw	0,(Sstm8s_clk$CLK_HSICmd$34)
      000791 03                    1524 	.db	3
      000792 8E 01                 1525 	.sleb128	142
      000794 01                    1526 	.db	1
      000795 09                    1527 	.db	9
      000796 00 0C                 1528 	.dw	Sstm8s_clk$CLK_HSICmd$36-Sstm8s_clk$CLK_HSICmd$34
      000798 03                    1529 	.db	3
      000799 05                    1530 	.sleb128	5
      00079A 01                    1531 	.db	1
      00079B 09                    1532 	.db	9
      00079C 00 04                 1533 	.dw	Sstm8s_clk$CLK_HSICmd$37-Sstm8s_clk$CLK_HSICmd$36
      00079E 03                    1534 	.db	3
      00079F 03                    1535 	.sleb128	3
      0007A0 01                    1536 	.db	1
      0007A1 09                    1537 	.db	9
      0007A2 00 06                 1538 	.dw	Sstm8s_clk$CLK_HSICmd$38-Sstm8s_clk$CLK_HSICmd$37
      0007A4 03                    1539 	.db	3
      0007A5 05                    1540 	.sleb128	5
      0007A6 01                    1541 	.db	1
      0007A7 09                    1542 	.db	9
      0007A8 00 04                 1543 	.dw	Sstm8s_clk$CLK_HSICmd$39-Sstm8s_clk$CLK_HSICmd$38
      0007AA 03                    1544 	.db	3
      0007AB 02                    1545 	.sleb128	2
      0007AC 01                    1546 	.db	1
      0007AD 09                    1547 	.db	9
      0007AE 00 07                 1548 	.dw	7+Sstm8s_clk$CLK_HSICmd$40-Sstm8s_clk$CLK_HSICmd$39
      0007B0 00                    1549 	.db	0
      0007B1 01                    1550 	.uleb128	1
      0007B2 01                    1551 	.db	1
      0007B3 00                    1552 	.db	0
      0007B4 05                    1553 	.uleb128	5
      0007B5 02                    1554 	.db	2
      0007B6 00 00 84 21           1555 	.dw	0,(Sstm8s_clk$CLK_LSICmd$42)
      0007BA 03                    1556 	.db	3
      0007BB A5 01                 1557 	.sleb128	165
      0007BD 01                    1558 	.db	1
      0007BE 09                    1559 	.db	9
      0007BF 00 0C                 1560 	.dw	Sstm8s_clk$CLK_LSICmd$44-Sstm8s_clk$CLK_LSICmd$42
      0007C1 03                    1561 	.db	3
      0007C2 05                    1562 	.sleb128	5
      0007C3 01                    1563 	.db	1
      0007C4 09                    1564 	.db	9
      0007C5 00 04                 1565 	.dw	Sstm8s_clk$CLK_LSICmd$45-Sstm8s_clk$CLK_LSICmd$44
      0007C7 03                    1566 	.db	3
      0007C8 03                    1567 	.sleb128	3
      0007C9 01                    1568 	.db	1
      0007CA 09                    1569 	.db	9
      0007CB 00 09                 1570 	.dw	Sstm8s_clk$CLK_LSICmd$46-Sstm8s_clk$CLK_LSICmd$45
      0007CD 03                    1571 	.db	3
      0007CE 05                    1572 	.sleb128	5
      0007CF 01                    1573 	.db	1
      0007D0 09                    1574 	.db	9
      0007D1 00 07                 1575 	.dw	Sstm8s_clk$CLK_LSICmd$47-Sstm8s_clk$CLK_LSICmd$46
      0007D3 03                    1576 	.db	3
      0007D4 02                    1577 	.sleb128	2
      0007D5 01                    1578 	.db	1
      0007D6 09                    1579 	.db	9
      0007D7 00 07                 1580 	.dw	7+Sstm8s_clk$CLK_LSICmd$48-Sstm8s_clk$CLK_LSICmd$47
      0007D9 00                    1581 	.db	0
      0007DA 01                    1582 	.uleb128	1
      0007DB 01                    1583 	.db	1
      0007DC 00                    1584 	.db	0
      0007DD 05                    1585 	.uleb128	5
      0007DE 02                    1586 	.db	2
      0007DF 00 00 84 48           1587 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$50)
      0007E3 03                    1588 	.db	3
      0007E4 BC 01                 1589 	.sleb128	188
      0007E6 01                    1590 	.db	1
      0007E7 09                    1591 	.db	9
      0007E8 00 0C                 1592 	.dw	Sstm8s_clk$CLK_CCOCmd$52-Sstm8s_clk$CLK_CCOCmd$50
      0007EA 03                    1593 	.db	3
      0007EB 05                    1594 	.sleb128	5
      0007EC 01                    1595 	.db	1
      0007ED 09                    1596 	.db	9
      0007EE 00 04                 1597 	.dw	Sstm8s_clk$CLK_CCOCmd$53-Sstm8s_clk$CLK_CCOCmd$52
      0007F0 03                    1598 	.db	3
      0007F1 03                    1599 	.sleb128	3
      0007F2 01                    1600 	.db	1
      0007F3 09                    1601 	.db	9
      0007F4 00 06                 1602 	.dw	Sstm8s_clk$CLK_CCOCmd$54-Sstm8s_clk$CLK_CCOCmd$53
      0007F6 03                    1603 	.db	3
      0007F7 05                    1604 	.sleb128	5
      0007F8 01                    1605 	.db	1
      0007F9 09                    1606 	.db	9
      0007FA 00 04                 1607 	.dw	Sstm8s_clk$CLK_CCOCmd$55-Sstm8s_clk$CLK_CCOCmd$54
      0007FC 03                    1608 	.db	3
      0007FD 02                    1609 	.sleb128	2
      0007FE 01                    1610 	.db	1
      0007FF 09                    1611 	.db	9
      000800 00 07                 1612 	.dw	7+Sstm8s_clk$CLK_CCOCmd$56-Sstm8s_clk$CLK_CCOCmd$55
      000802 00                    1613 	.db	0
      000803 01                    1614 	.uleb128	1
      000804 01                    1615 	.db	1
      000805 00                    1616 	.db	0
      000806 05                    1617 	.uleb128	5
      000807 02                    1618 	.db	2
      000808 00 00 84 69           1619 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$58)
      00080C 03                    1620 	.db	3
      00080D D4 01                 1621 	.sleb128	212
      00080F 01                    1622 	.db	1
      000810 09                    1623 	.db	9
      000811 00 0C                 1624 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$60-Sstm8s_clk$CLK_ClockSwitchCmd$58
      000813 03                    1625 	.db	3
      000814 05                    1626 	.sleb128	5
      000815 01                    1627 	.db	1
      000816 09                    1628 	.db	9
      000817 00 04                 1629 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$61-Sstm8s_clk$CLK_ClockSwitchCmd$60
      000819 03                    1630 	.db	3
      00081A 03                    1631 	.sleb128	3
      00081B 01                    1632 	.db	1
      00081C 09                    1633 	.db	9
      00081D 00 09                 1634 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$62-Sstm8s_clk$CLK_ClockSwitchCmd$61
      00081F 03                    1635 	.db	3
      000820 05                    1636 	.sleb128	5
      000821 01                    1637 	.db	1
      000822 09                    1638 	.db	9
      000823 00 07                 1639 	.dw	Sstm8s_clk$CLK_ClockSwitchCmd$63-Sstm8s_clk$CLK_ClockSwitchCmd$62
      000825 03                    1640 	.db	3
      000826 02                    1641 	.sleb128	2
      000827 01                    1642 	.db	1
      000828 09                    1643 	.db	9
      000829 00 07                 1644 	.dw	7+Sstm8s_clk$CLK_ClockSwitchCmd$64-Sstm8s_clk$CLK_ClockSwitchCmd$63
      00082B 00                    1645 	.db	0
      00082C 01                    1646 	.uleb128	1
      00082D 01                    1647 	.db	1
      00082E 00                    1648 	.db	0
      00082F 05                    1649 	.uleb128	5
      000830 02                    1650 	.db	2
      000831 00 00 84 90           1651 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$66)
      000835 03                    1652 	.db	3
      000836 ED 01                 1653 	.sleb128	237
      000838 01                    1654 	.db	1
      000839 09                    1655 	.db	9
      00083A 00 0C                 1656 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$68-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$66
      00083C 03                    1657 	.db	3
      00083D 05                    1658 	.sleb128	5
      00083E 01                    1659 	.db	1
      00083F 09                    1660 	.db	9
      000840 00 04                 1661 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$69-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$68
      000842 03                    1662 	.db	3
      000843 03                    1663 	.sleb128	3
      000844 01                    1664 	.db	1
      000845 09                    1665 	.db	9
      000846 00 09                 1666 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$70-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$69
      000848 03                    1667 	.db	3
      000849 05                    1668 	.sleb128	5
      00084A 01                    1669 	.db	1
      00084B 09                    1670 	.db	9
      00084C 00 07                 1671 	.dw	Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$71-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$70
      00084E 03                    1672 	.db	3
      00084F 02                    1673 	.sleb128	2
      000850 01                    1674 	.db	1
      000851 09                    1675 	.db	9
      000852 00 07                 1676 	.dw	7+Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$72-Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$71
      000854 00                    1677 	.db	0
      000855 01                    1678 	.uleb128	1
      000856 01                    1679 	.db	1
      000857 00                    1680 	.db	0
      000858 05                    1681 	.uleb128	5
      000859 02                    1682 	.db	2
      00085A 00 00 84 B7           1683 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$74)
      00085E 03                    1684 	.db	3
      00085F 86 02                 1685 	.sleb128	262
      000861 01                    1686 	.db	1
      000862 09                    1687 	.db	9
      000863 00 0E                 1688 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$76-Sstm8s_clk$CLK_PeripheralClockConfig$74
      000865 03                    1689 	.db	3
      000866 06                    1690 	.sleb128	6
      000867 01                    1691 	.db	1
      000868 09                    1692 	.db	9
      000869 00 06                 1693 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$77-Sstm8s_clk$CLK_PeripheralClockConfig$76
      00086B 03                    1694 	.db	3
      00086C 02                    1695 	.sleb128	2
      00086D 01                    1696 	.db	1
      00086E 09                    1697 	.db	9
      00086F 00 04                 1698 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$78-Sstm8s_clk$CLK_PeripheralClockConfig$77
      000871 03                    1699 	.db	3
      000872 03                    1700 	.sleb128	3
      000873 01                    1701 	.db	1
      000874 09                    1702 	.db	9
      000875 00 21                 1703 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$79-Sstm8s_clk$CLK_PeripheralClockConfig$78
      000877 03                    1704 	.db	3
      000878 05                    1705 	.sleb128	5
      000879 01                    1706 	.db	1
      00087A 09                    1707 	.db	9
      00087B 00 21                 1708 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$80-Sstm8s_clk$CLK_PeripheralClockConfig$79
      00087D 03                    1709 	.db	3
      00087E 05                    1710 	.sleb128	5
      00087F 01                    1711 	.db	1
      000880 09                    1712 	.db	9
      000881 00 04                 1713 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$81-Sstm8s_clk$CLK_PeripheralClockConfig$80
      000883 03                    1714 	.db	3
      000884 03                    1715 	.sleb128	3
      000885 01                    1716 	.db	1
      000886 09                    1717 	.db	9
      000887 00 20                 1718 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$82-Sstm8s_clk$CLK_PeripheralClockConfig$81
      000889 03                    1719 	.db	3
      00088A 05                    1720 	.sleb128	5
      00088B 01                    1721 	.db	1
      00088C 09                    1722 	.db	9
      00088D 00 1F                 1723 	.dw	Sstm8s_clk$CLK_PeripheralClockConfig$83-Sstm8s_clk$CLK_PeripheralClockConfig$82
      00088F 03                    1724 	.db	3
      000890 03                    1725 	.sleb128	3
      000891 01                    1726 	.db	1
      000892 09                    1727 	.db	9
      000893 00 09                 1728 	.dw	7+Sstm8s_clk$CLK_PeripheralClockConfig$84-Sstm8s_clk$CLK_PeripheralClockConfig$83
      000895 00                    1729 	.db	0
      000896 01                    1730 	.uleb128	1
      000897 01                    1731 	.db	1
      000898 00                    1732 	.db	0
      000899 05                    1733 	.uleb128	5
      00089A 02                    1734 	.db	2
      00089B 00 00 85 5D           1735 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$86)
      00089F 03                    1736 	.db	3
      0008A0 B4 02                 1737 	.sleb128	308
      0008A2 01                    1738 	.db	1
      0008A3 09                    1739 	.db	9
      0008A4 00 0E                 1740 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$88-Sstm8s_clk$CLK_ClockSwitchConfig$86
      0008A6 03                    1741 	.db	3
      0008A7 0D                    1742 	.sleb128	13
      0008A8 01                    1743 	.db	1
      0008A9 09                    1744 	.db	9
      0008AA 00 06                 1745 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$89-Sstm8s_clk$CLK_ClockSwitchConfig$88
      0008AC 03                    1746 	.db	3
      0008AD 03                    1747 	.sleb128	3
      0008AE 01                    1748 	.db	1
      0008AF 09                    1749 	.db	9
      0008B0 00 06                 1750 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$90-Sstm8s_clk$CLK_ClockSwitchConfig$89
      0008B2 03                    1751 	.db	3
      0008B3 03                    1752 	.sleb128	3
      0008B4 01                    1753 	.db	1
      0008B5 09                    1754 	.db	9
      0008B6 00 07                 1755 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$91-Sstm8s_clk$CLK_ClockSwitchConfig$90
      0008B8 03                    1756 	.db	3
      0008B9 03                    1757 	.sleb128	3
      0008BA 01                    1758 	.db	1
      0008BB 09                    1759 	.db	9
      0008BC 00 04                 1760 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$92-Sstm8s_clk$CLK_ClockSwitchConfig$91
      0008BE 03                    1761 	.db	3
      0008BF 02                    1762 	.sleb128	2
      0008C0 01                    1763 	.db	1
      0008C1 09                    1764 	.db	9
      0008C2 00 09                 1765 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$93-Sstm8s_clk$CLK_ClockSwitchConfig$92
      0008C4 03                    1766 	.db	3
      0008C5 04                    1767 	.sleb128	4
      0008C6 01                    1768 	.db	1
      0008C7 09                    1769 	.db	9
      0008C8 00 07                 1770 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$94-Sstm8s_clk$CLK_ClockSwitchConfig$93
      0008CA 03                    1771 	.db	3
      0008CB 04                    1772 	.sleb128	4
      0008CC 01                    1773 	.db	1
      0008CD 09                    1774 	.db	9
      0008CE 00 06                 1775 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$95-Sstm8s_clk$CLK_ClockSwitchConfig$94
      0008D0 03                    1776 	.db	3
      0008D1 03                    1777 	.sleb128	3
      0008D2 01                    1778 	.db	1
      0008D3 09                    1779 	.db	9
      0008D4 00 0F                 1780 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$96-Sstm8s_clk$CLK_ClockSwitchConfig$95
      0008D6 03                    1781 	.db	3
      0008D7 02                    1782 	.sleb128	2
      0008D8 01                    1783 	.db	1
      0008D9 09                    1784 	.db	9
      0008DA 00 03                 1785 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$97-Sstm8s_clk$CLK_ClockSwitchConfig$96
      0008DC 03                    1786 	.db	3
      0008DD 03                    1787 	.sleb128	3
      0008DE 01                    1788 	.db	1
      0008DF 09                    1789 	.db	9
      0008E0 00 03                 1790 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$98-Sstm8s_clk$CLK_ClockSwitchConfig$97
      0008E2 03                    1791 	.db	3
      0008E3 02                    1792 	.sleb128	2
      0008E4 01                    1793 	.db	1
      0008E5 09                    1794 	.db	9
      0008E6 00 06                 1795 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$99-Sstm8s_clk$CLK_ClockSwitchConfig$98
      0008E8 03                    1796 	.db	3
      0008E9 04                    1797 	.sleb128	4
      0008EA 01                    1798 	.db	1
      0008EB 09                    1799 	.db	9
      0008EC 00 04                 1800 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$100-Sstm8s_clk$CLK_ClockSwitchConfig$99
      0008EE 03                    1801 	.db	3
      0008EF 06                    1802 	.sleb128	6
      0008F0 01                    1803 	.db	1
      0008F1 09                    1804 	.db	9
      0008F2 00 04                 1805 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$101-Sstm8s_clk$CLK_ClockSwitchConfig$100
      0008F4 03                    1806 	.db	3
      0008F5 02                    1807 	.sleb128	2
      0008F6 01                    1808 	.db	1
      0008F7 09                    1809 	.db	9
      0008F8 00 09                 1810 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$102-Sstm8s_clk$CLK_ClockSwitchConfig$101
      0008FA 03                    1811 	.db	3
      0008FB 04                    1812 	.sleb128	4
      0008FC 01                    1813 	.db	1
      0008FD 09                    1814 	.db	9
      0008FE 00 07                 1815 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$103-Sstm8s_clk$CLK_ClockSwitchConfig$102
      000900 03                    1816 	.db	3
      000901 04                    1817 	.sleb128	4
      000902 01                    1818 	.db	1
      000903 09                    1819 	.db	9
      000904 00 06                 1820 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$104-Sstm8s_clk$CLK_ClockSwitchConfig$103
      000906 03                    1821 	.db	3
      000907 03                    1822 	.sleb128	3
      000908 01                    1823 	.db	1
      000909 09                    1824 	.db	9
      00090A 00 10                 1825 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$105-Sstm8s_clk$CLK_ClockSwitchConfig$104
      00090C 03                    1826 	.db	3
      00090D 02                    1827 	.sleb128	2
      00090E 01                    1828 	.db	1
      00090F 09                    1829 	.db	9
      000910 00 03                 1830 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$106-Sstm8s_clk$CLK_ClockSwitchConfig$105
      000912 03                    1831 	.db	3
      000913 03                    1832 	.sleb128	3
      000914 01                    1833 	.db	1
      000915 09                    1834 	.db	9
      000916 00 03                 1835 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$107-Sstm8s_clk$CLK_ClockSwitchConfig$106
      000918 03                    1836 	.db	3
      000919 03                    1837 	.sleb128	3
      00091A 01                    1838 	.db	1
      00091B 09                    1839 	.db	9
      00091C 00 07                 1840 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$108-Sstm8s_clk$CLK_ClockSwitchConfig$107
      00091E 03                    1841 	.db	3
      00091F 01                    1842 	.sleb128	1
      000920 01                    1843 	.db	1
      000921 09                    1844 	.db	9
      000922 00 06                 1845 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$109-Sstm8s_clk$CLK_ClockSwitchConfig$108
      000924 03                    1846 	.db	3
      000925 04                    1847 	.sleb128	4
      000926 01                    1848 	.db	1
      000927 09                    1849 	.db	9
      000928 00 02                 1850 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$110-Sstm8s_clk$CLK_ClockSwitchConfig$109
      00092A 03                    1851 	.db	3
      00092B 03                    1852 	.sleb128	3
      00092C 01                    1853 	.db	1
      00092D 09                    1854 	.db	9
      00092E 00 04                 1855 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$111-Sstm8s_clk$CLK_ClockSwitchConfig$110
      000930 03                    1856 	.db	3
      000931 03                    1857 	.sleb128	3
      000932 01                    1858 	.db	1
      000933 09                    1859 	.db	9
      000934 00 0A                 1860 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$112-Sstm8s_clk$CLK_ClockSwitchConfig$111
      000936 03                    1861 	.db	3
      000937 02                    1862 	.sleb128	2
      000938 01                    1863 	.db	1
      000939 09                    1864 	.db	9
      00093A 00 09                 1865 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$113-Sstm8s_clk$CLK_ClockSwitchConfig$112
      00093C 03                    1866 	.db	3
      00093D 02                    1867 	.sleb128	2
      00093E 01                    1868 	.db	1
      00093F 09                    1869 	.db	9
      000940 00 0A                 1870 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$114-Sstm8s_clk$CLK_ClockSwitchConfig$113
      000942 03                    1871 	.db	3
      000943 02                    1872 	.sleb128	2
      000944 01                    1873 	.db	1
      000945 09                    1874 	.db	9
      000946 00 09                 1875 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$115-Sstm8s_clk$CLK_ClockSwitchConfig$114
      000948 03                    1876 	.db	3
      000949 02                    1877 	.sleb128	2
      00094A 01                    1878 	.db	1
      00094B 09                    1879 	.db	9
      00094C 00 0A                 1880 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$116-Sstm8s_clk$CLK_ClockSwitchConfig$115
      00094E 03                    1881 	.db	3
      00094F 02                    1882 	.sleb128	2
      000950 01                    1883 	.db	1
      000951 09                    1884 	.db	9
      000952 00 07                 1885 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$117-Sstm8s_clk$CLK_ClockSwitchConfig$116
      000954 03                    1886 	.db	3
      000955 03                    1887 	.sleb128	3
      000956 01                    1888 	.db	1
      000957 09                    1889 	.db	9
      000958 00 02                 1890 	.dw	Sstm8s_clk$CLK_ClockSwitchConfig$118-Sstm8s_clk$CLK_ClockSwitchConfig$117
      00095A 03                    1891 	.db	3
      00095B 01                    1892 	.sleb128	1
      00095C 01                    1893 	.db	1
      00095D 09                    1894 	.db	9
      00095E 00 09                 1895 	.dw	7+Sstm8s_clk$CLK_ClockSwitchConfig$119-Sstm8s_clk$CLK_ClockSwitchConfig$118
      000960 00                    1896 	.db	0
      000961 01                    1897 	.uleb128	1
      000962 01                    1898 	.db	1
      000963 00                    1899 	.db	0
      000964 05                    1900 	.uleb128	5
      000965 02                    1901 	.db	2
      000966 00 00 86 3C           1902 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$121)
      00096A 03                    1903 	.db	3
      00096B 9E 03                 1904 	.sleb128	414
      00096D 01                    1905 	.db	1
      00096E 09                    1906 	.db	9
      00096F 00 0C                 1907 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$123-Sstm8s_clk$CLK_HSIPrescalerConfig$121
      000971 03                    1908 	.db	3
      000972 06                    1909 	.sleb128	6
      000973 01                    1910 	.db	1
      000974 09                    1911 	.db	9
      000975 00 07                 1912 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$124-Sstm8s_clk$CLK_HSIPrescalerConfig$123
      000977 03                    1913 	.db	3
      000978 03                    1914 	.sleb128	3
      000979 01                    1915 	.db	1
      00097A 09                    1916 	.db	9
      00097B 00 0A                 1917 	.dw	Sstm8s_clk$CLK_HSIPrescalerConfig$125-Sstm8s_clk$CLK_HSIPrescalerConfig$124
      00097D 03                    1918 	.db	3
      00097E 01                    1919 	.sleb128	1
      00097F 01                    1920 	.db	1
      000980 09                    1921 	.db	9
      000981 00 07                 1922 	.dw	7+Sstm8s_clk$CLK_HSIPrescalerConfig$126-Sstm8s_clk$CLK_HSIPrescalerConfig$125
      000983 00                    1923 	.db	0
      000984 01                    1924 	.uleb128	1
      000985 01                    1925 	.db	1
      000986 00                    1926 	.db	0
      000987 05                    1927 	.uleb128	5
      000988 02                    1928 	.db	2
      000989 00 00 86 60           1929 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$128)
      00098D 03                    1930 	.db	3
      00098E B3 03                 1931 	.sleb128	435
      000990 01                    1932 	.db	1
      000991 09                    1933 	.db	9
      000992 00 0C                 1934 	.dw	Sstm8s_clk$CLK_CCOConfig$130-Sstm8s_clk$CLK_CCOConfig$128
      000994 03                    1935 	.db	3
      000995 06                    1936 	.sleb128	6
      000996 01                    1937 	.db	1
      000997 09                    1938 	.db	9
      000998 00 07                 1939 	.dw	Sstm8s_clk$CLK_CCOConfig$131-Sstm8s_clk$CLK_CCOConfig$130
      00099A 03                    1940 	.db	3
      00099B 03                    1941 	.sleb128	3
      00099C 01                    1942 	.db	1
      00099D 09                    1943 	.db	9
      00099E 00 0A                 1944 	.dw	Sstm8s_clk$CLK_CCOConfig$132-Sstm8s_clk$CLK_CCOConfig$131
      0009A0 03                    1945 	.db	3
      0009A1 03                    1946 	.sleb128	3
      0009A2 01                    1947 	.db	1
      0009A3 09                    1948 	.db	9
      0009A4 00 04                 1949 	.dw	Sstm8s_clk$CLK_CCOConfig$133-Sstm8s_clk$CLK_CCOConfig$132
      0009A6 03                    1950 	.db	3
      0009A7 01                    1951 	.sleb128	1
      0009A8 01                    1952 	.db	1
      0009A9 09                    1953 	.db	9
      0009AA 00 07                 1954 	.dw	7+Sstm8s_clk$CLK_CCOConfig$134-Sstm8s_clk$CLK_CCOConfig$133
      0009AC 00                    1955 	.db	0
      0009AD 01                    1956 	.uleb128	1
      0009AE 01                    1957 	.db	1
      0009AF 00                    1958 	.db	0
      0009B0 05                    1959 	.uleb128	5
      0009B1 02                    1960 	.db	2
      0009B2 00 00 86 88           1961 	.dw	0,(Sstm8s_clk$CLK_ITConfig$136)
      0009B6 03                    1962 	.db	3
      0009B7 CA 03                 1963 	.sleb128	458
      0009B9 01                    1964 	.db	1
      0009BA 09                    1965 	.db	9
      0009BB 00 0C                 1966 	.dw	Sstm8s_clk$CLK_ITConfig$138-Sstm8s_clk$CLK_ITConfig$136
      0009BD 03                    1967 	.db	3
      0009BE 06                    1968 	.sleb128	6
      0009BF 01                    1969 	.db	1
      0009C0 09                    1970 	.db	9
      0009C1 00 04                 1971 	.dw	Sstm8s_clk$CLK_ITConfig$139-Sstm8s_clk$CLK_ITConfig$138
      0009C3 03                    1972 	.db	3
      0009C4 02                    1973 	.sleb128	2
      0009C5 01                    1974 	.db	1
      0009C6 09                    1975 	.db	9
      0009C7 00 0C                 1976 	.dw	Sstm8s_clk$CLK_ITConfig$140-Sstm8s_clk$CLK_ITConfig$139
      0009C9 03                    1977 	.db	3
      0009CA 03                    1978 	.sleb128	3
      0009CB 01                    1979 	.db	1
      0009CC 09                    1980 	.db	9
      0009CD 00 07                 1981 	.dw	Sstm8s_clk$CLK_ITConfig$141-Sstm8s_clk$CLK_ITConfig$140
      0009CF 03                    1982 	.db	3
      0009D0 01                    1983 	.sleb128	1
      0009D1 01                    1984 	.db	1
      0009D2 09                    1985 	.db	9
      0009D3 00 02                 1986 	.dw	Sstm8s_clk$CLK_ITConfig$142-Sstm8s_clk$CLK_ITConfig$141
      0009D5 03                    1987 	.db	3
      0009D6 01                    1988 	.sleb128	1
      0009D7 01                    1989 	.db	1
      0009D8 09                    1990 	.db	9
      0009D9 00 00                 1991 	.dw	Sstm8s_clk$CLK_ITConfig$143-Sstm8s_clk$CLK_ITConfig$142
      0009DB 03                    1992 	.db	3
      0009DC 01                    1993 	.sleb128	1
      0009DD 01                    1994 	.db	1
      0009DE 09                    1995 	.db	9
      0009DF 00 07                 1996 	.dw	Sstm8s_clk$CLK_ITConfig$144-Sstm8s_clk$CLK_ITConfig$143
      0009E1 03                    1997 	.db	3
      0009E2 01                    1998 	.sleb128	1
      0009E3 01                    1999 	.db	1
      0009E4 09                    2000 	.db	9
      0009E5 00 02                 2001 	.dw	Sstm8s_clk$CLK_ITConfig$145-Sstm8s_clk$CLK_ITConfig$144
      0009E7 03                    2002 	.db	3
      0009E8 03                    2003 	.sleb128	3
      0009E9 01                    2004 	.db	1
      0009EA 09                    2005 	.db	9
      0009EB 00 00                 2006 	.dw	Sstm8s_clk$CLK_ITConfig$146-Sstm8s_clk$CLK_ITConfig$145
      0009ED 03                    2007 	.db	3
      0009EE 04                    2008 	.sleb128	4
      0009EF 01                    2009 	.db	1
      0009F0 09                    2010 	.db	9
      0009F1 00 0C                 2011 	.dw	Sstm8s_clk$CLK_ITConfig$147-Sstm8s_clk$CLK_ITConfig$146
      0009F3 03                    2012 	.db	3
      0009F4 03                    2013 	.sleb128	3
      0009F5 01                    2014 	.db	1
      0009F6 09                    2015 	.db	9
      0009F7 00 07                 2016 	.dw	Sstm8s_clk$CLK_ITConfig$148-Sstm8s_clk$CLK_ITConfig$147
      0009F9 03                    2017 	.db	3
      0009FA 01                    2018 	.sleb128	1
      0009FB 01                    2019 	.db	1
      0009FC 09                    2020 	.db	9
      0009FD 00 02                 2021 	.dw	Sstm8s_clk$CLK_ITConfig$149-Sstm8s_clk$CLK_ITConfig$148
      0009FF 03                    2022 	.db	3
      000A00 01                    2023 	.sleb128	1
      000A01 01                    2024 	.db	1
      000A02 09                    2025 	.db	9
      000A03 00 00                 2026 	.dw	Sstm8s_clk$CLK_ITConfig$150-Sstm8s_clk$CLK_ITConfig$149
      000A05 03                    2027 	.db	3
      000A06 01                    2028 	.sleb128	1
      000A07 01                    2029 	.db	1
      000A08 09                    2030 	.db	9
      000A09 00 07                 2031 	.dw	Sstm8s_clk$CLK_ITConfig$151-Sstm8s_clk$CLK_ITConfig$150
      000A0B 03                    2032 	.db	3
      000A0C 04                    2033 	.sleb128	4
      000A0D 01                    2034 	.db	1
      000A0E 09                    2035 	.db	9
      000A0F 00 00                 2036 	.dw	Sstm8s_clk$CLK_ITConfig$152-Sstm8s_clk$CLK_ITConfig$151
      000A11 03                    2037 	.db	3
      000A12 02                    2038 	.sleb128	2
      000A13 01                    2039 	.db	1
      000A14 09                    2040 	.db	9
      000A15 00 07                 2041 	.dw	7+Sstm8s_clk$CLK_ITConfig$153-Sstm8s_clk$CLK_ITConfig$152
      000A17 00                    2042 	.db	0
      000A18 01                    2043 	.uleb128	1
      000A19 01                    2044 	.db	1
      000A1A 00                    2045 	.db	0
      000A1B 05                    2046 	.uleb128	5
      000A1C 02                    2047 	.db	2
      000A1D 00 00 86 D9           2048 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$155)
      000A21 03                    2049 	.db	3
      000A22 F3 03                 2050 	.sleb128	499
      000A24 01                    2051 	.db	1
      000A25 09                    2052 	.db	9
      000A26 00 0E                 2053 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$157-Sstm8s_clk$CLK_SYSCLKConfig$155
      000A28 03                    2054 	.db	3
      000A29 05                    2055 	.sleb128	5
      000A2A 01                    2056 	.db	1
      000A2B 09                    2057 	.db	9
      000A2C 00 04                 2058 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$158-Sstm8s_clk$CLK_SYSCLKConfig$157
      000A2E 03                    2059 	.db	3
      000A2F 02                    2060 	.sleb128	2
      000A30 01                    2061 	.db	1
      000A31 09                    2062 	.db	9
      000A32 00 07                 2063 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$159-Sstm8s_clk$CLK_SYSCLKConfig$158
      000A34 03                    2064 	.db	3
      000A35 01                    2065 	.sleb128	1
      000A36 01                    2066 	.db	1
      000A37 09                    2067 	.db	9
      000A38 00 12                 2068 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$160-Sstm8s_clk$CLK_SYSCLKConfig$159
      000A3A 03                    2069 	.db	3
      000A3B 04                    2070 	.sleb128	4
      000A3C 01                    2071 	.db	1
      000A3D 09                    2072 	.db	9
      000A3E 00 07                 2073 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$161-Sstm8s_clk$CLK_SYSCLKConfig$160
      000A40 03                    2074 	.db	3
      000A41 01                    2075 	.sleb128	1
      000A42 01                    2076 	.db	1
      000A43 09                    2077 	.db	9
      000A44 00 10                 2078 	.dw	Sstm8s_clk$CLK_SYSCLKConfig$162-Sstm8s_clk$CLK_SYSCLKConfig$161
      000A46 03                    2079 	.db	3
      000A47 02                    2080 	.sleb128	2
      000A48 01                    2081 	.db	1
      000A49 09                    2082 	.db	9
      000A4A 00 09                 2083 	.dw	7+Sstm8s_clk$CLK_SYSCLKConfig$163-Sstm8s_clk$CLK_SYSCLKConfig$162
      000A4C 00                    2084 	.db	0
      000A4D 01                    2085 	.uleb128	1
      000A4E 01                    2086 	.db	1
      000A4F 00                    2087 	.db	0
      000A50 05                    2088 	.uleb128	5
      000A51 02                    2089 	.db	2
      000A52 00 00 87 24           2090 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$165)
      000A56 03                    2091 	.db	3
      000A57 8A 04                 2092 	.sleb128	522
      000A59 01                    2093 	.db	1
      000A5A 09                    2094 	.db	9
      000A5B 00 0C                 2095 	.dw	Sstm8s_clk$CLK_SWIMConfig$167-Sstm8s_clk$CLK_SWIMConfig$165
      000A5D 03                    2096 	.db	3
      000A5E 05                    2097 	.sleb128	5
      000A5F 01                    2098 	.db	1
      000A60 09                    2099 	.db	9
      000A61 00 04                 2100 	.dw	Sstm8s_clk$CLK_SWIMConfig$168-Sstm8s_clk$CLK_SWIMConfig$167
      000A63 03                    2101 	.db	3
      000A64 03                    2102 	.sleb128	3
      000A65 01                    2103 	.db	1
      000A66 09                    2104 	.db	9
      000A67 00 06                 2105 	.dw	Sstm8s_clk$CLK_SWIMConfig$169-Sstm8s_clk$CLK_SWIMConfig$168
      000A69 03                    2106 	.db	3
      000A6A 05                    2107 	.sleb128	5
      000A6B 01                    2108 	.db	1
      000A6C 09                    2109 	.db	9
      000A6D 00 04                 2110 	.dw	Sstm8s_clk$CLK_SWIMConfig$170-Sstm8s_clk$CLK_SWIMConfig$169
      000A6F 03                    2111 	.db	3
      000A70 02                    2112 	.sleb128	2
      000A71 01                    2113 	.db	1
      000A72 09                    2114 	.db	9
      000A73 00 07                 2115 	.dw	7+Sstm8s_clk$CLK_SWIMConfig$171-Sstm8s_clk$CLK_SWIMConfig$170
      000A75 00                    2116 	.db	0
      000A76 01                    2117 	.uleb128	1
      000A77 01                    2118 	.db	1
      000A78 00                    2119 	.db	0
      000A79 05                    2120 	.uleb128	5
      000A7A 02                    2121 	.db	2
      000A7B 00 00 87 45           2122 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$173)
      000A7F 03                    2123 	.db	3
      000A80 A2 04                 2124 	.sleb128	546
      000A82 01                    2125 	.db	1
      000A83 09                    2126 	.db	9
      000A84 00 0C                 2127 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$175-Sstm8s_clk$CLK_ClockSecuritySystemEnable$173
      000A86 03                    2128 	.db	3
      000A87 03                    2129 	.sleb128	3
      000A88 01                    2130 	.db	1
      000A89 09                    2131 	.db	9
      000A8A 00 04                 2132 	.dw	Sstm8s_clk$CLK_ClockSecuritySystemEnable$176-Sstm8s_clk$CLK_ClockSecuritySystemEnable$175
      000A8C 03                    2133 	.db	3
      000A8D 01                    2134 	.sleb128	1
      000A8E 01                    2135 	.db	1
      000A8F 09                    2136 	.db	9
      000A90 00 07                 2137 	.dw	7+Sstm8s_clk$CLK_ClockSecuritySystemEnable$177-Sstm8s_clk$CLK_ClockSecuritySystemEnable$176
      000A92 00                    2138 	.db	0
      000A93 01                    2139 	.uleb128	1
      000A94 01                    2140 	.db	1
      000A95 00                    2141 	.db	0
      000A96 05                    2142 	.uleb128	5
      000A97 02                    2143 	.db	2
      000A98 00 00 87 5C           2144 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$179)
      000A9C 03                    2145 	.db	3
      000A9D AE 04                 2146 	.sleb128	558
      000A9F 01                    2147 	.db	1
      000AA0 09                    2148 	.db	9
      000AA1 00 0C                 2149 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$181-Sstm8s_clk$CLK_GetSYSCLKSource$179
      000AA3 03                    2150 	.db	3
      000AA4 02                    2151 	.sleb128	2
      000AA5 01                    2152 	.db	1
      000AA6 09                    2153 	.db	9
      000AA7 00 04                 2154 	.dw	Sstm8s_clk$CLK_GetSYSCLKSource$182-Sstm8s_clk$CLK_GetSYSCLKSource$181
      000AA9 03                    2155 	.db	3
      000AAA 01                    2156 	.sleb128	1
      000AAB 01                    2157 	.db	1
      000AAC 09                    2158 	.db	9
      000AAD 00 07                 2159 	.dw	7+Sstm8s_clk$CLK_GetSYSCLKSource$183-Sstm8s_clk$CLK_GetSYSCLKSource$182
      000AAF 00                    2160 	.db	0
      000AB0 01                    2161 	.uleb128	1
      000AB1 01                    2162 	.db	1
      000AB2 00                    2163 	.db	0
      000AB3 05                    2164 	.uleb128	5
      000AB4 02                    2165 	.db	2
      000AB5 00 00 87 73           2166 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$185)
      000AB9 03                    2167 	.db	3
      000ABA B8 04                 2168 	.sleb128	568
      000ABC 01                    2169 	.db	1
      000ABD 09                    2170 	.db	9
      000ABE 00 0E                 2171 	.dw	Sstm8s_clk$CLK_GetClockFreq$187-Sstm8s_clk$CLK_GetClockFreq$185
      000AC0 03                    2172 	.db	3
      000AC1 07                    2173 	.sleb128	7
      000AC2 01                    2174 	.db	1
      000AC3 09                    2175 	.db	9
      000AC4 00 06                 2176 	.dw	Sstm8s_clk$CLK_GetClockFreq$188-Sstm8s_clk$CLK_GetClockFreq$187
      000AC6 03                    2177 	.db	3
      000AC7 02                    2178 	.sleb128	2
      000AC8 01                    2179 	.db	1
      000AC9 09                    2180 	.db	9
      000ACA 00 06                 2181 	.dw	Sstm8s_clk$CLK_GetClockFreq$189-Sstm8s_clk$CLK_GetClockFreq$188
      000ACC 03                    2182 	.db	3
      000ACD 02                    2183 	.sleb128	2
      000ACE 01                    2184 	.db	1
      000ACF 09                    2185 	.db	9
      000AD0 00 06                 2186 	.dw	Sstm8s_clk$CLK_GetClockFreq$190-Sstm8s_clk$CLK_GetClockFreq$189
      000AD2 03                    2187 	.db	3
      000AD3 01                    2188 	.sleb128	1
      000AD4 01                    2189 	.db	1
      000AD5 09                    2190 	.db	9
      000AD6 00 03                 2191 	.dw	Sstm8s_clk$CLK_GetClockFreq$191-Sstm8s_clk$CLK_GetClockFreq$190
      000AD8 03                    2192 	.db	3
      000AD9 01                    2193 	.sleb128	1
      000ADA 01                    2194 	.db	1
      000ADB 09                    2195 	.db	9
      000ADC 00 0B                 2196 	.dw	Sstm8s_clk$CLK_GetClockFreq$192-Sstm8s_clk$CLK_GetClockFreq$191
      000ADE 03                    2197 	.db	3
      000ADF 01                    2198 	.sleb128	1
      000AE0 01                    2199 	.db	1
      000AE1 09                    2200 	.db	9
      000AE2 00 18                 2201 	.dw	Sstm8s_clk$CLK_GetClockFreq$193-Sstm8s_clk$CLK_GetClockFreq$192
      000AE4 03                    2202 	.db	3
      000AE5 02                    2203 	.sleb128	2
      000AE6 01                    2204 	.db	1
      000AE7 09                    2205 	.db	9
      000AE8 00 06                 2206 	.dw	Sstm8s_clk$CLK_GetClockFreq$194-Sstm8s_clk$CLK_GetClockFreq$193
      000AEA 03                    2207 	.db	3
      000AEB 02                    2208 	.sleb128	2
      000AEC 01                    2209 	.db	1
      000AED 09                    2210 	.db	9
      000AEE 00 0B                 2211 	.dw	Sstm8s_clk$CLK_GetClockFreq$195-Sstm8s_clk$CLK_GetClockFreq$194
      000AF0 03                    2212 	.db	3
      000AF1 04                    2213 	.sleb128	4
      000AF2 01                    2214 	.db	1
      000AF3 09                    2215 	.db	9
      000AF4 00 09                 2216 	.dw	Sstm8s_clk$CLK_GetClockFreq$196-Sstm8s_clk$CLK_GetClockFreq$195
      000AF6 03                    2217 	.db	3
      000AF7 03                    2218 	.sleb128	3
      000AF8 01                    2219 	.db	1
      000AF9 09                    2220 	.db	9
      000AFA 00 02                 2221 	.dw	Sstm8s_clk$CLK_GetClockFreq$197-Sstm8s_clk$CLK_GetClockFreq$196
      000AFC 03                    2222 	.db	3
      000AFD 01                    2223 	.sleb128	1
      000AFE 01                    2224 	.db	1
      000AFF 09                    2225 	.db	9
      000B00 00 09                 2226 	.dw	7+Sstm8s_clk$CLK_GetClockFreq$198-Sstm8s_clk$CLK_GetClockFreq$197
      000B02 00                    2227 	.db	0
      000B03 01                    2228 	.uleb128	1
      000B04 01                    2229 	.db	1
      000B05 00                    2230 	.db	0
      000B06 05                    2231 	.uleb128	5
      000B07 02                    2232 	.db	2
      000B08 00 00 87 DE           2233 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$200)
      000B0C 03                    2234 	.db	3
      000B0D DB 04                 2235 	.sleb128	603
      000B0F 01                    2236 	.db	1
      000B10 09                    2237 	.db	9
      000B11 00 0C                 2238 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$202-Sstm8s_clk$CLK_AdjustHSICalibrationValue$200
      000B13 03                    2239 	.db	3
      000B14 06                    2240 	.sleb128	6
      000B15 01                    2241 	.db	1
      000B16 09                    2242 	.db	9
      000B17 00 0C                 2243 	.dw	Sstm8s_clk$CLK_AdjustHSICalibrationValue$203-Sstm8s_clk$CLK_AdjustHSICalibrationValue$202
      000B19 03                    2244 	.db	3
      000B1A 01                    2245 	.sleb128	1
      000B1B 01                    2246 	.db	1
      000B1C 09                    2247 	.db	9
      000B1D 00 07                 2248 	.dw	7+Sstm8s_clk$CLK_AdjustHSICalibrationValue$204-Sstm8s_clk$CLK_AdjustHSICalibrationValue$203
      000B1F 00                    2249 	.db	0
      000B20 01                    2250 	.uleb128	1
      000B21 01                    2251 	.db	1
      000B22 00                    2252 	.db	0
      000B23 05                    2253 	.uleb128	5
      000B24 02                    2254 	.db	2
      000B25 00 00 87 FD           2255 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$206)
      000B29 03                    2256 	.db	3
      000B2A ED 04                 2257 	.sleb128	621
      000B2C 01                    2258 	.db	1
      000B2D 09                    2259 	.db	9
      000B2E 00 0C                 2260 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$208-Sstm8s_clk$CLK_SYSCLKEmergencyClear$206
      000B30 03                    2261 	.db	3
      000B31 02                    2262 	.sleb128	2
      000B32 01                    2263 	.db	1
      000B33 09                    2264 	.db	9
      000B34 00 04                 2265 	.dw	Sstm8s_clk$CLK_SYSCLKEmergencyClear$209-Sstm8s_clk$CLK_SYSCLKEmergencyClear$208
      000B36 03                    2266 	.db	3
      000B37 01                    2267 	.sleb128	1
      000B38 01                    2268 	.db	1
      000B39 09                    2269 	.db	9
      000B3A 00 07                 2270 	.dw	7+Sstm8s_clk$CLK_SYSCLKEmergencyClear$210-Sstm8s_clk$CLK_SYSCLKEmergencyClear$209
      000B3C 00                    2271 	.db	0
      000B3D 01                    2272 	.uleb128	1
      000B3E 01                    2273 	.db	1
      000B3F 00                    2274 	.db	0
      000B40 05                    2275 	.uleb128	5
      000B41 02                    2276 	.db	2
      000B42 00 00 88 14           2277 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$212)
      000B46 03                    2278 	.db	3
      000B47 F9 04                 2279 	.sleb128	633
      000B49 01                    2280 	.db	1
      000B4A 09                    2281 	.db	9
      000B4B 00 0D                 2282 	.dw	Sstm8s_clk$CLK_GetFlagStatus$214-Sstm8s_clk$CLK_GetFlagStatus$212
      000B4D 03                    2283 	.db	3
      000B4E 0A                    2284 	.sleb128	10
      000B4F 01                    2285 	.db	1
      000B50 09                    2286 	.db	9
      000B51 00 05                 2287 	.dw	Sstm8s_clk$CLK_GetFlagStatus$215-Sstm8s_clk$CLK_GetFlagStatus$214
      000B53 03                    2288 	.db	3
      000B54 03                    2289 	.sleb128	3
      000B55 01                    2290 	.db	1
      000B56 09                    2291 	.db	9
      000B57 00 05                 2292 	.dw	Sstm8s_clk$CLK_GetFlagStatus$216-Sstm8s_clk$CLK_GetFlagStatus$215
      000B59 03                    2293 	.db	3
      000B5A 02                    2294 	.sleb128	2
      000B5B 01                    2295 	.db	1
      000B5C 09                    2296 	.db	9
      000B5D 00 06                 2297 	.dw	Sstm8s_clk$CLK_GetFlagStatus$217-Sstm8s_clk$CLK_GetFlagStatus$216
      000B5F 03                    2298 	.db	3
      000B60 02                    2299 	.sleb128	2
      000B61 01                    2300 	.db	1
      000B62 09                    2301 	.db	9
      000B63 00 05                 2302 	.dw	Sstm8s_clk$CLK_GetFlagStatus$218-Sstm8s_clk$CLK_GetFlagStatus$217
      000B65 03                    2303 	.db	3
      000B66 02                    2304 	.sleb128	2
      000B67 01                    2305 	.db	1
      000B68 09                    2306 	.db	9
      000B69 00 06                 2307 	.dw	Sstm8s_clk$CLK_GetFlagStatus$219-Sstm8s_clk$CLK_GetFlagStatus$218
      000B6B 03                    2308 	.db	3
      000B6C 02                    2309 	.sleb128	2
      000B6D 01                    2310 	.db	1
      000B6E 09                    2311 	.db	9
      000B6F 00 05                 2312 	.dw	Sstm8s_clk$CLK_GetFlagStatus$220-Sstm8s_clk$CLK_GetFlagStatus$219
      000B71 03                    2313 	.db	3
      000B72 02                    2314 	.sleb128	2
      000B73 01                    2315 	.db	1
      000B74 09                    2316 	.db	9
      000B75 00 06                 2317 	.dw	Sstm8s_clk$CLK_GetFlagStatus$221-Sstm8s_clk$CLK_GetFlagStatus$220
      000B77 03                    2318 	.db	3
      000B78 02                    2319 	.sleb128	2
      000B79 01                    2320 	.db	1
      000B7A 09                    2321 	.db	9
      000B7B 00 05                 2322 	.dw	Sstm8s_clk$CLK_GetFlagStatus$222-Sstm8s_clk$CLK_GetFlagStatus$221
      000B7D 03                    2323 	.db	3
      000B7E 02                    2324 	.sleb128	2
      000B7F 01                    2325 	.db	1
      000B80 09                    2326 	.db	9
      000B81 00 06                 2327 	.dw	Sstm8s_clk$CLK_GetFlagStatus$223-Sstm8s_clk$CLK_GetFlagStatus$222
      000B83 03                    2328 	.db	3
      000B84 04                    2329 	.sleb128	4
      000B85 01                    2330 	.db	1
      000B86 09                    2331 	.db	9
      000B87 00 04                 2332 	.dw	Sstm8s_clk$CLK_GetFlagStatus$224-Sstm8s_clk$CLK_GetFlagStatus$223
      000B89 03                    2333 	.db	3
      000B8A 03                    2334 	.sleb128	3
      000B8B 01                    2335 	.db	1
      000B8C 09                    2336 	.db	9
      000B8D 00 0B                 2337 	.dw	Sstm8s_clk$CLK_GetFlagStatus$225-Sstm8s_clk$CLK_GetFlagStatus$224
      000B8F 03                    2338 	.db	3
      000B90 02                    2339 	.sleb128	2
      000B91 01                    2340 	.db	1
      000B92 09                    2341 	.db	9
      000B93 00 04                 2342 	.dw	Sstm8s_clk$CLK_GetFlagStatus$226-Sstm8s_clk$CLK_GetFlagStatus$225
      000B95 03                    2343 	.db	3
      000B96 04                    2344 	.sleb128	4
      000B97 01                    2345 	.db	1
      000B98 09                    2346 	.db	9
      000B99 00 01                 2347 	.dw	Sstm8s_clk$CLK_GetFlagStatus$227-Sstm8s_clk$CLK_GetFlagStatus$226
      000B9B 03                    2348 	.db	3
      000B9C 04                    2349 	.sleb128	4
      000B9D 01                    2350 	.db	1
      000B9E 09                    2351 	.db	9
      000B9F 00 00                 2352 	.dw	Sstm8s_clk$CLK_GetFlagStatus$228-Sstm8s_clk$CLK_GetFlagStatus$227
      000BA1 03                    2353 	.db	3
      000BA2 01                    2354 	.sleb128	1
      000BA3 01                    2355 	.db	1
      000BA4 09                    2356 	.db	9
      000BA5 00 09                 2357 	.dw	7+Sstm8s_clk$CLK_GetFlagStatus$229-Sstm8s_clk$CLK_GetFlagStatus$228
      000BA7 00                    2358 	.db	0
      000BA8 01                    2359 	.uleb128	1
      000BA9 01                    2360 	.db	1
      000BAA 00                    2361 	.db	0
      000BAB 05                    2362 	.uleb128	5
      000BAC 02                    2363 	.db	2
      000BAD 00 00 88 6F           2364 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$231)
      000BB1 03                    2365 	.db	3
      000BB2 AE 05                 2366 	.sleb128	686
      000BB4 01                    2367 	.db	1
      000BB5 09                    2368 	.db	9
      000BB6 00 0C                 2369 	.dw	Sstm8s_clk$CLK_GetITStatus$233-Sstm8s_clk$CLK_GetITStatus$231
      000BB8 03                    2370 	.db	3
      000BB9 07                    2371 	.sleb128	7
      000BBA 01                    2372 	.db	1
      000BBB 09                    2373 	.db	9
      000BBC 00 06                 2374 	.dw	Sstm8s_clk$CLK_GetITStatus$234-Sstm8s_clk$CLK_GetITStatus$233
      000BBE 03                    2375 	.db	3
      000BBF 03                    2376 	.sleb128	3
      000BC0 01                    2377 	.db	1
      000BC1 09                    2378 	.db	9
      000BC2 00 0A                 2379 	.dw	Sstm8s_clk$CLK_GetITStatus$235-Sstm8s_clk$CLK_GetITStatus$234
      000BC4 03                    2380 	.db	3
      000BC5 02                    2381 	.sleb128	2
      000BC6 01                    2382 	.db	1
      000BC7 09                    2383 	.db	9
      000BC8 00 04                 2384 	.dw	Sstm8s_clk$CLK_GetITStatus$236-Sstm8s_clk$CLK_GetITStatus$235
      000BCA 03                    2385 	.db	3
      000BCB 04                    2386 	.sleb128	4
      000BCC 01                    2387 	.db	1
      000BCD 09                    2388 	.db	9
      000BCE 00 03                 2389 	.dw	Sstm8s_clk$CLK_GetITStatus$237-Sstm8s_clk$CLK_GetITStatus$236
      000BD0 03                    2390 	.db	3
      000BD1 06                    2391 	.sleb128	6
      000BD2 01                    2392 	.db	1
      000BD3 09                    2393 	.db	9
      000BD4 00 0A                 2394 	.dw	Sstm8s_clk$CLK_GetITStatus$238-Sstm8s_clk$CLK_GetITStatus$237
      000BD6 03                    2395 	.db	3
      000BD7 02                    2396 	.sleb128	2
      000BD8 01                    2397 	.db	1
      000BD9 09                    2398 	.db	9
      000BDA 00 04                 2399 	.dw	Sstm8s_clk$CLK_GetITStatus$239-Sstm8s_clk$CLK_GetITStatus$238
      000BDC 03                    2400 	.db	3
      000BDD 04                    2401 	.sleb128	4
      000BDE 01                    2402 	.db	1
      000BDF 09                    2403 	.db	9
      000BE0 00 01                 2404 	.dw	Sstm8s_clk$CLK_GetITStatus$240-Sstm8s_clk$CLK_GetITStatus$239
      000BE2 03                    2405 	.db	3
      000BE3 05                    2406 	.sleb128	5
      000BE4 01                    2407 	.db	1
      000BE5 09                    2408 	.db	9
      000BE6 00 00                 2409 	.dw	Sstm8s_clk$CLK_GetITStatus$241-Sstm8s_clk$CLK_GetITStatus$240
      000BE8 03                    2410 	.db	3
      000BE9 01                    2411 	.sleb128	1
      000BEA 01                    2412 	.db	1
      000BEB 09                    2413 	.db	9
      000BEC 00 07                 2414 	.dw	7+Sstm8s_clk$CLK_GetITStatus$242-Sstm8s_clk$CLK_GetITStatus$241
      000BEE 00                    2415 	.db	0
      000BEF 01                    2416 	.uleb128	1
      000BF0 01                    2417 	.db	1
      000BF1 00                    2418 	.db	0
      000BF2 05                    2419 	.uleb128	5
      000BF3 02                    2420 	.db	2
      000BF4 00 00 88 A8           2421 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$244)
      000BF8 03                    2422 	.db	3
      000BF9 D8 05                 2423 	.sleb128	728
      000BFB 01                    2424 	.db	1
      000BFC 09                    2425 	.db	9
      000BFD 00 0C                 2426 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$246-Sstm8s_clk$CLK_ClearITPendingBit$244
      000BFF 03                    2427 	.db	3
      000C00 05                    2428 	.sleb128	5
      000C01 01                    2429 	.db	1
      000C02 09                    2430 	.db	9
      000C03 00 06                 2431 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$247-Sstm8s_clk$CLK_ClearITPendingBit$246
      000C05 03                    2432 	.db	3
      000C06 03                    2433 	.sleb128	3
      000C07 01                    2434 	.db	1
      000C08 09                    2435 	.db	9
      000C09 00 09                 2436 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$248-Sstm8s_clk$CLK_ClearITPendingBit$247
      000C0B 03                    2437 	.db	3
      000C0C 05                    2438 	.sleb128	5
      000C0D 01                    2439 	.db	1
      000C0E 09                    2440 	.db	9
      000C0F 00 07                 2441 	.dw	Sstm8s_clk$CLK_ClearITPendingBit$249-Sstm8s_clk$CLK_ClearITPendingBit$248
      000C11 03                    2442 	.db	3
      000C12 03                    2443 	.sleb128	3
      000C13 01                    2444 	.db	1
      000C14 09                    2445 	.db	9
      000C15 00 07                 2446 	.dw	7+Sstm8s_clk$CLK_ClearITPendingBit$250-Sstm8s_clk$CLK_ClearITPendingBit$249
      000C17 00                    2447 	.db	0
      000C18 01                    2448 	.uleb128	1
      000C19 01                    2449 	.db	1
      000C1A                       2450 Ldebug_line_end:
                                   2451 
                                   2452 	.area .debug_loc (NOLOAD)
      000078                       2453 Ldebug_loc_start:
      000078 00 00 88 B4           2454 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$245)
      00007C 00 00 88 D1           2455 	.dw	0,(Sstm8s_clk$CLK_ClearITPendingBit$251)
      000080 00 02                 2456 	.dw	2
      000082 8F                    2457 	.db	143
      000083 01                    2458 	.sleb128	1
      000084 00 00 00 00           2459 	.dw	0,0
      000088 00 00 00 00           2460 	.dw	0,0
      00008C 00 00 88 7B           2461 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$232)
      000090 00 00 88 A8           2462 	.dw	0,(Sstm8s_clk$CLK_GetITStatus$243)
      000094 00 02                 2463 	.dw	2
      000096 8F                    2464 	.db	143
      000097 01                    2465 	.sleb128	1
      000098 00 00 00 00           2466 	.dw	0,0
      00009C 00 00 00 00           2467 	.dw	0,0
      0000A0 00 00 88 20           2468 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$213)
      0000A4 00 00 88 6F           2469 	.dw	0,(Sstm8s_clk$CLK_GetFlagStatus$230)
      0000A8 00 02                 2470 	.dw	2
      0000AA 8F                    2471 	.db	143
      0000AB 01                    2472 	.sleb128	1
      0000AC 00 00 00 00           2473 	.dw	0,0
      0000B0 00 00 00 00           2474 	.dw	0,0
      0000B4 00 00 88 09           2475 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$207)
      0000B8 00 00 88 14           2476 	.dw	0,(Sstm8s_clk$CLK_SYSCLKEmergencyClear$211)
      0000BC 00 02                 2477 	.dw	2
      0000BE 8F                    2478 	.db	143
      0000BF 01                    2479 	.sleb128	1
      0000C0 00 00 00 00           2480 	.dw	0,0
      0000C4 00 00 00 00           2481 	.dw	0,0
      0000C8 00 00 87 EA           2482 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$201)
      0000CC 00 00 87 FD           2483 	.dw	0,(Sstm8s_clk$CLK_AdjustHSICalibrationValue$205)
      0000D0 00 02                 2484 	.dw	2
      0000D2 8F                    2485 	.db	143
      0000D3 01                    2486 	.sleb128	1
      0000D4 00 00 00 00           2487 	.dw	0,0
      0000D8 00 00 00 00           2488 	.dw	0,0
      0000DC 00 00 87 7F           2489 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$186)
      0000E0 00 00 87 DE           2490 	.dw	0,(Sstm8s_clk$CLK_GetClockFreq$199)
      0000E4 00 02                 2491 	.dw	2
      0000E6 8F                    2492 	.db	143
      0000E7 01                    2493 	.sleb128	1
      0000E8 00 00 00 00           2494 	.dw	0,0
      0000EC 00 00 00 00           2495 	.dw	0,0
      0000F0 00 00 87 68           2496 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$180)
      0000F4 00 00 87 73           2497 	.dw	0,(Sstm8s_clk$CLK_GetSYSCLKSource$184)
      0000F8 00 02                 2498 	.dw	2
      0000FA 8F                    2499 	.db	143
      0000FB 01                    2500 	.sleb128	1
      0000FC 00 00 00 00           2501 	.dw	0,0
      000100 00 00 00 00           2502 	.dw	0,0
      000104 00 00 87 51           2503 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$174)
      000108 00 00 87 5C           2504 	.dw	0,(Sstm8s_clk$CLK_ClockSecuritySystemEnable$178)
      00010C 00 02                 2505 	.dw	2
      00010E 8F                    2506 	.db	143
      00010F 01                    2507 	.sleb128	1
      000110 00 00 00 00           2508 	.dw	0,0
      000114 00 00 00 00           2509 	.dw	0,0
      000118 00 00 87 30           2510 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$166)
      00011C 00 00 87 45           2511 	.dw	0,(Sstm8s_clk$CLK_SWIMConfig$172)
      000120 00 02                 2512 	.dw	2
      000122 8F                    2513 	.db	143
      000123 01                    2514 	.sleb128	1
      000124 00 00 00 00           2515 	.dw	0,0
      000128 00 00 00 00           2516 	.dw	0,0
      00012C 00 00 86 E5           2517 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$156)
      000130 00 00 87 24           2518 	.dw	0,(Sstm8s_clk$CLK_SYSCLKConfig$164)
      000134 00 02                 2519 	.dw	2
      000136 8F                    2520 	.db	143
      000137 01                    2521 	.sleb128	1
      000138 00 00 00 00           2522 	.dw	0,0
      00013C 00 00 00 00           2523 	.dw	0,0
      000140 00 00 86 94           2524 	.dw	0,(Sstm8s_clk$CLK_ITConfig$137)
      000144 00 00 86 D9           2525 	.dw	0,(Sstm8s_clk$CLK_ITConfig$154)
      000148 00 02                 2526 	.dw	2
      00014A 8F                    2527 	.db	143
      00014B 01                    2528 	.sleb128	1
      00014C 00 00 00 00           2529 	.dw	0,0
      000150 00 00 00 00           2530 	.dw	0,0
      000154 00 00 86 6C           2531 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$129)
      000158 00 00 86 88           2532 	.dw	0,(Sstm8s_clk$CLK_CCOConfig$135)
      00015C 00 02                 2533 	.dw	2
      00015E 8F                    2534 	.db	143
      00015F 01                    2535 	.sleb128	1
      000160 00 00 00 00           2536 	.dw	0,0
      000164 00 00 00 00           2537 	.dw	0,0
      000168 00 00 86 48           2538 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$122)
      00016C 00 00 86 60           2539 	.dw	0,(Sstm8s_clk$CLK_HSIPrescalerConfig$127)
      000170 00 02                 2540 	.dw	2
      000172 8F                    2541 	.db	143
      000173 01                    2542 	.sleb128	1
      000174 00 00 00 00           2543 	.dw	0,0
      000178 00 00 00 00           2544 	.dw	0,0
      00017C 00 00 85 69           2545 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$87)
      000180 00 00 86 3C           2546 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchConfig$120)
      000184 00 02                 2547 	.dw	2
      000186 8F                    2548 	.db	143
      000187 01                    2549 	.sleb128	1
      000188 00 00 00 00           2550 	.dw	0,0
      00018C 00 00 00 00           2551 	.dw	0,0
      000190 00 00 84 C3           2552 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$75)
      000194 00 00 85 5D           2553 	.dw	0,(Sstm8s_clk$CLK_PeripheralClockConfig$85)
      000198 00 02                 2554 	.dw	2
      00019A 8F                    2555 	.db	143
      00019B 01                    2556 	.sleb128	1
      00019C 00 00 00 00           2557 	.dw	0,0
      0001A0 00 00 00 00           2558 	.dw	0,0
      0001A4 00 00 84 9C           2559 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$67)
      0001A8 00 00 84 B7           2560 	.dw	0,(Sstm8s_clk$CLK_SlowActiveHaltWakeUpCmd$73)
      0001AC 00 02                 2561 	.dw	2
      0001AE 8F                    2562 	.db	143
      0001AF 01                    2563 	.sleb128	1
      0001B0 00 00 00 00           2564 	.dw	0,0
      0001B4 00 00 00 00           2565 	.dw	0,0
      0001B8 00 00 84 75           2566 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$59)
      0001BC 00 00 84 90           2567 	.dw	0,(Sstm8s_clk$CLK_ClockSwitchCmd$65)
      0001C0 00 02                 2568 	.dw	2
      0001C2 8F                    2569 	.db	143
      0001C3 01                    2570 	.sleb128	1
      0001C4 00 00 00 00           2571 	.dw	0,0
      0001C8 00 00 00 00           2572 	.dw	0,0
      0001CC 00 00 84 54           2573 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$51)
      0001D0 00 00 84 69           2574 	.dw	0,(Sstm8s_clk$CLK_CCOCmd$57)
      0001D4 00 02                 2575 	.dw	2
      0001D6 8F                    2576 	.db	143
      0001D7 01                    2577 	.sleb128	1
      0001D8 00 00 00 00           2578 	.dw	0,0
      0001DC 00 00 00 00           2579 	.dw	0,0
      0001E0 00 00 84 2D           2580 	.dw	0,(Sstm8s_clk$CLK_LSICmd$43)
      0001E4 00 00 84 48           2581 	.dw	0,(Sstm8s_clk$CLK_LSICmd$49)
      0001E8 00 02                 2582 	.dw	2
      0001EA 8F                    2583 	.db	143
      0001EB 01                    2584 	.sleb128	1
      0001EC 00 00 00 00           2585 	.dw	0,0
      0001F0 00 00 00 00           2586 	.dw	0,0
      0001F4 00 00 84 0C           2587 	.dw	0,(Sstm8s_clk$CLK_HSICmd$35)
      0001F8 00 00 84 21           2588 	.dw	0,(Sstm8s_clk$CLK_HSICmd$41)
      0001FC 00 02                 2589 	.dw	2
      0001FE 8F                    2590 	.db	143
      0001FF 01                    2591 	.sleb128	1
      000200 00 00 00 00           2592 	.dw	0,0
      000204 00 00 00 00           2593 	.dw	0,0
      000208 00 00 83 EB           2594 	.dw	0,(Sstm8s_clk$CLK_HSECmd$27)
      00020C 00 00 84 00           2595 	.dw	0,(Sstm8s_clk$CLK_HSECmd$33)
      000210 00 02                 2596 	.dw	2
      000212 8F                    2597 	.db	143
      000213 01                    2598 	.sleb128	1
      000214 00 00 00 00           2599 	.dw	0,0
      000218 00 00 00 00           2600 	.dw	0,0
      00021C 00 00 83 C4           2601 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$19)
      000220 00 00 83 DF           2602 	.dw	0,(Sstm8s_clk$CLK_FastHaltWakeUpCmd$25)
      000224 00 02                 2603 	.dw	2
      000226 8F                    2604 	.db	143
      000227 01                    2605 	.sleb128	1
      000228 00 00 00 00           2606 	.dw	0,0
      00022C 00 00 00 00           2607 	.dw	0,0
      000230 00 00 83 7A           2608 	.dw	0,(Sstm8s_clk$CLK_DeInit$1)
      000234 00 00 83 B8           2609 	.dw	0,(Sstm8s_clk$CLK_DeInit$17)
      000238 00 02                 2610 	.dw	2
      00023A 8F                    2611 	.db	143
      00023B 01                    2612 	.sleb128	1
      00023C 00 00 00 00           2613 	.dw	0,0
      000240 00 00 00 00           2614 	.dw	0,0
                                   2615 
                                   2616 	.area .debug_abbrev (NOLOAD)
      0000B9                       2617 Ldebug_abbrev:
      0000B9 0B                    2618 	.uleb128	11
      0000BA 34                    2619 	.uleb128	52
      0000BB 00                    2620 	.db	0
      0000BC 03                    2621 	.uleb128	3
      0000BD 08                    2622 	.uleb128	8
      0000BE 49                    2623 	.uleb128	73
      0000BF 13                    2624 	.uleb128	19
      0000C0 00                    2625 	.uleb128	0
      0000C1 00                    2626 	.uleb128	0
      0000C2 05                    2627 	.uleb128	5
      0000C3 0B                    2628 	.uleb128	11
      0000C4 00                    2629 	.db	0
      0000C5 00                    2630 	.uleb128	0
      0000C6 00                    2631 	.uleb128	0
      0000C7 08                    2632 	.uleb128	8
      0000C8 0B                    2633 	.uleb128	11
      0000C9 01                    2634 	.db	1
      0000CA 00                    2635 	.uleb128	0
      0000CB 00                    2636 	.uleb128	0
      0000CC 0C                    2637 	.uleb128	12
      0000CD 2E                    2638 	.uleb128	46
      0000CE 00                    2639 	.db	0
      0000CF 03                    2640 	.uleb128	3
      0000D0 08                    2641 	.uleb128	8
      0000D1 11                    2642 	.uleb128	17
      0000D2 01                    2643 	.uleb128	1
      0000D3 12                    2644 	.uleb128	18
      0000D4 01                    2645 	.uleb128	1
      0000D5 3F                    2646 	.uleb128	63
      0000D6 0C                    2647 	.uleb128	12
      0000D7 40                    2648 	.uleb128	64
      0000D8 06                    2649 	.uleb128	6
      0000D9 49                    2650 	.uleb128	73
      0000DA 13                    2651 	.uleb128	19
      0000DB 00                    2652 	.uleb128	0
      0000DC 00                    2653 	.uleb128	0
      0000DD 10                    2654 	.uleb128	16
      0000DE 34                    2655 	.uleb128	52
      0000DF 00                    2656 	.db	0
      0000E0 02                    2657 	.uleb128	2
      0000E1 0A                    2658 	.uleb128	10
      0000E2 03                    2659 	.uleb128	3
      0000E3 08                    2660 	.uleb128	8
      0000E4 3F                    2661 	.uleb128	63
      0000E5 0C                    2662 	.uleb128	12
      0000E6 49                    2663 	.uleb128	73
      0000E7 13                    2664 	.uleb128	19
      0000E8 00                    2665 	.uleb128	0
      0000E9 00                    2666 	.uleb128	0
      0000EA 04                    2667 	.uleb128	4
      0000EB 05                    2668 	.uleb128	5
      0000EC 00                    2669 	.db	0
      0000ED 02                    2670 	.uleb128	2
      0000EE 0A                    2671 	.uleb128	10
      0000EF 03                    2672 	.uleb128	3
      0000F0 08                    2673 	.uleb128	8
      0000F1 49                    2674 	.uleb128	73
      0000F2 13                    2675 	.uleb128	19
      0000F3 00                    2676 	.uleb128	0
      0000F4 00                    2677 	.uleb128	0
      0000F5 0E                    2678 	.uleb128	14
      0000F6 01                    2679 	.uleb128	1
      0000F7 01                    2680 	.db	1
      0000F8 01                    2681 	.uleb128	1
      0000F9 13                    2682 	.uleb128	19
      0000FA 0B                    2683 	.uleb128	11
      0000FB 0B                    2684 	.uleb128	11
      0000FC 49                    2685 	.uleb128	73
      0000FD 13                    2686 	.uleb128	19
      0000FE 00                    2687 	.uleb128	0
      0000FF 00                    2688 	.uleb128	0
      000100 03                    2689 	.uleb128	3
      000101 2E                    2690 	.uleb128	46
      000102 01                    2691 	.db	1
      000103 01                    2692 	.uleb128	1
      000104 13                    2693 	.uleb128	19
      000105 03                    2694 	.uleb128	3
      000106 08                    2695 	.uleb128	8
      000107 11                    2696 	.uleb128	17
      000108 01                    2697 	.uleb128	1
      000109 12                    2698 	.uleb128	18
      00010A 01                    2699 	.uleb128	1
      00010B 3F                    2700 	.uleb128	63
      00010C 0C                    2701 	.uleb128	12
      00010D 40                    2702 	.uleb128	64
      00010E 06                    2703 	.uleb128	6
      00010F 00                    2704 	.uleb128	0
      000110 00                    2705 	.uleb128	0
      000111 0A                    2706 	.uleb128	10
      000112 34                    2707 	.uleb128	52
      000113 00                    2708 	.db	0
      000114 02                    2709 	.uleb128	2
      000115 0A                    2710 	.uleb128	10
      000116 03                    2711 	.uleb128	3
      000117 08                    2712 	.uleb128	8
      000118 49                    2713 	.uleb128	73
      000119 13                    2714 	.uleb128	19
      00011A 00                    2715 	.uleb128	0
      00011B 00                    2716 	.uleb128	0
      00011C 09                    2717 	.uleb128	9
      00011D 2E                    2718 	.uleb128	46
      00011E 01                    2719 	.db	1
      00011F 01                    2720 	.uleb128	1
      000120 13                    2721 	.uleb128	19
      000121 03                    2722 	.uleb128	3
      000122 08                    2723 	.uleb128	8
      000123 11                    2724 	.uleb128	17
      000124 01                    2725 	.uleb128	1
      000125 12                    2726 	.uleb128	18
      000126 01                    2727 	.uleb128	1
      000127 3F                    2728 	.uleb128	63
      000128 0C                    2729 	.uleb128	12
      000129 40                    2730 	.uleb128	64
      00012A 06                    2731 	.uleb128	6
      00012B 49                    2732 	.uleb128	73
      00012C 13                    2733 	.uleb128	19
      00012D 00                    2734 	.uleb128	0
      00012E 00                    2735 	.uleb128	0
      00012F 07                    2736 	.uleb128	7
      000130 0B                    2737 	.uleb128	11
      000131 01                    2738 	.db	1
      000132 01                    2739 	.uleb128	1
      000133 13                    2740 	.uleb128	19
      000134 00                    2741 	.uleb128	0
      000135 00                    2742 	.uleb128	0
      000136 0D                    2743 	.uleb128	13
      000137 26                    2744 	.uleb128	38
      000138 00                    2745 	.db	0
      000139 49                    2746 	.uleb128	73
      00013A 13                    2747 	.uleb128	19
      00013B 00                    2748 	.uleb128	0
      00013C 00                    2749 	.uleb128	0
      00013D 01                    2750 	.uleb128	1
      00013E 11                    2751 	.uleb128	17
      00013F 01                    2752 	.db	1
      000140 03                    2753 	.uleb128	3
      000141 08                    2754 	.uleb128	8
      000142 10                    2755 	.uleb128	16
      000143 06                    2756 	.uleb128	6
      000144 13                    2757 	.uleb128	19
      000145 0B                    2758 	.uleb128	11
      000146 25                    2759 	.uleb128	37
      000147 08                    2760 	.uleb128	8
      000148 00                    2761 	.uleb128	0
      000149 00                    2762 	.uleb128	0
      00014A 02                    2763 	.uleb128	2
      00014B 2E                    2764 	.uleb128	46
      00014C 00                    2765 	.db	0
      00014D 03                    2766 	.uleb128	3
      00014E 08                    2767 	.uleb128	8
      00014F 11                    2768 	.uleb128	17
      000150 01                    2769 	.uleb128	1
      000151 12                    2770 	.uleb128	18
      000152 01                    2771 	.uleb128	1
      000153 3F                    2772 	.uleb128	63
      000154 0C                    2773 	.uleb128	12
      000155 40                    2774 	.uleb128	64
      000156 06                    2775 	.uleb128	6
      000157 00                    2776 	.uleb128	0
      000158 00                    2777 	.uleb128	0
      000159 0F                    2778 	.uleb128	15
      00015A 21                    2779 	.uleb128	33
      00015B 00                    2780 	.db	0
      00015C 2F                    2781 	.uleb128	47
      00015D 0B                    2782 	.uleb128	11
      00015E 00                    2783 	.uleb128	0
      00015F 00                    2784 	.uleb128	0
      000160 06                    2785 	.uleb128	6
      000161 24                    2786 	.uleb128	36
      000162 00                    2787 	.db	0
      000163 03                    2788 	.uleb128	3
      000164 08                    2789 	.uleb128	8
      000165 0B                    2790 	.uleb128	11
      000166 0B                    2791 	.uleb128	11
      000167 3E                    2792 	.uleb128	62
      000168 0B                    2793 	.uleb128	11
      000169 00                    2794 	.uleb128	0
      00016A 00                    2795 	.uleb128	0
      00016B 00                    2796 	.uleb128	0
                                   2797 
                                   2798 	.area .debug_info (NOLOAD)
      000296 00 00 07 02           2799 	.dw	0,Ldebug_info_end-Ldebug_info_start
      00029A                       2800 Ldebug_info_start:
      00029A 00 02                 2801 	.dw	2
      00029C 00 00 00 B9           2802 	.dw	0,(Ldebug_abbrev)
      0002A0 04                    2803 	.db	4
      0002A1 01                    2804 	.uleb128	1
      0002A2 53 74 64 50 65 72 69  2805 	.ascii "StdPeriphLib/src/stm8s_clk.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 63 6C 6B 2E 63
      0002BE 00                    2806 	.db	0
      0002BF 00 00 05 B1           2807 	.dw	0,(Ldebug_line_start+-4)
      0002C3 01                    2808 	.db	1
      0002C4 53 44 43 43 20 76 65  2809 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      0002DC 00                    2810 	.db	0
      0002DD 02                    2811 	.uleb128	2
      0002DE 43 4C 4B 5F 44 65 49  2812 	.ascii "CLK_DeInit"
             6E 69 74
      0002E8 00                    2813 	.db	0
      0002E9 00 00 83 6E           2814 	.dw	0,(_CLK_DeInit)
      0002ED 00 00 83 B8           2815 	.dw	0,(XG$CLK_DeInit$0$0+7)
      0002F1 01                    2816 	.db	1
      0002F2 00 00 02 30           2817 	.dw	0,(Ldebug_loc_start+440)
      0002F6 03                    2818 	.uleb128	3
      0002F7 00 00 00 9C           2819 	.dw	0,156
      0002FB 43 4C 4B 5F 46 61 73  2820 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      000310 00                    2821 	.db	0
      000311 00 00 83 B8           2822 	.dw	0,(_CLK_FastHaltWakeUpCmd)
      000315 00 00 83 DF           2823 	.dw	0,(XG$CLK_FastHaltWakeUpCmd$0$0+7)
      000319 01                    2824 	.db	1
      00031A 00 00 02 1C           2825 	.dw	0,(Ldebug_loc_start+420)
      00031E 04                    2826 	.uleb128	4
      00031F 02                    2827 	.db	2
      000320 91                    2828 	.db	145
      000321 04                    2829 	.sleb128	4
      000322 4E 65 77 53 74 61 74  2830 	.ascii "NewState"
             65
      00032A 00                    2831 	.db	0
      00032B 00 00 00 9C           2832 	.dw	0,156
      00032F 05                    2833 	.uleb128	5
      000330 05                    2834 	.uleb128	5
      000331 00                    2835 	.uleb128	0
      000332 06                    2836 	.uleb128	6
      000333 75 6E 73 69 67 6E 65  2837 	.ascii "unsigned char"
             64 20 63 68 61 72
      000340 00                    2838 	.db	0
      000341 01                    2839 	.db	1
      000342 08                    2840 	.db	8
      000343 03                    2841 	.uleb128	3
      000344 00 00 00 DE           2842 	.dw	0,222
      000348 43 4C 4B 5F 48 53 45  2843 	.ascii "CLK_HSECmd"
             43 6D 64
      000352 00                    2844 	.db	0
      000353 00 00 83 DF           2845 	.dw	0,(_CLK_HSECmd)
      000357 00 00 84 00           2846 	.dw	0,(XG$CLK_HSECmd$0$0+7)
      00035B 01                    2847 	.db	1
      00035C 00 00 02 08           2848 	.dw	0,(Ldebug_loc_start+400)
      000360 04                    2849 	.uleb128	4
      000361 02                    2850 	.db	2
      000362 91                    2851 	.db	145
      000363 04                    2852 	.sleb128	4
      000364 4E 65 77 53 74 61 74  2853 	.ascii "NewState"
             65
      00036C 00                    2854 	.db	0
      00036D 00 00 00 9C           2855 	.dw	0,156
      000371 05                    2856 	.uleb128	5
      000372 05                    2857 	.uleb128	5
      000373 00                    2858 	.uleb128	0
      000374 03                    2859 	.uleb128	3
      000375 00 00 01 0F           2860 	.dw	0,271
      000379 43 4C 4B 5F 48 53 49  2861 	.ascii "CLK_HSICmd"
             43 6D 64
      000383 00                    2862 	.db	0
      000384 00 00 84 00           2863 	.dw	0,(_CLK_HSICmd)
      000388 00 00 84 21           2864 	.dw	0,(XG$CLK_HSICmd$0$0+7)
      00038C 01                    2865 	.db	1
      00038D 00 00 01 F4           2866 	.dw	0,(Ldebug_loc_start+380)
      000391 04                    2867 	.uleb128	4
      000392 02                    2868 	.db	2
      000393 91                    2869 	.db	145
      000394 04                    2870 	.sleb128	4
      000395 4E 65 77 53 74 61 74  2871 	.ascii "NewState"
             65
      00039D 00                    2872 	.db	0
      00039E 00 00 00 9C           2873 	.dw	0,156
      0003A2 05                    2874 	.uleb128	5
      0003A3 05                    2875 	.uleb128	5
      0003A4 00                    2876 	.uleb128	0
      0003A5 03                    2877 	.uleb128	3
      0003A6 00 00 01 40           2878 	.dw	0,320
      0003AA 43 4C 4B 5F 4C 53 49  2879 	.ascii "CLK_LSICmd"
             43 6D 64
      0003B4 00                    2880 	.db	0
      0003B5 00 00 84 21           2881 	.dw	0,(_CLK_LSICmd)
      0003B9 00 00 84 48           2882 	.dw	0,(XG$CLK_LSICmd$0$0+7)
      0003BD 01                    2883 	.db	1
      0003BE 00 00 01 E0           2884 	.dw	0,(Ldebug_loc_start+360)
      0003C2 04                    2885 	.uleb128	4
      0003C3 02                    2886 	.db	2
      0003C4 91                    2887 	.db	145
      0003C5 04                    2888 	.sleb128	4
      0003C6 4E 65 77 53 74 61 74  2889 	.ascii "NewState"
             65
      0003CE 00                    2890 	.db	0
      0003CF 00 00 00 9C           2891 	.dw	0,156
      0003D3 05                    2892 	.uleb128	5
      0003D4 05                    2893 	.uleb128	5
      0003D5 00                    2894 	.uleb128	0
      0003D6 03                    2895 	.uleb128	3
      0003D7 00 00 01 71           2896 	.dw	0,369
      0003DB 43 4C 4B 5F 43 43 4F  2897 	.ascii "CLK_CCOCmd"
             43 6D 64
      0003E5 00                    2898 	.db	0
      0003E6 00 00 84 48           2899 	.dw	0,(_CLK_CCOCmd)
      0003EA 00 00 84 69           2900 	.dw	0,(XG$CLK_CCOCmd$0$0+7)
      0003EE 01                    2901 	.db	1
      0003EF 00 00 01 CC           2902 	.dw	0,(Ldebug_loc_start+340)
      0003F3 04                    2903 	.uleb128	4
      0003F4 02                    2904 	.db	2
      0003F5 91                    2905 	.db	145
      0003F6 04                    2906 	.sleb128	4
      0003F7 4E 65 77 53 74 61 74  2907 	.ascii "NewState"
             65
      0003FF 00                    2908 	.db	0
      000400 00 00 00 9C           2909 	.dw	0,156
      000404 05                    2910 	.uleb128	5
      000405 05                    2911 	.uleb128	5
      000406 00                    2912 	.uleb128	0
      000407 03                    2913 	.uleb128	3
      000408 00 00 01 AA           2914 	.dw	0,426
      00040C 43 4C 4B 5F 43 6C 6F  2915 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      00041E 00                    2916 	.db	0
      00041F 00 00 84 69           2917 	.dw	0,(_CLK_ClockSwitchCmd)
      000423 00 00 84 90           2918 	.dw	0,(XG$CLK_ClockSwitchCmd$0$0+7)
      000427 01                    2919 	.db	1
      000428 00 00 01 B8           2920 	.dw	0,(Ldebug_loc_start+320)
      00042C 04                    2921 	.uleb128	4
      00042D 02                    2922 	.db	2
      00042E 91                    2923 	.db	145
      00042F 04                    2924 	.sleb128	4
      000430 4E 65 77 53 74 61 74  2925 	.ascii "NewState"
             65
      000438 00                    2926 	.db	0
      000439 00 00 00 9C           2927 	.dw	0,156
      00043D 05                    2928 	.uleb128	5
      00043E 05                    2929 	.uleb128	5
      00043F 00                    2930 	.uleb128	0
      000440 03                    2931 	.uleb128	3
      000441 00 00 01 EC           2932 	.dw	0,492
      000445 43 4C 4B 5F 53 6C 6F  2933 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      000460 00                    2934 	.db	0
      000461 00 00 84 90           2935 	.dw	0,(_CLK_SlowActiveHaltWakeUpCmd)
      000465 00 00 84 B7           2936 	.dw	0,(XG$CLK_SlowActiveHaltWakeUpCmd$0$0+7)
      000469 01                    2937 	.db	1
      00046A 00 00 01 A4           2938 	.dw	0,(Ldebug_loc_start+300)
      00046E 04                    2939 	.uleb128	4
      00046F 02                    2940 	.db	2
      000470 91                    2941 	.db	145
      000471 04                    2942 	.sleb128	4
      000472 4E 65 77 53 74 61 74  2943 	.ascii "NewState"
             65
      00047A 00                    2944 	.db	0
      00047B 00 00 00 9C           2945 	.dw	0,156
      00047F 05                    2946 	.uleb128	5
      000480 05                    2947 	.uleb128	5
      000481 00                    2948 	.uleb128	0
      000482 03                    2949 	.uleb128	3
      000483 00 00 02 4D           2950 	.dw	0,589
      000487 43 4C 4B 5F 50 65 72  2951 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      0004A0 00                    2952 	.db	0
      0004A1 00 00 84 B7           2953 	.dw	0,(_CLK_PeripheralClockConfig)
      0004A5 00 00 85 5D           2954 	.dw	0,(XG$CLK_PeripheralClockConfig$0$0+7)
      0004A9 01                    2955 	.db	1
      0004AA 00 00 01 90           2956 	.dw	0,(Ldebug_loc_start+280)
      0004AE 04                    2957 	.uleb128	4
      0004AF 02                    2958 	.db	2
      0004B0 91                    2959 	.db	145
      0004B1 04                    2960 	.sleb128	4
      0004B2 43 4C 4B 5F 50 65 72  2961 	.ascii "CLK_Peripheral"
             69 70 68 65 72 61 6C
      0004C0 00                    2962 	.db	0
      0004C1 00 00 00 9C           2963 	.dw	0,156
      0004C5 04                    2964 	.uleb128	4
      0004C6 02                    2965 	.db	2
      0004C7 91                    2966 	.db	145
      0004C8 05                    2967 	.sleb128	5
      0004C9 4E 65 77 53 74 61 74  2968 	.ascii "NewState"
             65
      0004D1 00                    2969 	.db	0
      0004D2 00 00 00 9C           2970 	.dw	0,156
      0004D6 07                    2971 	.uleb128	7
      0004D7 00 00 02 48           2972 	.dw	0,584
      0004DB 05                    2973 	.uleb128	5
      0004DC 05                    2974 	.uleb128	5
      0004DD 00                    2975 	.uleb128	0
      0004DE 08                    2976 	.uleb128	8
      0004DF 05                    2977 	.uleb128	5
      0004E0 05                    2978 	.uleb128	5
      0004E1 00                    2979 	.uleb128	0
      0004E2 00                    2980 	.uleb128	0
      0004E3 09                    2981 	.uleb128	9
      0004E4 00 00 03 26           2982 	.dw	0,806
      0004E8 43 4C 4B 5F 43 6C 6F  2983 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      0004FD 00                    2984 	.db	0
      0004FE 00 00 85 5D           2985 	.dw	0,(_CLK_ClockSwitchConfig)
      000502 00 00 86 3C           2986 	.dw	0,(XG$CLK_ClockSwitchConfig$0$0+7)
      000506 01                    2987 	.db	1
      000507 00 00 01 7C           2988 	.dw	0,(Ldebug_loc_start+260)
      00050B 00 00 00 9C           2989 	.dw	0,156
      00050F 04                    2990 	.uleb128	4
      000510 02                    2991 	.db	2
      000511 91                    2992 	.db	145
      000512 04                    2993 	.sleb128	4
      000513 43 4C 4B 5F 53 77 69  2994 	.ascii "CLK_SwitchMode"
             74 63 68 4D 6F 64 65
      000521 00                    2995 	.db	0
      000522 00 00 00 9C           2996 	.dw	0,156
      000526 04                    2997 	.uleb128	4
      000527 02                    2998 	.db	2
      000528 91                    2999 	.db	145
      000529 05                    3000 	.sleb128	5
      00052A 43 4C 4B 5F 4E 65 77  3001 	.ascii "CLK_NewClock"
             43 6C 6F 63 6B
      000536 00                    3002 	.db	0
      000537 00 00 00 9C           3003 	.dw	0,156
      00053B 04                    3004 	.uleb128	4
      00053C 02                    3005 	.db	2
      00053D 91                    3006 	.db	145
      00053E 06                    3007 	.sleb128	6
      00053F 49 54 53 74 61 74 65  3008 	.ascii "ITState"
      000546 00                    3009 	.db	0
      000547 00 00 00 9C           3010 	.dw	0,156
      00054B 04                    3011 	.uleb128	4
      00054C 02                    3012 	.db	2
      00054D 91                    3013 	.db	145
      00054E 07                    3014 	.sleb128	7
      00054F 43 4C 4B 5F 43 75 72  3015 	.ascii "CLK_CurrentClockState"
             72 65 6E 74 43 6C 6F
             63 6B 53 74 61 74 65
      000564 00                    3016 	.db	0
      000565 00 00 00 9C           3017 	.dw	0,156
      000569 07                    3018 	.uleb128	7
      00056A 00 00 02 DE           3019 	.dw	0,734
      00056E 05                    3020 	.uleb128	5
      00056F 05                    3021 	.uleb128	5
      000570 05                    3022 	.uleb128	5
      000571 05                    3023 	.uleb128	5
      000572 05                    3024 	.uleb128	5
      000573 00                    3025 	.uleb128	0
      000574 07                    3026 	.uleb128	7
      000575 00 00 02 E9           3027 	.dw	0,745
      000579 05                    3028 	.uleb128	5
      00057A 05                    3029 	.uleb128	5
      00057B 05                    3030 	.uleb128	5
      00057C 05                    3031 	.uleb128	5
      00057D 05                    3032 	.uleb128	5
      00057E 00                    3033 	.uleb128	0
      00057F 07                    3034 	.uleb128	7
      000580 00 00 02 F2           3035 	.dw	0,754
      000584 05                    3036 	.uleb128	5
      000585 05                    3037 	.uleb128	5
      000586 05                    3038 	.uleb128	5
      000587 00                    3039 	.uleb128	0
      000588 0A                    3040 	.uleb128	10
      000589 02                    3041 	.db	2
      00058A 91                    3042 	.db	145
      00058B 7F                    3043 	.sleb128	-1
      00058C 63 6C 6F 63 6B 5F 6D  3044 	.ascii "clock_master"
             61 73 74 65 72
      000598 00                    3045 	.db	0
      000599 00 00 00 9C           3046 	.dw	0,156
      00059D 0B                    3047 	.uleb128	11
      00059E 44 6F 77 6E 43 6F 75  3048 	.ascii "DownCounter"
             6E 74 65 72
      0005A9 00                    3049 	.db	0
      0005AA 00 00 03 26           3050 	.dw	0,806
      0005AE 0A                    3051 	.uleb128	10
      0005AF 02                    3052 	.db	2
      0005B0 91                    3053 	.db	145
      0005B1 7E                    3054 	.sleb128	-2
      0005B2 53 77 69 66           3055 	.ascii "Swif"
      0005B6 00                    3056 	.db	0
      0005B7 00 00 00 9C           3057 	.dw	0,156
      0005BB 00                    3058 	.uleb128	0
      0005BC 06                    3059 	.uleb128	6
      0005BD 75 6E 73 69 67 6E 65  3060 	.ascii "unsigned int"
             64 20 69 6E 74
      0005C9 00                    3061 	.db	0
      0005CA 02                    3062 	.db	2
      0005CB 07                    3063 	.db	7
      0005CC 03                    3064 	.uleb128	3
      0005CD 00 00 03 75           3065 	.dw	0,885
      0005D1 43 4C 4B 5F 48 53 49  3066 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      0005E7 00                    3067 	.db	0
      0005E8 00 00 86 3C           3068 	.dw	0,(_CLK_HSIPrescalerConfig)
      0005EC 00 00 86 60           3069 	.dw	0,(XG$CLK_HSIPrescalerConfig$0$0+7)
      0005F0 01                    3070 	.db	1
      0005F1 00 00 01 68           3071 	.dw	0,(Ldebug_loc_start+240)
      0005F5 04                    3072 	.uleb128	4
      0005F6 02                    3073 	.db	2
      0005F7 91                    3074 	.db	145
      0005F8 04                    3075 	.sleb128	4
      0005F9 48 53 49 50 72 65 73  3076 	.ascii "HSIPrescaler"
             63 61 6C 65 72
      000605 00                    3077 	.db	0
      000606 00 00 00 9C           3078 	.dw	0,156
      00060A 00                    3079 	.uleb128	0
      00060B 03                    3080 	.uleb128	3
      00060C 00 00 03 A6           3081 	.dw	0,934
      000610 43 4C 4B 5F 43 43 4F  3082 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      00061D 00                    3083 	.db	0
      00061E 00 00 86 60           3084 	.dw	0,(_CLK_CCOConfig)
      000622 00 00 86 88           3085 	.dw	0,(XG$CLK_CCOConfig$0$0+7)
      000626 01                    3086 	.db	1
      000627 00 00 01 54           3087 	.dw	0,(Ldebug_loc_start+220)
      00062B 04                    3088 	.uleb128	4
      00062C 02                    3089 	.db	2
      00062D 91                    3090 	.db	145
      00062E 04                    3091 	.sleb128	4
      00062F 43 4C 4B 5F 43 43 4F  3092 	.ascii "CLK_CCO"
      000636 00                    3093 	.db	0
      000637 00 00 00 9C           3094 	.dw	0,156
      00063B 00                    3095 	.uleb128	0
      00063C 03                    3096 	.uleb128	3
      00063D 00 00 03 F0           3097 	.dw	0,1008
      000641 43 4C 4B 5F 49 54 43  3098 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      00064D 00                    3099 	.db	0
      00064E 00 00 86 88           3100 	.dw	0,(_CLK_ITConfig)
      000652 00 00 86 D9           3101 	.dw	0,(XG$CLK_ITConfig$0$0+7)
      000656 01                    3102 	.db	1
      000657 00 00 01 40           3103 	.dw	0,(Ldebug_loc_start+200)
      00065B 04                    3104 	.uleb128	4
      00065C 02                    3105 	.db	2
      00065D 91                    3106 	.db	145
      00065E 04                    3107 	.sleb128	4
      00065F 43 4C 4B 5F 49 54     3108 	.ascii "CLK_IT"
      000665 00                    3109 	.db	0
      000666 00 00 00 9C           3110 	.dw	0,156
      00066A 04                    3111 	.uleb128	4
      00066B 02                    3112 	.db	2
      00066C 91                    3113 	.db	145
      00066D 05                    3114 	.sleb128	5
      00066E 4E 65 77 53 74 61 74  3115 	.ascii "NewState"
             65
      000676 00                    3116 	.db	0
      000677 00 00 00 9C           3117 	.dw	0,156
      00067B 07                    3118 	.uleb128	7
      00067C 00 00 03 EC           3119 	.dw	0,1004
      000680 05                    3120 	.uleb128	5
      000681 00                    3121 	.uleb128	0
      000682 08                    3122 	.uleb128	8
      000683 05                    3123 	.uleb128	5
      000684 00                    3124 	.uleb128	0
      000685 00                    3125 	.uleb128	0
      000686 03                    3126 	.uleb128	3
      000687 00 00 04 2C           3127 	.dw	0,1068
      00068B 43 4C 4B 5F 53 59 53  3128 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      00069B 00                    3129 	.db	0
      00069C 00 00 86 D9           3130 	.dw	0,(_CLK_SYSCLKConfig)
      0006A0 00 00 87 24           3131 	.dw	0,(XG$CLK_SYSCLKConfig$0$0+7)
      0006A4 01                    3132 	.db	1
      0006A5 00 00 01 2C           3133 	.dw	0,(Ldebug_loc_start+180)
      0006A9 04                    3134 	.uleb128	4
      0006AA 02                    3135 	.db	2
      0006AB 91                    3136 	.db	145
      0006AC 04                    3137 	.sleb128	4
      0006AD 43 4C 4B 5F 50 72 65  3138 	.ascii "CLK_Prescaler"
             73 63 61 6C 65 72
      0006BA 00                    3139 	.db	0
      0006BB 00 00 00 9C           3140 	.dw	0,156
      0006BF 05                    3141 	.uleb128	5
      0006C0 05                    3142 	.uleb128	5
      0006C1 00                    3143 	.uleb128	0
      0006C2 03                    3144 	.uleb128	3
      0006C3 00 00 04 68           3145 	.dw	0,1128
      0006C7 43 4C 4B 5F 53 57 49  3146 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      0006D5 00                    3147 	.db	0
      0006D6 00 00 87 24           3148 	.dw	0,(_CLK_SWIMConfig)
      0006DA 00 00 87 45           3149 	.dw	0,(XG$CLK_SWIMConfig$0$0+7)
      0006DE 01                    3150 	.db	1
      0006DF 00 00 01 18           3151 	.dw	0,(Ldebug_loc_start+160)
      0006E3 04                    3152 	.uleb128	4
      0006E4 02                    3153 	.db	2
      0006E5 91                    3154 	.db	145
      0006E6 04                    3155 	.sleb128	4
      0006E7 43 4C 4B 5F 53 57 49  3156 	.ascii "CLK_SWIMDivider"
             4D 44 69 76 69 64 65
             72
      0006F6 00                    3157 	.db	0
      0006F7 00 00 00 9C           3158 	.dw	0,156
      0006FB 05                    3159 	.uleb128	5
      0006FC 05                    3160 	.uleb128	5
      0006FD 00                    3161 	.uleb128	0
      0006FE 02                    3162 	.uleb128	2
      0006FF 43 4C 4B 5F 43 6C 6F  3163 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      00071C 00                    3164 	.db	0
      00071D 00 00 87 45           3165 	.dw	0,(_CLK_ClockSecuritySystemEnable)
      000721 00 00 87 5C           3166 	.dw	0,(XG$CLK_ClockSecuritySystemEnable$0$0+7)
      000725 01                    3167 	.db	1
      000726 00 00 01 04           3168 	.dw	0,(Ldebug_loc_start+140)
      00072A 0C                    3169 	.uleb128	12
      00072B 43 4C 4B 5F 47 65 74  3170 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      00073E 00                    3171 	.db	0
      00073F 00 00 87 5C           3172 	.dw	0,(_CLK_GetSYSCLKSource)
      000743 00 00 87 73           3173 	.dw	0,(XG$CLK_GetSYSCLKSource$0$0+7)
      000747 01                    3174 	.db	1
      000748 00 00 00 F0           3175 	.dw	0,(Ldebug_loc_start+120)
      00074C 00 00 00 9C           3176 	.dw	0,156
      000750 06                    3177 	.uleb128	6
      000751 75 6E 73 69 67 6E 65  3178 	.ascii "unsigned long"
             64 20 6C 6F 6E 67
      00075E 00                    3179 	.db	0
      00075F 04                    3180 	.db	4
      000760 07                    3181 	.db	7
      000761 09                    3182 	.uleb128	9
      000762 00 00 05 39           3183 	.dw	0,1337
      000766 43 4C 4B 5F 47 65 74  3184 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      000776 00                    3185 	.db	0
      000777 00 00 87 73           3186 	.dw	0,(_CLK_GetClockFreq)
      00077B 00 00 87 DE           3187 	.dw	0,(XG$CLK_GetClockFreq$0$0+7)
      00077F 01                    3188 	.db	1
      000780 00 00 00 DC           3189 	.dw	0,(Ldebug_loc_start+100)
      000784 00 00 04 BA           3190 	.dw	0,1210
      000788 05                    3191 	.uleb128	5
      000789 05                    3192 	.uleb128	5
      00078A 05                    3193 	.uleb128	5
      00078B 0A                    3194 	.uleb128	10
      00078C 02                    3195 	.db	2
      00078D 91                    3196 	.db	145
      00078E 7A                    3197 	.sleb128	-6
      00078F 63 6C 6F 63 6B 66 72  3198 	.ascii "clockfrequency"
             65 71 75 65 6E 63 79
      00079D 00                    3199 	.db	0
      00079E 00 00 04 BA           3200 	.dw	0,1210
      0007A2 0A                    3201 	.uleb128	10
      0007A3 02                    3202 	.db	2
      0007A4 91                    3203 	.db	145
      0007A5 79                    3204 	.sleb128	-7
      0007A6 63 6C 6F 63 6B 73 6F  3205 	.ascii "clocksource"
             75 72 63 65
      0007B1 00                    3206 	.db	0
      0007B2 00 00 00 9C           3207 	.dw	0,156
      0007B6 0A                    3208 	.uleb128	10
      0007B7 01                    3209 	.db	1
      0007B8 51                    3210 	.db	81
      0007B9 74 6D 70              3211 	.ascii "tmp"
      0007BC 00                    3212 	.db	0
      0007BD 00 00 00 9C           3213 	.dw	0,156
      0007C1 0A                    3214 	.uleb128	10
      0007C2 01                    3215 	.db	1
      0007C3 51                    3216 	.db	81
      0007C4 70 72 65 73 63        3217 	.ascii "presc"
      0007C9 00                    3218 	.db	0
      0007CA 00 00 00 9C           3219 	.dw	0,156
      0007CE 00                    3220 	.uleb128	0
      0007CF 03                    3221 	.uleb128	3
      0007D0 00 00 05 8A           3222 	.dw	0,1418
      0007D4 43 4C 4B 5F 41 64 6A  3223 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      0007F1 00                    3224 	.db	0
      0007F2 00 00 87 DE           3225 	.dw	0,(_CLK_AdjustHSICalibrationValue)
      0007F6 00 00 87 FD           3226 	.dw	0,(XG$CLK_AdjustHSICalibrationValue$0$0+7)
      0007FA 01                    3227 	.db	1
      0007FB 00 00 00 C8           3228 	.dw	0,(Ldebug_loc_start+80)
      0007FF 04                    3229 	.uleb128	4
      000800 02                    3230 	.db	2
      000801 91                    3231 	.db	145
      000802 04                    3232 	.sleb128	4
      000803 43 4C 4B 5F 48 53 49  3233 	.ascii "CLK_HSICalibrationValue"
             43 61 6C 69 62 72 61
             74 69 6F 6E 56 61 6C
             75 65
      00081A 00                    3234 	.db	0
      00081B 00 00 00 9C           3235 	.dw	0,156
      00081F 00                    3236 	.uleb128	0
      000820 02                    3237 	.uleb128	2
      000821 43 4C 4B 5F 53 59 53  3238 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      000839 00                    3239 	.db	0
      00083A 00 00 87 FD           3240 	.dw	0,(_CLK_SYSCLKEmergencyClear)
      00083E 00 00 88 14           3241 	.dw	0,(XG$CLK_SYSCLKEmergencyClear$0$0+7)
      000842 01                    3242 	.db	1
      000843 00 00 00 B4           3243 	.dw	0,(Ldebug_loc_start+60)
      000847 09                    3244 	.uleb128	9
      000848 00 00 06 20           3245 	.dw	0,1568
      00084C 43 4C 4B 5F 47 65 74  3246 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      00085D 00                    3247 	.db	0
      00085E 00 00 88 14           3248 	.dw	0,(_CLK_GetFlagStatus)
      000862 00 00 88 6F           3249 	.dw	0,(XG$CLK_GetFlagStatus$0$0+7)
      000866 01                    3250 	.db	1
      000867 00 00 00 A0           3251 	.dw	0,(Ldebug_loc_start+40)
      00086B 00 00 00 9C           3252 	.dw	0,156
      00086F 04                    3253 	.uleb128	4
      000870 02                    3254 	.db	2
      000871 91                    3255 	.db	145
      000872 04                    3256 	.sleb128	4
      000873 43 4C 4B 5F 46 4C 41  3257 	.ascii "CLK_FLAG"
             47
      00087B 00                    3258 	.db	0
      00087C 00 00 03 26           3259 	.dw	0,806
      000880 05                    3260 	.uleb128	5
      000881 05                    3261 	.uleb128	5
      000882 05                    3262 	.uleb128	5
      000883 05                    3263 	.uleb128	5
      000884 05                    3264 	.uleb128	5
      000885 05                    3265 	.uleb128	5
      000886 05                    3266 	.uleb128	5
      000887 0B                    3267 	.uleb128	11
      000888 73 74 61 74 75 73 72  3268 	.ascii "statusreg"
             65 67
      000891 00                    3269 	.db	0
      000892 00 00 03 26           3270 	.dw	0,806
      000896 0A                    3271 	.uleb128	10
      000897 01                    3272 	.db	1
      000898 51                    3273 	.db	81
      000899 74 6D 70 72 65 67     3274 	.ascii "tmpreg"
      00089F 00                    3275 	.db	0
      0008A0 00 00 00 9C           3276 	.dw	0,156
      0008A4 0A                    3277 	.uleb128	10
      0008A5 01                    3278 	.db	1
      0008A6 51                    3279 	.db	81
      0008A7 62 69 74 73 74 61 74  3280 	.ascii "bitstatus"
             75 73
      0008B0 00                    3281 	.db	0
      0008B1 00 00 00 9C           3282 	.dw	0,156
      0008B5 00                    3283 	.uleb128	0
      0008B6 09                    3284 	.uleb128	9
      0008B7 00 00 06 77           3285 	.dw	0,1655
      0008BB 43 4C 4B 5F 47 65 74  3286 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      0008CA 00                    3287 	.db	0
      0008CB 00 00 88 6F           3288 	.dw	0,(_CLK_GetITStatus)
      0008CF 00 00 88 A8           3289 	.dw	0,(XG$CLK_GetITStatus$0$0+7)
      0008D3 01                    3290 	.db	1
      0008D4 00 00 00 8C           3291 	.dw	0,(Ldebug_loc_start+20)
      0008D8 00 00 00 9C           3292 	.dw	0,156
      0008DC 04                    3293 	.uleb128	4
      0008DD 02                    3294 	.db	2
      0008DE 91                    3295 	.db	145
      0008DF 04                    3296 	.sleb128	4
      0008E0 43 4C 4B 5F 49 54     3297 	.ascii "CLK_IT"
      0008E6 00                    3298 	.db	0
      0008E7 00 00 00 9C           3299 	.dw	0,156
      0008EB 07                    3300 	.uleb128	7
      0008EC 00 00 06 5D           3301 	.dw	0,1629
      0008F0 05                    3302 	.uleb128	5
      0008F1 05                    3303 	.uleb128	5
      0008F2 00                    3304 	.uleb128	0
      0008F3 07                    3305 	.uleb128	7
      0008F4 00 00 06 65           3306 	.dw	0,1637
      0008F8 05                    3307 	.uleb128	5
      0008F9 05                    3308 	.uleb128	5
      0008FA 00                    3309 	.uleb128	0
      0008FB 0A                    3310 	.uleb128	10
      0008FC 01                    3311 	.db	1
      0008FD 51                    3312 	.db	81
      0008FE 62 69 74 73 74 61 74  3313 	.ascii "bitstatus"
             75 73
      000907 00                    3314 	.db	0
      000908 00 00 00 9C           3315 	.dw	0,156
      00090C 00                    3316 	.uleb128	0
      00090D 03                    3317 	.uleb128	3
      00090E 00 00 06 B1           3318 	.dw	0,1713
      000912 43 4C 4B 5F 43 6C 65  3319 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      000927 00                    3320 	.db	0
      000928 00 00 88 A8           3321 	.dw	0,(_CLK_ClearITPendingBit)
      00092C 00 00 88 D1           3322 	.dw	0,(XG$CLK_ClearITPendingBit$0$0+7)
      000930 01                    3323 	.db	1
      000931 00 00 00 78           3324 	.dw	0,(Ldebug_loc_start)
      000935 04                    3325 	.uleb128	4
      000936 02                    3326 	.db	2
      000937 91                    3327 	.db	145
      000938 04                    3328 	.sleb128	4
      000939 43 4C 4B 5F 49 54     3329 	.ascii "CLK_IT"
      00093F 00                    3330 	.db	0
      000940 00 00 00 9C           3331 	.dw	0,156
      000944 05                    3332 	.uleb128	5
      000945 05                    3333 	.uleb128	5
      000946 00                    3334 	.uleb128	0
      000947 0D                    3335 	.uleb128	13
      000948 00 00 00 9C           3336 	.dw	0,156
      00094C 0E                    3337 	.uleb128	14
      00094D 00 00 06 C3           3338 	.dw	0,1731
      000951 04                    3339 	.db	4
      000952 00 00 06 B1           3340 	.dw	0,1713
      000956 0F                    3341 	.uleb128	15
      000957 03                    3342 	.db	3
      000958 00                    3343 	.uleb128	0
      000959 10                    3344 	.uleb128	16
      00095A 05                    3345 	.db	5
      00095B 03                    3346 	.db	3
      00095C 00 00 88 D1           3347 	.dw	0,(_HSIDivFactor)
      000960 48 53 49 44 69 76 46  3348 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      00096C 00                    3349 	.db	0
      00096D 01                    3350 	.db	1
      00096E 00 00 06 B6           3351 	.dw	0,1718
      000972 0E                    3352 	.uleb128	14
      000973 00 00 06 E9           3353 	.dw	0,1769
      000977 08                    3354 	.db	8
      000978 00 00 06 B1           3355 	.dw	0,1713
      00097C 0F                    3356 	.uleb128	15
      00097D 07                    3357 	.db	7
      00097E 00                    3358 	.uleb128	0
      00097F 10                    3359 	.uleb128	16
      000980 05                    3360 	.db	5
      000981 03                    3361 	.db	3
      000982 00 00 88 D5           3362 	.dw	0,(_CLKPrescTable)
      000986 43 4C 4B 50 72 65 73  3363 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      000993 00                    3364 	.db	0
      000994 01                    3365 	.db	1
      000995 00 00 06 DC           3366 	.dw	0,1756
      000999 00                    3367 	.uleb128	0
      00099A 00                    3368 	.uleb128	0
      00099B 00                    3369 	.uleb128	0
      00099C                       3370 Ldebug_info_end:
                                   3371 
                                   3372 	.area .debug_pubnames (NOLOAD)
      000127 00 00 02 3D           3373 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00012B                       3374 Ldebug_pubnames_start:
      00012B 00 02                 3375 	.dw	2
      00012D 00 00 02 96           3376 	.dw	0,(Ldebug_info_start-4)
      000131 00 00 07 06           3377 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000135 00 00 00 47           3378 	.dw	0,71
      000139 43 4C 4B 5F 44 65 49  3379 	.ascii "CLK_DeInit"
             6E 69 74
      000143 00                    3380 	.db	0
      000144 00 00 00 60           3381 	.dw	0,96
      000148 43 4C 4B 5F 46 61 73  3382 	.ascii "CLK_FastHaltWakeUpCmd"
             74 48 61 6C 74 57 61
             6B 65 55 70 43 6D 64
      00015D 00                    3383 	.db	0
      00015E 00 00 00 AD           3384 	.dw	0,173
      000162 43 4C 4B 5F 48 53 45  3385 	.ascii "CLK_HSECmd"
             43 6D 64
      00016C 00                    3386 	.db	0
      00016D 00 00 00 DE           3387 	.dw	0,222
      000171 43 4C 4B 5F 48 53 49  3388 	.ascii "CLK_HSICmd"
             43 6D 64
      00017B 00                    3389 	.db	0
      00017C 00 00 01 0F           3390 	.dw	0,271
      000180 43 4C 4B 5F 4C 53 49  3391 	.ascii "CLK_LSICmd"
             43 6D 64
      00018A 00                    3392 	.db	0
      00018B 00 00 01 40           3393 	.dw	0,320
      00018F 43 4C 4B 5F 43 43 4F  3394 	.ascii "CLK_CCOCmd"
             43 6D 64
      000199 00                    3395 	.db	0
      00019A 00 00 01 71           3396 	.dw	0,369
      00019E 43 4C 4B 5F 43 6C 6F  3397 	.ascii "CLK_ClockSwitchCmd"
             63 6B 53 77 69 74 63
             68 43 6D 64
      0001B0 00                    3398 	.db	0
      0001B1 00 00 01 AA           3399 	.dw	0,426
      0001B5 43 4C 4B 5F 53 6C 6F  3400 	.ascii "CLK_SlowActiveHaltWakeUpCmd"
             77 41 63 74 69 76 65
             48 61 6C 74 57 61 6B
             65 55 70 43 6D 64
      0001D0 00                    3401 	.db	0
      0001D1 00 00 01 EC           3402 	.dw	0,492
      0001D5 43 4C 4B 5F 50 65 72  3403 	.ascii "CLK_PeripheralClockConfig"
             69 70 68 65 72 61 6C
             43 6C 6F 63 6B 43 6F
             6E 66 69 67
      0001EE 00                    3404 	.db	0
      0001EF 00 00 02 4D           3405 	.dw	0,589
      0001F3 43 4C 4B 5F 43 6C 6F  3406 	.ascii "CLK_ClockSwitchConfig"
             63 6B 53 77 69 74 63
             68 43 6F 6E 66 69 67
      000208 00                    3407 	.db	0
      000209 00 00 03 36           3408 	.dw	0,822
      00020D 43 4C 4B 5F 48 53 49  3409 	.ascii "CLK_HSIPrescalerConfig"
             50 72 65 73 63 61 6C
             65 72 43 6F 6E 66 69
             67
      000223 00                    3410 	.db	0
      000224 00 00 03 75           3411 	.dw	0,885
      000228 43 4C 4B 5F 43 43 4F  3412 	.ascii "CLK_CCOConfig"
             43 6F 6E 66 69 67
      000235 00                    3413 	.db	0
      000236 00 00 03 A6           3414 	.dw	0,934
      00023A 43 4C 4B 5F 49 54 43  3415 	.ascii "CLK_ITConfig"
             6F 6E 66 69 67
      000246 00                    3416 	.db	0
      000247 00 00 03 F0           3417 	.dw	0,1008
      00024B 43 4C 4B 5F 53 59 53  3418 	.ascii "CLK_SYSCLKConfig"
             43 4C 4B 43 6F 6E 66
             69 67
      00025B 00                    3419 	.db	0
      00025C 00 00 04 2C           3420 	.dw	0,1068
      000260 43 4C 4B 5F 53 57 49  3421 	.ascii "CLK_SWIMConfig"
             4D 43 6F 6E 66 69 67
      00026E 00                    3422 	.db	0
      00026F 00 00 04 68           3423 	.dw	0,1128
      000273 43 4C 4B 5F 43 6C 6F  3424 	.ascii "CLK_ClockSecuritySystemEnable"
             63 6B 53 65 63 75 72
             69 74 79 53 79 73 74
             65 6D 45 6E 61 62 6C
             65
      000290 00                    3425 	.db	0
      000291 00 00 04 94           3426 	.dw	0,1172
      000295 43 4C 4B 5F 47 65 74  3427 	.ascii "CLK_GetSYSCLKSource"
             53 59 53 43 4C 4B 53
             6F 75 72 63 65
      0002A8 00                    3428 	.db	0
      0002A9 00 00 04 CB           3429 	.dw	0,1227
      0002AD 43 4C 4B 5F 47 65 74  3430 	.ascii "CLK_GetClockFreq"
             43 6C 6F 63 6B 46 72
             65 71
      0002BD 00                    3431 	.db	0
      0002BE 00 00 05 39           3432 	.dw	0,1337
      0002C2 43 4C 4B 5F 41 64 6A  3433 	.ascii "CLK_AdjustHSICalibrationValue"
             75 73 74 48 53 49 43
             61 6C 69 62 72 61 74
             69 6F 6E 56 61 6C 75
             65
      0002DF 00                    3434 	.db	0
      0002E0 00 00 05 8A           3435 	.dw	0,1418
      0002E4 43 4C 4B 5F 53 59 53  3436 	.ascii "CLK_SYSCLKEmergencyClear"
             43 4C 4B 45 6D 65 72
             67 65 6E 63 79 43 6C
             65 61 72
      0002FC 00                    3437 	.db	0
      0002FD 00 00 05 B1           3438 	.dw	0,1457
      000301 43 4C 4B 5F 47 65 74  3439 	.ascii "CLK_GetFlagStatus"
             46 6C 61 67 53 74 61
             74 75 73
      000312 00                    3440 	.db	0
      000313 00 00 06 20           3441 	.dw	0,1568
      000317 43 4C 4B 5F 47 65 74  3442 	.ascii "CLK_GetITStatus"
             49 54 53 74 61 74 75
             73
      000326 00                    3443 	.db	0
      000327 00 00 06 77           3444 	.dw	0,1655
      00032B 43 4C 4B 5F 43 6C 65  3445 	.ascii "CLK_ClearITPendingBit"
             61 72 49 54 50 65 6E
             64 69 6E 67 42 69 74
      000340 00                    3446 	.db	0
      000341 00 00 06 C3           3447 	.dw	0,1731
      000345 48 53 49 44 69 76 46  3448 	.ascii "HSIDivFactor"
             61 63 74 6F 72
      000351 00                    3449 	.db	0
      000352 00 00 06 E9           3450 	.dw	0,1769
      000356 43 4C 4B 50 72 65 73  3451 	.ascii "CLKPrescTable"
             63 54 61 62 6C 65
      000363 00                    3452 	.db	0
      000364 00 00 00 00           3453 	.dw	0,0
      000368                       3454 Ldebug_pubnames_end:
                                   3455 
                                   3456 	.area .debug_frame (NOLOAD)
      000024 00 00                 3457 	.dw	0
      000026 00 0E                 3458 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      000028                       3459 Ldebug_CIE_start:
      000028 FF FF                 3460 	.dw	0xffff
      00002A FF FF                 3461 	.dw	0xffff
      00002C 01                    3462 	.db	1
      00002D 00                    3463 	.db	0
      00002E 01                    3464 	.uleb128	1
      00002F 01                    3465 	.sleb128	1
      000030 00                    3466 	.db	0
      000031 0C                    3467 	.db	12
      000032 00                    3468 	.uleb128	0
      000033 00                    3469 	.uleb128	0
      000034 80                    3470 	.db	128
      000035 00                    3471 	.uleb128	0
      000036                       3472 Ldebug_CIE_end:
