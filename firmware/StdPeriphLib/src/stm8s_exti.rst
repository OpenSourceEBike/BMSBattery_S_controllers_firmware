                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_exti
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _EXTI_DeInit
                                     12 	.globl _EXTI_SetExtIntSensitivity
                                     13 	.globl _EXTI_SetTLISensitivity
                                     14 	.globl _EXTI_GetExtIntSensitivity
                                     15 	.globl _EXTI_GetTLISensitivity
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
                           000000    44 	Sstm8s_exti$EXTI_DeInit$0 ==.
                                     45 ;	StdPeriphLib/src/stm8s_exti.c: 53: void EXTI_DeInit(void)
                                     46 ;	-----------------------------------------
                                     47 ;	 function EXTI_DeInit
                                     48 ;	-----------------------------------------
      008AF8                         49 _EXTI_DeInit:
      008AF8 3B 01 A5         [ 1]   50 	push	_fp_+1
      008AFB 3B 01 A4         [ 1]   51 	push	_fp_
      008AFE 90 96            [ 1]   52 	ldw	y, sp
      008B00 90 CF 01 A4      [ 2]   53 	ldw	_fp_, y
                           00000C    54 	Sstm8s_exti$EXTI_DeInit$1 ==.
                           00000C    55 	Sstm8s_exti$EXTI_DeInit$2 ==.
                                     56 ;	StdPeriphLib/src/stm8s_exti.c: 55: EXTI->CR1 = EXTI_CR1_RESET_VALUE;
      008B04 35 00 50 A0      [ 1]   57 	mov	0x50a0+0, #0x00
                           000010    58 	Sstm8s_exti$EXTI_DeInit$3 ==.
                                     59 ;	StdPeriphLib/src/stm8s_exti.c: 56: EXTI->CR2 = EXTI_CR2_RESET_VALUE;
      008B08 35 00 50 A1      [ 1]   60 	mov	0x50a1+0, #0x00
                           000014    61 	Sstm8s_exti$EXTI_DeInit$4 ==.
                                     62 ;	StdPeriphLib/src/stm8s_exti.c: 57: }
                           000014    63 	Sstm8s_exti$EXTI_DeInit$5 ==.
                           000014    64 	XG$EXTI_DeInit$0$0 ==.
      008B0C 32 01 A4         [ 1]   65 	pop	_fp_
      008B0F 32 01 A5         [ 1]   66 	pop	_fp_+1
      008B12 81               [ 4]   67 	ret
                           00001B    68 	Sstm8s_exti$EXTI_DeInit$6 ==.
                           00001B    69 	Sstm8s_exti$EXTI_SetExtIntSensitivity$7 ==.
                                     70 ;	StdPeriphLib/src/stm8s_exti.c: 70: void EXTI_SetExtIntSensitivity(EXTI_Port_TypeDef Port, EXTI_Sensitivity_TypeDef SensitivityValue)
                                     71 ;	-----------------------------------------
                                     72 ;	 function EXTI_SetExtIntSensitivity
                                     73 ;	-----------------------------------------
      008B13                         74 _EXTI_SetExtIntSensitivity:
      008B13 3B 01 A5         [ 1]   75 	push	_fp_+1
      008B16 3B 01 A4         [ 1]   76 	push	_fp_
      008B19 90 96            [ 1]   77 	ldw	y, sp
      008B1B 90 CF 01 A4      [ 2]   78 	ldw	_fp_, y
                           000027    79 	Sstm8s_exti$EXTI_SetExtIntSensitivity$8 ==.
      008B1F 52 03            [ 2]   80 	sub	sp, #3
                           000029    81 	Sstm8s_exti$EXTI_SetExtIntSensitivity$9 ==.
                                     82 ;	StdPeriphLib/src/stm8s_exti.c: 77: switch (Port)
      008B21 7B 08            [ 1]   83 	ld	a, (0x08, sp)
      008B23 A1 04            [ 1]   84 	cp	a, #0x04
      008B25 23 03            [ 2]   85 	jrule	00113$
      008B27 CC 8B B2         [ 2]   86 	jp	00108$
      008B2A                         87 00113$:
      008B2A 5F               [ 1]   88 	clrw	x
      008B2B 7B 08            [ 1]   89 	ld	a, (0x08, sp)
      008B2D 97               [ 1]   90 	ld	xl, a
      008B2E 58               [ 2]   91 	sllw	x
      008B2F DE 8B 33         [ 2]   92 	ldw	x, (#00114$, x)
      008B32 FC               [ 2]   93 	jp	(x)
      008B33                         94 00114$:
      008B33 8B 3D                   95 	.dw	#00101$
      008B35 8B 51                   96 	.dw	#00102$
      008B37 8B 6B                   97 	.dw	#00103$
      008B39 8B 85                   98 	.dw	#00104$
      008B3B 8B A1                   99 	.dw	#00105$
                           000045   100 	Sstm8s_exti$EXTI_SetExtIntSensitivity$10 ==.
                                    101 ;	StdPeriphLib/src/stm8s_exti.c: 79: case EXTI_PORT_GPIOA:
      008B3D                        102 00101$:
                           000045   103 	Sstm8s_exti$EXTI_SetExtIntSensitivity$11 ==.
                                    104 ;	StdPeriphLib/src/stm8s_exti.c: 80: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PAIS);
      008B3D AE 50 A0         [ 2]  105 	ldw	x, #0x50a0
      008B40 F6               [ 1]  106 	ld	a, (x)
      008B41 A4 FC            [ 1]  107 	and	a, #0xfc
      008B43 F7               [ 1]  108 	ld	(x), a
                           00004C   109 	Sstm8s_exti$EXTI_SetExtIntSensitivity$12 ==.
                                    110 ;	StdPeriphLib/src/stm8s_exti.c: 81: EXTI->CR1 |= (uint8_t)(SensitivityValue);
      008B44 AE 50 A0         [ 2]  111 	ldw	x, #0x50a0
      008B47 F6               [ 1]  112 	ld	a, (x)
      008B48 1A 09            [ 1]  113 	or	a, (0x09, sp)
      008B4A AE 50 A0         [ 2]  114 	ldw	x, #0x50a0
      008B4D F7               [ 1]  115 	ld	(x), a
                           000056   116 	Sstm8s_exti$EXTI_SetExtIntSensitivity$13 ==.
                                    117 ;	StdPeriphLib/src/stm8s_exti.c: 82: break;
      008B4E CC 8B B2         [ 2]  118 	jp	00108$
                           000059   119 	Sstm8s_exti$EXTI_SetExtIntSensitivity$14 ==.
                                    120 ;	StdPeriphLib/src/stm8s_exti.c: 83: case EXTI_PORT_GPIOB:
      008B51                        121 00102$:
                           000059   122 	Sstm8s_exti$EXTI_SetExtIntSensitivity$15 ==.
                                    123 ;	StdPeriphLib/src/stm8s_exti.c: 84: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PBIS);
      008B51 AE 50 A0         [ 2]  124 	ldw	x, #0x50a0
      008B54 F6               [ 1]  125 	ld	a, (x)
      008B55 A4 F3            [ 1]  126 	and	a, #0xf3
      008B57 F7               [ 1]  127 	ld	(x), a
                           000060   128 	Sstm8s_exti$EXTI_SetExtIntSensitivity$16 ==.
                                    129 ;	StdPeriphLib/src/stm8s_exti.c: 85: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 2);
      008B58 AE 50 A0         [ 2]  130 	ldw	x, #0x50a0
      008B5B F6               [ 1]  131 	ld	a, (x)
      008B5C 6B 01            [ 1]  132 	ld	(0x01, sp), a
      008B5E 7B 09            [ 1]  133 	ld	a, (0x09, sp)
      008B60 48               [ 1]  134 	sll	a
      008B61 48               [ 1]  135 	sll	a
      008B62 1A 01            [ 1]  136 	or	a, (0x01, sp)
      008B64 AE 50 A0         [ 2]  137 	ldw	x, #0x50a0
      008B67 F7               [ 1]  138 	ld	(x), a
                           000070   139 	Sstm8s_exti$EXTI_SetExtIntSensitivity$17 ==.
                                    140 ;	StdPeriphLib/src/stm8s_exti.c: 86: break;
      008B68 CC 8B B2         [ 2]  141 	jp	00108$
                           000073   142 	Sstm8s_exti$EXTI_SetExtIntSensitivity$18 ==.
                                    143 ;	StdPeriphLib/src/stm8s_exti.c: 87: case EXTI_PORT_GPIOC:
      008B6B                        144 00103$:
                           000073   145 	Sstm8s_exti$EXTI_SetExtIntSensitivity$19 ==.
                                    146 ;	StdPeriphLib/src/stm8s_exti.c: 88: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PCIS);
      008B6B AE 50 A0         [ 2]  147 	ldw	x, #0x50a0
      008B6E F6               [ 1]  148 	ld	a, (x)
      008B6F A4 CF            [ 1]  149 	and	a, #0xcf
      008B71 F7               [ 1]  150 	ld	(x), a
                           00007A   151 	Sstm8s_exti$EXTI_SetExtIntSensitivity$20 ==.
                                    152 ;	StdPeriphLib/src/stm8s_exti.c: 89: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 4);
      008B72 AE 50 A0         [ 2]  153 	ldw	x, #0x50a0
      008B75 F6               [ 1]  154 	ld	a, (x)
      008B76 6B 03            [ 1]  155 	ld	(0x03, sp), a
      008B78 7B 09            [ 1]  156 	ld	a, (0x09, sp)
      008B7A 4E               [ 1]  157 	swap	a
      008B7B A4 F0            [ 1]  158 	and	a, #0xf0
      008B7D 1A 03            [ 1]  159 	or	a, (0x03, sp)
      008B7F AE 50 A0         [ 2]  160 	ldw	x, #0x50a0
      008B82 F7               [ 1]  161 	ld	(x), a
                           00008B   162 	Sstm8s_exti$EXTI_SetExtIntSensitivity$21 ==.
                                    163 ;	StdPeriphLib/src/stm8s_exti.c: 90: break;
      008B83 20 2D            [ 2]  164 	jra	00108$
                           00008D   165 	Sstm8s_exti$EXTI_SetExtIntSensitivity$22 ==.
                                    166 ;	StdPeriphLib/src/stm8s_exti.c: 91: case EXTI_PORT_GPIOD:
      008B85                        167 00104$:
                           00008D   168 	Sstm8s_exti$EXTI_SetExtIntSensitivity$23 ==.
                                    169 ;	StdPeriphLib/src/stm8s_exti.c: 92: EXTI->CR1 &= (uint8_t)(~EXTI_CR1_PDIS);
      008B85 AE 50 A0         [ 2]  170 	ldw	x, #0x50a0
      008B88 F6               [ 1]  171 	ld	a, (x)
      008B89 A4 3F            [ 1]  172 	and	a, #0x3f
      008B8B F7               [ 1]  173 	ld	(x), a
                           000094   174 	Sstm8s_exti$EXTI_SetExtIntSensitivity$24 ==.
                                    175 ;	StdPeriphLib/src/stm8s_exti.c: 93: EXTI->CR1 |= (uint8_t)((uint8_t)(SensitivityValue) << 6);
      008B8C AE 50 A0         [ 2]  176 	ldw	x, #0x50a0
      008B8F F6               [ 1]  177 	ld	a, (x)
      008B90 6B 02            [ 1]  178 	ld	(0x02, sp), a
      008B92 7B 09            [ 1]  179 	ld	a, (0x09, sp)
      008B94 4E               [ 1]  180 	swap	a
      008B95 A4 F0            [ 1]  181 	and	a, #0xf0
      008B97 48               [ 1]  182 	sll	a
      008B98 48               [ 1]  183 	sll	a
      008B99 1A 02            [ 1]  184 	or	a, (0x02, sp)
      008B9B AE 50 A0         [ 2]  185 	ldw	x, #0x50a0
      008B9E F7               [ 1]  186 	ld	(x), a
                           0000A7   187 	Sstm8s_exti$EXTI_SetExtIntSensitivity$25 ==.
                                    188 ;	StdPeriphLib/src/stm8s_exti.c: 94: break;
      008B9F 20 11            [ 2]  189 	jra	00108$
                           0000A9   190 	Sstm8s_exti$EXTI_SetExtIntSensitivity$26 ==.
                                    191 ;	StdPeriphLib/src/stm8s_exti.c: 95: case EXTI_PORT_GPIOE:
      008BA1                        192 00105$:
                           0000A9   193 	Sstm8s_exti$EXTI_SetExtIntSensitivity$27 ==.
                                    194 ;	StdPeriphLib/src/stm8s_exti.c: 96: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_PEIS);
      008BA1 AE 50 A1         [ 2]  195 	ldw	x, #0x50a1
      008BA4 F6               [ 1]  196 	ld	a, (x)
      008BA5 A4 FC            [ 1]  197 	and	a, #0xfc
      008BA7 F7               [ 1]  198 	ld	(x), a
                           0000B0   199 	Sstm8s_exti$EXTI_SetExtIntSensitivity$28 ==.
                                    200 ;	StdPeriphLib/src/stm8s_exti.c: 97: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      008BA8 AE 50 A1         [ 2]  201 	ldw	x, #0x50a1
      008BAB F6               [ 1]  202 	ld	a, (x)
      008BAC 1A 09            [ 1]  203 	or	a, (0x09, sp)
      008BAE AE 50 A1         [ 2]  204 	ldw	x, #0x50a1
      008BB1 F7               [ 1]  205 	ld	(x), a
                           0000BA   206 	Sstm8s_exti$EXTI_SetExtIntSensitivity$29 ==.
                                    207 ;	StdPeriphLib/src/stm8s_exti.c: 101: }
      008BB2                        208 00108$:
                           0000BA   209 	Sstm8s_exti$EXTI_SetExtIntSensitivity$30 ==.
                                    210 ;	StdPeriphLib/src/stm8s_exti.c: 102: }
      008BB2 5B 03            [ 2]  211 	addw	sp, #3
                           0000BC   212 	Sstm8s_exti$EXTI_SetExtIntSensitivity$31 ==.
                           0000BC   213 	XG$EXTI_SetExtIntSensitivity$0$0 ==.
      008BB4 32 01 A4         [ 1]  214 	pop	_fp_
      008BB7 32 01 A5         [ 1]  215 	pop	_fp_+1
      008BBA 81               [ 4]  216 	ret
                           0000C3   217 	Sstm8s_exti$EXTI_SetExtIntSensitivity$32 ==.
                           0000C3   218 	Sstm8s_exti$EXTI_SetTLISensitivity$33 ==.
                                    219 ;	StdPeriphLib/src/stm8s_exti.c: 111: void EXTI_SetTLISensitivity(EXTI_TLISensitivity_TypeDef SensitivityValue)
                                    220 ;	-----------------------------------------
                                    221 ;	 function EXTI_SetTLISensitivity
                                    222 ;	-----------------------------------------
      008BBB                        223 _EXTI_SetTLISensitivity:
      008BBB 3B 01 A5         [ 1]  224 	push	_fp_+1
      008BBE 3B 01 A4         [ 1]  225 	push	_fp_
      008BC1 90 96            [ 1]  226 	ldw	y, sp
      008BC3 90 CF 01 A4      [ 2]  227 	ldw	_fp_, y
                           0000CF   228 	Sstm8s_exti$EXTI_SetTLISensitivity$34 ==.
                           0000CF   229 	Sstm8s_exti$EXTI_SetTLISensitivity$35 ==.
                                    230 ;	StdPeriphLib/src/stm8s_exti.c: 117: EXTI->CR2 &= (uint8_t)(~EXTI_CR2_TLIS);
      008BC7 AE 50 A1         [ 2]  231 	ldw	x, #0x50a1
      008BCA F6               [ 1]  232 	ld	a, (x)
      008BCB A4 FB            [ 1]  233 	and	a, #0xfb
      008BCD F7               [ 1]  234 	ld	(x), a
                           0000D6   235 	Sstm8s_exti$EXTI_SetTLISensitivity$36 ==.
                                    236 ;	StdPeriphLib/src/stm8s_exti.c: 118: EXTI->CR2 |= (uint8_t)(SensitivityValue);
      008BCE AE 50 A1         [ 2]  237 	ldw	x, #0x50a1
      008BD1 F6               [ 1]  238 	ld	a, (x)
      008BD2 1A 05            [ 1]  239 	or	a, (0x05, sp)
      008BD4 AE 50 A1         [ 2]  240 	ldw	x, #0x50a1
      008BD7 F7               [ 1]  241 	ld	(x), a
                           0000E0   242 	Sstm8s_exti$EXTI_SetTLISensitivity$37 ==.
                                    243 ;	StdPeriphLib/src/stm8s_exti.c: 119: }
                           0000E0   244 	Sstm8s_exti$EXTI_SetTLISensitivity$38 ==.
                           0000E0   245 	XG$EXTI_SetTLISensitivity$0$0 ==.
      008BD8 32 01 A4         [ 1]  246 	pop	_fp_
      008BDB 32 01 A5         [ 1]  247 	pop	_fp_+1
      008BDE 81               [ 4]  248 	ret
                           0000E7   249 	Sstm8s_exti$EXTI_SetTLISensitivity$39 ==.
                           0000E7   250 	Sstm8s_exti$EXTI_GetExtIntSensitivity$40 ==.
                                    251 ;	StdPeriphLib/src/stm8s_exti.c: 126: EXTI_Sensitivity_TypeDef EXTI_GetExtIntSensitivity(EXTI_Port_TypeDef Port)
                                    252 ;	-----------------------------------------
                                    253 ;	 function EXTI_GetExtIntSensitivity
                                    254 ;	-----------------------------------------
      008BDF                        255 _EXTI_GetExtIntSensitivity:
      008BDF 3B 01 A5         [ 1]  256 	push	_fp_+1
      008BE2 3B 01 A4         [ 1]  257 	push	_fp_
      008BE5 90 96            [ 1]  258 	ldw	y, sp
      008BE7 90 CF 01 A4      [ 2]  259 	ldw	_fp_, y
                           0000F3   260 	Sstm8s_exti$EXTI_GetExtIntSensitivity$41 ==.
                           0000F3   261 	Sstm8s_exti$EXTI_GetExtIntSensitivity$42 ==.
                                    262 ;	StdPeriphLib/src/stm8s_exti.c: 128: uint8_t value = 0;
      008BEB 4F               [ 1]  263 	clr	a
                           0000F4   264 	Sstm8s_exti$EXTI_GetExtIntSensitivity$43 ==.
                                    265 ;	StdPeriphLib/src/stm8s_exti.c: 133: switch (Port)
      008BEC 88               [ 1]  266 	push	a
      008BED 7B 06            [ 1]  267 	ld	a, (0x06, sp)
      008BEF A1 04            [ 1]  268 	cp	a, #0x04
      008BF1 84               [ 1]  269 	pop	a
      008BF2 23 03            [ 2]  270 	jrule	00113$
      008BF4 CC 8C 3A         [ 2]  271 	jp	00107$
      008BF7                        272 00113$:
      008BF7 5F               [ 1]  273 	clrw	x
      008BF8 7B 05            [ 1]  274 	ld	a, (0x05, sp)
      008BFA 97               [ 1]  275 	ld	xl, a
      008BFB 58               [ 2]  276 	sllw	x
      008BFC DE 8C 00         [ 2]  277 	ldw	x, (#00114$, x)
      008BFF FC               [ 2]  278 	jp	(x)
      008C00                        279 00114$:
      008C00 8C 0A                  280 	.dw	#00101$
      008C02 8C 12                  281 	.dw	#00102$
      008C04 8C 1C                  282 	.dw	#00103$
      008C06 8C 27                  283 	.dw	#00104$
      008C08 8C 34                  284 	.dw	#00105$
                           000112   285 	Sstm8s_exti$EXTI_GetExtIntSensitivity$44 ==.
                                    286 ;	StdPeriphLib/src/stm8s_exti.c: 135: case EXTI_PORT_GPIOA:
      008C0A                        287 00101$:
                           000112   288 	Sstm8s_exti$EXTI_GetExtIntSensitivity$45 ==.
                                    289 ;	StdPeriphLib/src/stm8s_exti.c: 136: value = (uint8_t)(EXTI->CR1 & EXTI_CR1_PAIS);
      008C0A AE 50 A0         [ 2]  290 	ldw	x, #0x50a0
      008C0D F6               [ 1]  291 	ld	a, (x)
      008C0E A4 03            [ 1]  292 	and	a, #0x03
                           000118   293 	Sstm8s_exti$EXTI_GetExtIntSensitivity$46 ==.
                                    294 ;	StdPeriphLib/src/stm8s_exti.c: 137: break;
      008C10 20 28            [ 2]  295 	jra	00107$
                           00011A   296 	Sstm8s_exti$EXTI_GetExtIntSensitivity$47 ==.
                                    297 ;	StdPeriphLib/src/stm8s_exti.c: 138: case EXTI_PORT_GPIOB:
      008C12                        298 00102$:
                           00011A   299 	Sstm8s_exti$EXTI_GetExtIntSensitivity$48 ==.
                                    300 ;	StdPeriphLib/src/stm8s_exti.c: 139: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PBIS) >> 2);
      008C12 AE 50 A0         [ 2]  301 	ldw	x, #0x50a0
      008C15 F6               [ 1]  302 	ld	a, (x)
      008C16 A4 0C            [ 1]  303 	and	a, #0x0c
      008C18 44               [ 1]  304 	srl	a
      008C19 44               [ 1]  305 	srl	a
                           000122   306 	Sstm8s_exti$EXTI_GetExtIntSensitivity$49 ==.
                                    307 ;	StdPeriphLib/src/stm8s_exti.c: 140: break;
      008C1A 20 1E            [ 2]  308 	jra	00107$
                           000124   309 	Sstm8s_exti$EXTI_GetExtIntSensitivity$50 ==.
                                    310 ;	StdPeriphLib/src/stm8s_exti.c: 141: case EXTI_PORT_GPIOC:
      008C1C                        311 00103$:
                           000124   312 	Sstm8s_exti$EXTI_GetExtIntSensitivity$51 ==.
                                    313 ;	StdPeriphLib/src/stm8s_exti.c: 142: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PCIS) >> 4);
      008C1C AE 50 A0         [ 2]  314 	ldw	x, #0x50a0
      008C1F F6               [ 1]  315 	ld	a, (x)
      008C20 A4 30            [ 1]  316 	and	a, #0x30
      008C22 4E               [ 1]  317 	swap	a
      008C23 A4 0F            [ 1]  318 	and	a, #0x0f
                           00012D   319 	Sstm8s_exti$EXTI_GetExtIntSensitivity$52 ==.
                                    320 ;	StdPeriphLib/src/stm8s_exti.c: 143: break;
      008C25 20 13            [ 2]  321 	jra	00107$
                           00012F   322 	Sstm8s_exti$EXTI_GetExtIntSensitivity$53 ==.
                                    323 ;	StdPeriphLib/src/stm8s_exti.c: 144: case EXTI_PORT_GPIOD:
      008C27                        324 00104$:
                           00012F   325 	Sstm8s_exti$EXTI_GetExtIntSensitivity$54 ==.
                                    326 ;	StdPeriphLib/src/stm8s_exti.c: 145: value = (uint8_t)((uint8_t)(EXTI->CR1 & EXTI_CR1_PDIS) >> 6);
      008C27 AE 50 A0         [ 2]  327 	ldw	x, #0x50a0
      008C2A F6               [ 1]  328 	ld	a, (x)
      008C2B A4 C0            [ 1]  329 	and	a, #0xc0
      008C2D 4E               [ 1]  330 	swap	a
      008C2E A4 0F            [ 1]  331 	and	a, #0x0f
      008C30 44               [ 1]  332 	srl	a
      008C31 44               [ 1]  333 	srl	a
                           00013A   334 	Sstm8s_exti$EXTI_GetExtIntSensitivity$55 ==.
                                    335 ;	StdPeriphLib/src/stm8s_exti.c: 146: break;
      008C32 20 06            [ 2]  336 	jra	00107$
                           00013C   337 	Sstm8s_exti$EXTI_GetExtIntSensitivity$56 ==.
                                    338 ;	StdPeriphLib/src/stm8s_exti.c: 147: case EXTI_PORT_GPIOE:
      008C34                        339 00105$:
                           00013C   340 	Sstm8s_exti$EXTI_GetExtIntSensitivity$57 ==.
                                    341 ;	StdPeriphLib/src/stm8s_exti.c: 148: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_PEIS);
      008C34 AE 50 A1         [ 2]  342 	ldw	x, #0x50a1
      008C37 F6               [ 1]  343 	ld	a, (x)
      008C38 A4 03            [ 1]  344 	and	a, #0x03
                           000142   345 	Sstm8s_exti$EXTI_GetExtIntSensitivity$58 ==.
                                    346 ;	StdPeriphLib/src/stm8s_exti.c: 152: }
      008C3A                        347 00107$:
                           000142   348 	Sstm8s_exti$EXTI_GetExtIntSensitivity$59 ==.
                                    349 ;	StdPeriphLib/src/stm8s_exti.c: 154: return((EXTI_Sensitivity_TypeDef)value);
                           000142   350 	Sstm8s_exti$EXTI_GetExtIntSensitivity$60 ==.
                                    351 ;	StdPeriphLib/src/stm8s_exti.c: 155: }
                           000142   352 	Sstm8s_exti$EXTI_GetExtIntSensitivity$61 ==.
                           000142   353 	XG$EXTI_GetExtIntSensitivity$0$0 ==.
      008C3A 32 01 A4         [ 1]  354 	pop	_fp_
      008C3D 32 01 A5         [ 1]  355 	pop	_fp_+1
      008C40 81               [ 4]  356 	ret
                           000149   357 	Sstm8s_exti$EXTI_GetExtIntSensitivity$62 ==.
                           000149   358 	Sstm8s_exti$EXTI_GetTLISensitivity$63 ==.
                                    359 ;	StdPeriphLib/src/stm8s_exti.c: 162: EXTI_TLISensitivity_TypeDef EXTI_GetTLISensitivity(void)
                                    360 ;	-----------------------------------------
                                    361 ;	 function EXTI_GetTLISensitivity
                                    362 ;	-----------------------------------------
      008C41                        363 _EXTI_GetTLISensitivity:
      008C41 3B 01 A5         [ 1]  364 	push	_fp_+1
      008C44 3B 01 A4         [ 1]  365 	push	_fp_
      008C47 90 96            [ 1]  366 	ldw	y, sp
      008C49 90 CF 01 A4      [ 2]  367 	ldw	_fp_, y
                           000155   368 	Sstm8s_exti$EXTI_GetTLISensitivity$64 ==.
                           000155   369 	Sstm8s_exti$EXTI_GetTLISensitivity$65 ==.
                                    370 ;	StdPeriphLib/src/stm8s_exti.c: 167: value = (uint8_t)(EXTI->CR2 & EXTI_CR2_TLIS);
      008C4D AE 50 A1         [ 2]  371 	ldw	x, #0x50a1
      008C50 F6               [ 1]  372 	ld	a, (x)
      008C51 A4 04            [ 1]  373 	and	a, #0x04
                           00015B   374 	Sstm8s_exti$EXTI_GetTLISensitivity$66 ==.
                                    375 ;	StdPeriphLib/src/stm8s_exti.c: 169: return((EXTI_TLISensitivity_TypeDef)value);
                           00015B   376 	Sstm8s_exti$EXTI_GetTLISensitivity$67 ==.
                                    377 ;	StdPeriphLib/src/stm8s_exti.c: 170: }
                           00015B   378 	Sstm8s_exti$EXTI_GetTLISensitivity$68 ==.
                           00015B   379 	XG$EXTI_GetTLISensitivity$0$0 ==.
      008C53 32 01 A4         [ 1]  380 	pop	_fp_
      008C56 32 01 A5         [ 1]  381 	pop	_fp_+1
      008C59 81               [ 4]  382 	ret
                           000162   383 	Sstm8s_exti$EXTI_GetTLISensitivity$69 ==.
                                    384 	.area CODE
                                    385 	.area INITIALIZER
                                    386 	.area CABS (ABS)
                                    387 
                                    388 	.area .debug_line (NOLOAD)
      001076 00 00 02 9F            389 	.dw	0,Ldebug_line_end-Ldebug_line_start
      00107A                        390 Ldebug_line_start:
      00107A 00 02                  391 	.dw	2
      00107C 00 00 01 19            392 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      001080 01                     393 	.db	1
      001081 01                     394 	.db	1
      001082 FB                     395 	.db	-5
      001083 0F                     396 	.db	15
      001084 0A                     397 	.db	10
      001085 00                     398 	.db	0
      001086 01                     399 	.db	1
      001087 01                     400 	.db	1
      001088 01                     401 	.db	1
      001089 01                     402 	.db	1
      00108A 00                     403 	.db	0
      00108B 00                     404 	.db	0
      00108C 00                     405 	.db	0
      00108D 01                     406 	.db	1
      00108E 2F 68 6F 6D 65 2F 63   407 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      0010CD 00                     408 	.db	0
      0010CE 2F 68 6F 6D 65 2F 63   409 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      001106 00                     410 	.db	0
      001107 2F 68 6F 6D 65 2F 63   411 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      001141 00                     412 	.db	0
      001142 2F 68 6F 6D 65 2F 63   413 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      001175 00                     414 	.db	0
      001176 00                     415 	.db	0
      001177 53 74 64 50 65 72 69   416 	.ascii "StdPeriphLib/src/stm8s_exti.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 65 78 74 69 2E
             63
      001194 00                     417 	.db	0
      001195 00                     418 	.uleb128	0
      001196 00                     419 	.uleb128	0
      001197 00                     420 	.uleb128	0
      001198 00                     421 	.db	0
      001199                        422 Ldebug_line_stmt:
      001199 00                     423 	.db	0
      00119A 05                     424 	.uleb128	5
      00119B 02                     425 	.db	2
      00119C 00 00 8A F8            426 	.dw	0,(Sstm8s_exti$EXTI_DeInit$0)
      0011A0 03                     427 	.db	3
      0011A1 34                     428 	.sleb128	52
      0011A2 01                     429 	.db	1
      0011A3 09                     430 	.db	9
      0011A4 00 0C                  431 	.dw	Sstm8s_exti$EXTI_DeInit$2-Sstm8s_exti$EXTI_DeInit$0
      0011A6 03                     432 	.db	3
      0011A7 02                     433 	.sleb128	2
      0011A8 01                     434 	.db	1
      0011A9 09                     435 	.db	9
      0011AA 00 04                  436 	.dw	Sstm8s_exti$EXTI_DeInit$3-Sstm8s_exti$EXTI_DeInit$2
      0011AC 03                     437 	.db	3
      0011AD 01                     438 	.sleb128	1
      0011AE 01                     439 	.db	1
      0011AF 09                     440 	.db	9
      0011B0 00 04                  441 	.dw	Sstm8s_exti$EXTI_DeInit$4-Sstm8s_exti$EXTI_DeInit$3
      0011B2 03                     442 	.db	3
      0011B3 01                     443 	.sleb128	1
      0011B4 01                     444 	.db	1
      0011B5 09                     445 	.db	9
      0011B6 00 07                  446 	.dw	7+Sstm8s_exti$EXTI_DeInit$5-Sstm8s_exti$EXTI_DeInit$4
      0011B8 00                     447 	.db	0
      0011B9 01                     448 	.uleb128	1
      0011BA 01                     449 	.db	1
      0011BB 00                     450 	.db	0
      0011BC 05                     451 	.uleb128	5
      0011BD 02                     452 	.db	2
      0011BE 00 00 8B 13            453 	.dw	0,(Sstm8s_exti$EXTI_SetExtIntSensitivity$7)
      0011C2 03                     454 	.db	3
      0011C3 C5 00                  455 	.sleb128	69
      0011C5 01                     456 	.db	1
      0011C6 09                     457 	.db	9
      0011C7 00 0E                  458 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$9-Sstm8s_exti$EXTI_SetExtIntSensitivity$7
      0011C9 03                     459 	.db	3
      0011CA 07                     460 	.sleb128	7
      0011CB 01                     461 	.db	1
      0011CC 09                     462 	.db	9
      0011CD 00 1C                  463 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$10-Sstm8s_exti$EXTI_SetExtIntSensitivity$9
      0011CF 03                     464 	.db	3
      0011D0 02                     465 	.sleb128	2
      0011D1 01                     466 	.db	1
      0011D2 09                     467 	.db	9
      0011D3 00 00                  468 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$11-Sstm8s_exti$EXTI_SetExtIntSensitivity$10
      0011D5 03                     469 	.db	3
      0011D6 01                     470 	.sleb128	1
      0011D7 01                     471 	.db	1
      0011D8 09                     472 	.db	9
      0011D9 00 07                  473 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$12-Sstm8s_exti$EXTI_SetExtIntSensitivity$11
      0011DB 03                     474 	.db	3
      0011DC 01                     475 	.sleb128	1
      0011DD 01                     476 	.db	1
      0011DE 09                     477 	.db	9
      0011DF 00 0A                  478 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$13-Sstm8s_exti$EXTI_SetExtIntSensitivity$12
      0011E1 03                     479 	.db	3
      0011E2 01                     480 	.sleb128	1
      0011E3 01                     481 	.db	1
      0011E4 09                     482 	.db	9
      0011E5 00 03                  483 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$14-Sstm8s_exti$EXTI_SetExtIntSensitivity$13
      0011E7 03                     484 	.db	3
      0011E8 01                     485 	.sleb128	1
      0011E9 01                     486 	.db	1
      0011EA 09                     487 	.db	9
      0011EB 00 00                  488 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$15-Sstm8s_exti$EXTI_SetExtIntSensitivity$14
      0011ED 03                     489 	.db	3
      0011EE 01                     490 	.sleb128	1
      0011EF 01                     491 	.db	1
      0011F0 09                     492 	.db	9
      0011F1 00 07                  493 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$16-Sstm8s_exti$EXTI_SetExtIntSensitivity$15
      0011F3 03                     494 	.db	3
      0011F4 01                     495 	.sleb128	1
      0011F5 01                     496 	.db	1
      0011F6 09                     497 	.db	9
      0011F7 00 10                  498 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$17-Sstm8s_exti$EXTI_SetExtIntSensitivity$16
      0011F9 03                     499 	.db	3
      0011FA 01                     500 	.sleb128	1
      0011FB 01                     501 	.db	1
      0011FC 09                     502 	.db	9
      0011FD 00 03                  503 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$18-Sstm8s_exti$EXTI_SetExtIntSensitivity$17
      0011FF 03                     504 	.db	3
      001200 01                     505 	.sleb128	1
      001201 01                     506 	.db	1
      001202 09                     507 	.db	9
      001203 00 00                  508 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$19-Sstm8s_exti$EXTI_SetExtIntSensitivity$18
      001205 03                     509 	.db	3
      001206 01                     510 	.sleb128	1
      001207 01                     511 	.db	1
      001208 09                     512 	.db	9
      001209 00 07                  513 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$20-Sstm8s_exti$EXTI_SetExtIntSensitivity$19
      00120B 03                     514 	.db	3
      00120C 01                     515 	.sleb128	1
      00120D 01                     516 	.db	1
      00120E 09                     517 	.db	9
      00120F 00 11                  518 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$21-Sstm8s_exti$EXTI_SetExtIntSensitivity$20
      001211 03                     519 	.db	3
      001212 01                     520 	.sleb128	1
      001213 01                     521 	.db	1
      001214 09                     522 	.db	9
      001215 00 02                  523 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$22-Sstm8s_exti$EXTI_SetExtIntSensitivity$21
      001217 03                     524 	.db	3
      001218 01                     525 	.sleb128	1
      001219 01                     526 	.db	1
      00121A 09                     527 	.db	9
      00121B 00 00                  528 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$23-Sstm8s_exti$EXTI_SetExtIntSensitivity$22
      00121D 03                     529 	.db	3
      00121E 01                     530 	.sleb128	1
      00121F 01                     531 	.db	1
      001220 09                     532 	.db	9
      001221 00 07                  533 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$24-Sstm8s_exti$EXTI_SetExtIntSensitivity$23
      001223 03                     534 	.db	3
      001224 01                     535 	.sleb128	1
      001225 01                     536 	.db	1
      001226 09                     537 	.db	9
      001227 00 13                  538 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$25-Sstm8s_exti$EXTI_SetExtIntSensitivity$24
      001229 03                     539 	.db	3
      00122A 01                     540 	.sleb128	1
      00122B 01                     541 	.db	1
      00122C 09                     542 	.db	9
      00122D 00 02                  543 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$26-Sstm8s_exti$EXTI_SetExtIntSensitivity$25
      00122F 03                     544 	.db	3
      001230 01                     545 	.sleb128	1
      001231 01                     546 	.db	1
      001232 09                     547 	.db	9
      001233 00 00                  548 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$27-Sstm8s_exti$EXTI_SetExtIntSensitivity$26
      001235 03                     549 	.db	3
      001236 01                     550 	.sleb128	1
      001237 01                     551 	.db	1
      001238 09                     552 	.db	9
      001239 00 07                  553 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$28-Sstm8s_exti$EXTI_SetExtIntSensitivity$27
      00123B 03                     554 	.db	3
      00123C 01                     555 	.sleb128	1
      00123D 01                     556 	.db	1
      00123E 09                     557 	.db	9
      00123F 00 0A                  558 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$29-Sstm8s_exti$EXTI_SetExtIntSensitivity$28
      001241 03                     559 	.db	3
      001242 04                     560 	.sleb128	4
      001243 01                     561 	.db	1
      001244 09                     562 	.db	9
      001245 00 00                  563 	.dw	Sstm8s_exti$EXTI_SetExtIntSensitivity$30-Sstm8s_exti$EXTI_SetExtIntSensitivity$29
      001247 03                     564 	.db	3
      001248 01                     565 	.sleb128	1
      001249 01                     566 	.db	1
      00124A 09                     567 	.db	9
      00124B 00 09                  568 	.dw	7+Sstm8s_exti$EXTI_SetExtIntSensitivity$31-Sstm8s_exti$EXTI_SetExtIntSensitivity$30
      00124D 00                     569 	.db	0
      00124E 01                     570 	.uleb128	1
      00124F 01                     571 	.db	1
      001250 00                     572 	.db	0
      001251 05                     573 	.uleb128	5
      001252 02                     574 	.db	2
      001253 00 00 8B BB            575 	.dw	0,(Sstm8s_exti$EXTI_SetTLISensitivity$33)
      001257 03                     576 	.db	3
      001258 EE 00                  577 	.sleb128	110
      00125A 01                     578 	.db	1
      00125B 09                     579 	.db	9
      00125C 00 0C                  580 	.dw	Sstm8s_exti$EXTI_SetTLISensitivity$35-Sstm8s_exti$EXTI_SetTLISensitivity$33
      00125E 03                     581 	.db	3
      00125F 06                     582 	.sleb128	6
      001260 01                     583 	.db	1
      001261 09                     584 	.db	9
      001262 00 07                  585 	.dw	Sstm8s_exti$EXTI_SetTLISensitivity$36-Sstm8s_exti$EXTI_SetTLISensitivity$35
      001264 03                     586 	.db	3
      001265 01                     587 	.sleb128	1
      001266 01                     588 	.db	1
      001267 09                     589 	.db	9
      001268 00 0A                  590 	.dw	Sstm8s_exti$EXTI_SetTLISensitivity$37-Sstm8s_exti$EXTI_SetTLISensitivity$36
      00126A 03                     591 	.db	3
      00126B 01                     592 	.sleb128	1
      00126C 01                     593 	.db	1
      00126D 09                     594 	.db	9
      00126E 00 07                  595 	.dw	7+Sstm8s_exti$EXTI_SetTLISensitivity$38-Sstm8s_exti$EXTI_SetTLISensitivity$37
      001270 00                     596 	.db	0
      001271 01                     597 	.uleb128	1
      001272 01                     598 	.db	1
      001273 00                     599 	.db	0
      001274 05                     600 	.uleb128	5
      001275 02                     601 	.db	2
      001276 00 00 8B DF            602 	.dw	0,(Sstm8s_exti$EXTI_GetExtIntSensitivity$40)
      00127A 03                     603 	.db	3
      00127B FD 00                  604 	.sleb128	125
      00127D 01                     605 	.db	1
      00127E 09                     606 	.db	9
      00127F 00 0C                  607 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$42-Sstm8s_exti$EXTI_GetExtIntSensitivity$40
      001281 03                     608 	.db	3
      001282 02                     609 	.sleb128	2
      001283 01                     610 	.db	1
      001284 09                     611 	.db	9
      001285 00 01                  612 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$43-Sstm8s_exti$EXTI_GetExtIntSensitivity$42
      001287 03                     613 	.db	3
      001288 05                     614 	.sleb128	5
      001289 01                     615 	.db	1
      00128A 09                     616 	.db	9
      00128B 00 1E                  617 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$44-Sstm8s_exti$EXTI_GetExtIntSensitivity$43
      00128D 03                     618 	.db	3
      00128E 02                     619 	.sleb128	2
      00128F 01                     620 	.db	1
      001290 09                     621 	.db	9
      001291 00 00                  622 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$45-Sstm8s_exti$EXTI_GetExtIntSensitivity$44
      001293 03                     623 	.db	3
      001294 01                     624 	.sleb128	1
      001295 01                     625 	.db	1
      001296 09                     626 	.db	9
      001297 00 06                  627 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$46-Sstm8s_exti$EXTI_GetExtIntSensitivity$45
      001299 03                     628 	.db	3
      00129A 01                     629 	.sleb128	1
      00129B 01                     630 	.db	1
      00129C 09                     631 	.db	9
      00129D 00 02                  632 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$47-Sstm8s_exti$EXTI_GetExtIntSensitivity$46
      00129F 03                     633 	.db	3
      0012A0 01                     634 	.sleb128	1
      0012A1 01                     635 	.db	1
      0012A2 09                     636 	.db	9
      0012A3 00 00                  637 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$48-Sstm8s_exti$EXTI_GetExtIntSensitivity$47
      0012A5 03                     638 	.db	3
      0012A6 01                     639 	.sleb128	1
      0012A7 01                     640 	.db	1
      0012A8 09                     641 	.db	9
      0012A9 00 08                  642 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$49-Sstm8s_exti$EXTI_GetExtIntSensitivity$48
      0012AB 03                     643 	.db	3
      0012AC 01                     644 	.sleb128	1
      0012AD 01                     645 	.db	1
      0012AE 09                     646 	.db	9
      0012AF 00 02                  647 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$50-Sstm8s_exti$EXTI_GetExtIntSensitivity$49
      0012B1 03                     648 	.db	3
      0012B2 01                     649 	.sleb128	1
      0012B3 01                     650 	.db	1
      0012B4 09                     651 	.db	9
      0012B5 00 00                  652 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$51-Sstm8s_exti$EXTI_GetExtIntSensitivity$50
      0012B7 03                     653 	.db	3
      0012B8 01                     654 	.sleb128	1
      0012B9 01                     655 	.db	1
      0012BA 09                     656 	.db	9
      0012BB 00 09                  657 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$52-Sstm8s_exti$EXTI_GetExtIntSensitivity$51
      0012BD 03                     658 	.db	3
      0012BE 01                     659 	.sleb128	1
      0012BF 01                     660 	.db	1
      0012C0 09                     661 	.db	9
      0012C1 00 02                  662 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$53-Sstm8s_exti$EXTI_GetExtIntSensitivity$52
      0012C3 03                     663 	.db	3
      0012C4 01                     664 	.sleb128	1
      0012C5 01                     665 	.db	1
      0012C6 09                     666 	.db	9
      0012C7 00 00                  667 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$54-Sstm8s_exti$EXTI_GetExtIntSensitivity$53
      0012C9 03                     668 	.db	3
      0012CA 01                     669 	.sleb128	1
      0012CB 01                     670 	.db	1
      0012CC 09                     671 	.db	9
      0012CD 00 0B                  672 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$55-Sstm8s_exti$EXTI_GetExtIntSensitivity$54
      0012CF 03                     673 	.db	3
      0012D0 01                     674 	.sleb128	1
      0012D1 01                     675 	.db	1
      0012D2 09                     676 	.db	9
      0012D3 00 02                  677 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$56-Sstm8s_exti$EXTI_GetExtIntSensitivity$55
      0012D5 03                     678 	.db	3
      0012D6 01                     679 	.sleb128	1
      0012D7 01                     680 	.db	1
      0012D8 09                     681 	.db	9
      0012D9 00 00                  682 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$57-Sstm8s_exti$EXTI_GetExtIntSensitivity$56
      0012DB 03                     683 	.db	3
      0012DC 01                     684 	.sleb128	1
      0012DD 01                     685 	.db	1
      0012DE 09                     686 	.db	9
      0012DF 00 06                  687 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$58-Sstm8s_exti$EXTI_GetExtIntSensitivity$57
      0012E1 03                     688 	.db	3
      0012E2 04                     689 	.sleb128	4
      0012E3 01                     690 	.db	1
      0012E4 09                     691 	.db	9
      0012E5 00 00                  692 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$59-Sstm8s_exti$EXTI_GetExtIntSensitivity$58
      0012E7 03                     693 	.db	3
      0012E8 02                     694 	.sleb128	2
      0012E9 01                     695 	.db	1
      0012EA 09                     696 	.db	9
      0012EB 00 00                  697 	.dw	Sstm8s_exti$EXTI_GetExtIntSensitivity$60-Sstm8s_exti$EXTI_GetExtIntSensitivity$59
      0012ED 03                     698 	.db	3
      0012EE 01                     699 	.sleb128	1
      0012EF 01                     700 	.db	1
      0012F0 09                     701 	.db	9
      0012F1 00 07                  702 	.dw	7+Sstm8s_exti$EXTI_GetExtIntSensitivity$61-Sstm8s_exti$EXTI_GetExtIntSensitivity$60
      0012F3 00                     703 	.db	0
      0012F4 01                     704 	.uleb128	1
      0012F5 01                     705 	.db	1
      0012F6 00                     706 	.db	0
      0012F7 05                     707 	.uleb128	5
      0012F8 02                     708 	.db	2
      0012F9 00 00 8C 41            709 	.dw	0,(Sstm8s_exti$EXTI_GetTLISensitivity$63)
      0012FD 03                     710 	.db	3
      0012FE A1 01                  711 	.sleb128	161
      001300 01                     712 	.db	1
      001301 09                     713 	.db	9
      001302 00 0C                  714 	.dw	Sstm8s_exti$EXTI_GetTLISensitivity$65-Sstm8s_exti$EXTI_GetTLISensitivity$63
      001304 03                     715 	.db	3
      001305 05                     716 	.sleb128	5
      001306 01                     717 	.db	1
      001307 09                     718 	.db	9
      001308 00 06                  719 	.dw	Sstm8s_exti$EXTI_GetTLISensitivity$66-Sstm8s_exti$EXTI_GetTLISensitivity$65
      00130A 03                     720 	.db	3
      00130B 02                     721 	.sleb128	2
      00130C 01                     722 	.db	1
      00130D 09                     723 	.db	9
      00130E 00 00                  724 	.dw	Sstm8s_exti$EXTI_GetTLISensitivity$67-Sstm8s_exti$EXTI_GetTLISensitivity$66
      001310 03                     725 	.db	3
      001311 01                     726 	.sleb128	1
      001312 01                     727 	.db	1
      001313 09                     728 	.db	9
      001314 00 07                  729 	.dw	7+Sstm8s_exti$EXTI_GetTLISensitivity$68-Sstm8s_exti$EXTI_GetTLISensitivity$67
      001316 00                     730 	.db	0
      001317 01                     731 	.uleb128	1
      001318 01                     732 	.db	1
      001319                        733 Ldebug_line_end:
                                    734 
                                    735 	.area .debug_loc (NOLOAD)
      000370                        736 Ldebug_loc_start:
      000370 00 00 8C 4D            737 	.dw	0,(Sstm8s_exti$EXTI_GetTLISensitivity$64)
      000374 00 00 8C 5A            738 	.dw	0,(Sstm8s_exti$EXTI_GetTLISensitivity$69)
      000378 00 02                  739 	.dw	2
      00037A 8F                     740 	.db	143
      00037B 01                     741 	.sleb128	1
      00037C 00 00 00 00            742 	.dw	0,0
      000380 00 00 00 00            743 	.dw	0,0
      000384 00 00 8B EB            744 	.dw	0,(Sstm8s_exti$EXTI_GetExtIntSensitivity$41)
      000388 00 00 8C 41            745 	.dw	0,(Sstm8s_exti$EXTI_GetExtIntSensitivity$62)
      00038C 00 02                  746 	.dw	2
      00038E 8F                     747 	.db	143
      00038F 01                     748 	.sleb128	1
      000390 00 00 00 00            749 	.dw	0,0
      000394 00 00 00 00            750 	.dw	0,0
      000398 00 00 8B C7            751 	.dw	0,(Sstm8s_exti$EXTI_SetTLISensitivity$34)
      00039C 00 00 8B DF            752 	.dw	0,(Sstm8s_exti$EXTI_SetTLISensitivity$39)
      0003A0 00 02                  753 	.dw	2
      0003A2 8F                     754 	.db	143
      0003A3 01                     755 	.sleb128	1
      0003A4 00 00 00 00            756 	.dw	0,0
      0003A8 00 00 00 00            757 	.dw	0,0
      0003AC 00 00 8B 1F            758 	.dw	0,(Sstm8s_exti$EXTI_SetExtIntSensitivity$8)
      0003B0 00 00 8B BB            759 	.dw	0,(Sstm8s_exti$EXTI_SetExtIntSensitivity$32)
      0003B4 00 02                  760 	.dw	2
      0003B6 8F                     761 	.db	143
      0003B7 01                     762 	.sleb128	1
      0003B8 00 00 00 00            763 	.dw	0,0
      0003BC 00 00 00 00            764 	.dw	0,0
      0003C0 00 00 8B 04            765 	.dw	0,(Sstm8s_exti$EXTI_DeInit$1)
      0003C4 00 00 8B 13            766 	.dw	0,(Sstm8s_exti$EXTI_DeInit$6)
      0003C8 00 02                  767 	.dw	2
      0003CA 8F                     768 	.db	143
      0003CB 01                     769 	.sleb128	1
      0003CC 00 00 00 00            770 	.dw	0,0
      0003D0 00 00 00 00            771 	.dw	0,0
                                    772 
                                    773 	.area .debug_abbrev (NOLOAD)
      000239                        774 Ldebug_abbrev:
      000239 05                     775 	.uleb128	5
      00023A 0B                     776 	.uleb128	11
      00023B 00                     777 	.db	0
      00023C 00                     778 	.uleb128	0
      00023D 00                     779 	.uleb128	0
      00023E 09                     780 	.uleb128	9
      00023F 2E                     781 	.uleb128	46
      000240 01                     782 	.db	1
      000241 03                     783 	.uleb128	3
      000242 08                     784 	.uleb128	8
      000243 11                     785 	.uleb128	17
      000244 01                     786 	.uleb128	1
      000245 12                     787 	.uleb128	18
      000246 01                     788 	.uleb128	1
      000247 3F                     789 	.uleb128	63
      000248 0C                     790 	.uleb128	12
      000249 40                     791 	.uleb128	64
      00024A 06                     792 	.uleb128	6
      00024B 49                     793 	.uleb128	73
      00024C 13                     794 	.uleb128	19
      00024D 00                     795 	.uleb128	0
      00024E 00                     796 	.uleb128	0
      00024F 04                     797 	.uleb128	4
      000250 05                     798 	.uleb128	5
      000251 00                     799 	.db	0
      000252 02                     800 	.uleb128	2
      000253 0A                     801 	.uleb128	10
      000254 03                     802 	.uleb128	3
      000255 08                     803 	.uleb128	8
      000256 49                     804 	.uleb128	73
      000257 13                     805 	.uleb128	19
      000258 00                     806 	.uleb128	0
      000259 00                     807 	.uleb128	0
      00025A 03                     808 	.uleb128	3
      00025B 2E                     809 	.uleb128	46
      00025C 01                     810 	.db	1
      00025D 01                     811 	.uleb128	1
      00025E 13                     812 	.uleb128	19
      00025F 03                     813 	.uleb128	3
      000260 08                     814 	.uleb128	8
      000261 11                     815 	.uleb128	17
      000262 01                     816 	.uleb128	1
      000263 12                     817 	.uleb128	18
      000264 01                     818 	.uleb128	1
      000265 3F                     819 	.uleb128	63
      000266 0C                     820 	.uleb128	12
      000267 40                     821 	.uleb128	64
      000268 06                     822 	.uleb128	6
      000269 00                     823 	.uleb128	0
      00026A 00                     824 	.uleb128	0
      00026B 08                     825 	.uleb128	8
      00026C 34                     826 	.uleb128	52
      00026D 00                     827 	.db	0
      00026E 02                     828 	.uleb128	2
      00026F 0A                     829 	.uleb128	10
      000270 03                     830 	.uleb128	3
      000271 08                     831 	.uleb128	8
      000272 49                     832 	.uleb128	73
      000273 13                     833 	.uleb128	19
      000274 00                     834 	.uleb128	0
      000275 00                     835 	.uleb128	0
      000276 07                     836 	.uleb128	7
      000277 2E                     837 	.uleb128	46
      000278 01                     838 	.db	1
      000279 01                     839 	.uleb128	1
      00027A 13                     840 	.uleb128	19
      00027B 03                     841 	.uleb128	3
      00027C 08                     842 	.uleb128	8
      00027D 11                     843 	.uleb128	17
      00027E 01                     844 	.uleb128	1
      00027F 12                     845 	.uleb128	18
      000280 01                     846 	.uleb128	1
      000281 3F                     847 	.uleb128	63
      000282 0C                     848 	.uleb128	12
      000283 40                     849 	.uleb128	64
      000284 06                     850 	.uleb128	6
      000285 49                     851 	.uleb128	73
      000286 13                     852 	.uleb128	19
      000287 00                     853 	.uleb128	0
      000288 00                     854 	.uleb128	0
      000289 01                     855 	.uleb128	1
      00028A 11                     856 	.uleb128	17
      00028B 01                     857 	.db	1
      00028C 03                     858 	.uleb128	3
      00028D 08                     859 	.uleb128	8
      00028E 10                     860 	.uleb128	16
      00028F 06                     861 	.uleb128	6
      000290 13                     862 	.uleb128	19
      000291 0B                     863 	.uleb128	11
      000292 25                     864 	.uleb128	37
      000293 08                     865 	.uleb128	8
      000294 00                     866 	.uleb128	0
      000295 00                     867 	.uleb128	0
      000296 02                     868 	.uleb128	2
      000297 2E                     869 	.uleb128	46
      000298 00                     870 	.db	0
      000299 03                     871 	.uleb128	3
      00029A 08                     872 	.uleb128	8
      00029B 11                     873 	.uleb128	17
      00029C 01                     874 	.uleb128	1
      00029D 12                     875 	.uleb128	18
      00029E 01                     876 	.uleb128	1
      00029F 3F                     877 	.uleb128	63
      0002A0 0C                     878 	.uleb128	12
      0002A1 40                     879 	.uleb128	64
      0002A2 06                     880 	.uleb128	6
      0002A3 00                     881 	.uleb128	0
      0002A4 00                     882 	.uleb128	0
      0002A5 06                     883 	.uleb128	6
      0002A6 24                     884 	.uleb128	36
      0002A7 00                     885 	.db	0
      0002A8 03                     886 	.uleb128	3
      0002A9 08                     887 	.uleb128	8
      0002AA 0B                     888 	.uleb128	11
      0002AB 0B                     889 	.uleb128	11
      0002AC 3E                     890 	.uleb128	62
      0002AD 0B                     891 	.uleb128	11
      0002AE 00                     892 	.uleb128	0
      0002AF 00                     893 	.uleb128	0
      0002B0 00                     894 	.uleb128	0
                                    895 
                                    896 	.area .debug_info (NOLOAD)
      000E49 00 00 01 8C            897 	.dw	0,Ldebug_info_end-Ldebug_info_start
      000E4D                        898 Ldebug_info_start:
      000E4D 00 02                  899 	.dw	2
      000E4F 00 00 02 39            900 	.dw	0,(Ldebug_abbrev)
      000E53 04                     901 	.db	4
      000E54 01                     902 	.uleb128	1
      000E55 53 74 64 50 65 72 69   903 	.ascii "StdPeriphLib/src/stm8s_exti.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 65 78 74 69 2E
             63
      000E72 00                     904 	.db	0
      000E73 00 00 10 76            905 	.dw	0,(Ldebug_line_start+-4)
      000E77 01                     906 	.db	1
      000E78 53 44 43 43 20 76 65   907 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      000E90 00                     908 	.db	0
      000E91 02                     909 	.uleb128	2
      000E92 45 58 54 49 5F 44 65   910 	.ascii "EXTI_DeInit"
             49 6E 69 74
      000E9D 00                     911 	.db	0
      000E9E 00 00 8A F8            912 	.dw	0,(_EXTI_DeInit)
      000EA2 00 00 8B 13            913 	.dw	0,(XG$EXTI_DeInit$0$0+7)
      000EA6 01                     914 	.db	1
      000EA7 00 00 03 C0            915 	.dw	0,(Ldebug_loc_start+80)
      000EAB 03                     916 	.uleb128	3
      000EAC 00 00 00 B6            917 	.dw	0,182
      000EB0 45 58 54 49 5F 53 65   918 	.ascii "EXTI_SetExtIntSensitivity"
             74 45 78 74 49 6E 74
             53 65 6E 73 69 74 69
             76 69 74 79
      000EC9 00                     919 	.db	0
      000ECA 00 00 8B 13            920 	.dw	0,(_EXTI_SetExtIntSensitivity)
      000ECE 00 00 8B BB            921 	.dw	0,(XG$EXTI_SetExtIntSensitivity$0$0+7)
      000ED2 01                     922 	.db	1
      000ED3 00 00 03 AC            923 	.dw	0,(Ldebug_loc_start+60)
      000ED7 04                     924 	.uleb128	4
      000ED8 02                     925 	.db	2
      000ED9 91                     926 	.db	145
      000EDA 04                     927 	.sleb128	4
      000EDB 50 6F 72 74            928 	.ascii "Port"
      000EDF 00                     929 	.db	0
      000EE0 00 00 00 B6            930 	.dw	0,182
      000EE4 04                     931 	.uleb128	4
      000EE5 02                     932 	.db	2
      000EE6 91                     933 	.db	145
      000EE7 05                     934 	.sleb128	5
      000EE8 53 65 6E 73 69 74 69   935 	.ascii "SensitivityValue"
             76 69 74 79 56 61 6C
             75 65
      000EF8 00                     936 	.db	0
      000EF9 00 00 00 B6            937 	.dw	0,182
      000EFD 05                     938 	.uleb128	5
      000EFE 00                     939 	.uleb128	0
      000EFF 06                     940 	.uleb128	6
      000F00 75 6E 73 69 67 6E 65   941 	.ascii "unsigned char"
             64 20 63 68 61 72
      000F0D 00                     942 	.db	0
      000F0E 01                     943 	.db	1
      000F0F 08                     944 	.db	8
      000F10 03                     945 	.uleb128	3
      000F11 00 00 01 0A            946 	.dw	0,266
      000F15 45 58 54 49 5F 53 65   947 	.ascii "EXTI_SetTLISensitivity"
             74 54 4C 49 53 65 6E
             73 69 74 69 76 69 74
             79
      000F2B 00                     948 	.db	0
      000F2C 00 00 8B BB            949 	.dw	0,(_EXTI_SetTLISensitivity)
      000F30 00 00 8B DF            950 	.dw	0,(XG$EXTI_SetTLISensitivity$0$0+7)
      000F34 01                     951 	.db	1
      000F35 00 00 03 98            952 	.dw	0,(Ldebug_loc_start+40)
      000F39 04                     953 	.uleb128	4
      000F3A 02                     954 	.db	2
      000F3B 91                     955 	.db	145
      000F3C 04                     956 	.sleb128	4
      000F3D 53 65 6E 73 69 74 69   957 	.ascii "SensitivityValue"
             76 69 74 79 56 61 6C
             75 65
      000F4D 00                     958 	.db	0
      000F4E 00 00 00 B6            959 	.dw	0,182
      000F52 00                     960 	.uleb128	0
      000F53 07                     961 	.uleb128	7
      000F54 00 00 01 56            962 	.dw	0,342
      000F58 45 58 54 49 5F 47 65   963 	.ascii "EXTI_GetExtIntSensitivity"
             74 45 78 74 49 6E 74
             53 65 6E 73 69 74 69
             76 69 74 79
      000F71 00                     964 	.db	0
      000F72 00 00 8B DF            965 	.dw	0,(_EXTI_GetExtIntSensitivity)
      000F76 00 00 8C 41            966 	.dw	0,(XG$EXTI_GetExtIntSensitivity$0$0+7)
      000F7A 01                     967 	.db	1
      000F7B 00 00 03 84            968 	.dw	0,(Ldebug_loc_start+20)
      000F7F 00 00 00 B6            969 	.dw	0,182
      000F83 04                     970 	.uleb128	4
      000F84 02                     971 	.db	2
      000F85 91                     972 	.db	145
      000F86 04                     973 	.sleb128	4
      000F87 50 6F 72 74            974 	.ascii "Port"
      000F8B 00                     975 	.db	0
      000F8C 00 00 00 B6            976 	.dw	0,182
      000F90 05                     977 	.uleb128	5
      000F91 08                     978 	.uleb128	8
      000F92 01                     979 	.db	1
      000F93 51                     980 	.db	81
      000F94 76 61 6C 75 65         981 	.ascii "value"
      000F99 00                     982 	.db	0
      000F9A 00 00 00 B6            983 	.dw	0,182
      000F9E 00                     984 	.uleb128	0
      000F9F 09                     985 	.uleb128	9
      000FA0 45 58 54 49 5F 47 65   986 	.ascii "EXTI_GetTLISensitivity"
             74 54 4C 49 53 65 6E
             73 69 74 69 76 69 74
             79
      000FB6 00                     987 	.db	0
      000FB7 00 00 8C 41            988 	.dw	0,(_EXTI_GetTLISensitivity)
      000FBB 00 00 8C 5A            989 	.dw	0,(XG$EXTI_GetTLISensitivity$0$0+7)
      000FBF 01                     990 	.db	1
      000FC0 00 00 03 70            991 	.dw	0,(Ldebug_loc_start)
      000FC4 00 00 00 B6            992 	.dw	0,182
      000FC8 08                     993 	.uleb128	8
      000FC9 01                     994 	.db	1
      000FCA 51                     995 	.db	81
      000FCB 76 61 6C 75 65         996 	.ascii "value"
      000FD0 00                     997 	.db	0
      000FD1 00 00 00 B6            998 	.dw	0,182
      000FD5 00                     999 	.uleb128	0
      000FD6 00                    1000 	.uleb128	0
      000FD7 00                    1001 	.uleb128	0
      000FD8 00                    1002 	.uleb128	0
      000FD9                       1003 Ldebug_info_end:
                                   1004 
                                   1005 	.area .debug_pubnames (NOLOAD)
      0004BF 00 00 00 90           1006 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      0004C3                       1007 Ldebug_pubnames_start:
      0004C3 00 02                 1008 	.dw	2
      0004C5 00 00 0E 49           1009 	.dw	0,(Ldebug_info_start-4)
      0004C9 00 00 01 90           1010 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      0004CD 00 00 00 48           1011 	.dw	0,72
      0004D1 45 58 54 49 5F 44 65  1012 	.ascii "EXTI_DeInit"
             49 6E 69 74
      0004DC 00                    1013 	.db	0
      0004DD 00 00 00 62           1014 	.dw	0,98
      0004E1 45 58 54 49 5F 53 65  1015 	.ascii "EXTI_SetExtIntSensitivity"
             74 45 78 74 49 6E 74
             53 65 6E 73 69 74 69
             76 69 74 79
      0004FA 00                    1016 	.db	0
      0004FB 00 00 00 C7           1017 	.dw	0,199
      0004FF 45 58 54 49 5F 53 65  1018 	.ascii "EXTI_SetTLISensitivity"
             74 54 4C 49 53 65 6E
             73 69 74 69 76 69 74
             79
      000515 00                    1019 	.db	0
      000516 00 00 01 0A           1020 	.dw	0,266
      00051A 45 58 54 49 5F 47 65  1021 	.ascii "EXTI_GetExtIntSensitivity"
             74 45 78 74 49 6E 74
             53 65 6E 73 69 74 69
             76 69 74 79
      000533 00                    1022 	.db	0
      000534 00 00 01 56           1023 	.dw	0,342
      000538 45 58 54 49 5F 47 65  1024 	.ascii "EXTI_GetTLISensitivity"
             74 54 4C 49 53 65 6E
             73 69 74 69 76 69 74
             79
      00054E 00                    1025 	.db	0
      00054F 00 00 00 00           1026 	.dw	0,0
      000553                       1027 Ldebug_pubnames_end:
                                   1028 
                                   1029 	.area .debug_frame (NOLOAD)
      00005A 00 00                 1030 	.dw	0
      00005C 00 0E                 1031 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      00005E                       1032 Ldebug_CIE_start:
      00005E FF FF                 1033 	.dw	0xffff
      000060 FF FF                 1034 	.dw	0xffff
      000062 01                    1035 	.db	1
      000063 00                    1036 	.db	0
      000064 01                    1037 	.uleb128	1
      000065 01                    1038 	.sleb128	1
      000066 00                    1039 	.db	0
      000067 0C                    1040 	.db	12
      000068 00                    1041 	.uleb128	0
      000069 00                    1042 	.uleb128	0
      00006A 80                    1043 	.db	128
      00006B 00                    1044 	.uleb128	0
      00006C                       1045 Ldebug_CIE_end:
