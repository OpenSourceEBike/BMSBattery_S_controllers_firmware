                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_itc
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _ITC_GetCPUCC
                                     12 	.globl _ITC_DeInit
                                     13 	.globl _ITC_GetSoftIntStatus
                                     14 	.globl _ITC_GetSoftwarePriority
                                     15 	.globl _ITC_SetSoftwarePriority
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; absolute external ram data
                                     26 ;--------------------------------------------------------
                                     27 	.area DABS (ABS)
                                     28 ;--------------------------------------------------------
                                     29 ; global & static initialisations
                                     30 ;--------------------------------------------------------
                                     31 	.area HOME
                                     32 	.area GSINIT
                                     33 	.area GSFINAL
                                     34 	.area GSINIT
                                     35 ;--------------------------------------------------------
                                     36 ; Home
                                     37 ;--------------------------------------------------------
                                     38 	.area HOME
                                     39 	.area HOME
                                     40 ;--------------------------------------------------------
                                     41 ; code
                                     42 ;--------------------------------------------------------
                                     43 	.area CODE
                           000000    44 	Sstm8s_itc$ITC_GetCPUCC$0 ==.
                                     45 ;	StdPeriphLib/src/stm8s_itc.c: 54: uint8_t ITC_GetCPUCC(void)
                                     46 ;	-----------------------------------------
                                     47 ;	 function ITC_GetCPUCC
                                     48 ;	-----------------------------------------
      008122                         49 _ITC_GetCPUCC:
      008122 3B 01 A5         [ 1]   50 	push	_fp_+1
      008125 3B 01 A4         [ 1]   51 	push	_fp_
      008128 90 96            [ 1]   52 	ldw	y, sp
      00812A 90 CF 01 A4      [ 2]   53 	ldw	_fp_, y
                           00000C    54 	Sstm8s_itc$ITC_GetCPUCC$1 ==.
                           00000C    55 	Sstm8s_itc$ITC_GetCPUCC$2 ==.
                                     56 ;	StdPeriphLib/src/stm8s_itc.c: 63: __asm__("push cc");
      00812E 8A               [ 1]   57 	push	cc
                           00000D    58 	Sstm8s_itc$ITC_GetCPUCC$3 ==.
                                     59 ;	StdPeriphLib/src/stm8s_itc.c: 64: __asm__("pop a"); /* Ignore compiler warning, the returned value is in A register */
      00812F 84               [ 1]   60 	pop	a
                           00000E    61 	Sstm8s_itc$ITC_GetCPUCC$4 ==.
                                     62 ;	StdPeriphLib/src/stm8s_itc.c: 69: }
                           00000E    63 	Sstm8s_itc$ITC_GetCPUCC$5 ==.
                           00000E    64 	XG$ITC_GetCPUCC$0$0 ==.
      008130 32 01 A4         [ 1]   65 	pop	_fp_
      008133 32 01 A5         [ 1]   66 	pop	_fp_+1
      008136 81               [ 4]   67 	ret
                           000015    68 	Sstm8s_itc$ITC_GetCPUCC$6 ==.
                           000015    69 	Sstm8s_itc$ITC_DeInit$7 ==.
                                     70 ;	StdPeriphLib/src/stm8s_itc.c: 90: void ITC_DeInit(void)
                                     71 ;	-----------------------------------------
                                     72 ;	 function ITC_DeInit
                                     73 ;	-----------------------------------------
      008137                         74 _ITC_DeInit:
      008137 3B 01 A5         [ 1]   75 	push	_fp_+1
      00813A 3B 01 A4         [ 1]   76 	push	_fp_
      00813D 90 96            [ 1]   77 	ldw	y, sp
      00813F 90 CF 01 A4      [ 2]   78 	ldw	_fp_, y
                           000021    79 	Sstm8s_itc$ITC_DeInit$8 ==.
                           000021    80 	Sstm8s_itc$ITC_DeInit$9 ==.
                                     81 ;	StdPeriphLib/src/stm8s_itc.c: 92: ITC->ISPR1 = ITC_SPRX_RESET_VALUE;
      008143 35 FF 7F 70      [ 1]   82 	mov	0x7f70+0, #0xff
                           000025    83 	Sstm8s_itc$ITC_DeInit$10 ==.
                                     84 ;	StdPeriphLib/src/stm8s_itc.c: 93: ITC->ISPR2 = ITC_SPRX_RESET_VALUE;
      008147 35 FF 7F 71      [ 1]   85 	mov	0x7f71+0, #0xff
                           000029    86 	Sstm8s_itc$ITC_DeInit$11 ==.
                                     87 ;	StdPeriphLib/src/stm8s_itc.c: 94: ITC->ISPR3 = ITC_SPRX_RESET_VALUE;
      00814B 35 FF 7F 72      [ 1]   88 	mov	0x7f72+0, #0xff
                           00002D    89 	Sstm8s_itc$ITC_DeInit$12 ==.
                                     90 ;	StdPeriphLib/src/stm8s_itc.c: 95: ITC->ISPR4 = ITC_SPRX_RESET_VALUE;
      00814F 35 FF 7F 73      [ 1]   91 	mov	0x7f73+0, #0xff
                           000031    92 	Sstm8s_itc$ITC_DeInit$13 ==.
                                     93 ;	StdPeriphLib/src/stm8s_itc.c: 96: ITC->ISPR5 = ITC_SPRX_RESET_VALUE;
      008153 35 FF 7F 74      [ 1]   94 	mov	0x7f74+0, #0xff
                           000035    95 	Sstm8s_itc$ITC_DeInit$14 ==.
                                     96 ;	StdPeriphLib/src/stm8s_itc.c: 97: ITC->ISPR6 = ITC_SPRX_RESET_VALUE;
      008157 35 FF 7F 75      [ 1]   97 	mov	0x7f75+0, #0xff
                           000039    98 	Sstm8s_itc$ITC_DeInit$15 ==.
                                     99 ;	StdPeriphLib/src/stm8s_itc.c: 98: ITC->ISPR7 = ITC_SPRX_RESET_VALUE;
      00815B 35 FF 7F 76      [ 1]  100 	mov	0x7f76+0, #0xff
                           00003D   101 	Sstm8s_itc$ITC_DeInit$16 ==.
                                    102 ;	StdPeriphLib/src/stm8s_itc.c: 99: ITC->ISPR8 = ITC_SPRX_RESET_VALUE;
      00815F 35 FF 7F 77      [ 1]  103 	mov	0x7f77+0, #0xff
                           000041   104 	Sstm8s_itc$ITC_DeInit$17 ==.
                                    105 ;	StdPeriphLib/src/stm8s_itc.c: 100: }
                           000041   106 	Sstm8s_itc$ITC_DeInit$18 ==.
                           000041   107 	XG$ITC_DeInit$0$0 ==.
      008163 32 01 A4         [ 1]  108 	pop	_fp_
      008166 32 01 A5         [ 1]  109 	pop	_fp_+1
      008169 81               [ 4]  110 	ret
                           000048   111 	Sstm8s_itc$ITC_DeInit$19 ==.
                           000048   112 	Sstm8s_itc$ITC_GetSoftIntStatus$20 ==.
                                    113 ;	StdPeriphLib/src/stm8s_itc.c: 107: uint8_t ITC_GetSoftIntStatus(void)
                                    114 ;	-----------------------------------------
                                    115 ;	 function ITC_GetSoftIntStatus
                                    116 ;	-----------------------------------------
      00816A                        117 _ITC_GetSoftIntStatus:
      00816A 3B 01 A5         [ 1]  118 	push	_fp_+1
      00816D 3B 01 A4         [ 1]  119 	push	_fp_
      008170 90 96            [ 1]  120 	ldw	y, sp
      008172 90 CF 01 A4      [ 2]  121 	ldw	_fp_, y
                           000054   122 	Sstm8s_itc$ITC_GetSoftIntStatus$21 ==.
                           000054   123 	Sstm8s_itc$ITC_GetSoftIntStatus$22 ==.
                                    124 ;	StdPeriphLib/src/stm8s_itc.c: 109: return (uint8_t)(ITC_GetCPUCC() & CPU_CC_I1I0);
      008176 CD 81 22         [ 4]  125 	call	_ITC_GetCPUCC
      008179 A4 28            [ 1]  126 	and	a, #0x28
                           000059   127 	Sstm8s_itc$ITC_GetSoftIntStatus$23 ==.
                                    128 ;	StdPeriphLib/src/stm8s_itc.c: 110: }
                           000059   129 	Sstm8s_itc$ITC_GetSoftIntStatus$24 ==.
                           000059   130 	XG$ITC_GetSoftIntStatus$0$0 ==.
      00817B 32 01 A4         [ 1]  131 	pop	_fp_
      00817E 32 01 A5         [ 1]  132 	pop	_fp_+1
      008181 81               [ 4]  133 	ret
                           000060   134 	Sstm8s_itc$ITC_GetSoftIntStatus$25 ==.
                           000060   135 	Sstm8s_itc$ITC_GetSoftwarePriority$26 ==.
                                    136 ;	StdPeriphLib/src/stm8s_itc.c: 117: ITC_PriorityLevel_TypeDef ITC_GetSoftwarePriority(ITC_Irq_TypeDef IrqNum)
                                    137 ;	-----------------------------------------
                                    138 ;	 function ITC_GetSoftwarePriority
                                    139 ;	-----------------------------------------
      008182                        140 _ITC_GetSoftwarePriority:
      008182 3B 01 A5         [ 1]  141 	push	_fp_+1
      008185 3B 01 A4         [ 1]  142 	push	_fp_
      008188 90 96            [ 1]  143 	ldw	y, sp
      00818A 90 CF 01 A4      [ 2]  144 	ldw	_fp_, y
                           00006C   145 	Sstm8s_itc$ITC_GetSoftwarePriority$27 ==.
      00818E 52 02            [ 2]  146 	sub	sp, #2
                           00006E   147 	Sstm8s_itc$ITC_GetSoftwarePriority$28 ==.
                                    148 ;	StdPeriphLib/src/stm8s_itc.c: 119: uint8_t Value = 0;
      008190 4F               [ 1]  149 	clr	a
                           00006F   150 	Sstm8s_itc$ITC_GetSoftwarePriority$29 ==.
                                    151 ;	StdPeriphLib/src/stm8s_itc.c: 126: Mask = (uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U));
      008191 5F               [ 1]  152 	clrw	x
      008192 41               [ 1]  153 	exg	a, xl
      008193 7B 07            [ 1]  154 	ld	a, (0x07, sp)
      008195 41               [ 1]  155 	exg	a, xl
      008196 88               [ 1]  156 	push	a
      008197 9F               [ 1]  157 	ld	a, xl
      008198 A4 03            [ 1]  158 	and	a, #0x03
      00819A 97               [ 1]  159 	ld	xl, a
      00819B 4F               [ 1]  160 	clr	a
      00819C 95               [ 1]  161 	ld	xh, a
      00819D 84               [ 1]  162 	pop	a
      00819E 41               [ 1]  163 	exg	a, xl
      00819F 6B 02            [ 1]  164 	ld	(0x02, sp), a
      0081A1 41               [ 1]  165 	exg	a, xl
      0081A2 08 02            [ 1]  166 	sll	(0x02, sp)
      0081A4 88               [ 1]  167 	push	a
      0081A5 A6 03            [ 1]  168 	ld	a, #0x03
      0081A7 97               [ 1]  169 	ld	xl, a
      0081A8 7B 03            [ 1]  170 	ld	a, (0x03, sp)
      0081AA 27 06            [ 1]  171 	jreq	00130$
      0081AC                        172 00129$:
      0081AC 41               [ 1]  173 	exg	a, xl
      0081AD 48               [ 1]  174 	sll	a
      0081AE 41               [ 1]  175 	exg	a, xl
      0081AF 4A               [ 1]  176 	dec	a
      0081B0 26 FA            [ 1]  177 	jrne	00129$
      0081B2                        178 00130$:
      0081B2 84               [ 1]  179 	pop	a
      0081B3 41               [ 1]  180 	exg	a, xl
      0081B4 6B 01            [ 1]  181 	ld	(0x01, sp), a
      0081B6 41               [ 1]  182 	exg	a, xl
                           000095   183 	Sstm8s_itc$ITC_GetSoftwarePriority$30 ==.
                                    184 ;	StdPeriphLib/src/stm8s_itc.c: 128: switch (IrqNum)
      0081B7 88               [ 1]  185 	push	a
      0081B8 7B 08            [ 1]  186 	ld	a, (0x08, sp)
      0081BA A1 18            [ 1]  187 	cp	a, #0x18
      0081BC 84               [ 1]  188 	pop	a
      0081BD 23 03            [ 2]  189 	jrule	00131$
      0081BF CC 82 39         [ 2]  190 	jp	00123$
      0081C2                        191 00131$:
      0081C2 5F               [ 1]  192 	clrw	x
      0081C3 41               [ 1]  193 	exg	a, xl
      0081C4 7B 07            [ 1]  194 	ld	a, (0x07, sp)
      0081C6 41               [ 1]  195 	exg	a, xl
      0081C7 58               [ 2]  196 	sllw	x
      0081C8 DE 81 CC         [ 2]  197 	ldw	x, (#00132$, x)
      0081CB FC               [ 2]  198 	jp	(x)
      0081CC                        199 00132$:
      0081CC 81 FE                  200 	.dw	#00101$
      0081CE 81 FE                  201 	.dw	#00102$
      0081D0 81 FE                  202 	.dw	#00103$
      0081D2 81 FE                  203 	.dw	#00104$
      0081D4 82 07                  204 	.dw	#00105$
      0081D6 82 07                  205 	.dw	#00106$
      0081D8 82 07                  206 	.dw	#00107$
      0081DA 82 07                  207 	.dw	#00108$
      0081DC 82 39                  208 	.dw	#00122$
      0081DE 82 39                  209 	.dw	#00122$
      0081E0 82 10                  210 	.dw	#00109$
      0081E2 82 10                  211 	.dw	#00110$
      0081E4 82 19                  212 	.dw	#00111$
      0081E6 82 19                  213 	.dw	#00112$
      0081E8 82 19                  214 	.dw	#00113$
      0081EA 82 19                  215 	.dw	#00114$
      0081EC 82 21                  216 	.dw	#00115$
      0081EE 82 39                  217 	.dw	#00122$
      0081F0 82 39                  218 	.dw	#00122$
      0081F2 82 21                  219 	.dw	#00116$
      0081F4 82 29                  220 	.dw	#00117$
      0081F6 82 29                  221 	.dw	#00118$
      0081F8 82 29                  222 	.dw	#00119$
      0081FA 82 29                  223 	.dw	#00120$
      0081FC 82 31                  224 	.dw	#00121$
                           0000DC   225 	Sstm8s_itc$ITC_GetSoftwarePriority$31 ==.
                                    226 ;	StdPeriphLib/src/stm8s_itc.c: 130: case ITC_IRQ_TLI: /* TLI software priority can be read but has no meaning */
      0081FE                        227 00101$:
                           0000DC   228 	Sstm8s_itc$ITC_GetSoftwarePriority$32 ==.
                                    229 ;	StdPeriphLib/src/stm8s_itc.c: 131: case ITC_IRQ_AWU:
      0081FE                        230 00102$:
                           0000DC   231 	Sstm8s_itc$ITC_GetSoftwarePriority$33 ==.
                                    232 ;	StdPeriphLib/src/stm8s_itc.c: 132: case ITC_IRQ_CLK:
      0081FE                        233 00103$:
                           0000DC   234 	Sstm8s_itc$ITC_GetSoftwarePriority$34 ==.
                                    235 ;	StdPeriphLib/src/stm8s_itc.c: 133: case ITC_IRQ_PORTA:
      0081FE                        236 00104$:
                           0000DC   237 	Sstm8s_itc$ITC_GetSoftwarePriority$35 ==.
                                    238 ;	StdPeriphLib/src/stm8s_itc.c: 134: Value = (uint8_t)(ITC->ISPR1 & Mask); /* Read software priority */
      0081FE AE 7F 70         [ 2]  239 	ldw	x, #0x7f70
      008201 F6               [ 1]  240 	ld	a, (x)
      008202 14 01            [ 1]  241 	and	a, (0x01, sp)
                           0000E2   242 	Sstm8s_itc$ITC_GetSoftwarePriority$36 ==.
                                    243 ;	StdPeriphLib/src/stm8s_itc.c: 135: break;
      008204 CC 82 39         [ 2]  244 	jp	00123$
                           0000E5   245 	Sstm8s_itc$ITC_GetSoftwarePriority$37 ==.
                                    246 ;	StdPeriphLib/src/stm8s_itc.c: 137: case ITC_IRQ_PORTB:
      008207                        247 00105$:
                           0000E5   248 	Sstm8s_itc$ITC_GetSoftwarePriority$38 ==.
                                    249 ;	StdPeriphLib/src/stm8s_itc.c: 138: case ITC_IRQ_PORTC:
      008207                        250 00106$:
                           0000E5   251 	Sstm8s_itc$ITC_GetSoftwarePriority$39 ==.
                                    252 ;	StdPeriphLib/src/stm8s_itc.c: 139: case ITC_IRQ_PORTD:
      008207                        253 00107$:
                           0000E5   254 	Sstm8s_itc$ITC_GetSoftwarePriority$40 ==.
                                    255 ;	StdPeriphLib/src/stm8s_itc.c: 140: case ITC_IRQ_PORTE:
      008207                        256 00108$:
                           0000E5   257 	Sstm8s_itc$ITC_GetSoftwarePriority$41 ==.
                                    258 ;	StdPeriphLib/src/stm8s_itc.c: 141: Value = (uint8_t)(ITC->ISPR2 & Mask); /* Read software priority */
      008207 AE 7F 71         [ 2]  259 	ldw	x, #0x7f71
      00820A F6               [ 1]  260 	ld	a, (x)
      00820B 14 01            [ 1]  261 	and	a, (0x01, sp)
                           0000EB   262 	Sstm8s_itc$ITC_GetSoftwarePriority$42 ==.
                                    263 ;	StdPeriphLib/src/stm8s_itc.c: 142: break;
      00820D CC 82 39         [ 2]  264 	jp	00123$
                           0000EE   265 	Sstm8s_itc$ITC_GetSoftwarePriority$43 ==.
                                    266 ;	StdPeriphLib/src/stm8s_itc.c: 151: case ITC_IRQ_SPI:
      008210                        267 00109$:
                           0000EE   268 	Sstm8s_itc$ITC_GetSoftwarePriority$44 ==.
                                    269 ;	StdPeriphLib/src/stm8s_itc.c: 152: case ITC_IRQ_TIM1_OVF:
      008210                        270 00110$:
                           0000EE   271 	Sstm8s_itc$ITC_GetSoftwarePriority$45 ==.
                                    272 ;	StdPeriphLib/src/stm8s_itc.c: 153: Value = (uint8_t)(ITC->ISPR3 & Mask); /* Read software priority */
      008210 AE 7F 72         [ 2]  273 	ldw	x, #0x7f72
      008213 F6               [ 1]  274 	ld	a, (x)
      008214 14 01            [ 1]  275 	and	a, (0x01, sp)
                           0000F4   276 	Sstm8s_itc$ITC_GetSoftwarePriority$46 ==.
                                    277 ;	StdPeriphLib/src/stm8s_itc.c: 154: break;
      008216 CC 82 39         [ 2]  278 	jp	00123$
                           0000F7   279 	Sstm8s_itc$ITC_GetSoftwarePriority$47 ==.
                                    280 ;	StdPeriphLib/src/stm8s_itc.c: 156: case ITC_IRQ_TIM1_CAPCOM:
      008219                        281 00111$:
                           0000F7   282 	Sstm8s_itc$ITC_GetSoftwarePriority$48 ==.
                                    283 ;	StdPeriphLib/src/stm8s_itc.c: 161: case ITC_IRQ_TIM2_OVF:
      008219                        284 00112$:
                           0000F7   285 	Sstm8s_itc$ITC_GetSoftwarePriority$49 ==.
                                    286 ;	StdPeriphLib/src/stm8s_itc.c: 162: case ITC_IRQ_TIM2_CAPCOM:
      008219                        287 00113$:
                           0000F7   288 	Sstm8s_itc$ITC_GetSoftwarePriority$50 ==.
                                    289 ;	StdPeriphLib/src/stm8s_itc.c: 164: case ITC_IRQ_TIM3_OVF:
      008219                        290 00114$:
                           0000F7   291 	Sstm8s_itc$ITC_GetSoftwarePriority$51 ==.
                                    292 ;	StdPeriphLib/src/stm8s_itc.c: 165: Value = (uint8_t)(ITC->ISPR4 & Mask); /* Read software priority */
      008219 AE 7F 73         [ 2]  293 	ldw	x, #0x7f73
      00821C F6               [ 1]  294 	ld	a, (x)
      00821D 14 01            [ 1]  295 	and	a, (0x01, sp)
                           0000FD   296 	Sstm8s_itc$ITC_GetSoftwarePriority$52 ==.
                                    297 ;	StdPeriphLib/src/stm8s_itc.c: 166: break;
      00821F 20 18            [ 2]  298 	jra	00123$
                           0000FF   299 	Sstm8s_itc$ITC_GetSoftwarePriority$53 ==.
                                    300 ;	StdPeriphLib/src/stm8s_itc.c: 168: case ITC_IRQ_TIM3_CAPCOM:
      008221                        301 00115$:
                           0000FF   302 	Sstm8s_itc$ITC_GetSoftwarePriority$54 ==.
                                    303 ;	StdPeriphLib/src/stm8s_itc.c: 178: case ITC_IRQ_I2C:
      008221                        304 00116$:
                           0000FF   305 	Sstm8s_itc$ITC_GetSoftwarePriority$55 ==.
                                    306 ;	StdPeriphLib/src/stm8s_itc.c: 179: Value = (uint8_t)(ITC->ISPR5 & Mask); /* Read software priority */
      008221 AE 7F 74         [ 2]  307 	ldw	x, #0x7f74
      008224 F6               [ 1]  308 	ld	a, (x)
      008225 14 01            [ 1]  309 	and	a, (0x01, sp)
                           000105   310 	Sstm8s_itc$ITC_GetSoftwarePriority$56 ==.
                                    311 ;	StdPeriphLib/src/stm8s_itc.c: 180: break;
      008227 20 10            [ 2]  312 	jra	00123$
                           000107   313 	Sstm8s_itc$ITC_GetSoftwarePriority$57 ==.
                                    314 ;	StdPeriphLib/src/stm8s_itc.c: 183: case ITC_IRQ_UART2_TX:
      008229                        315 00117$:
                           000107   316 	Sstm8s_itc$ITC_GetSoftwarePriority$58 ==.
                                    317 ;	StdPeriphLib/src/stm8s_itc.c: 184: case ITC_IRQ_UART2_RX:
      008229                        318 00118$:
                           000107   319 	Sstm8s_itc$ITC_GetSoftwarePriority$59 ==.
                                    320 ;	StdPeriphLib/src/stm8s_itc.c: 194: case ITC_IRQ_ADC1:
      008229                        321 00119$:
                           000107   322 	Sstm8s_itc$ITC_GetSoftwarePriority$60 ==.
                                    323 ;	StdPeriphLib/src/stm8s_itc.c: 199: case ITC_IRQ_TIM4_OVF:
      008229                        324 00120$:
                           000107   325 	Sstm8s_itc$ITC_GetSoftwarePriority$61 ==.
                                    326 ;	StdPeriphLib/src/stm8s_itc.c: 201: Value = (uint8_t)(ITC->ISPR6 & Mask); /* Read software priority */
      008229 AE 7F 75         [ 2]  327 	ldw	x, #0x7f75
      00822C F6               [ 1]  328 	ld	a, (x)
      00822D 14 01            [ 1]  329 	and	a, (0x01, sp)
                           00010D   330 	Sstm8s_itc$ITC_GetSoftwarePriority$62 ==.
                                    331 ;	StdPeriphLib/src/stm8s_itc.c: 202: break;
      00822F 20 08            [ 2]  332 	jra	00123$
                           00010F   333 	Sstm8s_itc$ITC_GetSoftwarePriority$63 ==.
                                    334 ;	StdPeriphLib/src/stm8s_itc.c: 204: case ITC_IRQ_EEPROM_EEC:
      008231                        335 00121$:
                           00010F   336 	Sstm8s_itc$ITC_GetSoftwarePriority$64 ==.
                                    337 ;	StdPeriphLib/src/stm8s_itc.c: 205: Value = (uint8_t)(ITC->ISPR7 & Mask); /* Read software priority */
      008231 AE 7F 76         [ 2]  338 	ldw	x, #0x7f76
      008234 F6               [ 1]  339 	ld	a, (x)
      008235 14 01            [ 1]  340 	and	a, (0x01, sp)
                           000115   341 	Sstm8s_itc$ITC_GetSoftwarePriority$65 ==.
                                    342 ;	StdPeriphLib/src/stm8s_itc.c: 206: break;
      008237 20 00            [ 2]  343 	jra	00123$
                           000117   344 	Sstm8s_itc$ITC_GetSoftwarePriority$66 ==.
                                    345 ;	StdPeriphLib/src/stm8s_itc.c: 208: default:
      008239                        346 00122$:
                           000117   347 	Sstm8s_itc$ITC_GetSoftwarePriority$67 ==.
                                    348 ;	StdPeriphLib/src/stm8s_itc.c: 210: }
      008239                        349 00123$:
                           000117   350 	Sstm8s_itc$ITC_GetSoftwarePriority$68 ==.
                                    351 ;	StdPeriphLib/src/stm8s_itc.c: 212: Value >>= (uint8_t)(((uint8_t)IrqNum % 4u) * 2u);
      008239 88               [ 1]  352 	push	a
      00823A 7B 03            [ 1]  353 	ld	a, (0x03, sp)
      00823C 27 05            [ 1]  354 	jreq	00134$
      00823E                        355 00133$:
      00823E 04 01            [ 1]  356 	srl	(1, sp)
      008240 4A               [ 1]  357 	dec	a
      008241 26 FB            [ 1]  358 	jrne	00133$
      008243                        359 00134$:
      008243 84               [ 1]  360 	pop	a
                           000122   361 	Sstm8s_itc$ITC_GetSoftwarePriority$69 ==.
                                    362 ;	StdPeriphLib/src/stm8s_itc.c: 214: return((ITC_PriorityLevel_TypeDef)Value);
                           000122   363 	Sstm8s_itc$ITC_GetSoftwarePriority$70 ==.
                                    364 ;	StdPeriphLib/src/stm8s_itc.c: 215: }
      008244 5B 02            [ 2]  365 	addw	sp, #2
                           000124   366 	Sstm8s_itc$ITC_GetSoftwarePriority$71 ==.
                           000124   367 	XG$ITC_GetSoftwarePriority$0$0 ==.
      008246 32 01 A4         [ 1]  368 	pop	_fp_
      008249 32 01 A5         [ 1]  369 	pop	_fp_+1
      00824C 81               [ 4]  370 	ret
                           00012B   371 	Sstm8s_itc$ITC_GetSoftwarePriority$72 ==.
                           00012B   372 	Sstm8s_itc$ITC_SetSoftwarePriority$73 ==.
                                    373 ;	StdPeriphLib/src/stm8s_itc.c: 230: void ITC_SetSoftwarePriority(ITC_Irq_TypeDef IrqNum, ITC_PriorityLevel_TypeDef PriorityValue)
                                    374 ;	-----------------------------------------
                                    375 ;	 function ITC_SetSoftwarePriority
                                    376 ;	-----------------------------------------
      00824D                        377 _ITC_SetSoftwarePriority:
      00824D 3B 01 A5         [ 1]  378 	push	_fp_+1
      008250 3B 01 A4         [ 1]  379 	push	_fp_
      008253 90 96            [ 1]  380 	ldw	y, sp
      008255 90 CF 01 A4      [ 2]  381 	ldw	_fp_, y
                           000137   382 	Sstm8s_itc$ITC_SetSoftwarePriority$74 ==.
      008259 52 04            [ 2]  383 	sub	sp, #4
                           000139   384 	Sstm8s_itc$ITC_SetSoftwarePriority$75 ==.
                                    385 ;	StdPeriphLib/src/stm8s_itc.c: 244: Mask = (uint8_t)(~(uint8_t)(0x03U << (((uint8_t)IrqNum % 4U) * 2U)));
      00825B 7B 09            [ 1]  386 	ld	a, (0x09, sp)
      00825D 0F 03            [ 1]  387 	clr	(0x03, sp)
      00825F A4 03            [ 1]  388 	and	a, #0x03
      008261 97               [ 1]  389 	ld	xl, a
      008262 4F               [ 1]  390 	clr	a
      008263 58               [ 2]  391 	sllw	x
      008264 A6 03            [ 1]  392 	ld	a, #0x03
      008266 88               [ 1]  393 	push	a
      008267 9F               [ 1]  394 	ld	a, xl
      008268 4D               [ 1]  395 	tnz	a
      008269 27 05            [ 1]  396 	jreq	00130$
      00826B                        397 00129$:
      00826B 08 01            [ 1]  398 	sll	(1, sp)
      00826D 4A               [ 1]  399 	dec	a
      00826E 26 FB            [ 1]  400 	jrne	00129$
      008270                        401 00130$:
      008270 84               [ 1]  402 	pop	a
      008271 43               [ 1]  403 	cpl	a
      008272 6B 02            [ 1]  404 	ld	(0x02, sp), a
                           000152   405 	Sstm8s_itc$ITC_SetSoftwarePriority$76 ==.
                                    406 ;	StdPeriphLib/src/stm8s_itc.c: 247: NewPriority = (uint8_t)((uint8_t)(PriorityValue) << (((uint8_t)IrqNum % 4U) * 2U));
      008274 7B 0A            [ 1]  407 	ld	a, (0x0a, sp)
      008276 88               [ 1]  408 	push	a
      008277 9F               [ 1]  409 	ld	a, xl
      008278 4D               [ 1]  410 	tnz	a
      008279 27 05            [ 1]  411 	jreq	00132$
      00827B                        412 00131$:
      00827B 08 01            [ 1]  413 	sll	(1, sp)
      00827D 4A               [ 1]  414 	dec	a
      00827E 26 FB            [ 1]  415 	jrne	00131$
      008280                        416 00132$:
      008280 84               [ 1]  417 	pop	a
      008281 6B 01            [ 1]  418 	ld	(0x01, sp), a
                           000161   419 	Sstm8s_itc$ITC_SetSoftwarePriority$77 ==.
                                    420 ;	StdPeriphLib/src/stm8s_itc.c: 249: switch (IrqNum)
      008283 7B 09            [ 1]  421 	ld	a, (0x09, sp)
      008285 A1 18            [ 1]  422 	cp	a, #0x18
      008287 23 03            [ 2]  423 	jrule	00133$
      008289 CC 83 65         [ 2]  424 	jp	00124$
      00828C                        425 00133$:
      00828C 5F               [ 1]  426 	clrw	x
      00828D 7B 09            [ 1]  427 	ld	a, (0x09, sp)
      00828F 97               [ 1]  428 	ld	xl, a
      008290 58               [ 2]  429 	sllw	x
      008291 DE 82 95         [ 2]  430 	ldw	x, (#00134$, x)
      008294 FC               [ 2]  431 	jp	(x)
      008295                        432 00134$:
      008295 82 C7                  433 	.dw	#00101$
      008297 82 C7                  434 	.dw	#00102$
      008299 82 C7                  435 	.dw	#00103$
      00829B 82 C7                  436 	.dw	#00104$
      00829D 82 DE                  437 	.dw	#00105$
      00829F 82 DE                  438 	.dw	#00106$
      0082A1 82 DE                  439 	.dw	#00107$
      0082A3 82 DE                  440 	.dw	#00108$
      0082A5 83 65                  441 	.dw	#00122$
      0082A7 83 65                  442 	.dw	#00122$
      0082A9 82 F5                  443 	.dw	#00109$
      0082AB 82 F5                  444 	.dw	#00110$
      0082AD 83 0C                  445 	.dw	#00111$
      0082AF 83 0C                  446 	.dw	#00112$
      0082B1 83 0C                  447 	.dw	#00113$
      0082B3 83 0C                  448 	.dw	#00114$
      0082B5 83 23                  449 	.dw	#00115$
      0082B7 83 65                  450 	.dw	#00122$
      0082B9 83 65                  451 	.dw	#00122$
      0082BB 83 23                  452 	.dw	#00116$
      0082BD 83 39                  453 	.dw	#00117$
      0082BF 83 39                  454 	.dw	#00118$
      0082C1 83 39                  455 	.dw	#00119$
      0082C3 83 39                  456 	.dw	#00120$
      0082C5 83 4F                  457 	.dw	#00121$
                           0001A5   458 	Sstm8s_itc$ITC_SetSoftwarePriority$78 ==.
                                    459 ;	StdPeriphLib/src/stm8s_itc.c: 251: case ITC_IRQ_TLI: /* TLI software priority can be written but has no meaning */
      0082C7                        460 00101$:
                           0001A5   461 	Sstm8s_itc$ITC_SetSoftwarePriority$79 ==.
                                    462 ;	StdPeriphLib/src/stm8s_itc.c: 252: case ITC_IRQ_AWU:
      0082C7                        463 00102$:
                           0001A5   464 	Sstm8s_itc$ITC_SetSoftwarePriority$80 ==.
                                    465 ;	StdPeriphLib/src/stm8s_itc.c: 253: case ITC_IRQ_CLK:
      0082C7                        466 00103$:
                           0001A5   467 	Sstm8s_itc$ITC_SetSoftwarePriority$81 ==.
                                    468 ;	StdPeriphLib/src/stm8s_itc.c: 254: case ITC_IRQ_PORTA:
      0082C7                        469 00104$:
                           0001A5   470 	Sstm8s_itc$ITC_SetSoftwarePriority$82 ==.
                                    471 ;	StdPeriphLib/src/stm8s_itc.c: 255: ITC->ISPR1 &= Mask;
      0082C7 AE 7F 70         [ 2]  472 	ldw	x, #0x7f70
      0082CA F6               [ 1]  473 	ld	a, (x)
      0082CB 14 02            [ 1]  474 	and	a, (0x02, sp)
      0082CD AE 7F 70         [ 2]  475 	ldw	x, #0x7f70
      0082D0 F7               [ 1]  476 	ld	(x), a
                           0001AF   477 	Sstm8s_itc$ITC_SetSoftwarePriority$83 ==.
                                    478 ;	StdPeriphLib/src/stm8s_itc.c: 256: ITC->ISPR1 |= NewPriority;
      0082D1 AE 7F 70         [ 2]  479 	ldw	x, #0x7f70
      0082D4 F6               [ 1]  480 	ld	a, (x)
      0082D5 1A 01            [ 1]  481 	or	a, (0x01, sp)
      0082D7 AE 7F 70         [ 2]  482 	ldw	x, #0x7f70
      0082DA F7               [ 1]  483 	ld	(x), a
                           0001B9   484 	Sstm8s_itc$ITC_SetSoftwarePriority$84 ==.
                                    485 ;	StdPeriphLib/src/stm8s_itc.c: 257: break;
      0082DB CC 83 65         [ 2]  486 	jp	00124$
                           0001BC   487 	Sstm8s_itc$ITC_SetSoftwarePriority$85 ==.
                                    488 ;	StdPeriphLib/src/stm8s_itc.c: 259: case ITC_IRQ_PORTB:
      0082DE                        489 00105$:
                           0001BC   490 	Sstm8s_itc$ITC_SetSoftwarePriority$86 ==.
                                    491 ;	StdPeriphLib/src/stm8s_itc.c: 260: case ITC_IRQ_PORTC:
      0082DE                        492 00106$:
                           0001BC   493 	Sstm8s_itc$ITC_SetSoftwarePriority$87 ==.
                                    494 ;	StdPeriphLib/src/stm8s_itc.c: 261: case ITC_IRQ_PORTD:
      0082DE                        495 00107$:
                           0001BC   496 	Sstm8s_itc$ITC_SetSoftwarePriority$88 ==.
                                    497 ;	StdPeriphLib/src/stm8s_itc.c: 262: case ITC_IRQ_PORTE:
      0082DE                        498 00108$:
                           0001BC   499 	Sstm8s_itc$ITC_SetSoftwarePriority$89 ==.
                                    500 ;	StdPeriphLib/src/stm8s_itc.c: 263: ITC->ISPR2 &= Mask;
      0082DE AE 7F 71         [ 2]  501 	ldw	x, #0x7f71
      0082E1 F6               [ 1]  502 	ld	a, (x)
      0082E2 14 02            [ 1]  503 	and	a, (0x02, sp)
      0082E4 AE 7F 71         [ 2]  504 	ldw	x, #0x7f71
      0082E7 F7               [ 1]  505 	ld	(x), a
                           0001C6   506 	Sstm8s_itc$ITC_SetSoftwarePriority$90 ==.
                                    507 ;	StdPeriphLib/src/stm8s_itc.c: 264: ITC->ISPR2 |= NewPriority;
      0082E8 AE 7F 71         [ 2]  508 	ldw	x, #0x7f71
      0082EB F6               [ 1]  509 	ld	a, (x)
      0082EC 1A 01            [ 1]  510 	or	a, (0x01, sp)
      0082EE AE 7F 71         [ 2]  511 	ldw	x, #0x7f71
      0082F1 F7               [ 1]  512 	ld	(x), a
                           0001D0   513 	Sstm8s_itc$ITC_SetSoftwarePriority$91 ==.
                                    514 ;	StdPeriphLib/src/stm8s_itc.c: 265: break;
      0082F2 CC 83 65         [ 2]  515 	jp	00124$
                           0001D3   516 	Sstm8s_itc$ITC_SetSoftwarePriority$92 ==.
                                    517 ;	StdPeriphLib/src/stm8s_itc.c: 274: case ITC_IRQ_SPI:
      0082F5                        518 00109$:
                           0001D3   519 	Sstm8s_itc$ITC_SetSoftwarePriority$93 ==.
                                    520 ;	StdPeriphLib/src/stm8s_itc.c: 275: case ITC_IRQ_TIM1_OVF:
      0082F5                        521 00110$:
                           0001D3   522 	Sstm8s_itc$ITC_SetSoftwarePriority$94 ==.
                                    523 ;	StdPeriphLib/src/stm8s_itc.c: 276: ITC->ISPR3 &= Mask;
      0082F5 AE 7F 72         [ 2]  524 	ldw	x, #0x7f72
      0082F8 F6               [ 1]  525 	ld	a, (x)
      0082F9 14 02            [ 1]  526 	and	a, (0x02, sp)
      0082FB AE 7F 72         [ 2]  527 	ldw	x, #0x7f72
      0082FE F7               [ 1]  528 	ld	(x), a
                           0001DD   529 	Sstm8s_itc$ITC_SetSoftwarePriority$95 ==.
                                    530 ;	StdPeriphLib/src/stm8s_itc.c: 277: ITC->ISPR3 |= NewPriority;
      0082FF AE 7F 72         [ 2]  531 	ldw	x, #0x7f72
      008302 F6               [ 1]  532 	ld	a, (x)
      008303 1A 01            [ 1]  533 	or	a, (0x01, sp)
      008305 AE 7F 72         [ 2]  534 	ldw	x, #0x7f72
      008308 F7               [ 1]  535 	ld	(x), a
                           0001E7   536 	Sstm8s_itc$ITC_SetSoftwarePriority$96 ==.
                                    537 ;	StdPeriphLib/src/stm8s_itc.c: 278: break;
      008309 CC 83 65         [ 2]  538 	jp	00124$
                           0001EA   539 	Sstm8s_itc$ITC_SetSoftwarePriority$97 ==.
                                    540 ;	StdPeriphLib/src/stm8s_itc.c: 280: case ITC_IRQ_TIM1_CAPCOM:
      00830C                        541 00111$:
                           0001EA   542 	Sstm8s_itc$ITC_SetSoftwarePriority$98 ==.
                                    543 ;	StdPeriphLib/src/stm8s_itc.c: 285: case ITC_IRQ_TIM2_OVF:
      00830C                        544 00112$:
                           0001EA   545 	Sstm8s_itc$ITC_SetSoftwarePriority$99 ==.
                                    546 ;	StdPeriphLib/src/stm8s_itc.c: 286: case ITC_IRQ_TIM2_CAPCOM:
      00830C                        547 00113$:
                           0001EA   548 	Sstm8s_itc$ITC_SetSoftwarePriority$100 ==.
                                    549 ;	StdPeriphLib/src/stm8s_itc.c: 288: case ITC_IRQ_TIM3_OVF:
      00830C                        550 00114$:
                           0001EA   551 	Sstm8s_itc$ITC_SetSoftwarePriority$101 ==.
                                    552 ;	StdPeriphLib/src/stm8s_itc.c: 289: ITC->ISPR4 &= Mask;
      00830C AE 7F 73         [ 2]  553 	ldw	x, #0x7f73
      00830F F6               [ 1]  554 	ld	a, (x)
      008310 14 02            [ 1]  555 	and	a, (0x02, sp)
      008312 AE 7F 73         [ 2]  556 	ldw	x, #0x7f73
      008315 F7               [ 1]  557 	ld	(x), a
                           0001F4   558 	Sstm8s_itc$ITC_SetSoftwarePriority$102 ==.
                                    559 ;	StdPeriphLib/src/stm8s_itc.c: 290: ITC->ISPR4 |= NewPriority;
      008316 AE 7F 73         [ 2]  560 	ldw	x, #0x7f73
      008319 F6               [ 1]  561 	ld	a, (x)
      00831A 1A 01            [ 1]  562 	or	a, (0x01, sp)
      00831C AE 7F 73         [ 2]  563 	ldw	x, #0x7f73
      00831F F7               [ 1]  564 	ld	(x), a
                           0001FE   565 	Sstm8s_itc$ITC_SetSoftwarePriority$103 ==.
                                    566 ;	StdPeriphLib/src/stm8s_itc.c: 291: break;
      008320 CC 83 65         [ 2]  567 	jp	00124$
                           000201   568 	Sstm8s_itc$ITC_SetSoftwarePriority$104 ==.
                                    569 ;	StdPeriphLib/src/stm8s_itc.c: 293: case ITC_IRQ_TIM3_CAPCOM:
      008323                        570 00115$:
                           000201   571 	Sstm8s_itc$ITC_SetSoftwarePriority$105 ==.
                                    572 ;	StdPeriphLib/src/stm8s_itc.c: 303: case ITC_IRQ_I2C:
      008323                        573 00116$:
                           000201   574 	Sstm8s_itc$ITC_SetSoftwarePriority$106 ==.
                                    575 ;	StdPeriphLib/src/stm8s_itc.c: 304: ITC->ISPR5 &= Mask;
      008323 AE 7F 74         [ 2]  576 	ldw	x, #0x7f74
      008326 F6               [ 1]  577 	ld	a, (x)
      008327 14 02            [ 1]  578 	and	a, (0x02, sp)
      008329 AE 7F 74         [ 2]  579 	ldw	x, #0x7f74
      00832C F7               [ 1]  580 	ld	(x), a
                           00020B   581 	Sstm8s_itc$ITC_SetSoftwarePriority$107 ==.
                                    582 ;	StdPeriphLib/src/stm8s_itc.c: 305: ITC->ISPR5 |= NewPriority;
      00832D AE 7F 74         [ 2]  583 	ldw	x, #0x7f74
      008330 F6               [ 1]  584 	ld	a, (x)
      008331 1A 01            [ 1]  585 	or	a, (0x01, sp)
      008333 AE 7F 74         [ 2]  586 	ldw	x, #0x7f74
      008336 F7               [ 1]  587 	ld	(x), a
                           000215   588 	Sstm8s_itc$ITC_SetSoftwarePriority$108 ==.
                                    589 ;	StdPeriphLib/src/stm8s_itc.c: 306: break;
      008337 20 2C            [ 2]  590 	jra	00124$
                           000217   591 	Sstm8s_itc$ITC_SetSoftwarePriority$109 ==.
                                    592 ;	StdPeriphLib/src/stm8s_itc.c: 309: case ITC_IRQ_UART2_TX:
      008339                        593 00117$:
                           000217   594 	Sstm8s_itc$ITC_SetSoftwarePriority$110 ==.
                                    595 ;	StdPeriphLib/src/stm8s_itc.c: 310: case ITC_IRQ_UART2_RX:
      008339                        596 00118$:
                           000217   597 	Sstm8s_itc$ITC_SetSoftwarePriority$111 ==.
                                    598 ;	StdPeriphLib/src/stm8s_itc.c: 322: case ITC_IRQ_ADC1:
      008339                        599 00119$:
                           000217   600 	Sstm8s_itc$ITC_SetSoftwarePriority$112 ==.
                                    601 ;	StdPeriphLib/src/stm8s_itc.c: 328: case ITC_IRQ_TIM4_OVF:
      008339                        602 00120$:
                           000217   603 	Sstm8s_itc$ITC_SetSoftwarePriority$113 ==.
                                    604 ;	StdPeriphLib/src/stm8s_itc.c: 330: ITC->ISPR6 &= Mask;
      008339 AE 7F 75         [ 2]  605 	ldw	x, #0x7f75
      00833C F6               [ 1]  606 	ld	a, (x)
      00833D 14 02            [ 1]  607 	and	a, (0x02, sp)
      00833F AE 7F 75         [ 2]  608 	ldw	x, #0x7f75
      008342 F7               [ 1]  609 	ld	(x), a
                           000221   610 	Sstm8s_itc$ITC_SetSoftwarePriority$114 ==.
                                    611 ;	StdPeriphLib/src/stm8s_itc.c: 331: ITC->ISPR6 |= NewPriority;
      008343 AE 7F 75         [ 2]  612 	ldw	x, #0x7f75
      008346 F6               [ 1]  613 	ld	a, (x)
      008347 1A 01            [ 1]  614 	or	a, (0x01, sp)
      008349 AE 7F 75         [ 2]  615 	ldw	x, #0x7f75
      00834C F7               [ 1]  616 	ld	(x), a
                           00022B   617 	Sstm8s_itc$ITC_SetSoftwarePriority$115 ==.
                                    618 ;	StdPeriphLib/src/stm8s_itc.c: 332: break;
      00834D 20 16            [ 2]  619 	jra	00124$
                           00022D   620 	Sstm8s_itc$ITC_SetSoftwarePriority$116 ==.
                                    621 ;	StdPeriphLib/src/stm8s_itc.c: 334: case ITC_IRQ_EEPROM_EEC:
      00834F                        622 00121$:
                           00022D   623 	Sstm8s_itc$ITC_SetSoftwarePriority$117 ==.
                                    624 ;	StdPeriphLib/src/stm8s_itc.c: 335: ITC->ISPR7 &= Mask;
      00834F AE 7F 76         [ 2]  625 	ldw	x, #0x7f76
      008352 F6               [ 1]  626 	ld	a, (x)
      008353 14 02            [ 1]  627 	and	a, (0x02, sp)
      008355 AE 7F 76         [ 2]  628 	ldw	x, #0x7f76
      008358 F7               [ 1]  629 	ld	(x), a
                           000237   630 	Sstm8s_itc$ITC_SetSoftwarePriority$118 ==.
                                    631 ;	StdPeriphLib/src/stm8s_itc.c: 336: ITC->ISPR7 |= NewPriority;
      008359 AE 7F 76         [ 2]  632 	ldw	x, #0x7f76
      00835C F6               [ 1]  633 	ld	a, (x)
      00835D 1A 01            [ 1]  634 	or	a, (0x01, sp)
      00835F AE 7F 76         [ 2]  635 	ldw	x, #0x7f76
      008362 F7               [ 1]  636 	ld	(x), a
                           000241   637 	Sstm8s_itc$ITC_SetSoftwarePriority$119 ==.
                                    638 ;	StdPeriphLib/src/stm8s_itc.c: 337: break;
      008363 20 00            [ 2]  639 	jra	00124$
                           000243   640 	Sstm8s_itc$ITC_SetSoftwarePriority$120 ==.
                                    641 ;	StdPeriphLib/src/stm8s_itc.c: 339: default:
      008365                        642 00122$:
                           000243   643 	Sstm8s_itc$ITC_SetSoftwarePriority$121 ==.
                                    644 ;	StdPeriphLib/src/stm8s_itc.c: 341: }
      008365                        645 00124$:
                           000243   646 	Sstm8s_itc$ITC_SetSoftwarePriority$122 ==.
                                    647 ;	StdPeriphLib/src/stm8s_itc.c: 342: }
      008365 5B 04            [ 2]  648 	addw	sp, #4
                           000245   649 	Sstm8s_itc$ITC_SetSoftwarePriority$123 ==.
                           000245   650 	XG$ITC_SetSoftwarePriority$0$0 ==.
      008367 32 01 A4         [ 1]  651 	pop	_fp_
      00836A 32 01 A5         [ 1]  652 	pop	_fp_+1
      00836D 81               [ 4]  653 	ret
                           00024C   654 	Sstm8s_itc$ITC_SetSoftwarePriority$124 ==.
                                    655 	.area CODE
                                    656 	.area INITIALIZER
                                    657 	.area CABS (ABS)
                                    658 
                                    659 	.area .debug_line (NOLOAD)
      0001C5 00 00 03 E8            660 	.dw	0,Ldebug_line_end-Ldebug_line_start
      0001C9                        661 Ldebug_line_start:
      0001C9 00 02                  662 	.dw	2
      0001CB 00 00 01 18            663 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      0001CF 01                     664 	.db	1
      0001D0 01                     665 	.db	1
      0001D1 FB                     666 	.db	-5
      0001D2 0F                     667 	.db	15
      0001D3 0A                     668 	.db	10
      0001D4 00                     669 	.db	0
      0001D5 01                     670 	.db	1
      0001D6 01                     671 	.db	1
      0001D7 01                     672 	.db	1
      0001D8 01                     673 	.db	1
      0001D9 00                     674 	.db	0
      0001DA 00                     675 	.db	0
      0001DB 00                     676 	.db	0
      0001DC 01                     677 	.db	1
      0001DD 2F 68 6F 6D 65 2F 63   678 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      00021C 00                     679 	.db	0
      00021D 2F 68 6F 6D 65 2F 63   680 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000255 00                     681 	.db	0
      000256 2F 68 6F 6D 65 2F 63   682 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000290 00                     683 	.db	0
      000291 2F 68 6F 6D 65 2F 63   684 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      0002C4 00                     685 	.db	0
      0002C5 00                     686 	.db	0
      0002C6 53 74 64 50 65 72 69   687 	.ascii "StdPeriphLib/src/stm8s_itc.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 69 74 63 2E 63
      0002E2 00                     688 	.db	0
      0002E3 00                     689 	.uleb128	0
      0002E4 00                     690 	.uleb128	0
      0002E5 00                     691 	.uleb128	0
      0002E6 00                     692 	.db	0
      0002E7                        693 Ldebug_line_stmt:
      0002E7 00                     694 	.db	0
      0002E8 05                     695 	.uleb128	5
      0002E9 02                     696 	.db	2
      0002EA 00 00 81 22            697 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$0)
      0002EE 03                     698 	.db	3
      0002EF 35                     699 	.sleb128	53
      0002F0 01                     700 	.db	1
      0002F1 09                     701 	.db	9
      0002F2 00 0C                  702 	.dw	Sstm8s_itc$ITC_GetCPUCC$2-Sstm8s_itc$ITC_GetCPUCC$0
      0002F4 03                     703 	.db	3
      0002F5 09                     704 	.sleb128	9
      0002F6 01                     705 	.db	1
      0002F7 09                     706 	.db	9
      0002F8 00 01                  707 	.dw	Sstm8s_itc$ITC_GetCPUCC$3-Sstm8s_itc$ITC_GetCPUCC$2
      0002FA 03                     708 	.db	3
      0002FB 01                     709 	.sleb128	1
      0002FC 01                     710 	.db	1
      0002FD 09                     711 	.db	9
      0002FE 00 01                  712 	.dw	Sstm8s_itc$ITC_GetCPUCC$4-Sstm8s_itc$ITC_GetCPUCC$3
      000300 03                     713 	.db	3
      000301 05                     714 	.sleb128	5
      000302 01                     715 	.db	1
      000303 09                     716 	.db	9
      000304 00 07                  717 	.dw	7+Sstm8s_itc$ITC_GetCPUCC$5-Sstm8s_itc$ITC_GetCPUCC$4
      000306 00                     718 	.db	0
      000307 01                     719 	.uleb128	1
      000308 01                     720 	.db	1
      000309 00                     721 	.db	0
      00030A 05                     722 	.uleb128	5
      00030B 02                     723 	.db	2
      00030C 00 00 81 37            724 	.dw	0,(Sstm8s_itc$ITC_DeInit$7)
      000310 03                     725 	.db	3
      000311 D9 00                  726 	.sleb128	89
      000313 01                     727 	.db	1
      000314 09                     728 	.db	9
      000315 00 0C                  729 	.dw	Sstm8s_itc$ITC_DeInit$9-Sstm8s_itc$ITC_DeInit$7
      000317 03                     730 	.db	3
      000318 02                     731 	.sleb128	2
      000319 01                     732 	.db	1
      00031A 09                     733 	.db	9
      00031B 00 04                  734 	.dw	Sstm8s_itc$ITC_DeInit$10-Sstm8s_itc$ITC_DeInit$9
      00031D 03                     735 	.db	3
      00031E 01                     736 	.sleb128	1
      00031F 01                     737 	.db	1
      000320 09                     738 	.db	9
      000321 00 04                  739 	.dw	Sstm8s_itc$ITC_DeInit$11-Sstm8s_itc$ITC_DeInit$10
      000323 03                     740 	.db	3
      000324 01                     741 	.sleb128	1
      000325 01                     742 	.db	1
      000326 09                     743 	.db	9
      000327 00 04                  744 	.dw	Sstm8s_itc$ITC_DeInit$12-Sstm8s_itc$ITC_DeInit$11
      000329 03                     745 	.db	3
      00032A 01                     746 	.sleb128	1
      00032B 01                     747 	.db	1
      00032C 09                     748 	.db	9
      00032D 00 04                  749 	.dw	Sstm8s_itc$ITC_DeInit$13-Sstm8s_itc$ITC_DeInit$12
      00032F 03                     750 	.db	3
      000330 01                     751 	.sleb128	1
      000331 01                     752 	.db	1
      000332 09                     753 	.db	9
      000333 00 04                  754 	.dw	Sstm8s_itc$ITC_DeInit$14-Sstm8s_itc$ITC_DeInit$13
      000335 03                     755 	.db	3
      000336 01                     756 	.sleb128	1
      000337 01                     757 	.db	1
      000338 09                     758 	.db	9
      000339 00 04                  759 	.dw	Sstm8s_itc$ITC_DeInit$15-Sstm8s_itc$ITC_DeInit$14
      00033B 03                     760 	.db	3
      00033C 01                     761 	.sleb128	1
      00033D 01                     762 	.db	1
      00033E 09                     763 	.db	9
      00033F 00 04                  764 	.dw	Sstm8s_itc$ITC_DeInit$16-Sstm8s_itc$ITC_DeInit$15
      000341 03                     765 	.db	3
      000342 01                     766 	.sleb128	1
      000343 01                     767 	.db	1
      000344 09                     768 	.db	9
      000345 00 04                  769 	.dw	Sstm8s_itc$ITC_DeInit$17-Sstm8s_itc$ITC_DeInit$16
      000347 03                     770 	.db	3
      000348 01                     771 	.sleb128	1
      000349 01                     772 	.db	1
      00034A 09                     773 	.db	9
      00034B 00 07                  774 	.dw	7+Sstm8s_itc$ITC_DeInit$18-Sstm8s_itc$ITC_DeInit$17
      00034D 00                     775 	.db	0
      00034E 01                     776 	.uleb128	1
      00034F 01                     777 	.db	1
      000350 00                     778 	.db	0
      000351 05                     779 	.uleb128	5
      000352 02                     780 	.db	2
      000353 00 00 81 6A            781 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$20)
      000357 03                     782 	.db	3
      000358 EA 00                  783 	.sleb128	106
      00035A 01                     784 	.db	1
      00035B 09                     785 	.db	9
      00035C 00 0C                  786 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$22-Sstm8s_itc$ITC_GetSoftIntStatus$20
      00035E 03                     787 	.db	3
      00035F 02                     788 	.sleb128	2
      000360 01                     789 	.db	1
      000361 09                     790 	.db	9
      000362 00 05                  791 	.dw	Sstm8s_itc$ITC_GetSoftIntStatus$23-Sstm8s_itc$ITC_GetSoftIntStatus$22
      000364 03                     792 	.db	3
      000365 01                     793 	.sleb128	1
      000366 01                     794 	.db	1
      000367 09                     795 	.db	9
      000368 00 07                  796 	.dw	7+Sstm8s_itc$ITC_GetSoftIntStatus$24-Sstm8s_itc$ITC_GetSoftIntStatus$23
      00036A 00                     797 	.db	0
      00036B 01                     798 	.uleb128	1
      00036C 01                     799 	.db	1
      00036D 00                     800 	.db	0
      00036E 05                     801 	.uleb128	5
      00036F 02                     802 	.db	2
      000370 00 00 81 82            803 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$26)
      000374 03                     804 	.db	3
      000375 F4 00                  805 	.sleb128	116
      000377 01                     806 	.db	1
      000378 09                     807 	.db	9
      000379 00 0E                  808 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$28-Sstm8s_itc$ITC_GetSoftwarePriority$26
      00037B 03                     809 	.db	3
      00037C 02                     810 	.sleb128	2
      00037D 01                     811 	.db	1
      00037E 09                     812 	.db	9
      00037F 00 01                  813 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$29-Sstm8s_itc$ITC_GetSoftwarePriority$28
      000381 03                     814 	.db	3
      000382 07                     815 	.sleb128	7
      000383 01                     816 	.db	1
      000384 09                     817 	.db	9
      000385 00 26                  818 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$30-Sstm8s_itc$ITC_GetSoftwarePriority$29
      000387 03                     819 	.db	3
      000388 02                     820 	.sleb128	2
      000389 01                     821 	.db	1
      00038A 09                     822 	.db	9
      00038B 00 47                  823 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$31-Sstm8s_itc$ITC_GetSoftwarePriority$30
      00038D 03                     824 	.db	3
      00038E 02                     825 	.sleb128	2
      00038F 01                     826 	.db	1
      000390 09                     827 	.db	9
      000391 00 00                  828 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$32-Sstm8s_itc$ITC_GetSoftwarePriority$31
      000393 03                     829 	.db	3
      000394 01                     830 	.sleb128	1
      000395 01                     831 	.db	1
      000396 09                     832 	.db	9
      000397 00 00                  833 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$33-Sstm8s_itc$ITC_GetSoftwarePriority$32
      000399 03                     834 	.db	3
      00039A 01                     835 	.sleb128	1
      00039B 01                     836 	.db	1
      00039C 09                     837 	.db	9
      00039D 00 00                  838 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$34-Sstm8s_itc$ITC_GetSoftwarePriority$33
      00039F 03                     839 	.db	3
      0003A0 01                     840 	.sleb128	1
      0003A1 01                     841 	.db	1
      0003A2 09                     842 	.db	9
      0003A3 00 00                  843 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$35-Sstm8s_itc$ITC_GetSoftwarePriority$34
      0003A5 03                     844 	.db	3
      0003A6 01                     845 	.sleb128	1
      0003A7 01                     846 	.db	1
      0003A8 09                     847 	.db	9
      0003A9 00 06                  848 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$36-Sstm8s_itc$ITC_GetSoftwarePriority$35
      0003AB 03                     849 	.db	3
      0003AC 01                     850 	.sleb128	1
      0003AD 01                     851 	.db	1
      0003AE 09                     852 	.db	9
      0003AF 00 03                  853 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$37-Sstm8s_itc$ITC_GetSoftwarePriority$36
      0003B1 03                     854 	.db	3
      0003B2 02                     855 	.sleb128	2
      0003B3 01                     856 	.db	1
      0003B4 09                     857 	.db	9
      0003B5 00 00                  858 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$38-Sstm8s_itc$ITC_GetSoftwarePriority$37
      0003B7 03                     859 	.db	3
      0003B8 01                     860 	.sleb128	1
      0003B9 01                     861 	.db	1
      0003BA 09                     862 	.db	9
      0003BB 00 00                  863 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$39-Sstm8s_itc$ITC_GetSoftwarePriority$38
      0003BD 03                     864 	.db	3
      0003BE 01                     865 	.sleb128	1
      0003BF 01                     866 	.db	1
      0003C0 09                     867 	.db	9
      0003C1 00 00                  868 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$40-Sstm8s_itc$ITC_GetSoftwarePriority$39
      0003C3 03                     869 	.db	3
      0003C4 01                     870 	.sleb128	1
      0003C5 01                     871 	.db	1
      0003C6 09                     872 	.db	9
      0003C7 00 00                  873 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$41-Sstm8s_itc$ITC_GetSoftwarePriority$40
      0003C9 03                     874 	.db	3
      0003CA 01                     875 	.sleb128	1
      0003CB 01                     876 	.db	1
      0003CC 09                     877 	.db	9
      0003CD 00 06                  878 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$42-Sstm8s_itc$ITC_GetSoftwarePriority$41
      0003CF 03                     879 	.db	3
      0003D0 01                     880 	.sleb128	1
      0003D1 01                     881 	.db	1
      0003D2 09                     882 	.db	9
      0003D3 00 03                  883 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$43-Sstm8s_itc$ITC_GetSoftwarePriority$42
      0003D5 03                     884 	.db	3
      0003D6 09                     885 	.sleb128	9
      0003D7 01                     886 	.db	1
      0003D8 09                     887 	.db	9
      0003D9 00 00                  888 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$44-Sstm8s_itc$ITC_GetSoftwarePriority$43
      0003DB 03                     889 	.db	3
      0003DC 01                     890 	.sleb128	1
      0003DD 01                     891 	.db	1
      0003DE 09                     892 	.db	9
      0003DF 00 00                  893 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$45-Sstm8s_itc$ITC_GetSoftwarePriority$44
      0003E1 03                     894 	.db	3
      0003E2 01                     895 	.sleb128	1
      0003E3 01                     896 	.db	1
      0003E4 09                     897 	.db	9
      0003E5 00 06                  898 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$46-Sstm8s_itc$ITC_GetSoftwarePriority$45
      0003E7 03                     899 	.db	3
      0003E8 01                     900 	.sleb128	1
      0003E9 01                     901 	.db	1
      0003EA 09                     902 	.db	9
      0003EB 00 03                  903 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$47-Sstm8s_itc$ITC_GetSoftwarePriority$46
      0003ED 03                     904 	.db	3
      0003EE 02                     905 	.sleb128	2
      0003EF 01                     906 	.db	1
      0003F0 09                     907 	.db	9
      0003F1 00 00                  908 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$48-Sstm8s_itc$ITC_GetSoftwarePriority$47
      0003F3 03                     909 	.db	3
      0003F4 05                     910 	.sleb128	5
      0003F5 01                     911 	.db	1
      0003F6 09                     912 	.db	9
      0003F7 00 00                  913 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$49-Sstm8s_itc$ITC_GetSoftwarePriority$48
      0003F9 03                     914 	.db	3
      0003FA 01                     915 	.sleb128	1
      0003FB 01                     916 	.db	1
      0003FC 09                     917 	.db	9
      0003FD 00 00                  918 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$50-Sstm8s_itc$ITC_GetSoftwarePriority$49
      0003FF 03                     919 	.db	3
      000400 02                     920 	.sleb128	2
      000401 01                     921 	.db	1
      000402 09                     922 	.db	9
      000403 00 00                  923 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$51-Sstm8s_itc$ITC_GetSoftwarePriority$50
      000405 03                     924 	.db	3
      000406 01                     925 	.sleb128	1
      000407 01                     926 	.db	1
      000408 09                     927 	.db	9
      000409 00 06                  928 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$52-Sstm8s_itc$ITC_GetSoftwarePriority$51
      00040B 03                     929 	.db	3
      00040C 01                     930 	.sleb128	1
      00040D 01                     931 	.db	1
      00040E 09                     932 	.db	9
      00040F 00 02                  933 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$53-Sstm8s_itc$ITC_GetSoftwarePriority$52
      000411 03                     934 	.db	3
      000412 02                     935 	.sleb128	2
      000413 01                     936 	.db	1
      000414 09                     937 	.db	9
      000415 00 00                  938 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$54-Sstm8s_itc$ITC_GetSoftwarePriority$53
      000417 03                     939 	.db	3
      000418 0A                     940 	.sleb128	10
      000419 01                     941 	.db	1
      00041A 09                     942 	.db	9
      00041B 00 00                  943 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$55-Sstm8s_itc$ITC_GetSoftwarePriority$54
      00041D 03                     944 	.db	3
      00041E 01                     945 	.sleb128	1
      00041F 01                     946 	.db	1
      000420 09                     947 	.db	9
      000421 00 06                  948 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$56-Sstm8s_itc$ITC_GetSoftwarePriority$55
      000423 03                     949 	.db	3
      000424 01                     950 	.sleb128	1
      000425 01                     951 	.db	1
      000426 09                     952 	.db	9
      000427 00 02                  953 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$57-Sstm8s_itc$ITC_GetSoftwarePriority$56
      000429 03                     954 	.db	3
      00042A 03                     955 	.sleb128	3
      00042B 01                     956 	.db	1
      00042C 09                     957 	.db	9
      00042D 00 00                  958 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$58-Sstm8s_itc$ITC_GetSoftwarePriority$57
      00042F 03                     959 	.db	3
      000430 01                     960 	.sleb128	1
      000431 01                     961 	.db	1
      000432 09                     962 	.db	9
      000433 00 00                  963 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$59-Sstm8s_itc$ITC_GetSoftwarePriority$58
      000435 03                     964 	.db	3
      000436 0A                     965 	.sleb128	10
      000437 01                     966 	.db	1
      000438 09                     967 	.db	9
      000439 00 00                  968 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$60-Sstm8s_itc$ITC_GetSoftwarePriority$59
      00043B 03                     969 	.db	3
      00043C 05                     970 	.sleb128	5
      00043D 01                     971 	.db	1
      00043E 09                     972 	.db	9
      00043F 00 00                  973 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$61-Sstm8s_itc$ITC_GetSoftwarePriority$60
      000441 03                     974 	.db	3
      000442 02                     975 	.sleb128	2
      000443 01                     976 	.db	1
      000444 09                     977 	.db	9
      000445 00 06                  978 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$62-Sstm8s_itc$ITC_GetSoftwarePriority$61
      000447 03                     979 	.db	3
      000448 01                     980 	.sleb128	1
      000449 01                     981 	.db	1
      00044A 09                     982 	.db	9
      00044B 00 02                  983 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$63-Sstm8s_itc$ITC_GetSoftwarePriority$62
      00044D 03                     984 	.db	3
      00044E 02                     985 	.sleb128	2
      00044F 01                     986 	.db	1
      000450 09                     987 	.db	9
      000451 00 00                  988 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$64-Sstm8s_itc$ITC_GetSoftwarePriority$63
      000453 03                     989 	.db	3
      000454 01                     990 	.sleb128	1
      000455 01                     991 	.db	1
      000456 09                     992 	.db	9
      000457 00 06                  993 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$65-Sstm8s_itc$ITC_GetSoftwarePriority$64
      000459 03                     994 	.db	3
      00045A 01                     995 	.sleb128	1
      00045B 01                     996 	.db	1
      00045C 09                     997 	.db	9
      00045D 00 02                  998 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$66-Sstm8s_itc$ITC_GetSoftwarePriority$65
      00045F 03                     999 	.db	3
      000460 02                    1000 	.sleb128	2
      000461 01                    1001 	.db	1
      000462 09                    1002 	.db	9
      000463 00 00                 1003 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$67-Sstm8s_itc$ITC_GetSoftwarePriority$66
      000465 03                    1004 	.db	3
      000466 02                    1005 	.sleb128	2
      000467 01                    1006 	.db	1
      000468 09                    1007 	.db	9
      000469 00 00                 1008 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$68-Sstm8s_itc$ITC_GetSoftwarePriority$67
      00046B 03                    1009 	.db	3
      00046C 02                    1010 	.sleb128	2
      00046D 01                    1011 	.db	1
      00046E 09                    1012 	.db	9
      00046F 00 0B                 1013 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$69-Sstm8s_itc$ITC_GetSoftwarePriority$68
      000471 03                    1014 	.db	3
      000472 02                    1015 	.sleb128	2
      000473 01                    1016 	.db	1
      000474 09                    1017 	.db	9
      000475 00 00                 1018 	.dw	Sstm8s_itc$ITC_GetSoftwarePriority$70-Sstm8s_itc$ITC_GetSoftwarePriority$69
      000477 03                    1019 	.db	3
      000478 01                    1020 	.sleb128	1
      000479 01                    1021 	.db	1
      00047A 09                    1022 	.db	9
      00047B 00 09                 1023 	.dw	7+Sstm8s_itc$ITC_GetSoftwarePriority$71-Sstm8s_itc$ITC_GetSoftwarePriority$70
      00047D 00                    1024 	.db	0
      00047E 01                    1025 	.uleb128	1
      00047F 01                    1026 	.db	1
      000480 00                    1027 	.db	0
      000481 05                    1028 	.uleb128	5
      000482 02                    1029 	.db	2
      000483 00 00 82 4D           1030 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$73)
      000487 03                    1031 	.db	3
      000488 E5 01                 1032 	.sleb128	229
      00048A 01                    1033 	.db	1
      00048B 09                    1034 	.db	9
      00048C 00 0E                 1035 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$75-Sstm8s_itc$ITC_SetSoftwarePriority$73
      00048E 03                    1036 	.db	3
      00048F 0E                    1037 	.sleb128	14
      000490 01                    1038 	.db	1
      000491 09                    1039 	.db	9
      000492 00 19                 1040 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$76-Sstm8s_itc$ITC_SetSoftwarePriority$75
      000494 03                    1041 	.db	3
      000495 03                    1042 	.sleb128	3
      000496 01                    1043 	.db	1
      000497 09                    1044 	.db	9
      000498 00 0F                 1045 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$77-Sstm8s_itc$ITC_SetSoftwarePriority$76
      00049A 03                    1046 	.db	3
      00049B 02                    1047 	.sleb128	2
      00049C 01                    1048 	.db	1
      00049D 09                    1049 	.db	9
      00049E 00 44                 1050 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$78-Sstm8s_itc$ITC_SetSoftwarePriority$77
      0004A0 03                    1051 	.db	3
      0004A1 02                    1052 	.sleb128	2
      0004A2 01                    1053 	.db	1
      0004A3 09                    1054 	.db	9
      0004A4 00 00                 1055 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$79-Sstm8s_itc$ITC_SetSoftwarePriority$78
      0004A6 03                    1056 	.db	3
      0004A7 01                    1057 	.sleb128	1
      0004A8 01                    1058 	.db	1
      0004A9 09                    1059 	.db	9
      0004AA 00 00                 1060 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$80-Sstm8s_itc$ITC_SetSoftwarePriority$79
      0004AC 03                    1061 	.db	3
      0004AD 01                    1062 	.sleb128	1
      0004AE 01                    1063 	.db	1
      0004AF 09                    1064 	.db	9
      0004B0 00 00                 1065 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$81-Sstm8s_itc$ITC_SetSoftwarePriority$80
      0004B2 03                    1066 	.db	3
      0004B3 01                    1067 	.sleb128	1
      0004B4 01                    1068 	.db	1
      0004B5 09                    1069 	.db	9
      0004B6 00 00                 1070 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$82-Sstm8s_itc$ITC_SetSoftwarePriority$81
      0004B8 03                    1071 	.db	3
      0004B9 01                    1072 	.sleb128	1
      0004BA 01                    1073 	.db	1
      0004BB 09                    1074 	.db	9
      0004BC 00 0A                 1075 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$83-Sstm8s_itc$ITC_SetSoftwarePriority$82
      0004BE 03                    1076 	.db	3
      0004BF 01                    1077 	.sleb128	1
      0004C0 01                    1078 	.db	1
      0004C1 09                    1079 	.db	9
      0004C2 00 0A                 1080 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$84-Sstm8s_itc$ITC_SetSoftwarePriority$83
      0004C4 03                    1081 	.db	3
      0004C5 01                    1082 	.sleb128	1
      0004C6 01                    1083 	.db	1
      0004C7 09                    1084 	.db	9
      0004C8 00 03                 1085 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$85-Sstm8s_itc$ITC_SetSoftwarePriority$84
      0004CA 03                    1086 	.db	3
      0004CB 02                    1087 	.sleb128	2
      0004CC 01                    1088 	.db	1
      0004CD 09                    1089 	.db	9
      0004CE 00 00                 1090 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$86-Sstm8s_itc$ITC_SetSoftwarePriority$85
      0004D0 03                    1091 	.db	3
      0004D1 01                    1092 	.sleb128	1
      0004D2 01                    1093 	.db	1
      0004D3 09                    1094 	.db	9
      0004D4 00 00                 1095 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$87-Sstm8s_itc$ITC_SetSoftwarePriority$86
      0004D6 03                    1096 	.db	3
      0004D7 01                    1097 	.sleb128	1
      0004D8 01                    1098 	.db	1
      0004D9 09                    1099 	.db	9
      0004DA 00 00                 1100 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$88-Sstm8s_itc$ITC_SetSoftwarePriority$87
      0004DC 03                    1101 	.db	3
      0004DD 01                    1102 	.sleb128	1
      0004DE 01                    1103 	.db	1
      0004DF 09                    1104 	.db	9
      0004E0 00 00                 1105 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$89-Sstm8s_itc$ITC_SetSoftwarePriority$88
      0004E2 03                    1106 	.db	3
      0004E3 01                    1107 	.sleb128	1
      0004E4 01                    1108 	.db	1
      0004E5 09                    1109 	.db	9
      0004E6 00 0A                 1110 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$90-Sstm8s_itc$ITC_SetSoftwarePriority$89
      0004E8 03                    1111 	.db	3
      0004E9 01                    1112 	.sleb128	1
      0004EA 01                    1113 	.db	1
      0004EB 09                    1114 	.db	9
      0004EC 00 0A                 1115 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$91-Sstm8s_itc$ITC_SetSoftwarePriority$90
      0004EE 03                    1116 	.db	3
      0004EF 01                    1117 	.sleb128	1
      0004F0 01                    1118 	.db	1
      0004F1 09                    1119 	.db	9
      0004F2 00 03                 1120 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$92-Sstm8s_itc$ITC_SetSoftwarePriority$91
      0004F4 03                    1121 	.db	3
      0004F5 09                    1122 	.sleb128	9
      0004F6 01                    1123 	.db	1
      0004F7 09                    1124 	.db	9
      0004F8 00 00                 1125 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$93-Sstm8s_itc$ITC_SetSoftwarePriority$92
      0004FA 03                    1126 	.db	3
      0004FB 01                    1127 	.sleb128	1
      0004FC 01                    1128 	.db	1
      0004FD 09                    1129 	.db	9
      0004FE 00 00                 1130 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$94-Sstm8s_itc$ITC_SetSoftwarePriority$93
      000500 03                    1131 	.db	3
      000501 01                    1132 	.sleb128	1
      000502 01                    1133 	.db	1
      000503 09                    1134 	.db	9
      000504 00 0A                 1135 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$95-Sstm8s_itc$ITC_SetSoftwarePriority$94
      000506 03                    1136 	.db	3
      000507 01                    1137 	.sleb128	1
      000508 01                    1138 	.db	1
      000509 09                    1139 	.db	9
      00050A 00 0A                 1140 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$96-Sstm8s_itc$ITC_SetSoftwarePriority$95
      00050C 03                    1141 	.db	3
      00050D 01                    1142 	.sleb128	1
      00050E 01                    1143 	.db	1
      00050F 09                    1144 	.db	9
      000510 00 03                 1145 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$97-Sstm8s_itc$ITC_SetSoftwarePriority$96
      000512 03                    1146 	.db	3
      000513 02                    1147 	.sleb128	2
      000514 01                    1148 	.db	1
      000515 09                    1149 	.db	9
      000516 00 00                 1150 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$98-Sstm8s_itc$ITC_SetSoftwarePriority$97
      000518 03                    1151 	.db	3
      000519 05                    1152 	.sleb128	5
      00051A 01                    1153 	.db	1
      00051B 09                    1154 	.db	9
      00051C 00 00                 1155 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$99-Sstm8s_itc$ITC_SetSoftwarePriority$98
      00051E 03                    1156 	.db	3
      00051F 01                    1157 	.sleb128	1
      000520 01                    1158 	.db	1
      000521 09                    1159 	.db	9
      000522 00 00                 1160 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$100-Sstm8s_itc$ITC_SetSoftwarePriority$99
      000524 03                    1161 	.db	3
      000525 02                    1162 	.sleb128	2
      000526 01                    1163 	.db	1
      000527 09                    1164 	.db	9
      000528 00 00                 1165 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$101-Sstm8s_itc$ITC_SetSoftwarePriority$100
      00052A 03                    1166 	.db	3
      00052B 01                    1167 	.sleb128	1
      00052C 01                    1168 	.db	1
      00052D 09                    1169 	.db	9
      00052E 00 0A                 1170 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$102-Sstm8s_itc$ITC_SetSoftwarePriority$101
      000530 03                    1171 	.db	3
      000531 01                    1172 	.sleb128	1
      000532 01                    1173 	.db	1
      000533 09                    1174 	.db	9
      000534 00 0A                 1175 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$103-Sstm8s_itc$ITC_SetSoftwarePriority$102
      000536 03                    1176 	.db	3
      000537 01                    1177 	.sleb128	1
      000538 01                    1178 	.db	1
      000539 09                    1179 	.db	9
      00053A 00 03                 1180 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$104-Sstm8s_itc$ITC_SetSoftwarePriority$103
      00053C 03                    1181 	.db	3
      00053D 02                    1182 	.sleb128	2
      00053E 01                    1183 	.db	1
      00053F 09                    1184 	.db	9
      000540 00 00                 1185 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$105-Sstm8s_itc$ITC_SetSoftwarePriority$104
      000542 03                    1186 	.db	3
      000543 0A                    1187 	.sleb128	10
      000544 01                    1188 	.db	1
      000545 09                    1189 	.db	9
      000546 00 00                 1190 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$106-Sstm8s_itc$ITC_SetSoftwarePriority$105
      000548 03                    1191 	.db	3
      000549 01                    1192 	.sleb128	1
      00054A 01                    1193 	.db	1
      00054B 09                    1194 	.db	9
      00054C 00 0A                 1195 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$107-Sstm8s_itc$ITC_SetSoftwarePriority$106
      00054E 03                    1196 	.db	3
      00054F 01                    1197 	.sleb128	1
      000550 01                    1198 	.db	1
      000551 09                    1199 	.db	9
      000552 00 0A                 1200 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$108-Sstm8s_itc$ITC_SetSoftwarePriority$107
      000554 03                    1201 	.db	3
      000555 01                    1202 	.sleb128	1
      000556 01                    1203 	.db	1
      000557 09                    1204 	.db	9
      000558 00 02                 1205 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$109-Sstm8s_itc$ITC_SetSoftwarePriority$108
      00055A 03                    1206 	.db	3
      00055B 03                    1207 	.sleb128	3
      00055C 01                    1208 	.db	1
      00055D 09                    1209 	.db	9
      00055E 00 00                 1210 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$110-Sstm8s_itc$ITC_SetSoftwarePriority$109
      000560 03                    1211 	.db	3
      000561 01                    1212 	.sleb128	1
      000562 01                    1213 	.db	1
      000563 09                    1214 	.db	9
      000564 00 00                 1215 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$111-Sstm8s_itc$ITC_SetSoftwarePriority$110
      000566 03                    1216 	.db	3
      000567 0C                    1217 	.sleb128	12
      000568 01                    1218 	.db	1
      000569 09                    1219 	.db	9
      00056A 00 00                 1220 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$112-Sstm8s_itc$ITC_SetSoftwarePriority$111
      00056C 03                    1221 	.db	3
      00056D 06                    1222 	.sleb128	6
      00056E 01                    1223 	.db	1
      00056F 09                    1224 	.db	9
      000570 00 00                 1225 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$113-Sstm8s_itc$ITC_SetSoftwarePriority$112
      000572 03                    1226 	.db	3
      000573 02                    1227 	.sleb128	2
      000574 01                    1228 	.db	1
      000575 09                    1229 	.db	9
      000576 00 0A                 1230 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$114-Sstm8s_itc$ITC_SetSoftwarePriority$113
      000578 03                    1231 	.db	3
      000579 01                    1232 	.sleb128	1
      00057A 01                    1233 	.db	1
      00057B 09                    1234 	.db	9
      00057C 00 0A                 1235 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$115-Sstm8s_itc$ITC_SetSoftwarePriority$114
      00057E 03                    1236 	.db	3
      00057F 01                    1237 	.sleb128	1
      000580 01                    1238 	.db	1
      000581 09                    1239 	.db	9
      000582 00 02                 1240 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$116-Sstm8s_itc$ITC_SetSoftwarePriority$115
      000584 03                    1241 	.db	3
      000585 02                    1242 	.sleb128	2
      000586 01                    1243 	.db	1
      000587 09                    1244 	.db	9
      000588 00 00                 1245 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$117-Sstm8s_itc$ITC_SetSoftwarePriority$116
      00058A 03                    1246 	.db	3
      00058B 01                    1247 	.sleb128	1
      00058C 01                    1248 	.db	1
      00058D 09                    1249 	.db	9
      00058E 00 0A                 1250 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$118-Sstm8s_itc$ITC_SetSoftwarePriority$117
      000590 03                    1251 	.db	3
      000591 01                    1252 	.sleb128	1
      000592 01                    1253 	.db	1
      000593 09                    1254 	.db	9
      000594 00 0A                 1255 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$119-Sstm8s_itc$ITC_SetSoftwarePriority$118
      000596 03                    1256 	.db	3
      000597 01                    1257 	.sleb128	1
      000598 01                    1258 	.db	1
      000599 09                    1259 	.db	9
      00059A 00 02                 1260 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$120-Sstm8s_itc$ITC_SetSoftwarePriority$119
      00059C 03                    1261 	.db	3
      00059D 02                    1262 	.sleb128	2
      00059E 01                    1263 	.db	1
      00059F 09                    1264 	.db	9
      0005A0 00 00                 1265 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$121-Sstm8s_itc$ITC_SetSoftwarePriority$120
      0005A2 03                    1266 	.db	3
      0005A3 02                    1267 	.sleb128	2
      0005A4 01                    1268 	.db	1
      0005A5 09                    1269 	.db	9
      0005A6 00 00                 1270 	.dw	Sstm8s_itc$ITC_SetSoftwarePriority$122-Sstm8s_itc$ITC_SetSoftwarePriority$121
      0005A8 03                    1271 	.db	3
      0005A9 01                    1272 	.sleb128	1
      0005AA 01                    1273 	.db	1
      0005AB 09                    1274 	.db	9
      0005AC 00 09                 1275 	.dw	7+Sstm8s_itc$ITC_SetSoftwarePriority$123-Sstm8s_itc$ITC_SetSoftwarePriority$122
      0005AE 00                    1276 	.db	0
      0005AF 01                    1277 	.uleb128	1
      0005B0 01                    1278 	.db	1
      0005B1                       1279 Ldebug_line_end:
                                   1280 
                                   1281 	.area .debug_loc (NOLOAD)
      000014                       1282 Ldebug_loc_start:
      000014 00 00 82 59           1283 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$74)
      000018 00 00 83 6E           1284 	.dw	0,(Sstm8s_itc$ITC_SetSoftwarePriority$124)
      00001C 00 02                 1285 	.dw	2
      00001E 8F                    1286 	.db	143
      00001F 01                    1287 	.sleb128	1
      000020 00 00 00 00           1288 	.dw	0,0
      000024 00 00 00 00           1289 	.dw	0,0
      000028 00 00 81 8E           1290 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$27)
      00002C 00 00 82 4D           1291 	.dw	0,(Sstm8s_itc$ITC_GetSoftwarePriority$72)
      000030 00 02                 1292 	.dw	2
      000032 8F                    1293 	.db	143
      000033 01                    1294 	.sleb128	1
      000034 00 00 00 00           1295 	.dw	0,0
      000038 00 00 00 00           1296 	.dw	0,0
      00003C 00 00 81 76           1297 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$21)
      000040 00 00 81 82           1298 	.dw	0,(Sstm8s_itc$ITC_GetSoftIntStatus$25)
      000044 00 02                 1299 	.dw	2
      000046 8F                    1300 	.db	143
      000047 01                    1301 	.sleb128	1
      000048 00 00 00 00           1302 	.dw	0,0
      00004C 00 00 00 00           1303 	.dw	0,0
      000050 00 00 81 43           1304 	.dw	0,(Sstm8s_itc$ITC_DeInit$8)
      000054 00 00 81 6A           1305 	.dw	0,(Sstm8s_itc$ITC_DeInit$19)
      000058 00 02                 1306 	.dw	2
      00005A 8F                    1307 	.db	143
      00005B 01                    1308 	.sleb128	1
      00005C 00 00 00 00           1309 	.dw	0,0
      000060 00 00 00 00           1310 	.dw	0,0
      000064 00 00 81 2E           1311 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$1)
      000068 00 00 81 37           1312 	.dw	0,(Sstm8s_itc$ITC_GetCPUCC$6)
      00006C 00 02                 1313 	.dw	2
      00006E 8F                    1314 	.db	143
      00006F 01                    1315 	.sleb128	1
      000070 00 00 00 00           1316 	.dw	0,0
      000074 00 00 00 00           1317 	.dw	0,0
                                   1318 
                                   1319 	.area .debug_abbrev (NOLOAD)
      000043                       1320 Ldebug_abbrev:
      000043 07                    1321 	.uleb128	7
      000044 0B                    1322 	.uleb128	11
      000045 00                    1323 	.db	0
      000046 00                    1324 	.uleb128	0
      000047 00                    1325 	.uleb128	0
      000048 03                    1326 	.uleb128	3
      000049 2E                    1327 	.uleb128	46
      00004A 00                    1328 	.db	0
      00004B 03                    1329 	.uleb128	3
      00004C 08                    1330 	.uleb128	8
      00004D 11                    1331 	.uleb128	17
      00004E 01                    1332 	.uleb128	1
      00004F 12                    1333 	.uleb128	18
      000050 01                    1334 	.uleb128	1
      000051 3F                    1335 	.uleb128	63
      000052 0C                    1336 	.uleb128	12
      000053 40                    1337 	.uleb128	64
      000054 06                    1338 	.uleb128	6
      000055 49                    1339 	.uleb128	73
      000056 13                    1340 	.uleb128	19
      000057 00                    1341 	.uleb128	0
      000058 00                    1342 	.uleb128	0
      000059 06                    1343 	.uleb128	6
      00005A 05                    1344 	.uleb128	5
      00005B 00                    1345 	.db	0
      00005C 02                    1346 	.uleb128	2
      00005D 0A                    1347 	.uleb128	10
      00005E 03                    1348 	.uleb128	3
      00005F 08                    1349 	.uleb128	8
      000060 49                    1350 	.uleb128	73
      000061 13                    1351 	.uleb128	19
      000062 00                    1352 	.uleb128	0
      000063 00                    1353 	.uleb128	0
      000064 08                    1354 	.uleb128	8
      000065 34                    1355 	.uleb128	52
      000066 00                    1356 	.db	0
      000067 02                    1357 	.uleb128	2
      000068 0A                    1358 	.uleb128	10
      000069 03                    1359 	.uleb128	3
      00006A 08                    1360 	.uleb128	8
      00006B 49                    1361 	.uleb128	73
      00006C 13                    1362 	.uleb128	19
      00006D 00                    1363 	.uleb128	0
      00006E 00                    1364 	.uleb128	0
      00006F 05                    1365 	.uleb128	5
      000070 2E                    1366 	.uleb128	46
      000071 01                    1367 	.db	1
      000072 01                    1368 	.uleb128	1
      000073 13                    1369 	.uleb128	19
      000074 03                    1370 	.uleb128	3
      000075 08                    1371 	.uleb128	8
      000076 11                    1372 	.uleb128	17
      000077 01                    1373 	.uleb128	1
      000078 12                    1374 	.uleb128	18
      000079 01                    1375 	.uleb128	1
      00007A 3F                    1376 	.uleb128	63
      00007B 0C                    1377 	.uleb128	12
      00007C 40                    1378 	.uleb128	64
      00007D 06                    1379 	.uleb128	6
      00007E 49                    1380 	.uleb128	73
      00007F 13                    1381 	.uleb128	19
      000080 00                    1382 	.uleb128	0
      000081 00                    1383 	.uleb128	0
      000082 01                    1384 	.uleb128	1
      000083 11                    1385 	.uleb128	17
      000084 01                    1386 	.db	1
      000085 03                    1387 	.uleb128	3
      000086 08                    1388 	.uleb128	8
      000087 10                    1389 	.uleb128	16
      000088 06                    1390 	.uleb128	6
      000089 13                    1391 	.uleb128	19
      00008A 0B                    1392 	.uleb128	11
      00008B 25                    1393 	.uleb128	37
      00008C 08                    1394 	.uleb128	8
      00008D 00                    1395 	.uleb128	0
      00008E 00                    1396 	.uleb128	0
      00008F 04                    1397 	.uleb128	4
      000090 2E                    1398 	.uleb128	46
      000091 00                    1399 	.db	0
      000092 03                    1400 	.uleb128	3
      000093 08                    1401 	.uleb128	8
      000094 11                    1402 	.uleb128	17
      000095 01                    1403 	.uleb128	1
      000096 12                    1404 	.uleb128	18
      000097 01                    1405 	.uleb128	1
      000098 3F                    1406 	.uleb128	63
      000099 0C                    1407 	.uleb128	12
      00009A 40                    1408 	.uleb128	64
      00009B 06                    1409 	.uleb128	6
      00009C 00                    1410 	.uleb128	0
      00009D 00                    1411 	.uleb128	0
      00009E 09                    1412 	.uleb128	9
      00009F 2E                    1413 	.uleb128	46
      0000A0 01                    1414 	.db	1
      0000A1 03                    1415 	.uleb128	3
      0000A2 08                    1416 	.uleb128	8
      0000A3 11                    1417 	.uleb128	17
      0000A4 01                    1418 	.uleb128	1
      0000A5 12                    1419 	.uleb128	18
      0000A6 01                    1420 	.uleb128	1
      0000A7 3F                    1421 	.uleb128	63
      0000A8 0C                    1422 	.uleb128	12
      0000A9 40                    1423 	.uleb128	64
      0000AA 06                    1424 	.uleb128	6
      0000AB 00                    1425 	.uleb128	0
      0000AC 00                    1426 	.uleb128	0
      0000AD 02                    1427 	.uleb128	2
      0000AE 24                    1428 	.uleb128	36
      0000AF 00                    1429 	.db	0
      0000B0 03                    1430 	.uleb128	3
      0000B1 08                    1431 	.uleb128	8
      0000B2 0B                    1432 	.uleb128	11
      0000B3 0B                    1433 	.uleb128	11
      0000B4 3E                    1434 	.uleb128	62
      0000B5 0B                    1435 	.uleb128	11
      0000B6 00                    1436 	.uleb128	0
      0000B7 00                    1437 	.uleb128	0
      0000B8 00                    1438 	.uleb128	0
                                   1439 
                                   1440 	.area .debug_info (NOLOAD)
      000115 00 00 01 7D           1441 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000119                       1442 Ldebug_info_start:
      000119 00 02                 1443 	.dw	2
      00011B 00 00 00 43           1444 	.dw	0,(Ldebug_abbrev)
      00011F 04                    1445 	.db	4
      000120 01                    1446 	.uleb128	1
      000121 53 74 64 50 65 72 69  1447 	.ascii "StdPeriphLib/src/stm8s_itc.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 69 74 63 2E 63
      00013D 00                    1448 	.db	0
      00013E 00 00 01 C5           1449 	.dw	0,(Ldebug_line_start+-4)
      000142 01                    1450 	.db	1
      000143 53 44 43 43 20 76 65  1451 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      00015B 00                    1452 	.db	0
      00015C 02                    1453 	.uleb128	2
      00015D 75 6E 73 69 67 6E 65  1454 	.ascii "unsigned char"
             64 20 63 68 61 72
      00016A 00                    1455 	.db	0
      00016B 01                    1456 	.db	1
      00016C 08                    1457 	.db	8
      00016D 03                    1458 	.uleb128	3
      00016E 49 54 43 5F 47 65 74  1459 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      00017A 00                    1460 	.db	0
      00017B 00 00 81 22           1461 	.dw	0,(_ITC_GetCPUCC)
      00017F 00 00 81 37           1462 	.dw	0,(XG$ITC_GetCPUCC$0$0+7)
      000183 01                    1463 	.db	1
      000184 00 00 00 64           1464 	.dw	0,(Ldebug_loc_start+80)
      000188 00 00 00 47           1465 	.dw	0,71
      00018C 04                    1466 	.uleb128	4
      00018D 49 54 43 5F 44 65 49  1467 	.ascii "ITC_DeInit"
             6E 69 74
      000197 00                    1468 	.db	0
      000198 00 00 81 37           1469 	.dw	0,(_ITC_DeInit)
      00019C 00 00 81 6A           1470 	.dw	0,(XG$ITC_DeInit$0$0+7)
      0001A0 01                    1471 	.db	1
      0001A1 00 00 00 50           1472 	.dw	0,(Ldebug_loc_start+60)
      0001A5 03                    1473 	.uleb128	3
      0001A6 49 54 43 5F 47 65 74  1474 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      0001BA 00                    1475 	.db	0
      0001BB 00 00 81 6A           1476 	.dw	0,(_ITC_GetSoftIntStatus)
      0001BF 00 00 81 82           1477 	.dw	0,(XG$ITC_GetSoftIntStatus$0$0+7)
      0001C3 01                    1478 	.db	1
      0001C4 00 00 00 3C           1479 	.dw	0,(Ldebug_loc_start+40)
      0001C8 00 00 00 47           1480 	.dw	0,71
      0001CC 05                    1481 	.uleb128	5
      0001CD 00 00 01 10           1482 	.dw	0,272
      0001D1 49 54 43 5F 47 65 74  1483 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      0001E8 00                    1484 	.db	0
      0001E9 00 00 81 82           1485 	.dw	0,(_ITC_GetSoftwarePriority)
      0001ED 00 00 82 4D           1486 	.dw	0,(XG$ITC_GetSoftwarePriority$0$0+7)
      0001F1 01                    1487 	.db	1
      0001F2 00 00 00 28           1488 	.dw	0,(Ldebug_loc_start+20)
      0001F6 00 00 00 47           1489 	.dw	0,71
      0001FA 06                    1490 	.uleb128	6
      0001FB 02                    1491 	.db	2
      0001FC 91                    1492 	.db	145
      0001FD 04                    1493 	.sleb128	4
      0001FE 49 72 71 4E 75 6D     1494 	.ascii "IrqNum"
      000204 00                    1495 	.db	0
      000205 00 00 00 47           1496 	.dw	0,71
      000209 07                    1497 	.uleb128	7
      00020A 08                    1498 	.uleb128	8
      00020B 01                    1499 	.db	1
      00020C 51                    1500 	.db	81
      00020D 56 61 6C 75 65        1501 	.ascii "Value"
      000212 00                    1502 	.db	0
      000213 00 00 00 47           1503 	.dw	0,71
      000217 08                    1504 	.uleb128	8
      000218 02                    1505 	.db	2
      000219 91                    1506 	.db	145
      00021A 7E                    1507 	.sleb128	-2
      00021B 4D 61 73 6B           1508 	.ascii "Mask"
      00021F 00                    1509 	.db	0
      000220 00 00 00 47           1510 	.dw	0,71
      000224 00                    1511 	.uleb128	0
      000225 09                    1512 	.uleb128	9
      000226 49 54 43 5F 53 65 74  1513 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      00023D 00                    1514 	.db	0
      00023E 00 00 82 4D           1515 	.dw	0,(_ITC_SetSoftwarePriority)
      000242 00 00 83 6E           1516 	.dw	0,(XG$ITC_SetSoftwarePriority$0$0+7)
      000246 01                    1517 	.db	1
      000247 00 00 00 14           1518 	.dw	0,(Ldebug_loc_start)
      00024B 06                    1519 	.uleb128	6
      00024C 02                    1520 	.db	2
      00024D 91                    1521 	.db	145
      00024E 04                    1522 	.sleb128	4
      00024F 49 72 71 4E 75 6D     1523 	.ascii "IrqNum"
      000255 00                    1524 	.db	0
      000256 00 00 00 47           1525 	.dw	0,71
      00025A 06                    1526 	.uleb128	6
      00025B 02                    1527 	.db	2
      00025C 91                    1528 	.db	145
      00025D 05                    1529 	.sleb128	5
      00025E 50 72 69 6F 72 69 74  1530 	.ascii "PriorityValue"
             79 56 61 6C 75 65
      00026B 00                    1531 	.db	0
      00026C 00 00 00 47           1532 	.dw	0,71
      000270 07                    1533 	.uleb128	7
      000271 08                    1534 	.uleb128	8
      000272 02                    1535 	.db	2
      000273 91                    1536 	.db	145
      000274 7D                    1537 	.sleb128	-3
      000275 4D 61 73 6B           1538 	.ascii "Mask"
      000279 00                    1539 	.db	0
      00027A 00 00 00 47           1540 	.dw	0,71
      00027E 08                    1541 	.uleb128	8
      00027F 02                    1542 	.db	2
      000280 91                    1543 	.db	145
      000281 7C                    1544 	.sleb128	-4
      000282 4E 65 77 50 72 69 6F  1545 	.ascii "NewPriority"
             72 69 74 79
      00028D 00                    1546 	.db	0
      00028E 00 00 00 47           1547 	.dw	0,71
      000292 00                    1548 	.uleb128	0
      000293 00                    1549 	.uleb128	0
      000294 00                    1550 	.uleb128	0
      000295 00                    1551 	.uleb128	0
      000296                       1552 Ldebug_info_end:
                                   1553 
                                   1554 	.area .debug_pubnames (NOLOAD)
      0000A4 00 00 00 7F           1555 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0000A8                       1556 Ldebug_pubnames_start:
      0000A8 00 02                 1557 	.dw	2
      0000AA 00 00 01 15           1558 	.dw	0,(Ldebug_info_start-4)
      0000AE 00 00 01 81           1559 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0000B2 00 00 00 58           1560 	.dw	0,88
      0000B6 49 54 43 5F 47 65 74  1561 	.ascii "ITC_GetCPUCC"
             43 50 55 43 43
      0000C2 00                    1562 	.db	0
      0000C3 00 00 00 77           1563 	.dw	0,119
      0000C7 49 54 43 5F 44 65 49  1564 	.ascii "ITC_DeInit"
             6E 69 74
      0000D1 00                    1565 	.db	0
      0000D2 00 00 00 90           1566 	.dw	0,144
      0000D6 49 54 43 5F 47 65 74  1567 	.ascii "ITC_GetSoftIntStatus"
             53 6F 66 74 49 6E 74
             53 74 61 74 75 73
      0000EA 00                    1568 	.db	0
      0000EB 00 00 00 B7           1569 	.dw	0,183
      0000EF 49 54 43 5F 47 65 74  1570 	.ascii "ITC_GetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000106 00                    1571 	.db	0
      000107 00 00 01 10           1572 	.dw	0,272
      00010B 49 54 43 5F 53 65 74  1573 	.ascii "ITC_SetSoftwarePriority"
             53 6F 66 74 77 61 72
             65 50 72 69 6F 72 69
             74 79
      000122 00                    1574 	.db	0
      000123 00 00 00 00           1575 	.dw	0,0
      000127                       1576 Ldebug_pubnames_end:
                                   1577 
                                   1578 	.area .debug_frame (NOLOAD)
      000012 00 00                 1579 	.dw	0
      000014 00 0E                 1580 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      000016                       1581 Ldebug_CIE_start:
      000016 FF FF                 1582 	.dw	0xffff
      000018 FF FF                 1583 	.dw	0xffff
      00001A 01                    1584 	.db	1
      00001B 00                    1585 	.db	0
      00001C 01                    1586 	.uleb128	1
      00001D 01                    1587 	.sleb128	1
      00001E 00                    1588 	.db	0
      00001F 0C                    1589 	.db	12
      000020 00                    1590 	.uleb128	0
      000021 00                    1591 	.uleb128	0
      000022 80                    1592 	.db	128
      000023 00                    1593 	.uleb128	0
      000024                       1594 Ldebug_CIE_end:
