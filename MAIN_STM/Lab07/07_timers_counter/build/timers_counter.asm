
build/timers_counter.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000fac  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000030  0800106c  0800106c  0001106c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  0800109c  0800109c  0001109c  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080010a4  080010a4  000110a4  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080010a8  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000002c  20000434  080014dc  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000460  080014dc  00020460  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       000013bc  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000400  00000000  00000000  00021818  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000970  00000000  00000000  00021c18  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    000001c0  00000000  00000000  00022588  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000190  00000000  00000000  00022748  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000b69  00000000  00000000  000228d8  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000a0f  00000000  00000000  00023441  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00023e50  2**0  CONTENTS, READONLY
 17 .debug_frame      000007b8  00000000  00000000  00023ea0  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08001054 	.word	0x08001054

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000438 	.word	0x20000438
 8000104:	08001054 	.word	0x08001054

08000108 <__udivsi3>:
 8000108:	2200      	movs	r2, #0
 800010a:	0843      	lsrs	r3, r0, #1
 800010c:	428b      	cmp	r3, r1
 800010e:	d374      	bcc.n	80001fa <__udivsi3+0xf2>
 8000110:	0903      	lsrs	r3, r0, #4
 8000112:	428b      	cmp	r3, r1
 8000114:	d35f      	bcc.n	80001d6 <__udivsi3+0xce>
 8000116:	0a03      	lsrs	r3, r0, #8
 8000118:	428b      	cmp	r3, r1
 800011a:	d344      	bcc.n	80001a6 <__udivsi3+0x9e>
 800011c:	0b03      	lsrs	r3, r0, #12
 800011e:	428b      	cmp	r3, r1
 8000120:	d328      	bcc.n	8000174 <__udivsi3+0x6c>
 8000122:	0c03      	lsrs	r3, r0, #16
 8000124:	428b      	cmp	r3, r1
 8000126:	d30d      	bcc.n	8000144 <__udivsi3+0x3c>
 8000128:	22ff      	movs	r2, #255	; 0xff
 800012a:	0209      	lsls	r1, r1, #8
 800012c:	ba12      	rev	r2, r2
 800012e:	0c03      	lsrs	r3, r0, #16
 8000130:	428b      	cmp	r3, r1
 8000132:	d302      	bcc.n	800013a <__udivsi3+0x32>
 8000134:	1212      	asrs	r2, r2, #8
 8000136:	0209      	lsls	r1, r1, #8
 8000138:	d065      	beq.n	8000206 <__udivsi3+0xfe>
 800013a:	0b03      	lsrs	r3, r0, #12
 800013c:	428b      	cmp	r3, r1
 800013e:	d319      	bcc.n	8000174 <__udivsi3+0x6c>
 8000140:	e000      	b.n	8000144 <__udivsi3+0x3c>
 8000142:	0a09      	lsrs	r1, r1, #8
 8000144:	0bc3      	lsrs	r3, r0, #15
 8000146:	428b      	cmp	r3, r1
 8000148:	d301      	bcc.n	800014e <__udivsi3+0x46>
 800014a:	03cb      	lsls	r3, r1, #15
 800014c:	1ac0      	subs	r0, r0, r3
 800014e:	4152      	adcs	r2, r2
 8000150:	0b83      	lsrs	r3, r0, #14
 8000152:	428b      	cmp	r3, r1
 8000154:	d301      	bcc.n	800015a <__udivsi3+0x52>
 8000156:	038b      	lsls	r3, r1, #14
 8000158:	1ac0      	subs	r0, r0, r3
 800015a:	4152      	adcs	r2, r2
 800015c:	0b43      	lsrs	r3, r0, #13
 800015e:	428b      	cmp	r3, r1
 8000160:	d301      	bcc.n	8000166 <__udivsi3+0x5e>
 8000162:	034b      	lsls	r3, r1, #13
 8000164:	1ac0      	subs	r0, r0, r3
 8000166:	4152      	adcs	r2, r2
 8000168:	0b03      	lsrs	r3, r0, #12
 800016a:	428b      	cmp	r3, r1
 800016c:	d301      	bcc.n	8000172 <__udivsi3+0x6a>
 800016e:	030b      	lsls	r3, r1, #12
 8000170:	1ac0      	subs	r0, r0, r3
 8000172:	4152      	adcs	r2, r2
 8000174:	0ac3      	lsrs	r3, r0, #11
 8000176:	428b      	cmp	r3, r1
 8000178:	d301      	bcc.n	800017e <__udivsi3+0x76>
 800017a:	02cb      	lsls	r3, r1, #11
 800017c:	1ac0      	subs	r0, r0, r3
 800017e:	4152      	adcs	r2, r2
 8000180:	0a83      	lsrs	r3, r0, #10
 8000182:	428b      	cmp	r3, r1
 8000184:	d301      	bcc.n	800018a <__udivsi3+0x82>
 8000186:	028b      	lsls	r3, r1, #10
 8000188:	1ac0      	subs	r0, r0, r3
 800018a:	4152      	adcs	r2, r2
 800018c:	0a43      	lsrs	r3, r0, #9
 800018e:	428b      	cmp	r3, r1
 8000190:	d301      	bcc.n	8000196 <__udivsi3+0x8e>
 8000192:	024b      	lsls	r3, r1, #9
 8000194:	1ac0      	subs	r0, r0, r3
 8000196:	4152      	adcs	r2, r2
 8000198:	0a03      	lsrs	r3, r0, #8
 800019a:	428b      	cmp	r3, r1
 800019c:	d301      	bcc.n	80001a2 <__udivsi3+0x9a>
 800019e:	020b      	lsls	r3, r1, #8
 80001a0:	1ac0      	subs	r0, r0, r3
 80001a2:	4152      	adcs	r2, r2
 80001a4:	d2cd      	bcs.n	8000142 <__udivsi3+0x3a>
 80001a6:	09c3      	lsrs	r3, r0, #7
 80001a8:	428b      	cmp	r3, r1
 80001aa:	d301      	bcc.n	80001b0 <__udivsi3+0xa8>
 80001ac:	01cb      	lsls	r3, r1, #7
 80001ae:	1ac0      	subs	r0, r0, r3
 80001b0:	4152      	adcs	r2, r2
 80001b2:	0983      	lsrs	r3, r0, #6
 80001b4:	428b      	cmp	r3, r1
 80001b6:	d301      	bcc.n	80001bc <__udivsi3+0xb4>
 80001b8:	018b      	lsls	r3, r1, #6
 80001ba:	1ac0      	subs	r0, r0, r3
 80001bc:	4152      	adcs	r2, r2
 80001be:	0943      	lsrs	r3, r0, #5
 80001c0:	428b      	cmp	r3, r1
 80001c2:	d301      	bcc.n	80001c8 <__udivsi3+0xc0>
 80001c4:	014b      	lsls	r3, r1, #5
 80001c6:	1ac0      	subs	r0, r0, r3
 80001c8:	4152      	adcs	r2, r2
 80001ca:	0903      	lsrs	r3, r0, #4
 80001cc:	428b      	cmp	r3, r1
 80001ce:	d301      	bcc.n	80001d4 <__udivsi3+0xcc>
 80001d0:	010b      	lsls	r3, r1, #4
 80001d2:	1ac0      	subs	r0, r0, r3
 80001d4:	4152      	adcs	r2, r2
 80001d6:	08c3      	lsrs	r3, r0, #3
 80001d8:	428b      	cmp	r3, r1
 80001da:	d301      	bcc.n	80001e0 <__udivsi3+0xd8>
 80001dc:	00cb      	lsls	r3, r1, #3
 80001de:	1ac0      	subs	r0, r0, r3
 80001e0:	4152      	adcs	r2, r2
 80001e2:	0883      	lsrs	r3, r0, #2
 80001e4:	428b      	cmp	r3, r1
 80001e6:	d301      	bcc.n	80001ec <__udivsi3+0xe4>
 80001e8:	008b      	lsls	r3, r1, #2
 80001ea:	1ac0      	subs	r0, r0, r3
 80001ec:	4152      	adcs	r2, r2
 80001ee:	0843      	lsrs	r3, r0, #1
 80001f0:	428b      	cmp	r3, r1
 80001f2:	d301      	bcc.n	80001f8 <__udivsi3+0xf0>
 80001f4:	004b      	lsls	r3, r1, #1
 80001f6:	1ac0      	subs	r0, r0, r3
 80001f8:	4152      	adcs	r2, r2
 80001fa:	1a41      	subs	r1, r0, r1
 80001fc:	d200      	bcs.n	8000200 <__udivsi3+0xf8>
 80001fe:	4601      	mov	r1, r0
 8000200:	4152      	adcs	r2, r2
 8000202:	4610      	mov	r0, r2
 8000204:	4770      	bx	lr
 8000206:	e7ff      	b.n	8000208 <__udivsi3+0x100>
 8000208:	b501      	push	{r0, lr}
 800020a:	2000      	movs	r0, #0
 800020c:	f000 f806 	bl	800021c <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__aeabi_idiv0>:
 800021c:	4770      	bx	lr
 800021e:	46c0      	nop			; (mov r8, r8)

