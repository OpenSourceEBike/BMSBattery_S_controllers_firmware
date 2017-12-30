                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module stm8s_iwdg
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _IWDG_WriteAccessCmd
                                     12 	.globl _IWDG_SetPrescaler
                                     13 	.globl _IWDG_SetReload
                                     14 	.globl _IWDG_ReloadCounter
                                     15 	.globl _IWDG_Enable
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
                           000000    44 	Sstm8s_iwdg$IWDG_WriteAccessCmd$0 ==.
                                     45 ;	StdPeriphLib/src/stm8s_iwdg.c: 48: void IWDG_WriteAccessCmd(IWDG_WriteAccess_TypeDef IWDG_WriteAccess)
                                     46 ;	-----------------------------------------
                                     47 ;	 function IWDG_WriteAccessCmd
                                     48 ;	-----------------------------------------
      0088DD                         49 _IWDG_WriteAccessCmd:
      0088DD 3B 01 A5         [ 1]   50 	push	_fp_+1
      0088E0 3B 01 A4         [ 1]   51 	push	_fp_
      0088E3 90 96            [ 1]   52 	ldw	y, sp
      0088E5 90 CF 01 A4      [ 2]   53 	ldw	_fp_, y
                           00000C    54 	Sstm8s_iwdg$IWDG_WriteAccessCmd$1 ==.
                           00000C    55 	Sstm8s_iwdg$IWDG_WriteAccessCmd$2 ==.
                                     56 ;	StdPeriphLib/src/stm8s_iwdg.c: 53: IWDG->KR = (uint8_t)IWDG_WriteAccess; /* Write Access */
      0088E9 AE 50 E0         [ 2]   57 	ldw	x, #0x50e0
      0088EC 7B 05            [ 1]   58 	ld	a, (0x05, sp)
      0088EE F7               [ 1]   59 	ld	(x), a
                           000012    60 	Sstm8s_iwdg$IWDG_WriteAccessCmd$3 ==.
                                     61 ;	StdPeriphLib/src/stm8s_iwdg.c: 54: }
                           000012    62 	Sstm8s_iwdg$IWDG_WriteAccessCmd$4 ==.
                           000012    63 	XG$IWDG_WriteAccessCmd$0$0 ==.
      0088EF 32 01 A4         [ 1]   64 	pop	_fp_
      0088F2 32 01 A5         [ 1]   65 	pop	_fp_+1
      0088F5 81               [ 4]   66 	ret
                           000019    67 	Sstm8s_iwdg$IWDG_WriteAccessCmd$5 ==.
                           000019    68 	Sstm8s_iwdg$IWDG_SetPrescaler$6 ==.
                                     69 ;	StdPeriphLib/src/stm8s_iwdg.c: 63: void IWDG_SetPrescaler(IWDG_Prescaler_TypeDef IWDG_Prescaler)
                                     70 ;	-----------------------------------------
                                     71 ;	 function IWDG_SetPrescaler
                                     72 ;	-----------------------------------------
      0088F6                         73 _IWDG_SetPrescaler:
      0088F6 3B 01 A5         [ 1]   74 	push	_fp_+1
      0088F9 3B 01 A4         [ 1]   75 	push	_fp_
      0088FC 90 96            [ 1]   76 	ldw	y, sp
      0088FE 90 CF 01 A4      [ 2]   77 	ldw	_fp_, y
                           000025    78 	Sstm8s_iwdg$IWDG_SetPrescaler$7 ==.
                           000025    79 	Sstm8s_iwdg$IWDG_SetPrescaler$8 ==.
                                     80 ;	StdPeriphLib/src/stm8s_iwdg.c: 68: IWDG->PR = (uint8_t)IWDG_Prescaler;
      008902 AE 50 E1         [ 2]   81 	ldw	x, #0x50e1
      008905 7B 05            [ 1]   82 	ld	a, (0x05, sp)
      008907 F7               [ 1]   83 	ld	(x), a
                           00002B    84 	Sstm8s_iwdg$IWDG_SetPrescaler$9 ==.
                                     85 ;	StdPeriphLib/src/stm8s_iwdg.c: 69: }
                           00002B    86 	Sstm8s_iwdg$IWDG_SetPrescaler$10 ==.
                           00002B    87 	XG$IWDG_SetPrescaler$0$0 ==.
      008908 32 01 A4         [ 1]   88 	pop	_fp_
      00890B 32 01 A5         [ 1]   89 	pop	_fp_+1
      00890E 81               [ 4]   90 	ret
                           000032    91 	Sstm8s_iwdg$IWDG_SetPrescaler$11 ==.
                           000032    92 	Sstm8s_iwdg$IWDG_SetReload$12 ==.
                                     93 ;	StdPeriphLib/src/stm8s_iwdg.c: 78: void IWDG_SetReload(uint8_t IWDG_Reload)
                                     94 ;	-----------------------------------------
                                     95 ;	 function IWDG_SetReload
                                     96 ;	-----------------------------------------
      00890F                         97 _IWDG_SetReload:
      00890F 3B 01 A5         [ 1]   98 	push	_fp_+1
      008912 3B 01 A4         [ 1]   99 	push	_fp_
      008915 90 96            [ 1]  100 	ldw	y, sp
      008917 90 CF 01 A4      [ 2]  101 	ldw	_fp_, y
                           00003E   102 	Sstm8s_iwdg$IWDG_SetReload$13 ==.
                           00003E   103 	Sstm8s_iwdg$IWDG_SetReload$14 ==.
                                    104 ;	StdPeriphLib/src/stm8s_iwdg.c: 80: IWDG->RLR = IWDG_Reload;
      00891B AE 50 E2         [ 2]  105 	ldw	x, #0x50e2
      00891E 7B 05            [ 1]  106 	ld	a, (0x05, sp)
      008920 F7               [ 1]  107 	ld	(x), a
                           000044   108 	Sstm8s_iwdg$IWDG_SetReload$15 ==.
                                    109 ;	StdPeriphLib/src/stm8s_iwdg.c: 81: }
                           000044   110 	Sstm8s_iwdg$IWDG_SetReload$16 ==.
                           000044   111 	XG$IWDG_SetReload$0$0 ==.
      008921 32 01 A4         [ 1]  112 	pop	_fp_
      008924 32 01 A5         [ 1]  113 	pop	_fp_+1
      008927 81               [ 4]  114 	ret
                           00004B   115 	Sstm8s_iwdg$IWDG_SetReload$17 ==.
                           00004B   116 	Sstm8s_iwdg$IWDG_ReloadCounter$18 ==.
                                    117 ;	StdPeriphLib/src/stm8s_iwdg.c: 89: void IWDG_ReloadCounter(void)
                                    118 ;	-----------------------------------------
                                    119 ;	 function IWDG_ReloadCounter
                                    120 ;	-----------------------------------------
      008928                        121 _IWDG_ReloadCounter:
      008928 3B 01 A5         [ 1]  122 	push	_fp_+1
      00892B 3B 01 A4         [ 1]  123 	push	_fp_
      00892E 90 96            [ 1]  124 	ldw	y, sp
      008930 90 CF 01 A4      [ 2]  125 	ldw	_fp_, y
                           000057   126 	Sstm8s_iwdg$IWDG_ReloadCounter$19 ==.
                           000057   127 	Sstm8s_iwdg$IWDG_ReloadCounter$20 ==.
                                    128 ;	StdPeriphLib/src/stm8s_iwdg.c: 91: IWDG->KR = IWDG_KEY_REFRESH;
      008934 35 AA 50 E0      [ 1]  129 	mov	0x50e0+0, #0xaa
                           00005B   130 	Sstm8s_iwdg$IWDG_ReloadCounter$21 ==.
                                    131 ;	StdPeriphLib/src/stm8s_iwdg.c: 92: }
                           00005B   132 	Sstm8s_iwdg$IWDG_ReloadCounter$22 ==.
                           00005B   133 	XG$IWDG_ReloadCounter$0$0 ==.
      008938 32 01 A4         [ 1]  134 	pop	_fp_
      00893B 32 01 A5         [ 1]  135 	pop	_fp_+1
      00893E 81               [ 4]  136 	ret
                           000062   137 	Sstm8s_iwdg$IWDG_ReloadCounter$23 ==.
                           000062   138 	Sstm8s_iwdg$IWDG_Enable$24 ==.
                                    139 ;	StdPeriphLib/src/stm8s_iwdg.c: 99: void IWDG_Enable(void)
                                    140 ;	-----------------------------------------
                                    141 ;	 function IWDG_Enable
                                    142 ;	-----------------------------------------
      00893F                        143 _IWDG_Enable:
      00893F 3B 01 A5         [ 1]  144 	push	_fp_+1
      008942 3B 01 A4         [ 1]  145 	push	_fp_
      008945 90 96            [ 1]  146 	ldw	y, sp
      008947 90 CF 01 A4      [ 2]  147 	ldw	_fp_, y
                           00006E   148 	Sstm8s_iwdg$IWDG_Enable$25 ==.
                           00006E   149 	Sstm8s_iwdg$IWDG_Enable$26 ==.
                                    150 ;	StdPeriphLib/src/stm8s_iwdg.c: 101: IWDG->KR = IWDG_KEY_ENABLE;
      00894B 35 CC 50 E0      [ 1]  151 	mov	0x50e0+0, #0xcc
                           000072   152 	Sstm8s_iwdg$IWDG_Enable$27 ==.
                                    153 ;	StdPeriphLib/src/stm8s_iwdg.c: 102: }
                           000072   154 	Sstm8s_iwdg$IWDG_Enable$28 ==.
                           000072   155 	XG$IWDG_Enable$0$0 ==.
      00894F 32 01 A4         [ 1]  156 	pop	_fp_
      008952 32 01 A5         [ 1]  157 	pop	_fp_+1
      008955 81               [ 4]  158 	ret
                           000079   159 	Sstm8s_iwdg$IWDG_Enable$29 ==.
                                    160 	.area CODE
                                    161 	.area INITIALIZER
                                    162 	.area CABS (ABS)
                                    163 
                                    164 	.area .debug_line (NOLOAD)
      000C1A 00 00 01 AE            165 	.dw	0,Ldebug_line_end-Ldebug_line_start
      000C1E                        166 Ldebug_line_start:
      000C1E 00 02                  167 	.dw	2
      000C20 00 00 01 19            168 	.dw	0,Ldebug_line_stmt-6-Ldebug_line_start
      000C24 01                     169 	.db	1
      000C25 01                     170 	.db	1
      000C26 FB                     171 	.db	-5
      000C27 0F                     172 	.db	15
      000C28 0A                     173 	.db	10
      000C29 00                     174 	.db	0
      000C2A 01                     175 	.db	1
      000C2B 01                     176 	.db	1
      000C2C 01                     177 	.db	1
      000C2D 01                     178 	.db	1
      000C2E 00                     179 	.db	0
      000C2F 00                     180 	.db	0
      000C30 00                     181 	.db	0
      000C31 01                     182 	.db	1
      000C32 2F 68 6F 6D 65 2F 63   183 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000C71 00                     184 	.db	0
      000C72 2F 68 6F 6D 65 2F 63   185 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include/stm8"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65 2F 73 74 6D 38
      000CAA 00                     186 	.db	0
      000CAB 2F 68 6F 6D 65 2F 63   187 	.ascii "/home/cas/software/stm8-binutils/bin/../share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 62 69
             6E 2F 2E 2E 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000CE5 00                     188 	.db	0
      000CE6 2F 68 6F 6D 65 2F 63   189 	.ascii "/home/cas/software/stm8-binutils/share/sdcc/include"
             61 73 2F 73 6F 66 74
             77 61 72 65 2F 73 74
             6D 38 2D 62 69 6E 75
             74 69 6C 73 2F 73 68
             61 72 65 2F 73 64 63
             63 2F 69 6E 63 6C 75
             64 65
      000D19 00                     190 	.db	0
      000D1A 00                     191 	.db	0
      000D1B 53 74 64 50 65 72 69   192 	.ascii "StdPeriphLib/src/stm8s_iwdg.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 69 77 64 67 2E
             63
      000D38 00                     193 	.db	0
      000D39 00                     194 	.uleb128	0
      000D3A 00                     195 	.uleb128	0
      000D3B 00                     196 	.uleb128	0
      000D3C 00                     197 	.db	0
      000D3D                        198 Ldebug_line_stmt:
      000D3D 00                     199 	.db	0
      000D3E 05                     200 	.uleb128	5
      000D3F 02                     201 	.db	2
      000D40 00 00 88 DD            202 	.dw	0,(Sstm8s_iwdg$IWDG_WriteAccessCmd$0)
      000D44 03                     203 	.db	3
      000D45 2F                     204 	.sleb128	47
      000D46 01                     205 	.db	1
      000D47 09                     206 	.db	9
      000D48 00 0C                  207 	.dw	Sstm8s_iwdg$IWDG_WriteAccessCmd$2-Sstm8s_iwdg$IWDG_WriteAccessCmd$0
      000D4A 03                     208 	.db	3
      000D4B 05                     209 	.sleb128	5
      000D4C 01                     210 	.db	1
      000D4D 09                     211 	.db	9
      000D4E 00 06                  212 	.dw	Sstm8s_iwdg$IWDG_WriteAccessCmd$3-Sstm8s_iwdg$IWDG_WriteAccessCmd$2
      000D50 03                     213 	.db	3
      000D51 01                     214 	.sleb128	1
      000D52 01                     215 	.db	1
      000D53 09                     216 	.db	9
      000D54 00 07                  217 	.dw	7+Sstm8s_iwdg$IWDG_WriteAccessCmd$4-Sstm8s_iwdg$IWDG_WriteAccessCmd$3
      000D56 00                     218 	.db	0
      000D57 01                     219 	.uleb128	1
      000D58 01                     220 	.db	1
      000D59 00                     221 	.db	0
      000D5A 05                     222 	.uleb128	5
      000D5B 02                     223 	.db	2
      000D5C 00 00 88 F6            224 	.dw	0,(Sstm8s_iwdg$IWDG_SetPrescaler$6)
      000D60 03                     225 	.db	3
      000D61 3E                     226 	.sleb128	62
      000D62 01                     227 	.db	1
      000D63 09                     228 	.db	9
      000D64 00 0C                  229 	.dw	Sstm8s_iwdg$IWDG_SetPrescaler$8-Sstm8s_iwdg$IWDG_SetPrescaler$6
      000D66 03                     230 	.db	3
      000D67 05                     231 	.sleb128	5
      000D68 01                     232 	.db	1
      000D69 09                     233 	.db	9
      000D6A 00 06                  234 	.dw	Sstm8s_iwdg$IWDG_SetPrescaler$9-Sstm8s_iwdg$IWDG_SetPrescaler$8
      000D6C 03                     235 	.db	3
      000D6D 01                     236 	.sleb128	1
      000D6E 01                     237 	.db	1
      000D6F 09                     238 	.db	9
      000D70 00 07                  239 	.dw	7+Sstm8s_iwdg$IWDG_SetPrescaler$10-Sstm8s_iwdg$IWDG_SetPrescaler$9
      000D72 00                     240 	.db	0
      000D73 01                     241 	.uleb128	1
      000D74 01                     242 	.db	1
      000D75 00                     243 	.db	0
      000D76 05                     244 	.uleb128	5
      000D77 02                     245 	.db	2
      000D78 00 00 89 0F            246 	.dw	0,(Sstm8s_iwdg$IWDG_SetReload$12)
      000D7C 03                     247 	.db	3
      000D7D CD 00                  248 	.sleb128	77
      000D7F 01                     249 	.db	1
      000D80 09                     250 	.db	9
      000D81 00 0C                  251 	.dw	Sstm8s_iwdg$IWDG_SetReload$14-Sstm8s_iwdg$IWDG_SetReload$12
      000D83 03                     252 	.db	3
      000D84 02                     253 	.sleb128	2
      000D85 01                     254 	.db	1
      000D86 09                     255 	.db	9
      000D87 00 06                  256 	.dw	Sstm8s_iwdg$IWDG_SetReload$15-Sstm8s_iwdg$IWDG_SetReload$14
      000D89 03                     257 	.db	3
      000D8A 01                     258 	.sleb128	1
      000D8B 01                     259 	.db	1
      000D8C 09                     260 	.db	9
      000D8D 00 07                  261 	.dw	7+Sstm8s_iwdg$IWDG_SetReload$16-Sstm8s_iwdg$IWDG_SetReload$15
      000D8F 00                     262 	.db	0
      000D90 01                     263 	.uleb128	1
      000D91 01                     264 	.db	1
      000D92 00                     265 	.db	0
      000D93 05                     266 	.uleb128	5
      000D94 02                     267 	.db	2
      000D95 00 00 89 28            268 	.dw	0,(Sstm8s_iwdg$IWDG_ReloadCounter$18)
      000D99 03                     269 	.db	3
      000D9A D8 00                  270 	.sleb128	88
      000D9C 01                     271 	.db	1
      000D9D 09                     272 	.db	9
      000D9E 00 0C                  273 	.dw	Sstm8s_iwdg$IWDG_ReloadCounter$20-Sstm8s_iwdg$IWDG_ReloadCounter$18
      000DA0 03                     274 	.db	3
      000DA1 02                     275 	.sleb128	2
      000DA2 01                     276 	.db	1
      000DA3 09                     277 	.db	9
      000DA4 00 04                  278 	.dw	Sstm8s_iwdg$IWDG_ReloadCounter$21-Sstm8s_iwdg$IWDG_ReloadCounter$20
      000DA6 03                     279 	.db	3
      000DA7 01                     280 	.sleb128	1
      000DA8 01                     281 	.db	1
      000DA9 09                     282 	.db	9
      000DAA 00 07                  283 	.dw	7+Sstm8s_iwdg$IWDG_ReloadCounter$22-Sstm8s_iwdg$IWDG_ReloadCounter$21
      000DAC 00                     284 	.db	0
      000DAD 01                     285 	.uleb128	1
      000DAE 01                     286 	.db	1
      000DAF 00                     287 	.db	0
      000DB0 05                     288 	.uleb128	5
      000DB1 02                     289 	.db	2
      000DB2 00 00 89 3F            290 	.dw	0,(Sstm8s_iwdg$IWDG_Enable$24)
      000DB6 03                     291 	.db	3
      000DB7 E2 00                  292 	.sleb128	98
      000DB9 01                     293 	.db	1
      000DBA 09                     294 	.db	9
      000DBB 00 0C                  295 	.dw	Sstm8s_iwdg$IWDG_Enable$26-Sstm8s_iwdg$IWDG_Enable$24
      000DBD 03                     296 	.db	3
      000DBE 02                     297 	.sleb128	2
      000DBF 01                     298 	.db	1
      000DC0 09                     299 	.db	9
      000DC1 00 04                  300 	.dw	Sstm8s_iwdg$IWDG_Enable$27-Sstm8s_iwdg$IWDG_Enable$26
      000DC3 03                     301 	.db	3
      000DC4 01                     302 	.sleb128	1
      000DC5 01                     303 	.db	1
      000DC6 09                     304 	.db	9
      000DC7 00 07                  305 	.dw	7+Sstm8s_iwdg$IWDG_Enable$28-Sstm8s_iwdg$IWDG_Enable$27
      000DC9 00                     306 	.db	0
      000DCA 01                     307 	.uleb128	1
      000DCB 01                     308 	.db	1
      000DCC                        309 Ldebug_line_end:
                                    310 
                                    311 	.area .debug_loc (NOLOAD)
      000244                        312 Ldebug_loc_start:
      000244 00 00 89 4B            313 	.dw	0,(Sstm8s_iwdg$IWDG_Enable$25)
      000248 00 00 89 56            314 	.dw	0,(Sstm8s_iwdg$IWDG_Enable$29)
      00024C 00 02                  315 	.dw	2
      00024E 8F                     316 	.db	143
      00024F 01                     317 	.sleb128	1
      000250 00 00 00 00            318 	.dw	0,0
      000254 00 00 00 00            319 	.dw	0,0
      000258 00 00 89 34            320 	.dw	0,(Sstm8s_iwdg$IWDG_ReloadCounter$19)
      00025C 00 00 89 3F            321 	.dw	0,(Sstm8s_iwdg$IWDG_ReloadCounter$23)
      000260 00 02                  322 	.dw	2
      000262 8F                     323 	.db	143
      000263 01                     324 	.sleb128	1
      000264 00 00 00 00            325 	.dw	0,0
      000268 00 00 00 00            326 	.dw	0,0
      00026C 00 00 89 1B            327 	.dw	0,(Sstm8s_iwdg$IWDG_SetReload$13)
      000270 00 00 89 28            328 	.dw	0,(Sstm8s_iwdg$IWDG_SetReload$17)
      000274 00 02                  329 	.dw	2
      000276 8F                     330 	.db	143
      000277 01                     331 	.sleb128	1
      000278 00 00 00 00            332 	.dw	0,0
      00027C 00 00 00 00            333 	.dw	0,0
      000280 00 00 89 02            334 	.dw	0,(Sstm8s_iwdg$IWDG_SetPrescaler$7)
      000284 00 00 89 0F            335 	.dw	0,(Sstm8s_iwdg$IWDG_SetPrescaler$11)
      000288 00 02                  336 	.dw	2
      00028A 8F                     337 	.db	143
      00028B 01                     338 	.sleb128	1
      00028C 00 00 00 00            339 	.dw	0,0
      000290 00 00 00 00            340 	.dw	0,0
      000294 00 00 88 E9            341 	.dw	0,(Sstm8s_iwdg$IWDG_WriteAccessCmd$1)
      000298 00 00 88 F6            342 	.dw	0,(Sstm8s_iwdg$IWDG_WriteAccessCmd$5)
      00029C 00 02                  343 	.dw	2
      00029E 8F                     344 	.db	143
      00029F 01                     345 	.sleb128	1
      0002A0 00 00 00 00            346 	.dw	0,0
      0002A4 00 00 00 00            347 	.dw	0,0
                                    348 
                                    349 	.area .debug_abbrev (NOLOAD)
      00016C                        350 Ldebug_abbrev:
      00016C 03                     351 	.uleb128	3
      00016D 05                     352 	.uleb128	5
      00016E 00                     353 	.db	0
      00016F 02                     354 	.uleb128	2
      000170 0A                     355 	.uleb128	10
      000171 03                     356 	.uleb128	3
      000172 08                     357 	.uleb128	8
      000173 49                     358 	.uleb128	73
      000174 13                     359 	.uleb128	19
      000175 00                     360 	.uleb128	0
      000176 00                     361 	.uleb128	0
      000177 02                     362 	.uleb128	2
      000178 2E                     363 	.uleb128	46
      000179 01                     364 	.db	1
      00017A 01                     365 	.uleb128	1
      00017B 13                     366 	.uleb128	19
      00017C 03                     367 	.uleb128	3
      00017D 08                     368 	.uleb128	8
      00017E 11                     369 	.uleb128	17
      00017F 01                     370 	.uleb128	1
      000180 12                     371 	.uleb128	18
      000181 01                     372 	.uleb128	1
      000182 3F                     373 	.uleb128	63
      000183 0C                     374 	.uleb128	12
      000184 40                     375 	.uleb128	64
      000185 06                     376 	.uleb128	6
      000186 00                     377 	.uleb128	0
      000187 00                     378 	.uleb128	0
      000188 01                     379 	.uleb128	1
      000189 11                     380 	.uleb128	17
      00018A 01                     381 	.db	1
      00018B 03                     382 	.uleb128	3
      00018C 08                     383 	.uleb128	8
      00018D 10                     384 	.uleb128	16
      00018E 06                     385 	.uleb128	6
      00018F 13                     386 	.uleb128	19
      000190 0B                     387 	.uleb128	11
      000191 25                     388 	.uleb128	37
      000192 08                     389 	.uleb128	8
      000193 00                     390 	.uleb128	0
      000194 00                     391 	.uleb128	0
      000195 05                     392 	.uleb128	5
      000196 2E                     393 	.uleb128	46
      000197 00                     394 	.db	0
      000198 03                     395 	.uleb128	3
      000199 08                     396 	.uleb128	8
      00019A 11                     397 	.uleb128	17
      00019B 01                     398 	.uleb128	1
      00019C 12                     399 	.uleb128	18
      00019D 01                     400 	.uleb128	1
      00019E 3F                     401 	.uleb128	63
      00019F 0C                     402 	.uleb128	12
      0001A0 40                     403 	.uleb128	64
      0001A1 06                     404 	.uleb128	6
      0001A2 00                     405 	.uleb128	0
      0001A3 00                     406 	.uleb128	0
      0001A4 04                     407 	.uleb128	4
      0001A5 24                     408 	.uleb128	36
      0001A6 00                     409 	.db	0
      0001A7 03                     410 	.uleb128	3
      0001A8 08                     411 	.uleb128	8
      0001A9 0B                     412 	.uleb128	11
      0001AA 0B                     413 	.uleb128	11
      0001AB 3E                     414 	.uleb128	62
      0001AC 0B                     415 	.uleb128	11
      0001AD 00                     416 	.uleb128	0
      0001AE 00                     417 	.uleb128	0
      0001AF 00                     418 	.uleb128	0
                                    419 
                                    420 	.area .debug_info (NOLOAD)
      00099C 00 00 01 45            421 	.dw	0,Ldebug_info_end-Ldebug_info_start
      0009A0                        422 Ldebug_info_start:
      0009A0 00 02                  423 	.dw	2
      0009A2 00 00 01 6C            424 	.dw	0,(Ldebug_abbrev)
      0009A6 04                     425 	.db	4
      0009A7 01                     426 	.uleb128	1
      0009A8 53 74 64 50 65 72 69   427 	.ascii "StdPeriphLib/src/stm8s_iwdg.c"
             70 68 4C 69 62 2F 73
             72 63 2F 73 74 6D 38
             73 5F 69 77 64 67 2E
             63
      0009C5 00                     428 	.db	0
      0009C6 00 00 0C 1A            429 	.dw	0,(Ldebug_line_start+-4)
      0009CA 01                     430 	.db	1
      0009CB 53 44 43 43 20 76 65   431 	.ascii "SDCC version 3.6.0 #9615"
             72 73 69 6F 6E 20 33
             2E 36 2E 30 20 23 39
             36 31 35
      0009E3 00                     432 	.db	0
      0009E4 02                     433 	.uleb128	2
      0009E5 00 00 00 88            434 	.dw	0,136
      0009E9 49 57 44 47 5F 57 72   435 	.ascii "IWDG_WriteAccessCmd"
             69 74 65 41 63 63 65
             73 73 43 6D 64
      0009FC 00                     436 	.db	0
      0009FD 00 00 88 DD            437 	.dw	0,(_IWDG_WriteAccessCmd)
      000A01 00 00 88 F6            438 	.dw	0,(XG$IWDG_WriteAccessCmd$0$0+7)
      000A05 01                     439 	.db	1
      000A06 00 00 02 94            440 	.dw	0,(Ldebug_loc_start+80)
      000A0A 03                     441 	.uleb128	3
      000A0B 02                     442 	.db	2
      000A0C 91                     443 	.db	145
      000A0D 04                     444 	.sleb128	4
      000A0E 49 57 44 47 5F 57 72   445 	.ascii "IWDG_WriteAccess"
             69 74 65 41 63 63 65
             73 73
      000A1E 00                     446 	.db	0
      000A1F 00 00 00 88            447 	.dw	0,136
      000A23 00                     448 	.uleb128	0
      000A24 04                     449 	.uleb128	4
      000A25 75 6E 73 69 67 6E 65   450 	.ascii "unsigned char"
             64 20 63 68 61 72
      000A32 00                     451 	.db	0
      000A33 01                     452 	.db	1
      000A34 08                     453 	.db	8
      000A35 02                     454 	.uleb128	2
      000A36 00 00 00 D5            455 	.dw	0,213
      000A3A 49 57 44 47 5F 53 65   456 	.ascii "IWDG_SetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      000A4B 00                     457 	.db	0
      000A4C 00 00 88 F6            458 	.dw	0,(_IWDG_SetPrescaler)
      000A50 00 00 89 0F            459 	.dw	0,(XG$IWDG_SetPrescaler$0$0+7)
      000A54 01                     460 	.db	1
      000A55 00 00 02 80            461 	.dw	0,(Ldebug_loc_start+60)
      000A59 03                     462 	.uleb128	3
      000A5A 02                     463 	.db	2
      000A5B 91                     464 	.db	145
      000A5C 04                     465 	.sleb128	4
      000A5D 49 57 44 47 5F 50 72   466 	.ascii "IWDG_Prescaler"
             65 73 63 61 6C 65 72
      000A6B 00                     467 	.db	0
      000A6C 00 00 00 88            468 	.dw	0,136
      000A70 00                     469 	.uleb128	0
      000A71 02                     470 	.uleb128	2
      000A72 00 00 01 0B            471 	.dw	0,267
      000A76 49 57 44 47 5F 53 65   472 	.ascii "IWDG_SetReload"
             74 52 65 6C 6F 61 64
      000A84 00                     473 	.db	0
      000A85 00 00 89 0F            474 	.dw	0,(_IWDG_SetReload)
      000A89 00 00 89 28            475 	.dw	0,(XG$IWDG_SetReload$0$0+7)
      000A8D 01                     476 	.db	1
      000A8E 00 00 02 6C            477 	.dw	0,(Ldebug_loc_start+40)
      000A92 03                     478 	.uleb128	3
      000A93 02                     479 	.db	2
      000A94 91                     480 	.db	145
      000A95 04                     481 	.sleb128	4
      000A96 49 57 44 47 5F 52 65   482 	.ascii "IWDG_Reload"
             6C 6F 61 64
      000AA1 00                     483 	.db	0
      000AA2 00 00 00 88            484 	.dw	0,136
      000AA6 00                     485 	.uleb128	0
      000AA7 05                     486 	.uleb128	5
      000AA8 49 57 44 47 5F 52 65   487 	.ascii "IWDG_ReloadCounter"
             6C 6F 61 64 43 6F 75
             6E 74 65 72
      000ABA 00                     488 	.db	0
      000ABB 00 00 89 28            489 	.dw	0,(_IWDG_ReloadCounter)
      000ABF 00 00 89 3F            490 	.dw	0,(XG$IWDG_ReloadCounter$0$0+7)
      000AC3 01                     491 	.db	1
      000AC4 00 00 02 58            492 	.dw	0,(Ldebug_loc_start+20)
      000AC8 05                     493 	.uleb128	5
      000AC9 49 57 44 47 5F 45 6E   494 	.ascii "IWDG_Enable"
             61 62 6C 65
      000AD4 00                     495 	.db	0
      000AD5 00 00 89 3F            496 	.dw	0,(_IWDG_Enable)
      000AD9 00 00 89 56            497 	.dw	0,(XG$IWDG_Enable$0$0+7)
      000ADD 01                     498 	.db	1
      000ADE 00 00 02 44            499 	.dw	0,(Ldebug_loc_start)
      000AE2 00                     500 	.uleb128	0
      000AE3 00                     501 	.uleb128	0
      000AE4 00                     502 	.uleb128	0
      000AE5                        503 Ldebug_info_end:
                                    504 
                                    505 	.area .debug_pubnames (NOLOAD)
      000368 00 00 00 76            506 	.dw	0,Ldebug_pubnames_end-Ldebug_pubnames_start
      00036C                        507 Ldebug_pubnames_start:
      00036C 00 02                  508 	.dw	2
      00036E 00 00 09 9C            509 	.dw	0,(Ldebug_info_start-4)
      000372 00 00 01 49            510 	.dw	0,4+Ldebug_info_end-Ldebug_info_start
      000376 00 00 00 48            511 	.dw	0,72
      00037A 49 57 44 47 5F 57 72   512 	.ascii "IWDG_WriteAccessCmd"
             69 74 65 41 63 63 65
             73 73 43 6D 64
      00038D 00                     513 	.db	0
      00038E 00 00 00 99            514 	.dw	0,153
      000392 49 57 44 47 5F 53 65   515 	.ascii "IWDG_SetPrescaler"
             74 50 72 65 73 63 61
             6C 65 72
      0003A3 00                     516 	.db	0
      0003A4 00 00 00 D5            517 	.dw	0,213
      0003A8 49 57 44 47 5F 53 65   518 	.ascii "IWDG_SetReload"
             74 52 65 6C 6F 61 64
      0003B6 00                     519 	.db	0
      0003B7 00 00 01 0B            520 	.dw	0,267
      0003BB 49 57 44 47 5F 52 65   521 	.ascii "IWDG_ReloadCounter"
             6C 6F 61 64 43 6F 75
             6E 74 65 72
      0003CD 00                     522 	.db	0
      0003CE 00 00 01 2C            523 	.dw	0,300
      0003D2 49 57 44 47 5F 45 6E   524 	.ascii "IWDG_Enable"
             61 62 6C 65
      0003DD 00                     525 	.db	0
      0003DE 00 00 00 00            526 	.dw	0,0
      0003E2                        527 Ldebug_pubnames_end:
                                    528 
                                    529 	.area .debug_frame (NOLOAD)
      000036 00 00                  530 	.dw	0
      000038 00 0E                  531 	.dw	Ldebug_CIE_end-Ldebug_CIE_start
      00003A                        532 Ldebug_CIE_start:
      00003A FF FF                  533 	.dw	0xffff
      00003C FF FF                  534 	.dw	0xffff
      00003E 01                     535 	.db	1
      00003F 00                     536 	.db	0
      000040 01                     537 	.uleb128	1
      000041 01                     538 	.sleb128	1
      000042 00                     539 	.db	0
      000043 0C                     540 	.db	12
      000044 00                     541 	.uleb128	0
      000045 00                     542 	.uleb128	0
      000046 80                     543 	.db	128
      000047 00                     544 	.uleb128	0
      000048                        545 Ldebug_CIE_end:
