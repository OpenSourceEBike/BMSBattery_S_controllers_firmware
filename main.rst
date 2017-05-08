                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 3.6.0 #9615 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl main
                                     12 	.globl printf
                                     13 	.globl putchar
                                     14 ;--------------------------------------------------------
                                     15 ; ram data
                                     16 ;--------------------------------------------------------
                                     17 	.area DATA
                                     18 ;--------------------------------------------------------
                                     19 ; ram data
                                     20 ;--------------------------------------------------------
                                     21 	.area INITIALIZED
                                     22 ;--------------------------------------------------------
                                     23 ; Stack segment in internal ram 
                                     24 ;--------------------------------------------------------
                                     25 	.area	SSEG
                                     26 	.globl	_fp_
      000001                         27 _fp_:
      000001                         28 	.ds	2
                                     29 
      000003                         30 __start__stack:
      000003                         31 	.ds	1
                                     32 
                                     33 ;--------------------------------------------------------
                                     34 ; absolute external ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DABS (ABS)
                                     37 ;--------------------------------------------------------
                                     38 ; interrupt vector 
                                     39 ;--------------------------------------------------------
                                     40 	.area HOME
      008000                         41 __interrupt_vect:
      008000 82 00 80 83             42 	int s_GSINIT ;reset
      008004 82 00 00 00             43 	int 0x0000 ;trap
      008008 82 00 00 00             44 	int 0x0000 ;int0
      00800C 82 00 00 00             45 	int 0x0000 ;int1
      008010 82 00 00 00             46 	int 0x0000 ;int2
      008014 82 00 00 00             47 	int 0x0000 ;int3
      008018 82 00 00 00             48 	int 0x0000 ;int4
      00801C 82 00 00 00             49 	int 0x0000 ;int5
      008020 82 00 00 00             50 	int 0x0000 ;int6
      008024 82 00 00 00             51 	int 0x0000 ;int7
      008028 82 00 00 00             52 	int 0x0000 ;int8
      00802C 82 00 00 00             53 	int 0x0000 ;int9
      008030 82 00 00 00             54 	int 0x0000 ;int10
      008034 82 00 00 00             55 	int 0x0000 ;int11
      008038 82 00 00 00             56 	int 0x0000 ;int12
      00803C 82 00 00 00             57 	int 0x0000 ;int13
      008040 82 00 00 00             58 	int 0x0000 ;int14
      008044 82 00 00 00             59 	int 0x0000 ;int15
      008048 82 00 00 00             60 	int 0x0000 ;int16
      00804C 82 00 00 00             61 	int 0x0000 ;int17
      008050 82 00 00 00             62 	int 0x0000 ;int18
      008054 82 00 00 00             63 	int 0x0000 ;int19
      008058 82 00 00 00             64 	int 0x0000 ;int20
      00805C 82 00 00 00             65 	int 0x0000 ;int21
      008060 82 00 00 00             66 	int 0x0000 ;int22
      008064 82 00 00 00             67 	int 0x0000 ;int23
      008068 82 00 00 00             68 	int 0x0000 ;int24
      00806C 82 00 00 00             69 	int 0x0000 ;int25
      008070 82 00 00 00             70 	int 0x0000 ;int26
      008074 82 00 00 00             71 	int 0x0000 ;int27
      008078 82 00 00 00             72 	int 0x0000 ;int28
      00807C 82 00 00 00             73 	int 0x0000 ;int29
                                     74 ;--------------------------------------------------------
                                     75 ; global & static initialisations
                                     76 ;--------------------------------------------------------
                                     77 	.area HOME
                                     78 	.area GSINIT
                                     79 	.area GSFINAL
                                     80 	.area GSINIT
                                     81 .globl start
      008083                         82 start:
      008083                         83 __sdcc_gs_init_startup:
      008083 AE 07 FF         [ 2]   84 	ldw x, #0x7ff
      008086 96               [ 1]   85 	ldw x, sp
      008087                         86 __sdcc_init_data:
                                     87 ; stm8_genXINIT() start
      008087 AE 00 00         [ 2]   88 	ldw x, #l_DATA
      00808A 27 07            [ 1]   89 	jreq	00002$
      00808C                         90 00001$:
      00808C 72 4F 00 00      [ 1]   91 	clr (s_DATA - 1, x)
      008090 5A               [ 2]   92 	decw x
      008091 26 F9            [ 1]   93 	jrne	00001$
      008093                         94 00002$:
      008093 AE 00 00         [ 2]   95 	ldw	x, #l_INITIALIZER
      008096 27 09            [ 1]   96 	jreq	00004$
      008098                         97 00003$:
      008098 D6 88 F8         [ 1]   98 	ld	a, (s_INITIALIZER - 1, x)
      00809B D7 00 00         [ 1]   99 	ld	(s_INITIALIZED - 1, x), a
      00809E 5A               [ 2]  100 	decw	x
      00809F 26 F7            [ 1]  101 	jrne	00003$
      0080A1                        102 00004$:
                                    103 ; stm8_genXINIT() end
                                    104 	.area GSFINAL
      0080A1 CC 80 80         [ 2]  105 	jp	__sdcc_program_startup
                                    106 ;--------------------------------------------------------
                                    107 ; Home
                                    108 ;--------------------------------------------------------
                                    109 	.area HOME
                                    110 	.area HOME
      008080                        111 __sdcc_program_startup:
      008080 CC 80 C7         [ 2]  112 	jp	main
                                    113 ;	return from main will return to caller
                                    114 ;--------------------------------------------------------
                                    115 ; code
                                    116 ;--------------------------------------------------------
                                    117 	.area CODE
                           000000   118 	G$putchar$0$0 ==.
                           000000   119 	C$main.c$19$0$0 ==.
                                    120 ;	main.c: 19: void putchar(char c)
                                    121 ; genLabel
                                    122 ;	-----------------------------------------
                                    123 ;	 function putchar
                                    124 ;	-----------------------------------------
                                    125 ;	Register assignment is optimal.
                                    126 ;	Stack space usage: 0 bytes.
      0080A4                        127 putchar:
      0080A4 3B 00 02         [ 1]  128 	push	_fp_+1
      0080A7 3B 00 01         [ 1]  129 	push	_fp_
      0080AA 90 96            [ 1]  130 	ldw	y, sp
      0080AC 90 CF 00 01      [ 2]  131 	ldw	_fp_, y
                           00000C   132 	C$main.c$21$1$12 ==.
                                    133 ;	main.c: 21: while(!(UART1_SR & UART_SR_TXE));
                                    134 ; genLabel
      0080B0                        135 00101$:
                                    136 ; genPointerGet
      0080B0 AE 52 30         [ 2]  137 	ldw	x, #0x5230
      0080B3 F6               [ 1]  138 	ld	a, (x)
                                    139 ; genAnd
      0080B4 4D               [ 1]  140 	tnz	a
      0080B5 2B 03            [ 1]  141 	jrmi	00114$
      0080B7 CC 80 B0         [ 2]  142 	jp	00101$
      0080BA                        143 00114$:
                                    144 ; skipping generated iCode
                           000016   145 	C$main.c$23$1$12 ==.
                                    146 ;	main.c: 23: UART1_DR = c;
                                    147 ; genPointerSet
      0080BA AE 52 31         [ 2]  148 	ldw	x, #0x5231
      0080BD 7B 05            [ 1]  149 	ld	a, (0x05, sp)
      0080BF F7               [ 1]  150 	ld	(x), a
                                    151 ; genLabel
      0080C0                        152 00104$:
                                    153 ; genEndFunction
                           00001C   154 	C$main.c$24$1$12 ==.
                           00001C   155 	XG$putchar$0$0 ==.
      0080C0 32 00 01         [ 1]  156 	pop	_fp_
      0080C3 32 00 02         [ 1]  157 	pop	_fp_+1
      0080C6 81               [ 4]  158 	ret
                           000023   159 	G$main$0$0 ==.
                           000023   160 	C$main.c$26$1$12 ==.
                                    161 ;	main.c: 26: void main(void)
                                    162 ; genLabel
                                    163 ;	-----------------------------------------
                                    164 ;	 function main
                                    165 ;	-----------------------------------------
                                    166 ;	Register assignment might be sub-optimal.
                                    167 ;	Stack space usage: 8 bytes.
      0080C7                        168 main:
      0080C7 3B 00 02         [ 1]  169 	push	_fp_+1
      0080CA 3B 00 01         [ 1]  170 	push	_fp_
      0080CD 90 96            [ 1]  171 	ldw	y, sp
      0080CF 90 CF 00 01      [ 2]  172 	ldw	_fp_, y
      0080D3 52 08            [ 2]  173 	sub	sp, #8
                           000031   174 	C$main.c$30$1$14 ==.
                                    175 ;	main.c: 30: CLK_DIVR = 0x00; // Set the frequency to 16 MHz
                                    176 ; genPointerSet
      0080D5 35 00 50 C6      [ 1]  177 	mov	0x50c6+0, #0x00
                           000035   178 	C$main.c$31$1$14 ==.
                                    179 ;	main.c: 31: CLK_PCKENR1 = 0xFF; // Enable peripherals
                                    180 ; genPointerSet
      0080D9 35 FF 50 C7      [ 1]  181 	mov	0x50c7+0, #0xff
                           000039   182 	C$main.c$33$1$14 ==.
                                    183 ;	main.c: 33: UART1_CR2 = UART_CR2_TEN; // Allow TX and RX
                                    184 ; genPointerSet
      0080DD 35 08 52 35      [ 1]  185 	mov	0x5235+0, #0x08
                           00003D   186 	C$main.c$34$1$14 ==.
                                    187 ;	main.c: 34: UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
                                    188 ; genPointerGet
      0080E1 AE 52 36         [ 2]  189 	ldw	x, #0x5236
      0080E4 F6               [ 1]  190 	ld	a, (x)
                                    191 ; genAnd
      0080E5 A4 CF            [ 1]  192 	and	a, #0xcf
                                    193 ; genPointerSet
      0080E7 AE 52 36         [ 2]  194 	ldw	x, #0x5236
      0080EA F7               [ 1]  195 	ld	(x), a
                           000047   196 	C$main.c$35$1$14 ==.
                                    197 ;	main.c: 35: UART1_BRR2 = 0x03; UART1_BRR1 = 0x68; // 9600 baud
                                    198 ; genPointerSet
      0080EB 35 03 52 33      [ 1]  199 	mov	0x5233+0, #0x03
                                    200 ; genPointerSet
      0080EF 35 68 52 32      [ 1]  201 	mov	0x5232+0, #0x68
                                    202 ; genLabel
      0080F3                        203 00106$:
                           00004F   204 	C$main.c$39$2$15 ==.
                                    205 ;	main.c: 39: printf("Hello World!!\n");
                                    206 ; genAddrOf
      0080F3 AE 81 3C         [ 2]  207 	ldw	x, #__str_0+0
                                    208 ; genCast
                                    209 ; genAssign
                                    210 ; genIPush
      0080F6 89               [ 2]  211 	pushw	x
                                    212 ; genCall
      0080F7 CD 81 94         [ 4]  213 	call	printf
      0080FA 5B 02            [ 2]  214 	addw	sp, #2
                           000058   215 	C$main.c$40$2$15 ==.
                                    216 ;	main.c: 40: printf("OpenSource BMSBattery S controllers firmware\n\n");
                                    217 ; genAddrOf
      0080FC AE 81 4B         [ 2]  218 	ldw	x, #__str_1+0
                                    219 ; genCast
                                    220 ; genAssign
                                    221 ; genIPush
      0080FF 89               [ 2]  222 	pushw	x
                                    223 ; genCall
      008100 CD 81 94         [ 4]  224 	call	printf
      008103 5B 02            [ 2]  225 	addw	sp, #2
                           000061   226 	C$main.c$42$2$15 ==.
                                    227 ;	main.c: 42: for(i = 0; i < 147456; i++); // delay of 1s
                                    228 ; genAssign
      008105 AE 40 00         [ 2]  229 	ldw	x, #0x4000
      008108 1F 03            [ 2]  230 	ldw	(0x03, sp), x
      00810A A6 02            [ 1]  231 	ld	a, #0x02
      00810C 0F 01            [ 1]  232 	clr	(0x01, sp)
                                    233 ; genLabel
      00810E                        234 00105$:
                                    235 ; genMinus
      00810E 1E 03            [ 2]  236 	ldw	x, (0x03, sp)
      008110 1D 00 01         [ 2]  237 	subw	x, #0x0001
      008113 1F 07            [ 2]  238 	ldw	(0x07, sp), x
      008115 A2 00            [ 1]  239 	sbc	a, #0x00
      008117 97               [ 1]  240 	ld	xl, a
      008118 7B 01            [ 1]  241 	ld	a, (0x01, sp)
      00811A A2 00            [ 1]  242 	sbc	a, #0x00
      00811C 95               [ 1]  243 	ld	xh, a
                                    244 ; genAssign
      00811D 02               [ 1]  245 	rlwa	x
      00811E 6B 01            [ 1]  246 	ld	(0x01, sp), a
      008120 01               [ 1]  247 	rrwa	x
      008121 16 07            [ 2]  248 	ldw	y, (0x07, sp)
      008123 17 03            [ 2]  249 	ldw	(0x03, sp), y
      008125 9F               [ 1]  250 	ld	a, xl
                                    251 ; genIfx
      008126 16 07            [ 2]  252 	ldw	y, (0x07, sp)
      008128 26 03            [ 1]  253 	jrne	00122$
      00812A 5D               [ 2]  254 	tnzw	x
      00812B 27 03            [ 1]  255 	jreq	00123$
      00812D                        256 00122$:
      00812D CC 81 0E         [ 2]  257 	jp	00105$
      008130                        258 00123$:
                                    259 ; genGoto
      008130 CC 80 F3         [ 2]  260 	jp	00106$
                                    261 ; genLabel
      008133                        262 00108$:
                                    263 ; genEndFunction
      008133 5B 08            [ 2]  264 	addw	sp, #8
                           000091   265 	C$main.c$44$1$14 ==.
                           000091   266 	XG$main$0$0 ==.
      008135 32 00 01         [ 1]  267 	pop	_fp_
      008138 32 00 02         [ 1]  268 	pop	_fp_+1
      00813B 81               [ 4]  269 	ret
                                    270 	.area CODE
                           000098   271 Fmain$__str_0$0$0 == .
      00813C                        272 __str_0:
      00813C 48 65 6C 6C 6F 20 57   273 	.ascii "Hello World!!"
             6F 72 6C 64 21 21
      008149 0A                     274 	.db 0x0a
      00814A 00                     275 	.db 0x00
                           0000A7   276 Fmain$__str_1$0$0 == .
      00814B                        277 __str_1:
      00814B 4F 70 65 6E 53 6F 75   278 	.ascii "OpenSource BMSBattery S controllers firmware"
             72 63 65 20 42 4D 53
             42 61 74 74 65 72 79
             20 53 20 63 6F 6E 74
             72 6F 6C 6C 65 72 73
             20 66 69 72 6D 77 61
             72 65
      008177 0A                     279 	.db 0x0a
      008178 0A                     280 	.db 0x0a
      008179 00                     281 	.db 0x00
                                    282 	.area INITIALIZER
                                    283 	.area CABS (ABS)