08000220 <Reset_Handler>:
 8000220:	480d      	ldr	r0, [pc, #52]	; (8000258 <LoopForever+0x2>)
 8000222:	4685      	mov	sp, r0
 8000224:	480d      	ldr	r0, [pc, #52]	; (800025c <LoopForever+0x6>)
 8000226:	490e      	ldr	r1, [pc, #56]	; (8000260 <LoopForever+0xa>)
 8000228:	4a0e      	ldr	r2, [pc, #56]	; (8000264 <LoopForever+0xe>)
 800022a:	2300      	movs	r3, #0
 800022c:	e002      	b.n	8000234 <LoopCopyDataInit>

0800022e <CopyDataInit>:
 800022e:	58d4      	ldr	r4, [r2, r3]
 8000230:	50c4      	str	r4, [r0, r3]
 8000232:	3304      	adds	r3, #4

08000234 <LoopCopyDataInit>:
 8000234:	18c4      	adds	r4, r0, r3
 8000236:	428c      	cmp	r4, r1
 8000238:	d3f9      	bcc.n	800022e <CopyDataInit>
 800023a:	4a0b      	ldr	r2, [pc, #44]	; (8000268 <LoopForever+0x12>)
 800023c:	4c0b      	ldr	r4, [pc, #44]	; (800026c <LoopForever+0x16>)
 800023e:	2300      	movs	r3, #0
 8000240:	e001      	b.n	8000246 <LoopFillZerobss>

08000242 <FillZerobss>:
 8000242:	6013      	str	r3, [r2, #0]
 8000244:	3204      	adds	r2, #4

08000246 <LoopFillZerobss>:
 8000246:	42a2      	cmp	r2, r4
 8000248:	d3fb      	bcc.n	8000242 <FillZerobss>
 800024a:	f000 fe09 	bl	8000e60 <SystemInit>
 800024e:	f000 fe5d 	bl	8000f0c <__libc_init_array>
 8000252:	f000 fdf9 	bl	8000e48 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	080010a8 	.word	0x080010a8
 8000268:	20000434 	.word	0x20000434
 800026c:	20000460 	.word	0x20000460

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <NVIC_EnableIRQ>:
 8000274:	b580      	push	{r7, lr}
 8000276:	b082      	sub	sp, #8
 8000278:	af00      	add	r7, sp, #0
 800027a:	0002      	movs	r2, r0
 800027c:	1dfb      	adds	r3, r7, #7
 800027e:	701a      	strb	r2, [r3, #0]
 8000280:	1dfb      	adds	r3, r7, #7
 8000282:	781b      	ldrb	r3, [r3, #0]
 8000284:	001a      	movs	r2, r3
 8000286:	231f      	movs	r3, #31
 8000288:	401a      	ands	r2, r3
 800028a:	4b04      	ldr	r3, [pc, #16]	; (800029c <NVIC_EnableIRQ+0x28>)
 800028c:	2101      	movs	r1, #1
 800028e:	4091      	lsls	r1, r2
 8000290:	000a      	movs	r2, r1
 8000292:	601a      	str	r2, [r3, #0]
 8000294:	46c0      	nop			; (mov r8, r8)
 8000296:	46bd      	mov	sp, r7
 8000298:	b002      	add	sp, #8
 800029a:	bd80      	pop	{r7, pc}
 800029c:	e000e100 	.word	0xe000e100

080002a0 <NVIC_SetPriority>:
 80002a0:	b590      	push	{r4, r7, lr}
 80002a2:	b083      	sub	sp, #12
 80002a4:	af00      	add	r7, sp, #0
 80002a6:	0002      	movs	r2, r0
 80002a8:	6039      	str	r1, [r7, #0]
 80002aa:	1dfb      	adds	r3, r7, #7
 80002ac:	701a      	strb	r2, [r3, #0]
 80002ae:	1dfb      	adds	r3, r7, #7
 80002b0:	781b      	ldrb	r3, [r3, #0]
 80002b2:	2b7f      	cmp	r3, #127	; 0x7f
 80002b4:	d932      	bls.n	800031c <NVIC_SetPriority+0x7c>
 80002b6:	4a2f      	ldr	r2, [pc, #188]	; (8000374 <NVIC_SetPriority+0xd4>)
 80002b8:	1dfb      	adds	r3, r7, #7
 80002ba:	781b      	ldrb	r3, [r3, #0]
 80002bc:	0019      	movs	r1, r3
 80002be:	230f      	movs	r3, #15
 80002c0:	400b      	ands	r3, r1
 80002c2:	3b08      	subs	r3, #8
 80002c4:	089b      	lsrs	r3, r3, #2
 80002c6:	3306      	adds	r3, #6
 80002c8:	009b      	lsls	r3, r3, #2
 80002ca:	18d3      	adds	r3, r2, r3
 80002cc:	3304      	adds	r3, #4
 80002ce:	681b      	ldr	r3, [r3, #0]
 80002d0:	1dfa      	adds	r2, r7, #7
 80002d2:	7812      	ldrb	r2, [r2, #0]
 80002d4:	0011      	movs	r1, r2
 80002d6:	2203      	movs	r2, #3
 80002d8:	400a      	ands	r2, r1
 80002da:	00d2      	lsls	r2, r2, #3
 80002dc:	21ff      	movs	r1, #255	; 0xff
 80002de:	4091      	lsls	r1, r2
 80002e0:	000a      	movs	r2, r1
 80002e2:	43d2      	mvns	r2, r2
 80002e4:	401a      	ands	r2, r3
 80002e6:	0011      	movs	r1, r2
 80002e8:	683b      	ldr	r3, [r7, #0]
 80002ea:	019b      	lsls	r3, r3, #6
 80002ec:	22ff      	movs	r2, #255	; 0xff
 80002ee:	401a      	ands	r2, r3
 80002f0:	1dfb      	adds	r3, r7, #7
 80002f2:	781b      	ldrb	r3, [r3, #0]
 80002f4:	0018      	movs	r0, r3
 80002f6:	2303      	movs	r3, #3
 80002f8:	4003      	ands	r3, r0
 80002fa:	00db      	lsls	r3, r3, #3
 80002fc:	409a      	lsls	r2, r3
 80002fe:	481d      	ldr	r0, [pc, #116]	; (8000374 <NVIC_SetPriority+0xd4>)
 8000300:	1dfb      	adds	r3, r7, #7
 8000302:	781b      	ldrb	r3, [r3, #0]
 8000304:	001c      	movs	r4, r3
 8000306:	230f      	movs	r3, #15
 8000308:	4023      	ands	r3, r4
 800030a:	3b08      	subs	r3, #8
 800030c:	089b      	lsrs	r3, r3, #2
 800030e:	430a      	orrs	r2, r1
 8000310:	3306      	adds	r3, #6
 8000312:	009b      	lsls	r3, r3, #2
 8000314:	18c3      	adds	r3, r0, r3
 8000316:	3304      	adds	r3, #4
 8000318:	601a      	str	r2, [r3, #0]
 800031a:	e027      	b.n	800036c <NVIC_SetPriority+0xcc>
 800031c:	4a16      	ldr	r2, [pc, #88]	; (8000378 <NVIC_SetPriority+0xd8>)
 800031e:	1dfb      	adds	r3, r7, #7
 8000320:	781b      	ldrb	r3, [r3, #0]
 8000322:	b25b      	sxtb	r3, r3
 8000324:	089b      	lsrs	r3, r3, #2
 8000326:	33c0      	adds	r3, #192	; 0xc0
 8000328:	009b      	lsls	r3, r3, #2
 800032a:	589b      	ldr	r3, [r3, r2]
 800032c:	1dfa      	adds	r2, r7, #7
 800032e:	7812      	ldrb	r2, [r2, #0]
 8000330:	0011      	movs	r1, r2
 8000332:	2203      	movs	r2, #3
 8000334:	400a      	ands	r2, r1
 8000336:	00d2      	lsls	r2, r2, #3
 8000338:	21ff      	movs	r1, #255	; 0xff
 800033a:	4091      	lsls	r1, r2
 800033c:	000a      	movs	r2, r1
 800033e:	43d2      	mvns	r2, r2
 8000340:	401a      	ands	r2, r3
 8000342:	0011      	movs	r1, r2
 8000344:	683b      	ldr	r3, [r7, #0]
 8000346:	019b      	lsls	r3, r3, #6
 8000348:	22ff      	movs	r2, #255	; 0xff
 800034a:	401a      	ands	r2, r3
 800034c:	1dfb      	adds	r3, r7, #7
 800034e:	781b      	ldrb	r3, [r3, #0]
 8000350:	0018      	movs	r0, r3
 8000352:	2303      	movs	r3, #3
 8000354:	4003      	ands	r3, r0
 8000356:	00db      	lsls	r3, r3, #3
 8000358:	409a      	lsls	r2, r3
 800035a:	4807      	ldr	r0, [pc, #28]	; (8000378 <NVIC_SetPriority+0xd8>)
 800035c:	1dfb      	adds	r3, r7, #7
 800035e:	781b      	ldrb	r3, [r3, #0]
 8000360:	b25b      	sxtb	r3, r3
 8000362:	089b      	lsrs	r3, r3, #2
 8000364:	430a      	orrs	r2, r1
 8000366:	33c0      	adds	r3, #192	; 0xc0
 8000368:	009b      	lsls	r3, r3, #2
 800036a:	501a      	str	r2, [r3, r0]
 800036c:	46c0      	nop			; (mov r8, r8)
 800036e:	46bd      	mov	sp, r7
 8000370:	b003      	add	sp, #12
 8000372:	bd90      	pop	{r4, r7, pc}
 8000374:	e000ed00 	.word	0xe000ed00
 8000378:	e000e100 	.word	0xe000e100

0800037c <LL_RCC_HSI_Enable>:
 800037c:	b580      	push	{r7, lr}
 800037e:	af00      	add	r7, sp, #0
 8000380:	4b04      	ldr	r3, [pc, #16]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000382:	681a      	ldr	r2, [r3, #0]
 8000384:	4b03      	ldr	r3, [pc, #12]	; (8000394 <LL_RCC_HSI_Enable+0x18>)
 8000386:	2101      	movs	r1, #1
 8000388:	430a      	orrs	r2, r1
 800038a:	601a      	str	r2, [r3, #0]
 800038c:	46c0      	nop			; (mov r8, r8)
 800038e:	46bd      	mov	sp, r7
 8000390:	bd80      	pop	{r7, pc}
 8000392:	46c0      	nop			; (mov r8, r8)
 8000394:	40021000 	.word	0x40021000

08000398 <LL_RCC_HSI_IsReady>:
 8000398:	b580      	push	{r7, lr}
 800039a:	af00      	add	r7, sp, #0
 800039c:	4b05      	ldr	r3, [pc, #20]	; (80003b4 <LL_RCC_HSI_IsReady+0x1c>)
 800039e:	681b      	ldr	r3, [r3, #0]
 80003a0:	2202      	movs	r2, #2
 80003a2:	4013      	ands	r3, r2
 80003a4:	3b02      	subs	r3, #2
 80003a6:	425a      	negs	r2, r3
 80003a8:	4153      	adcs	r3, r2
 80003aa:	b2db      	uxtb	r3, r3
 80003ac:	0018      	movs	r0, r3
 80003ae:	46bd      	mov	sp, r7
 80003b0:	bd80      	pop	{r7, pc}
 80003b2:	46c0      	nop			; (mov r8, r8)
 80003b4:	40021000 	.word	0x40021000

080003b8 <LL_RCC_SetSysClkSource>:
 80003b8:	b580      	push	{r7, lr}
 80003ba:	b082      	sub	sp, #8
 80003bc:	af00      	add	r7, sp, #0
 80003be:	6078      	str	r0, [r7, #4]
 80003c0:	4b06      	ldr	r3, [pc, #24]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003c2:	685b      	ldr	r3, [r3, #4]
 80003c4:	2203      	movs	r2, #3
 80003c6:	4393      	bics	r3, r2
 80003c8:	0019      	movs	r1, r3
 80003ca:	4b04      	ldr	r3, [pc, #16]	; (80003dc <LL_RCC_SetSysClkSource+0x24>)
 80003cc:	687a      	ldr	r2, [r7, #4]
 80003ce:	430a      	orrs	r2, r1
 80003d0:	605a      	str	r2, [r3, #4]
 80003d2:	46c0      	nop			; (mov r8, r8)
 80003d4:	46bd      	mov	sp, r7
 80003d6:	b002      	add	sp, #8
 80003d8:	bd80      	pop	{r7, pc}
 80003da:	46c0      	nop			; (mov r8, r8)
 80003dc:	40021000 	.word	0x40021000

080003e0 <LL_RCC_GetSysClkSource>:
 80003e0:	b580      	push	{r7, lr}
 80003e2:	af00      	add	r7, sp, #0
 80003e4:	4b03      	ldr	r3, [pc, #12]	; (80003f4 <LL_RCC_GetSysClkSource+0x14>)
 80003e6:	685b      	ldr	r3, [r3, #4]
 80003e8:	220c      	movs	r2, #12
 80003ea:	4013      	ands	r3, r2
 80003ec:	0018      	movs	r0, r3
 80003ee:	46bd      	mov	sp, r7
 80003f0:	bd80      	pop	{r7, pc}
 80003f2:	46c0      	nop			; (mov r8, r8)
 80003f4:	40021000 	.word	0x40021000

080003f8 <LL_RCC_SetAHBPrescaler>:
 80003f8:	b580      	push	{r7, lr}
 80003fa:	b082      	sub	sp, #8
 80003fc:	af00      	add	r7, sp, #0
 80003fe:	6078      	str	r0, [r7, #4]
 8000400:	4b06      	ldr	r3, [pc, #24]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 8000402:	685b      	ldr	r3, [r3, #4]
 8000404:	22f0      	movs	r2, #240	; 0xf0
 8000406:	4393      	bics	r3, r2
 8000408:	0019      	movs	r1, r3
 800040a:	4b04      	ldr	r3, [pc, #16]	; (800041c <LL_RCC_SetAHBPrescaler+0x24>)
 800040c:	687a      	ldr	r2, [r7, #4]
 800040e:	430a      	orrs	r2, r1
 8000410:	605a      	str	r2, [r3, #4]
 8000412:	46c0      	nop			; (mov r8, r8)
 8000414:	46bd      	mov	sp, r7
 8000416:	b002      	add	sp, #8
 8000418:	bd80      	pop	{r7, pc}
 800041a:	46c0      	nop			; (mov r8, r8)
 800041c:	40021000 	.word	0x40021000

08000420 <LL_RCC_SetAPB1Prescaler>:
 8000420:	b580      	push	{r7, lr}
 8000422:	b082      	sub	sp, #8
 8000424:	af00      	add	r7, sp, #0
 8000426:	6078      	str	r0, [r7, #4]
 8000428:	4b06      	ldr	r3, [pc, #24]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 800042a:	685b      	ldr	r3, [r3, #4]
 800042c:	4a06      	ldr	r2, [pc, #24]	; (8000448 <LL_RCC_SetAPB1Prescaler+0x28>)
 800042e:	4013      	ands	r3, r2
 8000430:	0019      	movs	r1, r3
 8000432:	4b04      	ldr	r3, [pc, #16]	; (8000444 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000434:	687a      	ldr	r2, [r7, #4]
 8000436:	430a      	orrs	r2, r1
 8000438:	605a      	str	r2, [r3, #4]
 800043a:	46c0      	nop			; (mov r8, r8)
 800043c:	46bd      	mov	sp, r7
 800043e:	b002      	add	sp, #8
 8000440:	bd80      	pop	{r7, pc}
 8000442:	46c0      	nop			; (mov r8, r8)
 8000444:	40021000 	.word	0x40021000
 8000448:	fffff8ff 	.word	0xfffff8ff

0800044c <LL_RCC_PLL_Enable>:
 800044c:	b580      	push	{r7, lr}
 800044e:	af00      	add	r7, sp, #0
 8000450:	4b04      	ldr	r3, [pc, #16]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000452:	681a      	ldr	r2, [r3, #0]
 8000454:	4b03      	ldr	r3, [pc, #12]	; (8000464 <LL_RCC_PLL_Enable+0x18>)
 8000456:	2180      	movs	r1, #128	; 0x80
 8000458:	0449      	lsls	r1, r1, #17
 800045a:	430a      	orrs	r2, r1
 800045c:	601a      	str	r2, [r3, #0]
 800045e:	46c0      	nop			; (mov r8, r8)
 8000460:	46bd      	mov	sp, r7
 8000462:	bd80      	pop	{r7, pc}
 8000464:	40021000 	.word	0x40021000

08000468 <LL_RCC_PLL_IsReady>:
 8000468:	b580      	push	{r7, lr}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b07      	ldr	r3, [pc, #28]	; (800048c <LL_RCC_PLL_IsReady+0x24>)
 800046e:	681a      	ldr	r2, [r3, #0]
 8000470:	2380      	movs	r3, #128	; 0x80
 8000472:	049b      	lsls	r3, r3, #18
 8000474:	4013      	ands	r3, r2
 8000476:	22fe      	movs	r2, #254	; 0xfe
 8000478:	0612      	lsls	r2, r2, #24
 800047a:	4694      	mov	ip, r2
 800047c:	4463      	add	r3, ip
 800047e:	425a      	negs	r2, r3
 8000480:	4153      	adcs	r3, r2
 8000482:	b2db      	uxtb	r3, r3
 8000484:	0018      	movs	r0, r3
 8000486:	46bd      	mov	sp, r7
 8000488:	bd80      	pop	{r7, pc}
 800048a:	46c0      	nop			; (mov r8, r8)
 800048c:	40021000 	.word	0x40021000

08000490 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000490:	b580      	push	{r7, lr}
 8000492:	b082      	sub	sp, #8
 8000494:	af00      	add	r7, sp, #0
 8000496:	6078      	str	r0, [r7, #4]
 8000498:	6039      	str	r1, [r7, #0]
 800049a:	4b0e      	ldr	r3, [pc, #56]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800049c:	685b      	ldr	r3, [r3, #4]
 800049e:	4a0e      	ldr	r2, [pc, #56]	; (80004d8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004a0:	4013      	ands	r3, r2
 80004a2:	0019      	movs	r1, r3
 80004a4:	687a      	ldr	r2, [r7, #4]
 80004a6:	2380      	movs	r3, #128	; 0x80
 80004a8:	025b      	lsls	r3, r3, #9
 80004aa:	401a      	ands	r2, r3
 80004ac:	683b      	ldr	r3, [r7, #0]
 80004ae:	431a      	orrs	r2, r3
 80004b0:	4b08      	ldr	r3, [pc, #32]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b2:	430a      	orrs	r2, r1
 80004b4:	605a      	str	r2, [r3, #4]
 80004b6:	4b07      	ldr	r3, [pc, #28]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ba:	220f      	movs	r2, #15
 80004bc:	4393      	bics	r3, r2
 80004be:	0019      	movs	r1, r3
 80004c0:	687b      	ldr	r3, [r7, #4]
 80004c2:	220f      	movs	r2, #15
 80004c4:	401a      	ands	r2, r3
 80004c6:	4b03      	ldr	r3, [pc, #12]	; (80004d4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004c8:	430a      	orrs	r2, r1
 80004ca:	62da      	str	r2, [r3, #44]	; 0x2c
 80004cc:	46c0      	nop			; (mov r8, r8)
 80004ce:	46bd      	mov	sp, r7
 80004d0:	b002      	add	sp, #8
 80004d2:	bd80      	pop	{r7, pc}
 80004d4:	40021000 	.word	0x40021000
 80004d8:	ffc2ffff 	.word	0xffc2ffff

080004dc <LL_FLASH_SetLatency>:
 80004dc:	b580      	push	{r7, lr}
 80004de:	b082      	sub	sp, #8
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	6078      	str	r0, [r7, #4]
 80004e4:	4b06      	ldr	r3, [pc, #24]	; (8000500 <LL_FLASH_SetLatency+0x24>)
 80004e6:	681b      	ldr	r3, [r3, #0]
 80004e8:	2201      	movs	r2, #1
 80004ea:	4393      	bics	r3, r2
 80004ec:	0019      	movs	r1, r3
 80004ee:	4b04      	ldr	r3, [pc, #16]	; (8000500 <LL_FLASH_SetLatency+0x24>)
 80004f0:	687a      	ldr	r2, [r7, #4]
 80004f2:	430a      	orrs	r2, r1
 80004f4:	601a      	str	r2, [r3, #0]
 80004f6:	46c0      	nop			; (mov r8, r8)
 80004f8:	46bd      	mov	sp, r7
 80004fa:	b002      	add	sp, #8
 80004fc:	bd80      	pop	{r7, pc}
 80004fe:	46c0      	nop			; (mov r8, r8)
 8000500:	40022000 	.word	0x40022000

08000504 <LL_AHB1_GRP1_EnableClock>:
 8000504:	b580      	push	{r7, lr}
 8000506:	b084      	sub	sp, #16
 8000508:	af00      	add	r7, sp, #0
 800050a:	6078      	str	r0, [r7, #4]
 800050c:	4b07      	ldr	r3, [pc, #28]	; (800052c <LL_AHB1_GRP1_EnableClock+0x28>)
 800050e:	6959      	ldr	r1, [r3, #20]
 8000510:	4b06      	ldr	r3, [pc, #24]	; (800052c <LL_AHB1_GRP1_EnableClock+0x28>)
 8000512:	687a      	ldr	r2, [r7, #4]
 8000514:	430a      	orrs	r2, r1
 8000516:	615a      	str	r2, [r3, #20]
 8000518:	4b04      	ldr	r3, [pc, #16]	; (800052c <LL_AHB1_GRP1_EnableClock+0x28>)
 800051a:	695b      	ldr	r3, [r3, #20]
 800051c:	687a      	ldr	r2, [r7, #4]
 800051e:	4013      	ands	r3, r2
 8000520:	60fb      	str	r3, [r7, #12]
 8000522:	68fb      	ldr	r3, [r7, #12]
 8000524:	46c0      	nop			; (mov r8, r8)
 8000526:	46bd      	mov	sp, r7
 8000528:	b004      	add	sp, #16
 800052a:	bd80      	pop	{r7, pc}
 800052c:	40021000 	.word	0x40021000

08000530 <LL_APB1_GRP1_EnableClock>:
 8000530:	b580      	push	{r7, lr}
 8000532:	b084      	sub	sp, #16
 8000534:	af00      	add	r7, sp, #0
 8000536:	6078      	str	r0, [r7, #4]
 8000538:	4b07      	ldr	r3, [pc, #28]	; (8000558 <LL_APB1_GRP1_EnableClock+0x28>)
 800053a:	69d9      	ldr	r1, [r3, #28]
 800053c:	4b06      	ldr	r3, [pc, #24]	; (8000558 <LL_APB1_GRP1_EnableClock+0x28>)
 800053e:	687a      	ldr	r2, [r7, #4]
 8000540:	430a      	orrs	r2, r1
 8000542:	61da      	str	r2, [r3, #28]
 8000544:	4b04      	ldr	r3, [pc, #16]	; (8000558 <LL_APB1_GRP1_EnableClock+0x28>)
 8000546:	69db      	ldr	r3, [r3, #28]
 8000548:	687a      	ldr	r2, [r7, #4]
 800054a:	4013      	ands	r3, r2
 800054c:	60fb      	str	r3, [r7, #12]
 800054e:	68fb      	ldr	r3, [r7, #12]
 8000550:	46c0      	nop			; (mov r8, r8)
 8000552:	46bd      	mov	sp, r7
 8000554:	b004      	add	sp, #16
 8000556:	bd80      	pop	{r7, pc}
 8000558:	40021000 	.word	0x40021000

0800055c <LL_GPIO_SetPinMode>:
 800055c:	b580      	push	{r7, lr}
 800055e:	b084      	sub	sp, #16
 8000560:	af00      	add	r7, sp, #0
 8000562:	60f8      	str	r0, [r7, #12]
 8000564:	60b9      	str	r1, [r7, #8]
 8000566:	607a      	str	r2, [r7, #4]
 8000568:	68fb      	ldr	r3, [r7, #12]
 800056a:	6819      	ldr	r1, [r3, #0]
 800056c:	68bb      	ldr	r3, [r7, #8]
 800056e:	435b      	muls	r3, r3
 8000570:	001a      	movs	r2, r3
 8000572:	0013      	movs	r3, r2
 8000574:	005b      	lsls	r3, r3, #1
 8000576:	189b      	adds	r3, r3, r2
 8000578:	43db      	mvns	r3, r3
 800057a:	400b      	ands	r3, r1
 800057c:	001a      	movs	r2, r3
 800057e:	68bb      	ldr	r3, [r7, #8]
 8000580:	435b      	muls	r3, r3
 8000582:	6879      	ldr	r1, [r7, #4]
 8000584:	434b      	muls	r3, r1
 8000586:	431a      	orrs	r2, r3
 8000588:	68fb      	ldr	r3, [r7, #12]
 800058a:	601a      	str	r2, [r3, #0]
 800058c:	46c0      	nop			; (mov r8, r8)
 800058e:	46bd      	mov	sp, r7
 8000590:	b004      	add	sp, #16
 8000592:	bd80      	pop	{r7, pc}

08000594 <LL_GPIO_SetPinPull>:
 8000594:	b580      	push	{r7, lr}
 8000596:	b084      	sub	sp, #16
 8000598:	af00      	add	r7, sp, #0
 800059a:	60f8      	str	r0, [r7, #12]
 800059c:	60b9      	str	r1, [r7, #8]
 800059e:	607a      	str	r2, [r7, #4]
 80005a0:	68fb      	ldr	r3, [r7, #12]
 80005a2:	68d9      	ldr	r1, [r3, #12]
 80005a4:	68bb      	ldr	r3, [r7, #8]
 80005a6:	435b      	muls	r3, r3
 80005a8:	001a      	movs	r2, r3
 80005aa:	0013      	movs	r3, r2
 80005ac:	005b      	lsls	r3, r3, #1
 80005ae:	189b      	adds	r3, r3, r2
 80005b0:	43db      	mvns	r3, r3
 80005b2:	400b      	ands	r3, r1
 80005b4:	001a      	movs	r2, r3
 80005b6:	68bb      	ldr	r3, [r7, #8]
 80005b8:	435b      	muls	r3, r3
 80005ba:	6879      	ldr	r1, [r7, #4]
 80005bc:	434b      	muls	r3, r1
 80005be:	431a      	orrs	r2, r3
 80005c0:	68fb      	ldr	r3, [r7, #12]
 80005c2:	60da      	str	r2, [r3, #12]
 80005c4:	46c0      	nop			; (mov r8, r8)
 80005c6:	46bd      	mov	sp, r7
 80005c8:	b004      	add	sp, #16
 80005ca:	bd80      	pop	{r7, pc}

080005cc <LL_GPIO_SetAFPin_0_7>:
 80005cc:	b580      	push	{r7, lr}
 80005ce:	b084      	sub	sp, #16
 80005d0:	af00      	add	r7, sp, #0
 80005d2:	60f8      	str	r0, [r7, #12]
 80005d4:	60b9      	str	r1, [r7, #8]
 80005d6:	607a      	str	r2, [r7, #4]
 80005d8:	68fb      	ldr	r3, [r7, #12]
 80005da:	6a19      	ldr	r1, [r3, #32]
 80005dc:	68bb      	ldr	r3, [r7, #8]
 80005de:	435b      	muls	r3, r3
 80005e0:	68ba      	ldr	r2, [r7, #8]
 80005e2:	4353      	muls	r3, r2
 80005e4:	68ba      	ldr	r2, [r7, #8]
 80005e6:	435a      	muls	r2, r3
 80005e8:	0013      	movs	r3, r2
 80005ea:	011b      	lsls	r3, r3, #4
 80005ec:	1a9b      	subs	r3, r3, r2
 80005ee:	43db      	mvns	r3, r3
 80005f0:	400b      	ands	r3, r1
 80005f2:	001a      	movs	r2, r3
 80005f4:	68bb      	ldr	r3, [r7, #8]
 80005f6:	435b      	muls	r3, r3
 80005f8:	68b9      	ldr	r1, [r7, #8]
 80005fa:	434b      	muls	r3, r1
 80005fc:	68b9      	ldr	r1, [r7, #8]
 80005fe:	434b      	muls	r3, r1
 8000600:	6879      	ldr	r1, [r7, #4]
 8000602:	434b      	muls	r3, r1
 8000604:	431a      	orrs	r2, r3
 8000606:	68fb      	ldr	r3, [r7, #12]
 8000608:	621a      	str	r2, [r3, #32]
 800060a:	46c0      	nop			; (mov r8, r8)
 800060c:	46bd      	mov	sp, r7
 800060e:	b004      	add	sp, #16
 8000610:	bd80      	pop	{r7, pc}

08000612 <LL_GPIO_IsInputPinSet>:
 8000612:	b580      	push	{r7, lr}
 8000614:	b082      	sub	sp, #8
 8000616:	af00      	add	r7, sp, #0
 8000618:	6078      	str	r0, [r7, #4]
 800061a:	6039      	str	r1, [r7, #0]
 800061c:	687b      	ldr	r3, [r7, #4]
 800061e:	691b      	ldr	r3, [r3, #16]
 8000620:	683a      	ldr	r2, [r7, #0]
 8000622:	4013      	ands	r3, r2
 8000624:	683a      	ldr	r2, [r7, #0]
 8000626:	1ad3      	subs	r3, r2, r3
 8000628:	425a      	negs	r2, r3
 800062a:	4153      	adcs	r3, r2
 800062c:	b2db      	uxtb	r3, r3
 800062e:	0018      	movs	r0, r3
 8000630:	46bd      	mov	sp, r7
 8000632:	b002      	add	sp, #8
 8000634:	bd80      	pop	{r7, pc}

08000636 <LL_GPIO_WriteOutputPort>:
 8000636:	b580      	push	{r7, lr}
 8000638:	b082      	sub	sp, #8
 800063a:	af00      	add	r7, sp, #0
 800063c:	6078      	str	r0, [r7, #4]
 800063e:	6039      	str	r1, [r7, #0]
 8000640:	687b      	ldr	r3, [r7, #4]
 8000642:	683a      	ldr	r2, [r7, #0]
 8000644:	615a      	str	r2, [r3, #20]
 8000646:	46c0      	nop			; (mov r8, r8)
 8000648:	46bd      	mov	sp, r7
 800064a:	b002      	add	sp, #8
 800064c:	bd80      	pop	{r7, pc}

0800064e <LL_GPIO_ResetOutputPin>:
 800064e:	b580      	push	{r7, lr}
 8000650:	b082      	sub	sp, #8
 8000652:	af00      	add	r7, sp, #0
 8000654:	6078      	str	r0, [r7, #4]
 8000656:	6039      	str	r1, [r7, #0]
 8000658:	687b      	ldr	r3, [r7, #4]
 800065a:	683a      	ldr	r2, [r7, #0]
 800065c:	629a      	str	r2, [r3, #40]	; 0x28
 800065e:	46c0      	nop			; (mov r8, r8)
 8000660:	46bd      	mov	sp, r7
 8000662:	b002      	add	sp, #8
 8000664:	bd80      	pop	{r7, pc}

08000666 <LL_GPIO_TogglePin>:
 8000666:	b580      	push	{r7, lr}
 8000668:	b082      	sub	sp, #8
 800066a:	af00      	add	r7, sp, #0
 800066c:	6078      	str	r0, [r7, #4]
 800066e:	6039      	str	r1, [r7, #0]
 8000670:	687b      	ldr	r3, [r7, #4]
 8000672:	695a      	ldr	r2, [r3, #20]
 8000674:	683b      	ldr	r3, [r7, #0]
 8000676:	405a      	eors	r2, r3
 8000678:	687b      	ldr	r3, [r7, #4]
 800067a:	615a      	str	r2, [r3, #20]
 800067c:	46c0      	nop			; (mov r8, r8)
 800067e:	46bd      	mov	sp, r7
 8000680:	b002      	add	sp, #8
 8000682:	bd80      	pop	{r7, pc}

08000684 <LL_TIM_EnableCounter>:
 8000684:	b580      	push	{r7, lr}
 8000686:	b082      	sub	sp, #8
 8000688:	af00      	add	r7, sp, #0
 800068a:	6078      	str	r0, [r7, #4]
 800068c:	687b      	ldr	r3, [r7, #4]
 800068e:	681b      	ldr	r3, [r3, #0]
 8000690:	2201      	movs	r2, #1
 8000692:	431a      	orrs	r2, r3
 8000694:	687b      	ldr	r3, [r7, #4]
 8000696:	601a      	str	r2, [r3, #0]
 8000698:	46c0      	nop			; (mov r8, r8)
 800069a:	46bd      	mov	sp, r7
 800069c:	b002      	add	sp, #8
 800069e:	bd80      	pop	{r7, pc}

080006a0 <LL_TIM_SetPrescaler>:
 80006a0:	b580      	push	{r7, lr}
 80006a2:	b082      	sub	sp, #8
 80006a4:	af00      	add	r7, sp, #0
 80006a6:	6078      	str	r0, [r7, #4]
 80006a8:	6039      	str	r1, [r7, #0]
 80006aa:	687b      	ldr	r3, [r7, #4]
 80006ac:	683a      	ldr	r2, [r7, #0]
 80006ae:	629a      	str	r2, [r3, #40]	; 0x28
 80006b0:	46c0      	nop			; (mov r8, r8)
 80006b2:	46bd      	mov	sp, r7
 80006b4:	b002      	add	sp, #8
 80006b6:	bd80      	pop	{r7, pc}

080006b8 <LL_TIM_CC_EnableChannel>:
 80006b8:	b580      	push	{r7, lr}
 80006ba:	b082      	sub	sp, #8
 80006bc:	af00      	add	r7, sp, #0
 80006be:	6078      	str	r0, [r7, #4]
 80006c0:	6039      	str	r1, [r7, #0]
 80006c2:	687b      	ldr	r3, [r7, #4]
 80006c4:	6a1a      	ldr	r2, [r3, #32]
 80006c6:	683b      	ldr	r3, [r7, #0]
 80006c8:	431a      	orrs	r2, r3
 80006ca:	687b      	ldr	r3, [r7, #4]
 80006cc:	621a      	str	r2, [r3, #32]
 80006ce:	46c0      	nop			; (mov r8, r8)
 80006d0:	46bd      	mov	sp, r7
 80006d2:	b002      	add	sp, #8
 80006d4:	bd80      	pop	{r7, pc}
	...

080006d8 <LL_TIM_IC_SetActiveInput>:
 80006d8:	b5b0      	push	{r4, r5, r7, lr}
 80006da:	b084      	sub	sp, #16
 80006dc:	af00      	add	r7, sp, #0
 80006de:	60f8      	str	r0, [r7, #12]
 80006e0:	60b9      	str	r1, [r7, #8]
 80006e2:	607a      	str	r2, [r7, #4]
 80006e4:	68bb      	ldr	r3, [r7, #8]
 80006e6:	2b01      	cmp	r3, #1
 80006e8:	d01e      	beq.n	8000728 <LL_TIM_IC_SetActiveInput+0x50>
 80006ea:	68bb      	ldr	r3, [r7, #8]
 80006ec:	2b04      	cmp	r3, #4
 80006ee:	d019      	beq.n	8000724 <LL_TIM_IC_SetActiveInput+0x4c>
 80006f0:	68bb      	ldr	r3, [r7, #8]
 80006f2:	2b10      	cmp	r3, #16
 80006f4:	d014      	beq.n	8000720 <LL_TIM_IC_SetActiveInput+0x48>
 80006f6:	68bb      	ldr	r3, [r7, #8]
 80006f8:	2b40      	cmp	r3, #64	; 0x40
 80006fa:	d00f      	beq.n	800071c <LL_TIM_IC_SetActiveInput+0x44>
 80006fc:	68ba      	ldr	r2, [r7, #8]
 80006fe:	2380      	movs	r3, #128	; 0x80
 8000700:	005b      	lsls	r3, r3, #1
 8000702:	429a      	cmp	r2, r3
 8000704:	d008      	beq.n	8000718 <LL_TIM_IC_SetActiveInput+0x40>
 8000706:	68ba      	ldr	r2, [r7, #8]
 8000708:	2380      	movs	r3, #128	; 0x80
 800070a:	00db      	lsls	r3, r3, #3
 800070c:	429a      	cmp	r2, r3
 800070e:	d101      	bne.n	8000714 <LL_TIM_IC_SetActiveInput+0x3c>
 8000710:	2305      	movs	r3, #5
 8000712:	e00a      	b.n	800072a <LL_TIM_IC_SetActiveInput+0x52>
 8000714:	2306      	movs	r3, #6
 8000716:	e008      	b.n	800072a <LL_TIM_IC_SetActiveInput+0x52>
 8000718:	2304      	movs	r3, #4
 800071a:	e006      	b.n	800072a <LL_TIM_IC_SetActiveInput+0x52>
 800071c:	2303      	movs	r3, #3
 800071e:	e004      	b.n	800072a <LL_TIM_IC_SetActiveInput+0x52>
 8000720:	2302      	movs	r3, #2
 8000722:	e002      	b.n	800072a <LL_TIM_IC_SetActiveInput+0x52>
 8000724:	2301      	movs	r3, #1
 8000726:	e000      	b.n	800072a <LL_TIM_IC_SetActiveInput+0x52>
 8000728:	2300      	movs	r3, #0
 800072a:	001d      	movs	r5, r3
 800072c:	68fb      	ldr	r3, [r7, #12]
 800072e:	3318      	adds	r3, #24
 8000730:	001a      	movs	r2, r3
 8000732:	0029      	movs	r1, r5
 8000734:	4b0c      	ldr	r3, [pc, #48]	; (8000768 <LL_TIM_IC_SetActiveInput+0x90>)
 8000736:	5c5b      	ldrb	r3, [r3, r1]
 8000738:	18d3      	adds	r3, r2, r3
 800073a:	001c      	movs	r4, r3
 800073c:	6823      	ldr	r3, [r4, #0]
 800073e:	0029      	movs	r1, r5
 8000740:	4a0a      	ldr	r2, [pc, #40]	; (800076c <LL_TIM_IC_SetActiveInput+0x94>)
 8000742:	5c52      	ldrb	r2, [r2, r1]
 8000744:	0011      	movs	r1, r2
 8000746:	2203      	movs	r2, #3
 8000748:	408a      	lsls	r2, r1
 800074a:	43d2      	mvns	r2, r2
 800074c:	401a      	ands	r2, r3
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	0c1b      	lsrs	r3, r3, #16
 8000752:	0028      	movs	r0, r5
 8000754:	4905      	ldr	r1, [pc, #20]	; (800076c <LL_TIM_IC_SetActiveInput+0x94>)
 8000756:	5c09      	ldrb	r1, [r1, r0]
 8000758:	408b      	lsls	r3, r1
 800075a:	4313      	orrs	r3, r2
 800075c:	6023      	str	r3, [r4, #0]
 800075e:	46c0      	nop			; (mov r8, r8)
 8000760:	46bd      	mov	sp, r7
 8000762:	b004      	add	sp, #16
 8000764:	bdb0      	pop	{r4, r5, r7, pc}
 8000766:	46c0      	nop			; (mov r8, r8)
 8000768:	08001080 	.word	0x08001080
 800076c:	08001088 	.word	0x08001088

08000770 <LL_TIM_IC_SetPrescaler>:
 8000770:	b5b0      	push	{r4, r5, r7, lr}
 8000772:	b084      	sub	sp, #16
 8000774:	af00      	add	r7, sp, #0
 8000776:	60f8      	str	r0, [r7, #12]
 8000778:	60b9      	str	r1, [r7, #8]
 800077a:	607a      	str	r2, [r7, #4]
 800077c:	68bb      	ldr	r3, [r7, #8]
 800077e:	2b01      	cmp	r3, #1
 8000780:	d01e      	beq.n	80007c0 <LL_TIM_IC_SetPrescaler+0x50>
 8000782:	68bb      	ldr	r3, [r7, #8]
 8000784:	2b04      	cmp	r3, #4
 8000786:	d019      	beq.n	80007bc <LL_TIM_IC_SetPrescaler+0x4c>
 8000788:	68bb      	ldr	r3, [r7, #8]
 800078a:	2b10      	cmp	r3, #16
 800078c:	d014      	beq.n	80007b8 <LL_TIM_IC_SetPrescaler+0x48>
 800078e:	68bb      	ldr	r3, [r7, #8]
 8000790:	2b40      	cmp	r3, #64	; 0x40
 8000792:	d00f      	beq.n	80007b4 <LL_TIM_IC_SetPrescaler+0x44>
 8000794:	68ba      	ldr	r2, [r7, #8]
 8000796:	2380      	movs	r3, #128	; 0x80
 8000798:	005b      	lsls	r3, r3, #1
 800079a:	429a      	cmp	r2, r3
 800079c:	d008      	beq.n	80007b0 <LL_TIM_IC_SetPrescaler+0x40>
 800079e:	68ba      	ldr	r2, [r7, #8]
 80007a0:	2380      	movs	r3, #128	; 0x80
 80007a2:	00db      	lsls	r3, r3, #3
 80007a4:	429a      	cmp	r2, r3
 80007a6:	d101      	bne.n	80007ac <LL_TIM_IC_SetPrescaler+0x3c>
 80007a8:	2305      	movs	r3, #5
 80007aa:	e00a      	b.n	80007c2 <LL_TIM_IC_SetPrescaler+0x52>
 80007ac:	2306      	movs	r3, #6
 80007ae:	e008      	b.n	80007c2 <LL_TIM_IC_SetPrescaler+0x52>
 80007b0:	2304      	movs	r3, #4
 80007b2:	e006      	b.n	80007c2 <LL_TIM_IC_SetPrescaler+0x52>
 80007b4:	2303      	movs	r3, #3
 80007b6:	e004      	b.n	80007c2 <LL_TIM_IC_SetPrescaler+0x52>
 80007b8:	2302      	movs	r3, #2
 80007ba:	e002      	b.n	80007c2 <LL_TIM_IC_SetPrescaler+0x52>
 80007bc:	2301      	movs	r3, #1
 80007be:	e000      	b.n	80007c2 <LL_TIM_IC_SetPrescaler+0x52>
 80007c0:	2300      	movs	r3, #0
 80007c2:	001d      	movs	r5, r3
 80007c4:	68fb      	ldr	r3, [r7, #12]
 80007c6:	3318      	adds	r3, #24
 80007c8:	001a      	movs	r2, r3
 80007ca:	0029      	movs	r1, r5
 80007cc:	4b0c      	ldr	r3, [pc, #48]	; (8000800 <LL_TIM_IC_SetPrescaler+0x90>)
 80007ce:	5c5b      	ldrb	r3, [r3, r1]
 80007d0:	18d3      	adds	r3, r2, r3
 80007d2:	001c      	movs	r4, r3
 80007d4:	6823      	ldr	r3, [r4, #0]
 80007d6:	0029      	movs	r1, r5
 80007d8:	4a0a      	ldr	r2, [pc, #40]	; (8000804 <LL_TIM_IC_SetPrescaler+0x94>)
 80007da:	5c52      	ldrb	r2, [r2, r1]
 80007dc:	0011      	movs	r1, r2
 80007de:	220c      	movs	r2, #12
 80007e0:	408a      	lsls	r2, r1
 80007e2:	43d2      	mvns	r2, r2
 80007e4:	401a      	ands	r2, r3
 80007e6:	687b      	ldr	r3, [r7, #4]
 80007e8:	0c1b      	lsrs	r3, r3, #16
 80007ea:	0028      	movs	r0, r5
 80007ec:	4905      	ldr	r1, [pc, #20]	; (8000804 <LL_TIM_IC_SetPrescaler+0x94>)
 80007ee:	5c09      	ldrb	r1, [r1, r0]
 80007f0:	408b      	lsls	r3, r1
 80007f2:	4313      	orrs	r3, r2
 80007f4:	6023      	str	r3, [r4, #0]
 80007f6:	46c0      	nop			; (mov r8, r8)
 80007f8:	46bd      	mov	sp, r7
 80007fa:	b004      	add	sp, #16
 80007fc:	bdb0      	pop	{r4, r5, r7, pc}
 80007fe:	46c0      	nop			; (mov r8, r8)
 8000800:	08001080 	.word	0x08001080
 8000804:	08001088 	.word	0x08001088

08000808 <LL_TIM_IC_SetFilter>:
 8000808:	b5b0      	push	{r4, r5, r7, lr}
 800080a:	b084      	sub	sp, #16
 800080c:	af00      	add	r7, sp, #0
 800080e:	60f8      	str	r0, [r7, #12]
 8000810:	60b9      	str	r1, [r7, #8]
 8000812:	607a      	str	r2, [r7, #4]
 8000814:	68bb      	ldr	r3, [r7, #8]
 8000816:	2b01      	cmp	r3, #1
 8000818:	d01e      	beq.n	8000858 <LL_TIM_IC_SetFilter+0x50>
 800081a:	68bb      	ldr	r3, [r7, #8]
 800081c:	2b04      	cmp	r3, #4
 800081e:	d019      	beq.n	8000854 <LL_TIM_IC_SetFilter+0x4c>
 8000820:	68bb      	ldr	r3, [r7, #8]
 8000822:	2b10      	cmp	r3, #16
 8000824:	d014      	beq.n	8000850 <LL_TIM_IC_SetFilter+0x48>
 8000826:	68bb      	ldr	r3, [r7, #8]
 8000828:	2b40      	cmp	r3, #64	; 0x40
 800082a:	d00f      	beq.n	800084c <LL_TIM_IC_SetFilter+0x44>
 800082c:	68ba      	ldr	r2, [r7, #8]
 800082e:	2380      	movs	r3, #128	; 0x80
 8000830:	005b      	lsls	r3, r3, #1
 8000832:	429a      	cmp	r2, r3
 8000834:	d008      	beq.n	8000848 <LL_TIM_IC_SetFilter+0x40>
 8000836:	68ba      	ldr	r2, [r7, #8]
 8000838:	2380      	movs	r3, #128	; 0x80
 800083a:	00db      	lsls	r3, r3, #3
 800083c:	429a      	cmp	r2, r3
 800083e:	d101      	bne.n	8000844 <LL_TIM_IC_SetFilter+0x3c>
 8000840:	2305      	movs	r3, #5
 8000842:	e00a      	b.n	800085a <LL_TIM_IC_SetFilter+0x52>
 8000844:	2306      	movs	r3, #6
 8000846:	e008      	b.n	800085a <LL_TIM_IC_SetFilter+0x52>
 8000848:	2304      	movs	r3, #4
 800084a:	e006      	b.n	800085a <LL_TIM_IC_SetFilter+0x52>
 800084c:	2303      	movs	r3, #3
 800084e:	e004      	b.n	800085a <LL_TIM_IC_SetFilter+0x52>
 8000850:	2302      	movs	r3, #2
 8000852:	e002      	b.n	800085a <LL_TIM_IC_SetFilter+0x52>
 8000854:	2301      	movs	r3, #1
 8000856:	e000      	b.n	800085a <LL_TIM_IC_SetFilter+0x52>
 8000858:	2300      	movs	r3, #0
 800085a:	001d      	movs	r5, r3
 800085c:	68fb      	ldr	r3, [r7, #12]
 800085e:	3318      	adds	r3, #24
 8000860:	001a      	movs	r2, r3
 8000862:	0029      	movs	r1, r5
 8000864:	4b0c      	ldr	r3, [pc, #48]	; (8000898 <LL_TIM_IC_SetFilter+0x90>)
 8000866:	5c5b      	ldrb	r3, [r3, r1]
 8000868:	18d3      	adds	r3, r2, r3
 800086a:	001c      	movs	r4, r3
 800086c:	6823      	ldr	r3, [r4, #0]
 800086e:	0029      	movs	r1, r5
 8000870:	4a0a      	ldr	r2, [pc, #40]	; (800089c <LL_TIM_IC_SetFilter+0x94>)
 8000872:	5c52      	ldrb	r2, [r2, r1]
 8000874:	0011      	movs	r1, r2
 8000876:	22f0      	movs	r2, #240	; 0xf0
 8000878:	408a      	lsls	r2, r1
 800087a:	43d2      	mvns	r2, r2
 800087c:	401a      	ands	r2, r3
 800087e:	687b      	ldr	r3, [r7, #4]
 8000880:	0c1b      	lsrs	r3, r3, #16
 8000882:	0028      	movs	r0, r5
 8000884:	4905      	ldr	r1, [pc, #20]	; (800089c <LL_TIM_IC_SetFilter+0x94>)
 8000886:	5c09      	ldrb	r1, [r1, r0]
 8000888:	408b      	lsls	r3, r1
 800088a:	4313      	orrs	r3, r2
 800088c:	6023      	str	r3, [r4, #0]
 800088e:	46c0      	nop			; (mov r8, r8)
 8000890:	46bd      	mov	sp, r7
 8000892:	b004      	add	sp, #16
 8000894:	bdb0      	pop	{r4, r5, r7, pc}
 8000896:	46c0      	nop			; (mov r8, r8)
 8000898:	08001080 	.word	0x08001080
 800089c:	08001088 	.word	0x08001088

080008a0 <LL_TIM_IC_SetPolarity>:
 80008a0:	b590      	push	{r4, r7, lr}
 80008a2:	b085      	sub	sp, #20
 80008a4:	af00      	add	r7, sp, #0
 80008a6:	60f8      	str	r0, [r7, #12]
 80008a8:	60b9      	str	r1, [r7, #8]
 80008aa:	607a      	str	r2, [r7, #4]
 80008ac:	68bb      	ldr	r3, [r7, #8]
 80008ae:	2b01      	cmp	r3, #1
 80008b0:	d01e      	beq.n	80008f0 <LL_TIM_IC_SetPolarity+0x50>
 80008b2:	68bb      	ldr	r3, [r7, #8]
 80008b4:	2b04      	cmp	r3, #4
 80008b6:	d019      	beq.n	80008ec <LL_TIM_IC_SetPolarity+0x4c>
 80008b8:	68bb      	ldr	r3, [r7, #8]
 80008ba:	2b10      	cmp	r3, #16
 80008bc:	d014      	beq.n	80008e8 <LL_TIM_IC_SetPolarity+0x48>
 80008be:	68bb      	ldr	r3, [r7, #8]
 80008c0:	2b40      	cmp	r3, #64	; 0x40
 80008c2:	d00f      	beq.n	80008e4 <LL_TIM_IC_SetPolarity+0x44>
 80008c4:	68ba      	ldr	r2, [r7, #8]
 80008c6:	2380      	movs	r3, #128	; 0x80
 80008c8:	005b      	lsls	r3, r3, #1
 80008ca:	429a      	cmp	r2, r3
 80008cc:	d008      	beq.n	80008e0 <LL_TIM_IC_SetPolarity+0x40>
 80008ce:	68ba      	ldr	r2, [r7, #8]
 80008d0:	2380      	movs	r3, #128	; 0x80
 80008d2:	00db      	lsls	r3, r3, #3
 80008d4:	429a      	cmp	r2, r3
 80008d6:	d101      	bne.n	80008dc <LL_TIM_IC_SetPolarity+0x3c>
 80008d8:	2305      	movs	r3, #5
 80008da:	e00a      	b.n	80008f2 <LL_TIM_IC_SetPolarity+0x52>
 80008dc:	2306      	movs	r3, #6
 80008de:	e008      	b.n	80008f2 <LL_TIM_IC_SetPolarity+0x52>
 80008e0:	2304      	movs	r3, #4
 80008e2:	e006      	b.n	80008f2 <LL_TIM_IC_SetPolarity+0x52>
 80008e4:	2303      	movs	r3, #3
 80008e6:	e004      	b.n	80008f2 <LL_TIM_IC_SetPolarity+0x52>
 80008e8:	2302      	movs	r3, #2
 80008ea:	e002      	b.n	80008f2 <LL_TIM_IC_SetPolarity+0x52>
 80008ec:	2301      	movs	r3, #1
 80008ee:	e000      	b.n	80008f2 <LL_TIM_IC_SetPolarity+0x52>
 80008f0:	2300      	movs	r3, #0
 80008f2:	001c      	movs	r4, r3
 80008f4:	68fb      	ldr	r3, [r7, #12]
 80008f6:	6a1b      	ldr	r3, [r3, #32]
 80008f8:	0021      	movs	r1, r4
 80008fa:	4a0a      	ldr	r2, [pc, #40]	; (8000924 <LL_TIM_IC_SetPolarity+0x84>)
 80008fc:	5c52      	ldrb	r2, [r2, r1]
 80008fe:	0011      	movs	r1, r2
 8000900:	220a      	movs	r2, #10
 8000902:	408a      	lsls	r2, r1
 8000904:	43d2      	mvns	r2, r2
 8000906:	401a      	ands	r2, r3
 8000908:	0021      	movs	r1, r4
 800090a:	4b06      	ldr	r3, [pc, #24]	; (8000924 <LL_TIM_IC_SetPolarity+0x84>)
 800090c:	5c5b      	ldrb	r3, [r3, r1]
 800090e:	0019      	movs	r1, r3
 8000910:	687b      	ldr	r3, [r7, #4]
 8000912:	408b      	lsls	r3, r1
 8000914:	431a      	orrs	r2, r3
 8000916:	68fb      	ldr	r3, [r7, #12]
 8000918:	621a      	str	r2, [r3, #32]
 800091a:	46c0      	nop			; (mov r8, r8)
 800091c:	46bd      	mov	sp, r7
 800091e:	b005      	add	sp, #20
 8000920:	bd90      	pop	{r4, r7, pc}
 8000922:	46c0      	nop			; (mov r8, r8)
 8000924:	08001090 	.word	0x08001090

08000928 <LL_TIM_ClearFlag_CC1>:
 8000928:	b580      	push	{r7, lr}
 800092a:	b082      	sub	sp, #8
 800092c:	af00      	add	r7, sp, #0
 800092e:	6078      	str	r0, [r7, #4]
 8000930:	687b      	ldr	r3, [r7, #4]
 8000932:	2203      	movs	r2, #3
 8000934:	4252      	negs	r2, r2
 8000936:	611a      	str	r2, [r3, #16]
 8000938:	46c0      	nop			; (mov r8, r8)
 800093a:	46bd      	mov	sp, r7
 800093c:	b002      	add	sp, #8
 800093e:	bd80      	pop	{r7, pc}

08000940 <LL_TIM_EnableIT_CC1>:
 8000940:	b580      	push	{r7, lr}
 8000942:	b082      	sub	sp, #8
 8000944:	af00      	add	r7, sp, #0
 8000946:	6078      	str	r0, [r7, #4]
 8000948:	687b      	ldr	r3, [r7, #4]
 800094a:	68db      	ldr	r3, [r3, #12]
 800094c:	2202      	movs	r2, #2
 800094e:	431a      	orrs	r2, r3
 8000950:	687b      	ldr	r3, [r7, #4]
 8000952:	60da      	str	r2, [r3, #12]
 8000954:	46c0      	nop			; (mov r8, r8)
 8000956:	46bd      	mov	sp, r7
 8000958:	b002      	add	sp, #8
 800095a:	bd80      	pop	{r7, pc}

0800095c <LL_InitTick>:
 800095c:	b580      	push	{r7, lr}
 800095e:	b082      	sub	sp, #8
 8000960:	af00      	add	r7, sp, #0
 8000962:	6078      	str	r0, [r7, #4]
 8000964:	6039      	str	r1, [r7, #0]
 8000966:	6839      	ldr	r1, [r7, #0]
 8000968:	6878      	ldr	r0, [r7, #4]
 800096a:	f7ff fbcd 	bl	8000108 <__udivsi3>
 800096e:	0003      	movs	r3, r0
 8000970:	001a      	movs	r2, r3
 8000972:	4b06      	ldr	r3, [pc, #24]	; (800098c <LL_InitTick+0x30>)
 8000974:	3a01      	subs	r2, #1
 8000976:	605a      	str	r2, [r3, #4]
 8000978:	4b04      	ldr	r3, [pc, #16]	; (800098c <LL_InitTick+0x30>)
 800097a:	2200      	movs	r2, #0
 800097c:	609a      	str	r2, [r3, #8]
 800097e:	4b03      	ldr	r3, [pc, #12]	; (800098c <LL_InitTick+0x30>)
 8000980:	2205      	movs	r2, #5
 8000982:	601a      	str	r2, [r3, #0]
 8000984:	46c0      	nop			; (mov r8, r8)
 8000986:	46bd      	mov	sp, r7
 8000988:	b002      	add	sp, #8
 800098a:	bd80      	pop	{r7, pc}
 800098c:	e000e010 	.word	0xe000e010

08000990 <LL_SYSTICK_EnableIT>:
 8000990:	b580      	push	{r7, lr}
 8000992:	af00      	add	r7, sp, #0
 8000994:	4b04      	ldr	r3, [pc, #16]	; (80009a8 <LL_SYSTICK_EnableIT+0x18>)
 8000996:	681a      	ldr	r2, [r3, #0]
 8000998:	4b03      	ldr	r3, [pc, #12]	; (80009a8 <LL_SYSTICK_EnableIT+0x18>)
 800099a:	2102      	movs	r1, #2
 800099c:	430a      	orrs	r2, r1
 800099e:	601a      	str	r2, [r3, #0]
 80009a0:	46c0      	nop			; (mov r8, r8)
 80009a2:	46bd      	mov	sp, r7
 80009a4:	bd80      	pop	{r7, pc}
 80009a6:	46c0      	nop			; (mov r8, r8)
 80009a8:	e000e010 	.word	0xe000e010

080009ac <mask_indicator>:
 80009ac:	b580      	push	{r7, lr}
 80009ae:	b082      	sub	sp, #8
 80009b0:	af00      	add	r7, sp, #0
 80009b2:	6078      	str	r0, [r7, #4]
 80009b4:	687b      	ldr	r3, [r7, #4]
 80009b6:	09db      	lsrs	r3, r3, #7
 80009b8:	2201      	movs	r2, #1
 80009ba:	4013      	ands	r3, r2
 80009bc:	01da      	lsls	r2, r3, #7
 80009be:	687b      	ldr	r3, [r7, #4]
 80009c0:	099b      	lsrs	r3, r3, #6
 80009c2:	2101      	movs	r1, #1
 80009c4:	400b      	ands	r3, r1
 80009c6:	019b      	lsls	r3, r3, #6
 80009c8:	431a      	orrs	r2, r3
 80009ca:	687b      	ldr	r3, [r7, #4]
 80009cc:	095b      	lsrs	r3, r3, #5
 80009ce:	2101      	movs	r1, #1
 80009d0:	400b      	ands	r3, r1
 80009d2:	015b      	lsls	r3, r3, #5
 80009d4:	431a      	orrs	r2, r3
 80009d6:	687b      	ldr	r3, [r7, #4]
 80009d8:	091b      	lsrs	r3, r3, #4
 80009da:	2101      	movs	r1, #1
 80009dc:	400b      	ands	r3, r1
 80009de:	011b      	lsls	r3, r3, #4
 80009e0:	431a      	orrs	r2, r3
 80009e2:	687b      	ldr	r3, [r7, #4]
 80009e4:	08db      	lsrs	r3, r3, #3
 80009e6:	2101      	movs	r1, #1
 80009e8:	400b      	ands	r3, r1
 80009ea:	00db      	lsls	r3, r3, #3
 80009ec:	431a      	orrs	r2, r3
 80009ee:	687b      	ldr	r3, [r7, #4]
 80009f0:	089b      	lsrs	r3, r3, #2
 80009f2:	2101      	movs	r1, #1
 80009f4:	400b      	ands	r3, r1
 80009f6:	009b      	lsls	r3, r3, #2
 80009f8:	431a      	orrs	r2, r3
 80009fa:	687b      	ldr	r3, [r7, #4]
 80009fc:	085b      	lsrs	r3, r3, #1
 80009fe:	2101      	movs	r1, #1
 8000a00:	400b      	ands	r3, r1
 8000a02:	005b      	lsls	r3, r3, #1
 8000a04:	431a      	orrs	r2, r3
 8000a06:	687b      	ldr	r3, [r7, #4]
 8000a08:	2101      	movs	r1, #1
 8000a0a:	400b      	ands	r3, r1
 8000a0c:	4313      	orrs	r3, r2
 8000a0e:	0018      	movs	r0, r3
 8000a10:	46bd      	mov	sp, r7
 8000a12:	b002      	add	sp, #8
 8000a14:	bd80      	pop	{r7, pc}
	...

08000a18 <rcc_config>:
 8000a18:	b580      	push	{r7, lr}
 8000a1a:	af00      	add	r7, sp, #0
 8000a1c:	2001      	movs	r0, #1
 8000a1e:	f7ff fd5d 	bl	80004dc <LL_FLASH_SetLatency>
 8000a22:	f7ff fcab 	bl	800037c <LL_RCC_HSI_Enable>
 8000a26:	46c0      	nop			; (mov r8, r8)
 8000a28:	f7ff fcb6 	bl	8000398 <LL_RCC_HSI_IsReady>
 8000a2c:	0003      	movs	r3, r0
 8000a2e:	2b01      	cmp	r3, #1
 8000a30:	d1fa      	bne.n	8000a28 <rcc_config+0x10>
 8000a32:	23a0      	movs	r3, #160	; 0xa0
 8000a34:	039b      	lsls	r3, r3, #14
 8000a36:	0019      	movs	r1, r3
 8000a38:	2000      	movs	r0, #0
 8000a3a:	f7ff fd29 	bl	8000490 <LL_RCC_PLL_ConfigDomain_SYS>
 8000a3e:	f7ff fd05 	bl	800044c <LL_RCC_PLL_Enable>
 8000a42:	46c0      	nop			; (mov r8, r8)
 8000a44:	f7ff fd10 	bl	8000468 <LL_RCC_PLL_IsReady>
 8000a48:	0003      	movs	r3, r0
 8000a4a:	2b01      	cmp	r3, #1
 8000a4c:	d1fa      	bne.n	8000a44 <rcc_config+0x2c>
 8000a4e:	2000      	movs	r0, #0
 8000a50:	f7ff fcd2 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 8000a54:	2002      	movs	r0, #2
 8000a56:	f7ff fcaf 	bl	80003b8 <LL_RCC_SetSysClkSource>
 8000a5a:	46c0      	nop			; (mov r8, r8)
 8000a5c:	f7ff fcc0 	bl	80003e0 <LL_RCC_GetSysClkSource>
 8000a60:	0003      	movs	r3, r0
 8000a62:	2b08      	cmp	r3, #8
 8000a64:	d1fa      	bne.n	8000a5c <rcc_config+0x44>
 8000a66:	2000      	movs	r0, #0
 8000a68:	f7ff fcda 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 8000a6c:	4b02      	ldr	r3, [pc, #8]	; (8000a78 <rcc_config+0x60>)
 8000a6e:	4a03      	ldr	r2, [pc, #12]	; (8000a7c <rcc_config+0x64>)
 8000a70:	601a      	str	r2, [r3, #0]
 8000a72:	46c0      	nop			; (mov r8, r8)
 8000a74:	46bd      	mov	sp, r7
 8000a76:	bd80      	pop	{r7, pc}
 8000a78:	20000000 	.word	0x20000000
 8000a7c:	02dc6c00 	.word	0x02dc6c00

08000a80 <gpio_config>:
 8000a80:	b580      	push	{r7, lr}
 8000a82:	af00      	add	r7, sp, #0
 8000a84:	2380      	movs	r3, #128	; 0x80
 8000a86:	031b      	lsls	r3, r3, #12
 8000a88:	0018      	movs	r0, r3
 8000a8a:	f7ff fd3b 	bl	8000504 <LL_AHB1_GRP1_EnableClock>
 8000a8e:	2380      	movs	r3, #128	; 0x80
 8000a90:	005b      	lsls	r3, r3, #1
 8000a92:	4834      	ldr	r0, [pc, #208]	; (8000b64 <gpio_config+0xe4>)
 8000a94:	2201      	movs	r2, #1
 8000a96:	0019      	movs	r1, r3
 8000a98:	f7ff fd60 	bl	800055c <LL_GPIO_SetPinMode>
 8000a9c:	2380      	movs	r3, #128	; 0x80
 8000a9e:	009b      	lsls	r3, r3, #2
 8000aa0:	4830      	ldr	r0, [pc, #192]	; (8000b64 <gpio_config+0xe4>)
 8000aa2:	2201      	movs	r2, #1
 8000aa4:	0019      	movs	r1, r3
 8000aa6:	f7ff fd59 	bl	800055c <LL_GPIO_SetPinMode>
 8000aaa:	4b2e      	ldr	r3, [pc, #184]	; (8000b64 <gpio_config+0xe4>)
 8000aac:	2201      	movs	r2, #1
 8000aae:	2101      	movs	r1, #1
 8000ab0:	0018      	movs	r0, r3
 8000ab2:	f7ff fd53 	bl	800055c <LL_GPIO_SetPinMode>
 8000ab6:	4b2b      	ldr	r3, [pc, #172]	; (8000b64 <gpio_config+0xe4>)
 8000ab8:	2201      	movs	r2, #1
 8000aba:	2102      	movs	r1, #2
 8000abc:	0018      	movs	r0, r3
 8000abe:	f7ff fd4d 	bl	800055c <LL_GPIO_SetPinMode>
 8000ac2:	4b28      	ldr	r3, [pc, #160]	; (8000b64 <gpio_config+0xe4>)
 8000ac4:	2201      	movs	r2, #1
 8000ac6:	2104      	movs	r1, #4
 8000ac8:	0018      	movs	r0, r3
 8000aca:	f7ff fd47 	bl	800055c <LL_GPIO_SetPinMode>
 8000ace:	4b25      	ldr	r3, [pc, #148]	; (8000b64 <gpio_config+0xe4>)
 8000ad0:	2201      	movs	r2, #1
 8000ad2:	2108      	movs	r1, #8
 8000ad4:	0018      	movs	r0, r3
 8000ad6:	f7ff fd41 	bl	800055c <LL_GPIO_SetPinMode>
 8000ada:	2380      	movs	r3, #128	; 0x80
 8000adc:	029b      	lsls	r3, r3, #10
 8000ade:	0018      	movs	r0, r3
 8000ae0:	f7ff fd10 	bl	8000504 <LL_AHB1_GRP1_EnableClock>
 8000ae4:	2390      	movs	r3, #144	; 0x90
 8000ae6:	05db      	lsls	r3, r3, #23
 8000ae8:	2200      	movs	r2, #0
 8000aea:	2101      	movs	r1, #1
 8000aec:	0018      	movs	r0, r3
 8000aee:	f7ff fd35 	bl	800055c <LL_GPIO_SetPinMode>
 8000af2:	2380      	movs	r3, #128	; 0x80
 8000af4:	02db      	lsls	r3, r3, #11
 8000af6:	0018      	movs	r0, r3
 8000af8:	f7ff fd04 	bl	8000504 <LL_AHB1_GRP1_EnableClock>
 8000afc:	4b1a      	ldr	r3, [pc, #104]	; (8000b68 <gpio_config+0xe8>)
 8000afe:	2201      	movs	r2, #1
 8000b00:	2101      	movs	r1, #1
 8000b02:	0018      	movs	r0, r3
 8000b04:	f7ff fd2a 	bl	800055c <LL_GPIO_SetPinMode>
 8000b08:	4b17      	ldr	r3, [pc, #92]	; (8000b68 <gpio_config+0xe8>)
 8000b0a:	2201      	movs	r2, #1
 8000b0c:	2102      	movs	r1, #2
 8000b0e:	0018      	movs	r0, r3
 8000b10:	f7ff fd24 	bl	800055c <LL_GPIO_SetPinMode>
 8000b14:	4b14      	ldr	r3, [pc, #80]	; (8000b68 <gpio_config+0xe8>)
 8000b16:	2201      	movs	r2, #1
 8000b18:	2104      	movs	r1, #4
 8000b1a:	0018      	movs	r0, r3
 8000b1c:	f7ff fd1e 	bl	800055c <LL_GPIO_SetPinMode>
 8000b20:	4b11      	ldr	r3, [pc, #68]	; (8000b68 <gpio_config+0xe8>)
 8000b22:	2201      	movs	r2, #1
 8000b24:	2108      	movs	r1, #8
 8000b26:	0018      	movs	r0, r3
 8000b28:	f7ff fd18 	bl	800055c <LL_GPIO_SetPinMode>
 8000b2c:	4b0e      	ldr	r3, [pc, #56]	; (8000b68 <gpio_config+0xe8>)
 8000b2e:	2201      	movs	r2, #1
 8000b30:	2110      	movs	r1, #16
 8000b32:	0018      	movs	r0, r3
 8000b34:	f7ff fd12 	bl	800055c <LL_GPIO_SetPinMode>
 8000b38:	4b0b      	ldr	r3, [pc, #44]	; (8000b68 <gpio_config+0xe8>)
 8000b3a:	2201      	movs	r2, #1
 8000b3c:	2120      	movs	r1, #32
 8000b3e:	0018      	movs	r0, r3
 8000b40:	f7ff fd0c 	bl	800055c <LL_GPIO_SetPinMode>
 8000b44:	4b08      	ldr	r3, [pc, #32]	; (8000b68 <gpio_config+0xe8>)
 8000b46:	2201      	movs	r2, #1
 8000b48:	2140      	movs	r1, #64	; 0x40
 8000b4a:	0018      	movs	r0, r3
 8000b4c:	f7ff fd06 	bl	800055c <LL_GPIO_SetPinMode>
 8000b50:	4b05      	ldr	r3, [pc, #20]	; (8000b68 <gpio_config+0xe8>)
 8000b52:	2201      	movs	r2, #1
 8000b54:	2180      	movs	r1, #128	; 0x80
 8000b56:	0018      	movs	r0, r3
 8000b58:	f7ff fd00 	bl	800055c <LL_GPIO_SetPinMode>
 8000b5c:	46c0      	nop			; (mov r8, r8)
 8000b5e:	46bd      	mov	sp, r7
 8000b60:	bd80      	pop	{r7, pc}
 8000b62:	46c0      	nop			; (mov r8, r8)
 8000b64:	48000800 	.word	0x48000800
 8000b68:	48000400 	.word	0x48000400

08000b6c <dec_display>:
 8000b6c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000b6e:	b089      	sub	sp, #36	; 0x24
 8000b70:	af00      	add	r7, sp, #0
 8000b72:	0002      	movs	r2, r0
 8000b74:	1dbb      	adds	r3, r7, #6
 8000b76:	801a      	strh	r2, [r3, #0]
 8000b78:	241e      	movs	r4, #30
 8000b7a:	193b      	adds	r3, r7, r4
 8000b7c:	2200      	movs	r2, #0
 8000b7e:	801a      	strh	r2, [r3, #0]
 8000b80:	2508      	movs	r5, #8
 8000b82:	197b      	adds	r3, r7, r5
 8000b84:	4a4d      	ldr	r2, [pc, #308]	; (8000cbc <dec_display+0x150>)
 8000b86:	ca43      	ldmia	r2!, {r0, r1, r6}
 8000b88:	c343      	stmia	r3!, {r0, r1, r6}
 8000b8a:	ca03      	ldmia	r2!, {r0, r1}
 8000b8c:	c303      	stmia	r3!, {r0, r1}
 8000b8e:	200f      	movs	r0, #15
 8000b90:	f7ff ff0c 	bl	80009ac <mask_indicator>
 8000b94:	0003      	movs	r3, r0
 8000b96:	4a4a      	ldr	r2, [pc, #296]	; (8000cc0 <dec_display+0x154>)
 8000b98:	0019      	movs	r1, r3
 8000b9a:	0010      	movs	r0, r2
 8000b9c:	f7ff fd4b 	bl	8000636 <LL_GPIO_WriteOutputPort>
 8000ba0:	4b48      	ldr	r3, [pc, #288]	; (8000cc4 <dec_display+0x158>)
 8000ba2:	881b      	ldrh	r3, [r3, #0]
 8000ba4:	001a      	movs	r2, r3
 8000ba6:	2301      	movs	r3, #1
 8000ba8:	4093      	lsls	r3, r2
 8000baa:	0018      	movs	r0, r3
 8000bac:	f7ff fefe 	bl	80009ac <mask_indicator>
 8000bb0:	0003      	movs	r3, r0
 8000bb2:	4a43      	ldr	r2, [pc, #268]	; (8000cc0 <dec_display+0x154>)
 8000bb4:	0019      	movs	r1, r3
 8000bb6:	0010      	movs	r0, r2
 8000bb8:	f7ff fd49 	bl	800064e <LL_GPIO_ResetOutputPin>
 8000bbc:	4b41      	ldr	r3, [pc, #260]	; (8000cc4 <dec_display+0x158>)
 8000bbe:	881b      	ldrh	r3, [r3, #0]
 8000bc0:	2b00      	cmp	r3, #0
 8000bc2:	d10d      	bne.n	8000be0 <dec_display+0x74>
 8000bc4:	1dbb      	adds	r3, r7, #6
 8000bc6:	881b      	ldrh	r3, [r3, #0]
 8000bc8:	210a      	movs	r1, #10
 8000bca:	0018      	movs	r0, r3
 8000bcc:	f7ff fb22 	bl	8000214 <__aeabi_uidivmod>
 8000bd0:	000b      	movs	r3, r1
 8000bd2:	b29b      	uxth	r3, r3
 8000bd4:	0019      	movs	r1, r3
 8000bd6:	193b      	adds	r3, r7, r4
 8000bd8:	197a      	adds	r2, r7, r5
 8000bda:	0049      	lsls	r1, r1, #1
 8000bdc:	5a8a      	ldrh	r2, [r1, r2]
 8000bde:	801a      	strh	r2, [r3, #0]
 8000be0:	4b38      	ldr	r3, [pc, #224]	; (8000cc4 <dec_display+0x158>)
 8000be2:	881b      	ldrh	r3, [r3, #0]
 8000be4:	2b01      	cmp	r3, #1
 8000be6:	d115      	bne.n	8000c14 <dec_display+0xa8>
 8000be8:	1dbb      	adds	r3, r7, #6
 8000bea:	881b      	ldrh	r3, [r3, #0]
 8000bec:	210a      	movs	r1, #10
 8000bee:	0018      	movs	r0, r3
 8000bf0:	f7ff fa8a 	bl	8000108 <__udivsi3>
 8000bf4:	0003      	movs	r3, r0
 8000bf6:	b29b      	uxth	r3, r3
 8000bf8:	210a      	movs	r1, #10
 8000bfa:	0018      	movs	r0, r3
 8000bfc:	f7ff fb0a 	bl	8000214 <__aeabi_uidivmod>
 8000c00:	000b      	movs	r3, r1
 8000c02:	b29b      	uxth	r3, r3
 8000c04:	0019      	movs	r1, r3
 8000c06:	231e      	movs	r3, #30
 8000c08:	18fb      	adds	r3, r7, r3
 8000c0a:	2208      	movs	r2, #8
 8000c0c:	18ba      	adds	r2, r7, r2
 8000c0e:	0049      	lsls	r1, r1, #1
 8000c10:	5a8a      	ldrh	r2, [r1, r2]
 8000c12:	801a      	strh	r2, [r3, #0]
 8000c14:	4b2b      	ldr	r3, [pc, #172]	; (8000cc4 <dec_display+0x158>)
 8000c16:	881b      	ldrh	r3, [r3, #0]
 8000c18:	2b02      	cmp	r3, #2
 8000c1a:	d115      	bne.n	8000c48 <dec_display+0xdc>
 8000c1c:	1dbb      	adds	r3, r7, #6
 8000c1e:	881b      	ldrh	r3, [r3, #0]
 8000c20:	2164      	movs	r1, #100	; 0x64
 8000c22:	0018      	movs	r0, r3
 8000c24:	f7ff fa70 	bl	8000108 <__udivsi3>
 8000c28:	0003      	movs	r3, r0
 8000c2a:	b29b      	uxth	r3, r3
 8000c2c:	210a      	movs	r1, #10
 8000c2e:	0018      	movs	r0, r3
 8000c30:	f7ff faf0 	bl	8000214 <__aeabi_uidivmod>
 8000c34:	000b      	movs	r3, r1
 8000c36:	b29b      	uxth	r3, r3
 8000c38:	0019      	movs	r1, r3
 8000c3a:	231e      	movs	r3, #30
 8000c3c:	18fb      	adds	r3, r7, r3
 8000c3e:	2208      	movs	r2, #8
 8000c40:	18ba      	adds	r2, r7, r2
 8000c42:	0049      	lsls	r1, r1, #1
 8000c44:	5a8a      	ldrh	r2, [r1, r2]
 8000c46:	801a      	strh	r2, [r3, #0]
 8000c48:	4b1e      	ldr	r3, [pc, #120]	; (8000cc4 <dec_display+0x158>)
 8000c4a:	881b      	ldrh	r3, [r3, #0]
 8000c4c:	2b03      	cmp	r3, #3
 8000c4e:	d116      	bne.n	8000c7e <dec_display+0x112>
 8000c50:	1dbb      	adds	r3, r7, #6
 8000c52:	881b      	ldrh	r3, [r3, #0]
 8000c54:	22fa      	movs	r2, #250	; 0xfa
 8000c56:	0091      	lsls	r1, r2, #2
 8000c58:	0018      	movs	r0, r3
 8000c5a:	f7ff fa55 	bl	8000108 <__udivsi3>
 8000c5e:	0003      	movs	r3, r0
 8000c60:	b29b      	uxth	r3, r3
 8000c62:	210a      	movs	r1, #10
 8000c64:	0018      	movs	r0, r3
 8000c66:	f7ff fad5 	bl	8000214 <__aeabi_uidivmod>
 8000c6a:	000b      	movs	r3, r1
 8000c6c:	b29b      	uxth	r3, r3
 8000c6e:	0019      	movs	r1, r3
 8000c70:	231e      	movs	r3, #30
 8000c72:	18fb      	adds	r3, r7, r3
 8000c74:	2208      	movs	r2, #8
 8000c76:	18ba      	adds	r2, r7, r2
 8000c78:	0049      	lsls	r1, r1, #1
 8000c7a:	5a8a      	ldrh	r2, [r1, r2]
 8000c7c:	801a      	strh	r2, [r3, #0]
 8000c7e:	231e      	movs	r3, #30
 8000c80:	18fb      	adds	r3, r7, r3
 8000c82:	881b      	ldrh	r3, [r3, #0]
 8000c84:	0018      	movs	r0, r3
 8000c86:	f7ff fe91 	bl	80009ac <mask_indicator>
 8000c8a:	0003      	movs	r3, r0
 8000c8c:	4a0e      	ldr	r2, [pc, #56]	; (8000cc8 <dec_display+0x15c>)
 8000c8e:	0019      	movs	r1, r3
 8000c90:	0010      	movs	r0, r2
 8000c92:	f7ff fcd0 	bl	8000636 <LL_GPIO_WriteOutputPort>
 8000c96:	4b0b      	ldr	r3, [pc, #44]	; (8000cc4 <dec_display+0x158>)
 8000c98:	881b      	ldrh	r3, [r3, #0]
 8000c9a:	3301      	adds	r3, #1
 8000c9c:	4a0b      	ldr	r2, [pc, #44]	; (8000ccc <dec_display+0x160>)
 8000c9e:	4013      	ands	r3, r2
 8000ca0:	d504      	bpl.n	8000cac <dec_display+0x140>
 8000ca2:	3b01      	subs	r3, #1
 8000ca4:	2204      	movs	r2, #4
 8000ca6:	4252      	negs	r2, r2
 8000ca8:	4313      	orrs	r3, r2
 8000caa:	3301      	adds	r3, #1
 8000cac:	b29a      	uxth	r2, r3
 8000cae:	4b05      	ldr	r3, [pc, #20]	; (8000cc4 <dec_display+0x158>)
 8000cb0:	801a      	strh	r2, [r3, #0]
 8000cb2:	46c0      	nop			; (mov r8, r8)
 8000cb4:	46bd      	mov	sp, r7
 8000cb6:	b009      	add	sp, #36	; 0x24
 8000cb8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000cba:	46c0      	nop			; (mov r8, r8)
 8000cbc:	0800106c 	.word	0x0800106c
 8000cc0:	48000800 	.word	0x48000800
 8000cc4:	20000458 	.word	0x20000458
 8000cc8:	48000400 	.word	0x48000400
 8000ccc:	80000003 	.word	0x80000003

08000cd0 <timers_config>:
 8000cd0:	b580      	push	{r7, lr}
 8000cd2:	af00      	add	r7, sp, #0
 8000cd4:	2380      	movs	r3, #128	; 0x80
 8000cd6:	029b      	lsls	r3, r3, #10
 8000cd8:	0018      	movs	r0, r3
 8000cda:	f7ff fc13 	bl	8000504 <LL_AHB1_GRP1_EnableClock>
 8000cde:	2390      	movs	r3, #144	; 0x90
 8000ce0:	05db      	lsls	r3, r3, #23
 8000ce2:	2202      	movs	r2, #2
 8000ce4:	2120      	movs	r1, #32
 8000ce6:	0018      	movs	r0, r3
 8000ce8:	f7ff fc38 	bl	800055c <LL_GPIO_SetPinMode>
 8000cec:	2390      	movs	r3, #144	; 0x90
 8000cee:	05db      	lsls	r3, r3, #23
 8000cf0:	2202      	movs	r2, #2
 8000cf2:	2120      	movs	r1, #32
 8000cf4:	0018      	movs	r0, r3
 8000cf6:	f7ff fc69 	bl	80005cc <LL_GPIO_SetAFPin_0_7>
 8000cfa:	2390      	movs	r3, #144	; 0x90
 8000cfc:	05db      	lsls	r3, r3, #23
 8000cfe:	2201      	movs	r2, #1
 8000d00:	2120      	movs	r1, #32
 8000d02:	0018      	movs	r0, r3
 8000d04:	f7ff fc46 	bl	8000594 <LL_GPIO_SetPinPull>
 8000d08:	2001      	movs	r0, #1
 8000d0a:	f7ff fc11 	bl	8000530 <LL_APB1_GRP1_EnableClock>
 8000d0e:	4a1f      	ldr	r2, [pc, #124]	; (8000d8c <timers_config+0xbc>)
 8000d10:	2380      	movs	r3, #128	; 0x80
 8000d12:	05db      	lsls	r3, r3, #23
 8000d14:	0011      	movs	r1, r2
 8000d16:	0018      	movs	r0, r3
 8000d18:	f7ff fcc2 	bl	80006a0 <LL_TIM_SetPrescaler>
 8000d1c:	23f0      	movs	r3, #240	; 0xf0
 8000d1e:	041a      	lsls	r2, r3, #16
 8000d20:	2380      	movs	r3, #128	; 0x80
 8000d22:	05db      	lsls	r3, r3, #23
 8000d24:	2101      	movs	r1, #1
 8000d26:	0018      	movs	r0, r3
 8000d28:	f7ff fd6e 	bl	8000808 <LL_TIM_IC_SetFilter>
 8000d2c:	2380      	movs	r3, #128	; 0x80
 8000d2e:	05db      	lsls	r3, r3, #23
 8000d30:	220a      	movs	r2, #10
 8000d32:	2101      	movs	r1, #1
 8000d34:	0018      	movs	r0, r3
 8000d36:	f7ff fdb3 	bl	80008a0 <LL_TIM_IC_SetPolarity>
 8000d3a:	2380      	movs	r3, #128	; 0x80
 8000d3c:	025a      	lsls	r2, r3, #9
 8000d3e:	2380      	movs	r3, #128	; 0x80
 8000d40:	05db      	lsls	r3, r3, #23
 8000d42:	2101      	movs	r1, #1
 8000d44:	0018      	movs	r0, r3
 8000d46:	f7ff fcc7 	bl	80006d8 <LL_TIM_IC_SetActiveInput>
 8000d4a:	2380      	movs	r3, #128	; 0x80
 8000d4c:	05db      	lsls	r3, r3, #23
 8000d4e:	2200      	movs	r2, #0
 8000d50:	2101      	movs	r1, #1
 8000d52:	0018      	movs	r0, r3
 8000d54:	f7ff fd0c 	bl	8000770 <LL_TIM_IC_SetPrescaler>
 8000d58:	2380      	movs	r3, #128	; 0x80
 8000d5a:	05db      	lsls	r3, r3, #23
 8000d5c:	2101      	movs	r1, #1
 8000d5e:	0018      	movs	r0, r3
 8000d60:	f7ff fcaa 	bl	80006b8 <LL_TIM_CC_EnableChannel>
 8000d64:	2380      	movs	r3, #128	; 0x80
 8000d66:	05db      	lsls	r3, r3, #23
 8000d68:	0018      	movs	r0, r3
 8000d6a:	f7ff fde9 	bl	8000940 <LL_TIM_EnableIT_CC1>
 8000d6e:	2380      	movs	r3, #128	; 0x80
 8000d70:	05db      	lsls	r3, r3, #23
 8000d72:	0018      	movs	r0, r3
 8000d74:	f7ff fc86 	bl	8000684 <LL_TIM_EnableCounter>
 8000d78:	200f      	movs	r0, #15
 8000d7a:	f7ff fa7b 	bl	8000274 <NVIC_EnableIRQ>
 8000d7e:	2100      	movs	r1, #0
 8000d80:	200f      	movs	r0, #15
 8000d82:	f7ff fa8d 	bl	80002a0 <NVIC_SetPriority>
 8000d86:	46c0      	nop			; (mov r8, r8)
 8000d88:	46bd      	mov	sp, r7
 8000d8a:	bd80      	pop	{r7, pc}
 8000d8c:	0000bb7f 	.word	0x0000bb7f

08000d90 <TIM2_IRQHandler>:
 8000d90:	b580      	push	{r7, lr}
 8000d92:	af00      	add	r7, sp, #0
 8000d94:	2380      	movs	r3, #128	; 0x80
 8000d96:	005b      	lsls	r3, r3, #1
 8000d98:	4a11      	ldr	r2, [pc, #68]	; (8000de0 <TIM2_IRQHandler+0x50>)
 8000d9a:	0019      	movs	r1, r3
 8000d9c:	0010      	movs	r0, r2
 8000d9e:	f7ff fc62 	bl	8000666 <LL_GPIO_TogglePin>
 8000da2:	2390      	movs	r3, #144	; 0x90
 8000da4:	05db      	lsls	r3, r3, #23
 8000da6:	2120      	movs	r1, #32
 8000da8:	0018      	movs	r0, r3
 8000daa:	f7ff fc32 	bl	8000612 <LL_GPIO_IsInputPinSet>
 8000dae:	1e03      	subs	r3, r0, #0
 8000db0:	d10a      	bne.n	8000dc8 <TIM2_IRQHandler+0x38>
 8000db2:	4b0c      	ldr	r3, [pc, #48]	; (8000de4 <TIM2_IRQHandler+0x54>)
 8000db4:	2201      	movs	r2, #1
 8000db6:	601a      	str	r2, [r3, #0]
 8000db8:	4b0b      	ldr	r3, [pc, #44]	; (8000de8 <TIM2_IRQHandler+0x58>)
 8000dba:	681b      	ldr	r3, [r3, #0]
 8000dbc:	2b00      	cmp	r3, #0
 8000dbe:	d006      	beq.n	8000dce <TIM2_IRQHandler+0x3e>
 8000dc0:	4b09      	ldr	r3, [pc, #36]	; (8000de8 <TIM2_IRQHandler+0x58>)
 8000dc2:	2200      	movs	r2, #0
 8000dc4:	601a      	str	r2, [r3, #0]
 8000dc6:	e002      	b.n	8000dce <TIM2_IRQHandler+0x3e>
 8000dc8:	4b06      	ldr	r3, [pc, #24]	; (8000de4 <TIM2_IRQHandler+0x54>)
 8000dca:	2200      	movs	r2, #0
 8000dcc:	601a      	str	r2, [r3, #0]
 8000dce:	2380      	movs	r3, #128	; 0x80
 8000dd0:	05db      	lsls	r3, r3, #23
 8000dd2:	0018      	movs	r0, r3
 8000dd4:	f7ff fda8 	bl	8000928 <LL_TIM_ClearFlag_CC1>
 8000dd8:	46c0      	nop			; (mov r8, r8)
 8000dda:	46bd      	mov	sp, r7
 8000ddc:	bd80      	pop	{r7, pc}
 8000dde:	46c0      	nop			; (mov r8, r8)
 8000de0:	48000800 	.word	0x48000800
 8000de4:	20000454 	.word	0x20000454
 8000de8:	20000450 	.word	0x20000450

08000dec <systick_config>:
 8000dec:	b580      	push	{r7, lr}
 8000dee:	af00      	add	r7, sp, #0
 8000df0:	23fa      	movs	r3, #250	; 0xfa
 8000df2:	009b      	lsls	r3, r3, #2
 8000df4:	4a07      	ldr	r2, [pc, #28]	; (8000e14 <systick_config+0x28>)
 8000df6:	0019      	movs	r1, r3
 8000df8:	0010      	movs	r0, r2
 8000dfa:	f7ff fdaf 	bl	800095c <LL_InitTick>
 8000dfe:	f7ff fdc7 	bl	8000990 <LL_SYSTICK_EnableIT>
 8000e02:	2301      	movs	r3, #1
 8000e04:	425b      	negs	r3, r3
 8000e06:	2101      	movs	r1, #1
 8000e08:	0018      	movs	r0, r3
 8000e0a:	f7ff fa49 	bl	80002a0 <NVIC_SetPriority>
 8000e0e:	46c0      	nop			; (mov r8, r8)
 8000e10:	46bd      	mov	sp, r7
 8000e12:	bd80      	pop	{r7, pc}
 8000e14:	02dc6c00 	.word	0x02dc6c00

08000e18 <SysTick_Handler>:
 8000e18:	b580      	push	{r7, lr}
 8000e1a:	af00      	add	r7, sp, #0
 8000e1c:	4b08      	ldr	r3, [pc, #32]	; (8000e40 <SysTick_Handler+0x28>)
 8000e1e:	681b      	ldr	r3, [r3, #0]
 8000e20:	2b00      	cmp	r3, #0
 8000e22:	d004      	beq.n	8000e2e <SysTick_Handler+0x16>
 8000e24:	4b07      	ldr	r3, [pc, #28]	; (8000e44 <SysTick_Handler+0x2c>)
 8000e26:	681b      	ldr	r3, [r3, #0]
 8000e28:	1c5a      	adds	r2, r3, #1
 8000e2a:	4b06      	ldr	r3, [pc, #24]	; (8000e44 <SysTick_Handler+0x2c>)
 8000e2c:	601a      	str	r2, [r3, #0]
 8000e2e:	4b05      	ldr	r3, [pc, #20]	; (8000e44 <SysTick_Handler+0x2c>)
 8000e30:	681b      	ldr	r3, [r3, #0]
 8000e32:	b29b      	uxth	r3, r3
 8000e34:	0018      	movs	r0, r3
 8000e36:	f7ff fe99 	bl	8000b6c <dec_display>
 8000e3a:	46c0      	nop			; (mov r8, r8)
 8000e3c:	46bd      	mov	sp, r7
 8000e3e:	bd80      	pop	{r7, pc}
 8000e40:	20000454 	.word	0x20000454
 8000e44:	20000450 	.word	0x20000450

08000e48 <main>:
 8000e48:	b580      	push	{r7, lr}
 8000e4a:	af00      	add	r7, sp, #0
 8000e4c:	f7ff fde4 	bl	8000a18 <rcc_config>
 8000e50:	f7ff fe16 	bl	8000a80 <gpio_config>
 8000e54:	f7ff ff3c 	bl	8000cd0 <timers_config>
 8000e58:	f7ff ffc8 	bl	8000dec <systick_config>
 8000e5c:	e7fe      	b.n	8000e5c <main+0x14>
	...

08000e60 <SystemInit>:
 8000e60:	b580      	push	{r7, lr}
 8000e62:	af00      	add	r7, sp, #0
 8000e64:	4b1a      	ldr	r3, [pc, #104]	; (8000ed0 <SystemInit+0x70>)
 8000e66:	681a      	ldr	r2, [r3, #0]
 8000e68:	4b19      	ldr	r3, [pc, #100]	; (8000ed0 <SystemInit+0x70>)
 8000e6a:	2101      	movs	r1, #1
 8000e6c:	430a      	orrs	r2, r1
 8000e6e:	601a      	str	r2, [r3, #0]
 8000e70:	4b17      	ldr	r3, [pc, #92]	; (8000ed0 <SystemInit+0x70>)
 8000e72:	685a      	ldr	r2, [r3, #4]
 8000e74:	4b16      	ldr	r3, [pc, #88]	; (8000ed0 <SystemInit+0x70>)
 8000e76:	4917      	ldr	r1, [pc, #92]	; (8000ed4 <SystemInit+0x74>)
 8000e78:	400a      	ands	r2, r1
 8000e7a:	605a      	str	r2, [r3, #4]
 8000e7c:	4b14      	ldr	r3, [pc, #80]	; (8000ed0 <SystemInit+0x70>)
 8000e7e:	681a      	ldr	r2, [r3, #0]
 8000e80:	4b13      	ldr	r3, [pc, #76]	; (8000ed0 <SystemInit+0x70>)
 8000e82:	4915      	ldr	r1, [pc, #84]	; (8000ed8 <SystemInit+0x78>)
 8000e84:	400a      	ands	r2, r1
 8000e86:	601a      	str	r2, [r3, #0]
 8000e88:	4b11      	ldr	r3, [pc, #68]	; (8000ed0 <SystemInit+0x70>)
 8000e8a:	681a      	ldr	r2, [r3, #0]
 8000e8c:	4b10      	ldr	r3, [pc, #64]	; (8000ed0 <SystemInit+0x70>)
 8000e8e:	4913      	ldr	r1, [pc, #76]	; (8000edc <SystemInit+0x7c>)
 8000e90:	400a      	ands	r2, r1
 8000e92:	601a      	str	r2, [r3, #0]
 8000e94:	4b0e      	ldr	r3, [pc, #56]	; (8000ed0 <SystemInit+0x70>)
 8000e96:	685a      	ldr	r2, [r3, #4]
 8000e98:	4b0d      	ldr	r3, [pc, #52]	; (8000ed0 <SystemInit+0x70>)
 8000e9a:	4911      	ldr	r1, [pc, #68]	; (8000ee0 <SystemInit+0x80>)
 8000e9c:	400a      	ands	r2, r1
 8000e9e:	605a      	str	r2, [r3, #4]
 8000ea0:	4b0b      	ldr	r3, [pc, #44]	; (8000ed0 <SystemInit+0x70>)
 8000ea2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000ea4:	4b0a      	ldr	r3, [pc, #40]	; (8000ed0 <SystemInit+0x70>)
 8000ea6:	210f      	movs	r1, #15
 8000ea8:	438a      	bics	r2, r1
 8000eaa:	62da      	str	r2, [r3, #44]	; 0x2c
 8000eac:	4b08      	ldr	r3, [pc, #32]	; (8000ed0 <SystemInit+0x70>)
 8000eae:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000eb0:	4b07      	ldr	r3, [pc, #28]	; (8000ed0 <SystemInit+0x70>)
 8000eb2:	490c      	ldr	r1, [pc, #48]	; (8000ee4 <SystemInit+0x84>)
 8000eb4:	400a      	ands	r2, r1
 8000eb6:	631a      	str	r2, [r3, #48]	; 0x30
 8000eb8:	4b05      	ldr	r3, [pc, #20]	; (8000ed0 <SystemInit+0x70>)
 8000eba:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000ebc:	4b04      	ldr	r3, [pc, #16]	; (8000ed0 <SystemInit+0x70>)
 8000ebe:	2101      	movs	r1, #1
 8000ec0:	438a      	bics	r2, r1
 8000ec2:	635a      	str	r2, [r3, #52]	; 0x34
 8000ec4:	4b02      	ldr	r3, [pc, #8]	; (8000ed0 <SystemInit+0x70>)
 8000ec6:	2200      	movs	r2, #0
 8000ec8:	609a      	str	r2, [r3, #8]
 8000eca:	46c0      	nop			; (mov r8, r8)
 8000ecc:	46bd      	mov	sp, r7
 8000ece:	bd80      	pop	{r7, pc}
 8000ed0:	40021000 	.word	0x40021000
 8000ed4:	f8ffb80c 	.word	0xf8ffb80c
 8000ed8:	fef6ffff 	.word	0xfef6ffff
 8000edc:	fffbffff 	.word	0xfffbffff
 8000ee0:	ffc0ffff 	.word	0xffc0ffff
 8000ee4:	fffffeac 	.word	0xfffffeac

08000ee8 <NMI_Handler>:
 8000ee8:	b580      	push	{r7, lr}
 8000eea:	af00      	add	r7, sp, #0
 8000eec:	46c0      	nop			; (mov r8, r8)
 8000eee:	46bd      	mov	sp, r7
 8000ef0:	bd80      	pop	{r7, pc}

08000ef2 <HardFault_Handler>:
 8000ef2:	b580      	push	{r7, lr}
 8000ef4:	af00      	add	r7, sp, #0
 8000ef6:	e7fe      	b.n	8000ef6 <HardFault_Handler+0x4>

08000ef8 <SVC_Handler>:
 8000ef8:	b580      	push	{r7, lr}
 8000efa:	af00      	add	r7, sp, #0
 8000efc:	46c0      	nop			; (mov r8, r8)
 8000efe:	46bd      	mov	sp, r7
 8000f00:	bd80      	pop	{r7, pc}

08000f02 <PendSV_Handler>:
 8000f02:	b580      	push	{r7, lr}
 8000f04:	af00      	add	r7, sp, #0
 8000f06:	46c0      	nop			; (mov r8, r8)
 8000f08:	46bd      	mov	sp, r7
 8000f0a:	bd80      	pop	{r7, pc}

08000f0c <__libc_init_array>:
 8000f0c:	b570      	push	{r4, r5, r6, lr}
 8000f0e:	4d0c      	ldr	r5, [pc, #48]	; (8000f40 <__libc_init_array+0x34>)
 8000f10:	4e0c      	ldr	r6, [pc, #48]	; (8000f44 <__libc_init_array+0x38>)
 8000f12:	1b76      	subs	r6, r6, r5
 8000f14:	10b6      	asrs	r6, r6, #2
 8000f16:	d005      	beq.n	8000f24 <__libc_init_array+0x18>
 8000f18:	2400      	movs	r4, #0
 8000f1a:	cd08      	ldmia	r5!, {r3}
 8000f1c:	3401      	adds	r4, #1
 8000f1e:	4798      	blx	r3
 8000f20:	42a6      	cmp	r6, r4
 8000f22:	d1fa      	bne.n	8000f1a <__libc_init_array+0xe>
 8000f24:	f000 f896 	bl	8001054 <_init>
 8000f28:	4d07      	ldr	r5, [pc, #28]	; (8000f48 <__libc_init_array+0x3c>)
 8000f2a:	4e08      	ldr	r6, [pc, #32]	; (8000f4c <__libc_init_array+0x40>)
 8000f2c:	1b76      	subs	r6, r6, r5
 8000f2e:	10b6      	asrs	r6, r6, #2
 8000f30:	d005      	beq.n	8000f3e <__libc_init_array+0x32>
 8000f32:	2400      	movs	r4, #0
 8000f34:	cd08      	ldmia	r5!, {r3}
 8000f36:	3401      	adds	r4, #1
 8000f38:	4798      	blx	r3
 8000f3a:	42a6      	cmp	r6, r4
 8000f3c:	d1fa      	bne.n	8000f34 <__libc_init_array+0x28>
 8000f3e:	bd70      	pop	{r4, r5, r6, pc}
 8000f40:	0800109c 	.word	0x0800109c
 8000f44:	0800109c 	.word	0x0800109c
 8000f48:	0800109c 	.word	0x0800109c
 8000f4c:	080010a4 	.word	0x080010a4

08000f50 <register_fini>:
 8000f50:	4b03      	ldr	r3, [pc, #12]	; (8000f60 <register_fini+0x10>)
 8000f52:	b510      	push	{r4, lr}
 8000f54:	2b00      	cmp	r3, #0
 8000f56:	d002      	beq.n	8000f5e <register_fini+0xe>
 8000f58:	4802      	ldr	r0, [pc, #8]	; (8000f64 <register_fini+0x14>)
 8000f5a:	f000 f805 	bl	8000f68 <atexit>
 8000f5e:	bd10      	pop	{r4, pc}
 8000f60:	00000000 	.word	0x00000000
 8000f64:	08000f79 	.word	0x08000f79

08000f68 <atexit>:
 8000f68:	b510      	push	{r4, lr}
 8000f6a:	0001      	movs	r1, r0
 8000f6c:	2300      	movs	r3, #0
 8000f6e:	2200      	movs	r2, #0
 8000f70:	2000      	movs	r0, #0
 8000f72:	f000 f819 	bl	8000fa8 <__register_exitproc>
 8000f76:	bd10      	pop	{r4, pc}

08000f78 <__libc_fini_array>:
 8000f78:	b570      	push	{r4, r5, r6, lr}
 8000f7a:	4d07      	ldr	r5, [pc, #28]	; (8000f98 <__libc_fini_array+0x20>)
 8000f7c:	4c07      	ldr	r4, [pc, #28]	; (8000f9c <__libc_fini_array+0x24>)
 8000f7e:	1b64      	subs	r4, r4, r5
 8000f80:	10a4      	asrs	r4, r4, #2
 8000f82:	d005      	beq.n	8000f90 <__libc_fini_array+0x18>
 8000f84:	3c01      	subs	r4, #1
 8000f86:	00a3      	lsls	r3, r4, #2
 8000f88:	58eb      	ldr	r3, [r5, r3]
 8000f8a:	4798      	blx	r3
 8000f8c:	2c00      	cmp	r4, #0
 8000f8e:	d1f9      	bne.n	8000f84 <__libc_fini_array+0xc>
 8000f90:	f000 f866 	bl	8001060 <_fini>
 8000f94:	bd70      	pop	{r4, r5, r6, pc}
 8000f96:	46c0      	nop			; (mov r8, r8)
 8000f98:	080010a4 	.word	0x080010a4
 8000f9c:	080010a8 	.word	0x080010a8

08000fa0 <__retarget_lock_acquire_recursive>:
 8000fa0:	4770      	bx	lr
 8000fa2:	46c0      	nop			; (mov r8, r8)

08000fa4 <__retarget_lock_release_recursive>:
 8000fa4:	4770      	bx	lr
 8000fa6:	46c0      	nop			; (mov r8, r8)

08000fa8 <__register_exitproc>:
 8000fa8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000faa:	46d6      	mov	lr, sl
 8000fac:	464f      	mov	r7, r9
 8000fae:	4646      	mov	r6, r8
 8000fb0:	b5c0      	push	{r6, r7, lr}
 8000fb2:	4f26      	ldr	r7, [pc, #152]	; (800104c <__register_exitproc+0xa4>)
 8000fb4:	b082      	sub	sp, #8
 8000fb6:	0006      	movs	r6, r0
 8000fb8:	6838      	ldr	r0, [r7, #0]
 8000fba:	4692      	mov	sl, r2
 8000fbc:	4698      	mov	r8, r3
 8000fbe:	4689      	mov	r9, r1
 8000fc0:	f7ff ffee 	bl	8000fa0 <__retarget_lock_acquire_recursive>
 8000fc4:	4b22      	ldr	r3, [pc, #136]	; (8001050 <__register_exitproc+0xa8>)
 8000fc6:	681b      	ldr	r3, [r3, #0]
 8000fc8:	9301      	str	r3, [sp, #4]
 8000fca:	23a4      	movs	r3, #164	; 0xa4
 8000fcc:	9a01      	ldr	r2, [sp, #4]
 8000fce:	005b      	lsls	r3, r3, #1
 8000fd0:	58d5      	ldr	r5, [r2, r3]
 8000fd2:	2d00      	cmp	r5, #0
 8000fd4:	d02e      	beq.n	8001034 <__register_exitproc+0x8c>
 8000fd6:	686c      	ldr	r4, [r5, #4]
 8000fd8:	2c1f      	cmp	r4, #31
 8000fda:	dc30      	bgt.n	800103e <__register_exitproc+0x96>
 8000fdc:	2e00      	cmp	r6, #0
 8000fde:	d10f      	bne.n	8001000 <__register_exitproc+0x58>
 8000fe0:	1c63      	adds	r3, r4, #1
 8000fe2:	606b      	str	r3, [r5, #4]
 8000fe4:	464b      	mov	r3, r9
 8000fe6:	3402      	adds	r4, #2
 8000fe8:	00a4      	lsls	r4, r4, #2
 8000fea:	6838      	ldr	r0, [r7, #0]
 8000fec:	5163      	str	r3, [r4, r5]
 8000fee:	f7ff ffd9 	bl	8000fa4 <__retarget_lock_release_recursive>
 8000ff2:	2000      	movs	r0, #0
 8000ff4:	b002      	add	sp, #8
 8000ff6:	bce0      	pop	{r5, r6, r7}
 8000ff8:	46ba      	mov	sl, r7
 8000ffa:	46b1      	mov	r9, r6
 8000ffc:	46a8      	mov	r8, r5
 8000ffe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001000:	2288      	movs	r2, #136	; 0x88
 8001002:	4651      	mov	r1, sl
 8001004:	0028      	movs	r0, r5
 8001006:	00a3      	lsls	r3, r4, #2
 8001008:	18eb      	adds	r3, r5, r3
 800100a:	5099      	str	r1, [r3, r2]
 800100c:	3a87      	subs	r2, #135	; 0x87
 800100e:	40a2      	lsls	r2, r4
 8001010:	3089      	adds	r0, #137	; 0x89
 8001012:	30ff      	adds	r0, #255	; 0xff
 8001014:	6801      	ldr	r1, [r0, #0]
 8001016:	4311      	orrs	r1, r2
 8001018:	6001      	str	r1, [r0, #0]
 800101a:	2184      	movs	r1, #132	; 0x84
 800101c:	4640      	mov	r0, r8
 800101e:	0049      	lsls	r1, r1, #1
 8001020:	5058      	str	r0, [r3, r1]
 8001022:	2e02      	cmp	r6, #2
 8001024:	d1dc      	bne.n	8000fe0 <__register_exitproc+0x38>
 8001026:	002b      	movs	r3, r5
 8001028:	338d      	adds	r3, #141	; 0x8d
 800102a:	33ff      	adds	r3, #255	; 0xff
 800102c:	6819      	ldr	r1, [r3, #0]
 800102e:	430a      	orrs	r2, r1
 8001030:	601a      	str	r2, [r3, #0]
 8001032:	e7d5      	b.n	8000fe0 <__register_exitproc+0x38>
 8001034:	0015      	movs	r5, r2
 8001036:	354d      	adds	r5, #77	; 0x4d
 8001038:	35ff      	adds	r5, #255	; 0xff
 800103a:	50d5      	str	r5, [r2, r3]
 800103c:	e7cb      	b.n	8000fd6 <__register_exitproc+0x2e>
 800103e:	6838      	ldr	r0, [r7, #0]
 8001040:	f7ff ffb0 	bl	8000fa4 <__retarget_lock_release_recursive>
 8001044:	2001      	movs	r0, #1
 8001046:	4240      	negs	r0, r0
 8001048:	e7d4      	b.n	8000ff4 <__register_exitproc+0x4c>
 800104a:	46c0      	nop			; (mov r8, r8)
 800104c:	20000430 	.word	0x20000430
 8001050:	08001098 	.word	0x08001098

08001054 <_init>:
 8001054:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001056:	46c0      	nop			; (mov r8, r8)
 8001058:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800105a:	bc08      	pop	{r3}
 800105c:	469e      	mov	lr, r3
 800105e:	4770      	bx	lr

08001060 <_fini>:
 8001060:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001062:	46c0      	nop			; (mov r8, r8)
 8001064:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001066:	bc08      	pop	{r3}
 8001068:	469e      	mov	lr, r3
 800106a:	4770      	bx	lr
