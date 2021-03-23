
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000bdc  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  08000c9c  08000c9c  00010c9c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000ce0  08000ce0  00010ce0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000ce8  08000ce8  00010ce8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000cec  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000030  20000434  08001120  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000464  08001120  00020464  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000f63  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003c6  00000000  00000000  000213bf  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000716  00000000  00000000  00021785  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000168  00000000  00000000  00021e9b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000138  00000000  00000000  00022003  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000865  00000000  00000000  0002213b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        0000082c  00000000  00000000  000229a0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  000231cc  2**0  CONTENTS, READONLY
 17 .debug_frame      00000680  00000000  00000000  0002321c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000c84 	.word	0x08000c84

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
 8000104:	08000c84 	.word	0x08000c84

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
 800024a:	f000 fbcf 	bl	80009ec <SystemInit>
 800024e:	f000 fc23 	bl	8000a98 <__libc_init_array>
 8000252:	f000 fbbf 	bl	80009d4 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000cec 	.word	0x08000cec
 8000268:	20000434 	.word	0x20000434
 800026c:	20000464 	.word	0x20000464

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

080004dc <LL_SYSCFG_SetEXTISource>:
 80004dc:	b590      	push	{r4, r7, lr}
 80004de:	b083      	sub	sp, #12
 80004e0:	af00      	add	r7, sp, #0
 80004e2:	6078      	str	r0, [r7, #4]
 80004e4:	6039      	str	r1, [r7, #0]
 80004e6:	4a0f      	ldr	r2, [pc, #60]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 80004e8:	683b      	ldr	r3, [r7, #0]
 80004ea:	21ff      	movs	r1, #255	; 0xff
 80004ec:	400b      	ands	r3, r1
 80004ee:	3302      	adds	r3, #2
 80004f0:	009b      	lsls	r3, r3, #2
 80004f2:	589b      	ldr	r3, [r3, r2]
 80004f4:	683a      	ldr	r2, [r7, #0]
 80004f6:	0c12      	lsrs	r2, r2, #16
 80004f8:	210f      	movs	r1, #15
 80004fa:	4091      	lsls	r1, r2
 80004fc:	000a      	movs	r2, r1
 80004fe:	43d2      	mvns	r2, r2
 8000500:	401a      	ands	r2, r3
 8000502:	0011      	movs	r1, r2
 8000504:	683b      	ldr	r3, [r7, #0]
 8000506:	0c1b      	lsrs	r3, r3, #16
 8000508:	687a      	ldr	r2, [r7, #4]
 800050a:	409a      	lsls	r2, r3
 800050c:	4805      	ldr	r0, [pc, #20]	; (8000524 <LL_SYSCFG_SetEXTISource+0x48>)
 800050e:	683b      	ldr	r3, [r7, #0]
 8000510:	24ff      	movs	r4, #255	; 0xff
 8000512:	4023      	ands	r3, r4
 8000514:	430a      	orrs	r2, r1
 8000516:	3302      	adds	r3, #2
 8000518:	009b      	lsls	r3, r3, #2
 800051a:	501a      	str	r2, [r3, r0]
 800051c:	46c0      	nop			; (mov r8, r8)
 800051e:	46bd      	mov	sp, r7
 8000520:	b003      	add	sp, #12
 8000522:	bd90      	pop	{r4, r7, pc}
 8000524:	40010000 	.word	0x40010000

08000528 <LL_FLASH_SetLatency>:
 8000528:	b580      	push	{r7, lr}
 800052a:	b082      	sub	sp, #8
 800052c:	af00      	add	r7, sp, #0
 800052e:	6078      	str	r0, [r7, #4]
 8000530:	4b06      	ldr	r3, [pc, #24]	; (800054c <LL_FLASH_SetLatency+0x24>)
 8000532:	681b      	ldr	r3, [r3, #0]
 8000534:	2201      	movs	r2, #1
 8000536:	4393      	bics	r3, r2
 8000538:	0019      	movs	r1, r3
 800053a:	4b04      	ldr	r3, [pc, #16]	; (800054c <LL_FLASH_SetLatency+0x24>)
 800053c:	687a      	ldr	r2, [r7, #4]
 800053e:	430a      	orrs	r2, r1
 8000540:	601a      	str	r2, [r3, #0]
 8000542:	46c0      	nop			; (mov r8, r8)
 8000544:	46bd      	mov	sp, r7
 8000546:	b002      	add	sp, #8
 8000548:	bd80      	pop	{r7, pc}
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	40022000 	.word	0x40022000

08000550 <LL_AHB1_GRP1_EnableClock>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b084      	sub	sp, #16
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	4b07      	ldr	r3, [pc, #28]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055a:	6959      	ldr	r1, [r3, #20]
 800055c:	4b06      	ldr	r3, [pc, #24]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 800055e:	687a      	ldr	r2, [r7, #4]
 8000560:	430a      	orrs	r2, r1
 8000562:	615a      	str	r2, [r3, #20]
 8000564:	4b04      	ldr	r3, [pc, #16]	; (8000578 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000566:	695b      	ldr	r3, [r3, #20]
 8000568:	687a      	ldr	r2, [r7, #4]
 800056a:	4013      	ands	r3, r2
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	68fb      	ldr	r3, [r7, #12]
 8000570:	46c0      	nop			; (mov r8, r8)
 8000572:	46bd      	mov	sp, r7
 8000574:	b004      	add	sp, #16
 8000576:	bd80      	pop	{r7, pc}
 8000578:	40021000 	.word	0x40021000

0800057c <LL_APB1_GRP2_EnableClock>:
 800057c:	b580      	push	{r7, lr}
 800057e:	b084      	sub	sp, #16
 8000580:	af00      	add	r7, sp, #0
 8000582:	6078      	str	r0, [r7, #4]
 8000584:	4b07      	ldr	r3, [pc, #28]	; (80005a4 <LL_APB1_GRP2_EnableClock+0x28>)
 8000586:	6999      	ldr	r1, [r3, #24]
 8000588:	4b06      	ldr	r3, [pc, #24]	; (80005a4 <LL_APB1_GRP2_EnableClock+0x28>)
 800058a:	687a      	ldr	r2, [r7, #4]
 800058c:	430a      	orrs	r2, r1
 800058e:	619a      	str	r2, [r3, #24]
 8000590:	4b04      	ldr	r3, [pc, #16]	; (80005a4 <LL_APB1_GRP2_EnableClock+0x28>)
 8000592:	699b      	ldr	r3, [r3, #24]
 8000594:	687a      	ldr	r2, [r7, #4]
 8000596:	4013      	ands	r3, r2
 8000598:	60fb      	str	r3, [r7, #12]
 800059a:	68fb      	ldr	r3, [r7, #12]
 800059c:	46c0      	nop			; (mov r8, r8)
 800059e:	46bd      	mov	sp, r7
 80005a0:	b004      	add	sp, #16
 80005a2:	bd80      	pop	{r7, pc}
 80005a4:	40021000 	.word	0x40021000

080005a8 <LL_GPIO_SetPinMode>:
 80005a8:	b580      	push	{r7, lr}
 80005aa:	b084      	sub	sp, #16
 80005ac:	af00      	add	r7, sp, #0
 80005ae:	60f8      	str	r0, [r7, #12]
 80005b0:	60b9      	str	r1, [r7, #8]
 80005b2:	607a      	str	r2, [r7, #4]
 80005b4:	68fb      	ldr	r3, [r7, #12]
 80005b6:	6819      	ldr	r1, [r3, #0]
 80005b8:	68bb      	ldr	r3, [r7, #8]
 80005ba:	435b      	muls	r3, r3
 80005bc:	001a      	movs	r2, r3
 80005be:	0013      	movs	r3, r2
 80005c0:	005b      	lsls	r3, r3, #1
 80005c2:	189b      	adds	r3, r3, r2
 80005c4:	43db      	mvns	r3, r3
 80005c6:	400b      	ands	r3, r1
 80005c8:	001a      	movs	r2, r3
 80005ca:	68bb      	ldr	r3, [r7, #8]
 80005cc:	435b      	muls	r3, r3
 80005ce:	6879      	ldr	r1, [r7, #4]
 80005d0:	434b      	muls	r3, r1
 80005d2:	431a      	orrs	r2, r3
 80005d4:	68fb      	ldr	r3, [r7, #12]
 80005d6:	601a      	str	r2, [r3, #0]
 80005d8:	46c0      	nop			; (mov r8, r8)
 80005da:	46bd      	mov	sp, r7
 80005dc:	b004      	add	sp, #16
 80005de:	bd80      	pop	{r7, pc}

080005e0 <LL_GPIO_WriteOutputPort>:
 80005e0:	b580      	push	{r7, lr}
 80005e2:	b082      	sub	sp, #8
 80005e4:	af00      	add	r7, sp, #0
 80005e6:	6078      	str	r0, [r7, #4]
 80005e8:	6039      	str	r1, [r7, #0]
 80005ea:	687b      	ldr	r3, [r7, #4]
 80005ec:	683a      	ldr	r2, [r7, #0]
 80005ee:	615a      	str	r2, [r3, #20]
 80005f0:	46c0      	nop			; (mov r8, r8)
 80005f2:	46bd      	mov	sp, r7
 80005f4:	b002      	add	sp, #8
 80005f6:	bd80      	pop	{r7, pc}

080005f8 <LL_EXTI_EnableIT_0_31>:
 80005f8:	b580      	push	{r7, lr}
 80005fa:	b082      	sub	sp, #8
 80005fc:	af00      	add	r7, sp, #0
 80005fe:	6078      	str	r0, [r7, #4]
 8000600:	4b04      	ldr	r3, [pc, #16]	; (8000614 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000602:	6819      	ldr	r1, [r3, #0]
 8000604:	4b03      	ldr	r3, [pc, #12]	; (8000614 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000606:	687a      	ldr	r2, [r7, #4]
 8000608:	430a      	orrs	r2, r1
 800060a:	601a      	str	r2, [r3, #0]
 800060c:	46c0      	nop			; (mov r8, r8)
 800060e:	46bd      	mov	sp, r7
 8000610:	b002      	add	sp, #8
 8000612:	bd80      	pop	{r7, pc}
 8000614:	40010400 	.word	0x40010400

08000618 <LL_EXTI_EnableRisingTrig_0_31>:
 8000618:	b580      	push	{r7, lr}
 800061a:	b082      	sub	sp, #8
 800061c:	af00      	add	r7, sp, #0
 800061e:	6078      	str	r0, [r7, #4]
 8000620:	4b04      	ldr	r3, [pc, #16]	; (8000634 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000622:	6899      	ldr	r1, [r3, #8]
 8000624:	4b03      	ldr	r3, [pc, #12]	; (8000634 <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 8000626:	687a      	ldr	r2, [r7, #4]
 8000628:	430a      	orrs	r2, r1
 800062a:	609a      	str	r2, [r3, #8]
 800062c:	46c0      	nop			; (mov r8, r8)
 800062e:	46bd      	mov	sp, r7
 8000630:	b002      	add	sp, #8
 8000632:	bd80      	pop	{r7, pc}
 8000634:	40010400 	.word	0x40010400

08000638 <LL_EXTI_ClearFlag_0_31>:
 8000638:	b580      	push	{r7, lr}
 800063a:	b082      	sub	sp, #8
 800063c:	af00      	add	r7, sp, #0
 800063e:	6078      	str	r0, [r7, #4]
 8000640:	4b03      	ldr	r3, [pc, #12]	; (8000650 <LL_EXTI_ClearFlag_0_31+0x18>)
 8000642:	687a      	ldr	r2, [r7, #4]
 8000644:	615a      	str	r2, [r3, #20]
 8000646:	46c0      	nop			; (mov r8, r8)
 8000648:	46bd      	mov	sp, r7
 800064a:	b002      	add	sp, #8
 800064c:	bd80      	pop	{r7, pc}
 800064e:	46c0      	nop			; (mov r8, r8)
 8000650:	40010400 	.word	0x40010400

08000654 <LL_InitTick>:
 8000654:	b580      	push	{r7, lr}
 8000656:	b082      	sub	sp, #8
 8000658:	af00      	add	r7, sp, #0
 800065a:	6078      	str	r0, [r7, #4]
 800065c:	6039      	str	r1, [r7, #0]
 800065e:	6839      	ldr	r1, [r7, #0]
 8000660:	6878      	ldr	r0, [r7, #4]
 8000662:	f7ff fd51 	bl	8000108 <__udivsi3>
 8000666:	0003      	movs	r3, r0
 8000668:	001a      	movs	r2, r3
 800066a:	4b06      	ldr	r3, [pc, #24]	; (8000684 <LL_InitTick+0x30>)
 800066c:	3a01      	subs	r2, #1
 800066e:	605a      	str	r2, [r3, #4]
 8000670:	4b04      	ldr	r3, [pc, #16]	; (8000684 <LL_InitTick+0x30>)
 8000672:	2200      	movs	r2, #0
 8000674:	609a      	str	r2, [r3, #8]
 8000676:	4b03      	ldr	r3, [pc, #12]	; (8000684 <LL_InitTick+0x30>)
 8000678:	2205      	movs	r2, #5
 800067a:	601a      	str	r2, [r3, #0]
 800067c:	46c0      	nop			; (mov r8, r8)
 800067e:	46bd      	mov	sp, r7
 8000680:	b002      	add	sp, #8
 8000682:	bd80      	pop	{r7, pc}
 8000684:	e000e010 	.word	0xe000e010

08000688 <LL_SYSTICK_EnableIT>:
 8000688:	b580      	push	{r7, lr}
 800068a:	af00      	add	r7, sp, #0
 800068c:	4b04      	ldr	r3, [pc, #16]	; (80006a0 <LL_SYSTICK_EnableIT+0x18>)
 800068e:	681a      	ldr	r2, [r3, #0]
 8000690:	4b03      	ldr	r3, [pc, #12]	; (80006a0 <LL_SYSTICK_EnableIT+0x18>)
 8000692:	2102      	movs	r1, #2
 8000694:	430a      	orrs	r2, r1
 8000696:	601a      	str	r2, [r3, #0]
 8000698:	46c0      	nop			; (mov r8, r8)
 800069a:	46bd      	mov	sp, r7
 800069c:	bd80      	pop	{r7, pc}
 800069e:	46c0      	nop			; (mov r8, r8)
 80006a0:	e000e010 	.word	0xe000e010

080006a4 <rcc_config>:
 80006a4:	b580      	push	{r7, lr}
 80006a6:	af00      	add	r7, sp, #0
 80006a8:	2001      	movs	r0, #1
 80006aa:	f7ff ff3d 	bl	8000528 <LL_FLASH_SetLatency>
 80006ae:	f7ff fe65 	bl	800037c <LL_RCC_HSI_Enable>
 80006b2:	46c0      	nop			; (mov r8, r8)
 80006b4:	f7ff fe70 	bl	8000398 <LL_RCC_HSI_IsReady>
 80006b8:	0003      	movs	r3, r0
 80006ba:	2b01      	cmp	r3, #1
 80006bc:	d1fa      	bne.n	80006b4 <rcc_config+0x10>
 80006be:	23a0      	movs	r3, #160	; 0xa0
 80006c0:	039b      	lsls	r3, r3, #14
 80006c2:	0019      	movs	r1, r3
 80006c4:	2000      	movs	r0, #0
 80006c6:	f7ff fee3 	bl	8000490 <LL_RCC_PLL_ConfigDomain_SYS>
 80006ca:	f7ff febf 	bl	800044c <LL_RCC_PLL_Enable>
 80006ce:	46c0      	nop			; (mov r8, r8)
 80006d0:	f7ff feca 	bl	8000468 <LL_RCC_PLL_IsReady>
 80006d4:	0003      	movs	r3, r0
 80006d6:	2b01      	cmp	r3, #1
 80006d8:	d1fa      	bne.n	80006d0 <rcc_config+0x2c>
 80006da:	2000      	movs	r0, #0
 80006dc:	f7ff fe8c 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 80006e0:	2002      	movs	r0, #2
 80006e2:	f7ff fe69 	bl	80003b8 <LL_RCC_SetSysClkSource>
 80006e6:	46c0      	nop			; (mov r8, r8)
 80006e8:	f7ff fe7a 	bl	80003e0 <LL_RCC_GetSysClkSource>
 80006ec:	0003      	movs	r3, r0
 80006ee:	2b08      	cmp	r3, #8
 80006f0:	d1fa      	bne.n	80006e8 <rcc_config+0x44>
 80006f2:	2000      	movs	r0, #0
 80006f4:	f7ff fe94 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 80006f8:	4b02      	ldr	r3, [pc, #8]	; (8000704 <rcc_config+0x60>)
 80006fa:	4a03      	ldr	r2, [pc, #12]	; (8000708 <rcc_config+0x64>)
 80006fc:	601a      	str	r2, [r3, #0]
 80006fe:	46c0      	nop			; (mov r8, r8)
 8000700:	46bd      	mov	sp, r7
 8000702:	bd80      	pop	{r7, pc}
 8000704:	20000000 	.word	0x20000000
 8000708:	02dc6c00 	.word	0x02dc6c00

0800070c <gpio_config>:
 800070c:	b580      	push	{r7, lr}
 800070e:	af00      	add	r7, sp, #0
 8000710:	2380      	movs	r3, #128	; 0x80
 8000712:	031b      	lsls	r3, r3, #12
 8000714:	0018      	movs	r0, r3
 8000716:	f7ff ff1b 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 800071a:	2380      	movs	r3, #128	; 0x80
 800071c:	005b      	lsls	r3, r3, #1
 800071e:	4834      	ldr	r0, [pc, #208]	; (80007f0 <gpio_config+0xe4>)
 8000720:	2201      	movs	r2, #1
 8000722:	0019      	movs	r1, r3
 8000724:	f7ff ff40 	bl	80005a8 <LL_GPIO_SetPinMode>
 8000728:	2380      	movs	r3, #128	; 0x80
 800072a:	009b      	lsls	r3, r3, #2
 800072c:	4830      	ldr	r0, [pc, #192]	; (80007f0 <gpio_config+0xe4>)
 800072e:	2201      	movs	r2, #1
 8000730:	0019      	movs	r1, r3
 8000732:	f7ff ff39 	bl	80005a8 <LL_GPIO_SetPinMode>
 8000736:	4b2e      	ldr	r3, [pc, #184]	; (80007f0 <gpio_config+0xe4>)
 8000738:	2201      	movs	r2, #1
 800073a:	2101      	movs	r1, #1
 800073c:	0018      	movs	r0, r3
 800073e:	f7ff ff33 	bl	80005a8 <LL_GPIO_SetPinMode>
 8000742:	4b2b      	ldr	r3, [pc, #172]	; (80007f0 <gpio_config+0xe4>)
 8000744:	2201      	movs	r2, #1
 8000746:	2102      	movs	r1, #2
 8000748:	0018      	movs	r0, r3
 800074a:	f7ff ff2d 	bl	80005a8 <LL_GPIO_SetPinMode>
 800074e:	4b28      	ldr	r3, [pc, #160]	; (80007f0 <gpio_config+0xe4>)
 8000750:	2201      	movs	r2, #1
 8000752:	2104      	movs	r1, #4
 8000754:	0018      	movs	r0, r3
 8000756:	f7ff ff27 	bl	80005a8 <LL_GPIO_SetPinMode>
 800075a:	4b25      	ldr	r3, [pc, #148]	; (80007f0 <gpio_config+0xe4>)
 800075c:	2201      	movs	r2, #1
 800075e:	2108      	movs	r1, #8
 8000760:	0018      	movs	r0, r3
 8000762:	f7ff ff21 	bl	80005a8 <LL_GPIO_SetPinMode>
 8000766:	2380      	movs	r3, #128	; 0x80
 8000768:	029b      	lsls	r3, r3, #10
 800076a:	0018      	movs	r0, r3
 800076c:	f7ff fef0 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000770:	2390      	movs	r3, #144	; 0x90
 8000772:	05db      	lsls	r3, r3, #23
 8000774:	2200      	movs	r2, #0
 8000776:	2101      	movs	r1, #1
 8000778:	0018      	movs	r0, r3
 800077a:	f7ff ff15 	bl	80005a8 <LL_GPIO_SetPinMode>
 800077e:	2380      	movs	r3, #128	; 0x80
 8000780:	02db      	lsls	r3, r3, #11
 8000782:	0018      	movs	r0, r3
 8000784:	f7ff fee4 	bl	8000550 <LL_AHB1_GRP1_EnableClock>
 8000788:	4b1a      	ldr	r3, [pc, #104]	; (80007f4 <gpio_config+0xe8>)
 800078a:	2201      	movs	r2, #1
 800078c:	2101      	movs	r1, #1
 800078e:	0018      	movs	r0, r3
 8000790:	f7ff ff0a 	bl	80005a8 <LL_GPIO_SetPinMode>
 8000794:	4b17      	ldr	r3, [pc, #92]	; (80007f4 <gpio_config+0xe8>)
 8000796:	2201      	movs	r2, #1
 8000798:	2102      	movs	r1, #2
 800079a:	0018      	movs	r0, r3
 800079c:	f7ff ff04 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007a0:	4b14      	ldr	r3, [pc, #80]	; (80007f4 <gpio_config+0xe8>)
 80007a2:	2201      	movs	r2, #1
 80007a4:	2104      	movs	r1, #4
 80007a6:	0018      	movs	r0, r3
 80007a8:	f7ff fefe 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007ac:	4b11      	ldr	r3, [pc, #68]	; (80007f4 <gpio_config+0xe8>)
 80007ae:	2201      	movs	r2, #1
 80007b0:	2108      	movs	r1, #8
 80007b2:	0018      	movs	r0, r3
 80007b4:	f7ff fef8 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007b8:	4b0e      	ldr	r3, [pc, #56]	; (80007f4 <gpio_config+0xe8>)
 80007ba:	2201      	movs	r2, #1
 80007bc:	2110      	movs	r1, #16
 80007be:	0018      	movs	r0, r3
 80007c0:	f7ff fef2 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007c4:	4b0b      	ldr	r3, [pc, #44]	; (80007f4 <gpio_config+0xe8>)
 80007c6:	2201      	movs	r2, #1
 80007c8:	2120      	movs	r1, #32
 80007ca:	0018      	movs	r0, r3
 80007cc:	f7ff feec 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007d0:	4b08      	ldr	r3, [pc, #32]	; (80007f4 <gpio_config+0xe8>)
 80007d2:	2201      	movs	r2, #1
 80007d4:	2140      	movs	r1, #64	; 0x40
 80007d6:	0018      	movs	r0, r3
 80007d8:	f7ff fee6 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007dc:	4b05      	ldr	r3, [pc, #20]	; (80007f4 <gpio_config+0xe8>)
 80007de:	2201      	movs	r2, #1
 80007e0:	2180      	movs	r1, #128	; 0x80
 80007e2:	0018      	movs	r0, r3
 80007e4:	f7ff fee0 	bl	80005a8 <LL_GPIO_SetPinMode>
 80007e8:	46c0      	nop			; (mov r8, r8)
 80007ea:	46bd      	mov	sp, r7
 80007ec:	bd80      	pop	{r7, pc}
 80007ee:	46c0      	nop			; (mov r8, r8)
 80007f0:	48000800 	.word	0x48000800
 80007f4:	48000400 	.word	0x48000400

080007f8 <exti_config>:
 80007f8:	b580      	push	{r7, lr}
 80007fa:	af00      	add	r7, sp, #0
 80007fc:	2001      	movs	r0, #1
 80007fe:	f7ff febd 	bl	800057c <LL_APB1_GRP2_EnableClock>
 8000802:	2100      	movs	r1, #0
 8000804:	2000      	movs	r0, #0
 8000806:	f7ff fe69 	bl	80004dc <LL_SYSCFG_SetEXTISource>
 800080a:	2001      	movs	r0, #1
 800080c:	f7ff fef4 	bl	80005f8 <LL_EXTI_EnableIT_0_31>
 8000810:	2001      	movs	r0, #1
 8000812:	f7ff ff01 	bl	8000618 <LL_EXTI_EnableRisingTrig_0_31>
 8000816:	2005      	movs	r0, #5
 8000818:	f7ff fd2c 	bl	8000274 <NVIC_EnableIRQ>
 800081c:	2100      	movs	r1, #0
 800081e:	2005      	movs	r0, #5
 8000820:	f7ff fd3e 	bl	80002a0 <NVIC_SetPriority>
 8000824:	46c0      	nop			; (mov r8, r8)
 8000826:	46bd      	mov	sp, r7
 8000828:	bd80      	pop	{r7, pc}
	...

0800082c <dyn_display>:
 800082c:	b580      	push	{r7, lr}
 800082e:	b094      	sub	sp, #80	; 0x50
 8000830:	af00      	add	r7, sp, #0
 8000832:	6078      	str	r0, [r7, #4]
 8000834:	2300      	movs	r3, #0
 8000836:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000838:	230c      	movs	r3, #12
 800083a:	18fa      	adds	r2, r7, r3
 800083c:	4b3a      	ldr	r3, [pc, #232]	; (8000928 <dyn_display+0xfc>)
 800083e:	0010      	movs	r0, r2
 8000840:	0019      	movs	r1, r3
 8000842:	2340      	movs	r3, #64	; 0x40
 8000844:	001a      	movs	r2, r3
 8000846:	f000 f949 	bl	8000adc <memcpy>
 800084a:	4b38      	ldr	r3, [pc, #224]	; (800092c <dyn_display+0x100>)
 800084c:	210f      	movs	r1, #15
 800084e:	0018      	movs	r0, r3
 8000850:	f7ff fec6 	bl	80005e0 <LL_GPIO_WriteOutputPort>
 8000854:	4b36      	ldr	r3, [pc, #216]	; (8000930 <dyn_display+0x104>)
 8000856:	881b      	ldrh	r3, [r3, #0]
 8000858:	2b03      	cmp	r3, #3
 800085a:	d03a      	beq.n	80008d2 <dyn_display+0xa6>
 800085c:	dc4a      	bgt.n	80008f4 <dyn_display+0xc8>
 800085e:	2b02      	cmp	r3, #2
 8000860:	d026      	beq.n	80008b0 <dyn_display+0x84>
 8000862:	dc47      	bgt.n	80008f4 <dyn_display+0xc8>
 8000864:	2b00      	cmp	r3, #0
 8000866:	d002      	beq.n	800086e <dyn_display+0x42>
 8000868:	2b01      	cmp	r3, #1
 800086a:	d010      	beq.n	800088e <dyn_display+0x62>
 800086c:	e042      	b.n	80008f4 <dyn_display+0xc8>
 800086e:	2302      	movs	r3, #2
 8000870:	425b      	negs	r3, r3
 8000872:	4a2e      	ldr	r2, [pc, #184]	; (800092c <dyn_display+0x100>)
 8000874:	0019      	movs	r1, r3
 8000876:	0010      	movs	r0, r2
 8000878:	f7ff feb2 	bl	80005e0 <LL_GPIO_WriteOutputPort>
 800087c:	687b      	ldr	r3, [r7, #4]
 800087e:	220f      	movs	r2, #15
 8000880:	401a      	ands	r2, r3
 8000882:	230c      	movs	r3, #12
 8000884:	18fb      	adds	r3, r7, r3
 8000886:	0092      	lsls	r2, r2, #2
 8000888:	58d3      	ldr	r3, [r2, r3]
 800088a:	64fb      	str	r3, [r7, #76]	; 0x4c
 800088c:	e033      	b.n	80008f6 <dyn_display+0xca>
 800088e:	2303      	movs	r3, #3
 8000890:	425b      	negs	r3, r3
 8000892:	4a26      	ldr	r2, [pc, #152]	; (800092c <dyn_display+0x100>)
 8000894:	0019      	movs	r1, r3
 8000896:	0010      	movs	r0, r2
 8000898:	f7ff fea2 	bl	80005e0 <LL_GPIO_WriteOutputPort>
 800089c:	687b      	ldr	r3, [r7, #4]
 800089e:	091b      	lsrs	r3, r3, #4
 80008a0:	220f      	movs	r2, #15
 80008a2:	401a      	ands	r2, r3
 80008a4:	230c      	movs	r3, #12
 80008a6:	18fb      	adds	r3, r7, r3
 80008a8:	0092      	lsls	r2, r2, #2
 80008aa:	58d3      	ldr	r3, [r2, r3]
 80008ac:	64fb      	str	r3, [r7, #76]	; 0x4c
 80008ae:	e022      	b.n	80008f6 <dyn_display+0xca>
 80008b0:	2305      	movs	r3, #5
 80008b2:	425b      	negs	r3, r3
 80008b4:	4a1d      	ldr	r2, [pc, #116]	; (800092c <dyn_display+0x100>)
 80008b6:	0019      	movs	r1, r3
 80008b8:	0010      	movs	r0, r2
 80008ba:	f7ff fe91 	bl	80005e0 <LL_GPIO_WriteOutputPort>
 80008be:	687b      	ldr	r3, [r7, #4]
 80008c0:	0a1b      	lsrs	r3, r3, #8
 80008c2:	220f      	movs	r2, #15
 80008c4:	401a      	ands	r2, r3
 80008c6:	230c      	movs	r3, #12
 80008c8:	18fb      	adds	r3, r7, r3
 80008ca:	0092      	lsls	r2, r2, #2
 80008cc:	58d3      	ldr	r3, [r2, r3]
 80008ce:	64fb      	str	r3, [r7, #76]	; 0x4c
 80008d0:	e011      	b.n	80008f6 <dyn_display+0xca>
 80008d2:	2309      	movs	r3, #9
 80008d4:	425b      	negs	r3, r3
 80008d6:	4a15      	ldr	r2, [pc, #84]	; (800092c <dyn_display+0x100>)
 80008d8:	0019      	movs	r1, r3
 80008da:	0010      	movs	r0, r2
 80008dc:	f7ff fe80 	bl	80005e0 <LL_GPIO_WriteOutputPort>
 80008e0:	687b      	ldr	r3, [r7, #4]
 80008e2:	0b1b      	lsrs	r3, r3, #12
 80008e4:	220f      	movs	r2, #15
 80008e6:	401a      	ands	r2, r3
 80008e8:	230c      	movs	r3, #12
 80008ea:	18fb      	adds	r3, r7, r3
 80008ec:	0092      	lsls	r2, r2, #2
 80008ee:	58d3      	ldr	r3, [r2, r3]
 80008f0:	64fb      	str	r3, [r7, #76]	; 0x4c
 80008f2:	e000      	b.n	80008f6 <dyn_display+0xca>
 80008f4:	46c0      	nop			; (mov r8, r8)
 80008f6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80008f8:	4a0e      	ldr	r2, [pc, #56]	; (8000934 <dyn_display+0x108>)
 80008fa:	0019      	movs	r1, r3
 80008fc:	0010      	movs	r0, r2
 80008fe:	f7ff fe6f 	bl	80005e0 <LL_GPIO_WriteOutputPort>
 8000902:	4b0b      	ldr	r3, [pc, #44]	; (8000930 <dyn_display+0x104>)
 8000904:	881b      	ldrh	r3, [r3, #0]
 8000906:	3301      	adds	r3, #1
 8000908:	4a0b      	ldr	r2, [pc, #44]	; (8000938 <dyn_display+0x10c>)
 800090a:	4013      	ands	r3, r2
 800090c:	d504      	bpl.n	8000918 <dyn_display+0xec>
 800090e:	3b01      	subs	r3, #1
 8000910:	2204      	movs	r2, #4
 8000912:	4252      	negs	r2, r2
 8000914:	4313      	orrs	r3, r2
 8000916:	3301      	adds	r3, #1
 8000918:	b29a      	uxth	r2, r3
 800091a:	4b05      	ldr	r3, [pc, #20]	; (8000930 <dyn_display+0x104>)
 800091c:	801a      	strh	r2, [r3, #0]
 800091e:	46c0      	nop			; (mov r8, r8)
 8000920:	46bd      	mov	sp, r7
 8000922:	b014      	add	sp, #80	; 0x50
 8000924:	bd80      	pop	{r7, pc}
 8000926:	46c0      	nop			; (mov r8, r8)
 8000928:	08000c9c 	.word	0x08000c9c
 800092c:	48000800 	.word	0x48000800
 8000930:	20000458 	.word	0x20000458
 8000934:	48000400 	.word	0x48000400
 8000938:	80000003 	.word	0x80000003

0800093c <EXTI0_1_IRQHandler>:
 800093c:	b580      	push	{r7, lr}
 800093e:	b082      	sub	sp, #8
 8000940:	af00      	add	r7, sp, #0
 8000942:	4b0c      	ldr	r3, [pc, #48]	; (8000974 <EXTI0_1_IRQHandler+0x38>)
 8000944:	681b      	ldr	r3, [r3, #0]
 8000946:	607b      	str	r3, [r7, #4]
 8000948:	4b0b      	ldr	r3, [pc, #44]	; (8000978 <EXTI0_1_IRQHandler+0x3c>)
 800094a:	681b      	ldr	r3, [r3, #0]
 800094c:	687a      	ldr	r2, [r7, #4]
 800094e:	1ad3      	subs	r3, r2, r3
 8000950:	2b32      	cmp	r3, #50	; 0x32
 8000952:	dd04      	ble.n	800095e <EXTI0_1_IRQHandler+0x22>
 8000954:	4b09      	ldr	r3, [pc, #36]	; (800097c <EXTI0_1_IRQHandler+0x40>)
 8000956:	681b      	ldr	r3, [r3, #0]
 8000958:	1c5a      	adds	r2, r3, #1
 800095a:	4b08      	ldr	r3, [pc, #32]	; (800097c <EXTI0_1_IRQHandler+0x40>)
 800095c:	601a      	str	r2, [r3, #0]
 800095e:	4b05      	ldr	r3, [pc, #20]	; (8000974 <EXTI0_1_IRQHandler+0x38>)
 8000960:	681a      	ldr	r2, [r3, #0]
 8000962:	4b05      	ldr	r3, [pc, #20]	; (8000978 <EXTI0_1_IRQHandler+0x3c>)
 8000964:	601a      	str	r2, [r3, #0]
 8000966:	2001      	movs	r0, #1
 8000968:	f7ff fe66 	bl	8000638 <LL_EXTI_ClearFlag_0_31>
 800096c:	46c0      	nop			; (mov r8, r8)
 800096e:	46bd      	mov	sp, r7
 8000970:	b002      	add	sp, #8
 8000972:	bd80      	pop	{r7, pc}
 8000974:	20000450 	.word	0x20000450
 8000978:	2000045c 	.word	0x2000045c
 800097c:	20000454 	.word	0x20000454

08000980 <systick_config>:
 8000980:	b580      	push	{r7, lr}
 8000982:	af00      	add	r7, sp, #0
 8000984:	23fa      	movs	r3, #250	; 0xfa
 8000986:	009b      	lsls	r3, r3, #2
 8000988:	4a07      	ldr	r2, [pc, #28]	; (80009a8 <systick_config+0x28>)
 800098a:	0019      	movs	r1, r3
 800098c:	0010      	movs	r0, r2
 800098e:	f7ff fe61 	bl	8000654 <LL_InitTick>
 8000992:	f7ff fe79 	bl	8000688 <LL_SYSTICK_EnableIT>
 8000996:	2301      	movs	r3, #1
 8000998:	425b      	negs	r3, r3
 800099a:	2100      	movs	r1, #0
 800099c:	0018      	movs	r0, r3
 800099e:	f7ff fc7f 	bl	80002a0 <NVIC_SetPriority>
 80009a2:	46c0      	nop			; (mov r8, r8)
 80009a4:	46bd      	mov	sp, r7
 80009a6:	bd80      	pop	{r7, pc}
 80009a8:	02dc6c00 	.word	0x02dc6c00

080009ac <SysTick_Handler>:
 80009ac:	b580      	push	{r7, lr}
 80009ae:	af00      	add	r7, sp, #0
 80009b0:	4b06      	ldr	r3, [pc, #24]	; (80009cc <SysTick_Handler+0x20>)
 80009b2:	681b      	ldr	r3, [r3, #0]
 80009b4:	1c5a      	adds	r2, r3, #1
 80009b6:	4b05      	ldr	r3, [pc, #20]	; (80009cc <SysTick_Handler+0x20>)
 80009b8:	601a      	str	r2, [r3, #0]
 80009ba:	4b05      	ldr	r3, [pc, #20]	; (80009d0 <SysTick_Handler+0x24>)
 80009bc:	681b      	ldr	r3, [r3, #0]
 80009be:	0018      	movs	r0, r3
 80009c0:	f7ff ff34 	bl	800082c <dyn_display>
 80009c4:	46c0      	nop			; (mov r8, r8)
 80009c6:	46bd      	mov	sp, r7
 80009c8:	bd80      	pop	{r7, pc}
 80009ca:	46c0      	nop			; (mov r8, r8)
 80009cc:	20000450 	.word	0x20000450
 80009d0:	20000454 	.word	0x20000454

080009d4 <main>:
 80009d4:	b580      	push	{r7, lr}
 80009d6:	af00      	add	r7, sp, #0
 80009d8:	f7ff fe64 	bl	80006a4 <rcc_config>
 80009dc:	f7ff fe96 	bl	800070c <gpio_config>
 80009e0:	f7ff ff0a 	bl	80007f8 <exti_config>
 80009e4:	f7ff ffcc 	bl	8000980 <systick_config>
 80009e8:	e7fe      	b.n	80009e8 <main+0x14>
	...

080009ec <SystemInit>:
 80009ec:	b580      	push	{r7, lr}
 80009ee:	af00      	add	r7, sp, #0
 80009f0:	4b1a      	ldr	r3, [pc, #104]	; (8000a5c <SystemInit+0x70>)
 80009f2:	681a      	ldr	r2, [r3, #0]
 80009f4:	4b19      	ldr	r3, [pc, #100]	; (8000a5c <SystemInit+0x70>)
 80009f6:	2101      	movs	r1, #1
 80009f8:	430a      	orrs	r2, r1
 80009fa:	601a      	str	r2, [r3, #0]
 80009fc:	4b17      	ldr	r3, [pc, #92]	; (8000a5c <SystemInit+0x70>)
 80009fe:	685a      	ldr	r2, [r3, #4]
 8000a00:	4b16      	ldr	r3, [pc, #88]	; (8000a5c <SystemInit+0x70>)
 8000a02:	4917      	ldr	r1, [pc, #92]	; (8000a60 <SystemInit+0x74>)
 8000a04:	400a      	ands	r2, r1
 8000a06:	605a      	str	r2, [r3, #4]
 8000a08:	4b14      	ldr	r3, [pc, #80]	; (8000a5c <SystemInit+0x70>)
 8000a0a:	681a      	ldr	r2, [r3, #0]
 8000a0c:	4b13      	ldr	r3, [pc, #76]	; (8000a5c <SystemInit+0x70>)
 8000a0e:	4915      	ldr	r1, [pc, #84]	; (8000a64 <SystemInit+0x78>)
 8000a10:	400a      	ands	r2, r1
 8000a12:	601a      	str	r2, [r3, #0]
 8000a14:	4b11      	ldr	r3, [pc, #68]	; (8000a5c <SystemInit+0x70>)
 8000a16:	681a      	ldr	r2, [r3, #0]
 8000a18:	4b10      	ldr	r3, [pc, #64]	; (8000a5c <SystemInit+0x70>)
 8000a1a:	4913      	ldr	r1, [pc, #76]	; (8000a68 <SystemInit+0x7c>)
 8000a1c:	400a      	ands	r2, r1
 8000a1e:	601a      	str	r2, [r3, #0]
 8000a20:	4b0e      	ldr	r3, [pc, #56]	; (8000a5c <SystemInit+0x70>)
 8000a22:	685a      	ldr	r2, [r3, #4]
 8000a24:	4b0d      	ldr	r3, [pc, #52]	; (8000a5c <SystemInit+0x70>)
 8000a26:	4911      	ldr	r1, [pc, #68]	; (8000a6c <SystemInit+0x80>)
 8000a28:	400a      	ands	r2, r1
 8000a2a:	605a      	str	r2, [r3, #4]
 8000a2c:	4b0b      	ldr	r3, [pc, #44]	; (8000a5c <SystemInit+0x70>)
 8000a2e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000a30:	4b0a      	ldr	r3, [pc, #40]	; (8000a5c <SystemInit+0x70>)
 8000a32:	210f      	movs	r1, #15
 8000a34:	438a      	bics	r2, r1
 8000a36:	62da      	str	r2, [r3, #44]	; 0x2c
 8000a38:	4b08      	ldr	r3, [pc, #32]	; (8000a5c <SystemInit+0x70>)
 8000a3a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000a3c:	4b07      	ldr	r3, [pc, #28]	; (8000a5c <SystemInit+0x70>)
 8000a3e:	490c      	ldr	r1, [pc, #48]	; (8000a70 <SystemInit+0x84>)
 8000a40:	400a      	ands	r2, r1
 8000a42:	631a      	str	r2, [r3, #48]	; 0x30
 8000a44:	4b05      	ldr	r3, [pc, #20]	; (8000a5c <SystemInit+0x70>)
 8000a46:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000a48:	4b04      	ldr	r3, [pc, #16]	; (8000a5c <SystemInit+0x70>)
 8000a4a:	2101      	movs	r1, #1
 8000a4c:	438a      	bics	r2, r1
 8000a4e:	635a      	str	r2, [r3, #52]	; 0x34
 8000a50:	4b02      	ldr	r3, [pc, #8]	; (8000a5c <SystemInit+0x70>)
 8000a52:	2200      	movs	r2, #0
 8000a54:	609a      	str	r2, [r3, #8]
 8000a56:	46c0      	nop			; (mov r8, r8)
 8000a58:	46bd      	mov	sp, r7
 8000a5a:	bd80      	pop	{r7, pc}
 8000a5c:	40021000 	.word	0x40021000
 8000a60:	f8ffb80c 	.word	0xf8ffb80c
 8000a64:	fef6ffff 	.word	0xfef6ffff
 8000a68:	fffbffff 	.word	0xfffbffff
 8000a6c:	ffc0ffff 	.word	0xffc0ffff
 8000a70:	fffffeac 	.word	0xfffffeac

08000a74 <NMI_Handler>:
 8000a74:	b580      	push	{r7, lr}
 8000a76:	af00      	add	r7, sp, #0
 8000a78:	46c0      	nop			; (mov r8, r8)
 8000a7a:	46bd      	mov	sp, r7
 8000a7c:	bd80      	pop	{r7, pc}

08000a7e <HardFault_Handler>:
 8000a7e:	b580      	push	{r7, lr}
 8000a80:	af00      	add	r7, sp, #0
 8000a82:	e7fe      	b.n	8000a82 <HardFault_Handler+0x4>

08000a84 <SVC_Handler>:
 8000a84:	b580      	push	{r7, lr}
 8000a86:	af00      	add	r7, sp, #0
 8000a88:	46c0      	nop			; (mov r8, r8)
 8000a8a:	46bd      	mov	sp, r7
 8000a8c:	bd80      	pop	{r7, pc}

08000a8e <PendSV_Handler>:
 8000a8e:	b580      	push	{r7, lr}
 8000a90:	af00      	add	r7, sp, #0
 8000a92:	46c0      	nop			; (mov r8, r8)
 8000a94:	46bd      	mov	sp, r7
 8000a96:	bd80      	pop	{r7, pc}

08000a98 <__libc_init_array>:
 8000a98:	b570      	push	{r4, r5, r6, lr}
 8000a9a:	4d0c      	ldr	r5, [pc, #48]	; (8000acc <__libc_init_array+0x34>)
 8000a9c:	4e0c      	ldr	r6, [pc, #48]	; (8000ad0 <__libc_init_array+0x38>)
 8000a9e:	1b76      	subs	r6, r6, r5
 8000aa0:	10b6      	asrs	r6, r6, #2
 8000aa2:	d005      	beq.n	8000ab0 <__libc_init_array+0x18>
 8000aa4:	2400      	movs	r4, #0
 8000aa6:	cd08      	ldmia	r5!, {r3}
 8000aa8:	3401      	adds	r4, #1
 8000aaa:	4798      	blx	r3
 8000aac:	42a6      	cmp	r6, r4
 8000aae:	d1fa      	bne.n	8000aa6 <__libc_init_array+0xe>
 8000ab0:	f000 f8e8 	bl	8000c84 <_init>
 8000ab4:	4d07      	ldr	r5, [pc, #28]	; (8000ad4 <__libc_init_array+0x3c>)
 8000ab6:	4e08      	ldr	r6, [pc, #32]	; (8000ad8 <__libc_init_array+0x40>)
 8000ab8:	1b76      	subs	r6, r6, r5
 8000aba:	10b6      	asrs	r6, r6, #2
 8000abc:	d005      	beq.n	8000aca <__libc_init_array+0x32>
 8000abe:	2400      	movs	r4, #0
 8000ac0:	cd08      	ldmia	r5!, {r3}
 8000ac2:	3401      	adds	r4, #1
 8000ac4:	4798      	blx	r3
 8000ac6:	42a6      	cmp	r6, r4
 8000ac8:	d1fa      	bne.n	8000ac0 <__libc_init_array+0x28>
 8000aca:	bd70      	pop	{r4, r5, r6, pc}
 8000acc:	08000ce0 	.word	0x08000ce0
 8000ad0:	08000ce0 	.word	0x08000ce0
 8000ad4:	08000ce0 	.word	0x08000ce0
 8000ad8:	08000ce8 	.word	0x08000ce8

08000adc <memcpy>:
 8000adc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000ade:	46c6      	mov	lr, r8
 8000ae0:	b500      	push	{lr}
 8000ae2:	2a0f      	cmp	r2, #15
 8000ae4:	d941      	bls.n	8000b6a <memcpy+0x8e>
 8000ae6:	2703      	movs	r7, #3
 8000ae8:	000d      	movs	r5, r1
 8000aea:	003e      	movs	r6, r7
 8000aec:	4305      	orrs	r5, r0
 8000aee:	000c      	movs	r4, r1
 8000af0:	0003      	movs	r3, r0
 8000af2:	402e      	ands	r6, r5
 8000af4:	422f      	tst	r7, r5
 8000af6:	d13d      	bne.n	8000b74 <memcpy+0x98>
 8000af8:	0015      	movs	r5, r2
 8000afa:	3d10      	subs	r5, #16
 8000afc:	092d      	lsrs	r5, r5, #4
 8000afe:	46a8      	mov	r8, r5
 8000b00:	012d      	lsls	r5, r5, #4
 8000b02:	46ac      	mov	ip, r5
 8000b04:	4484      	add	ip, r0
 8000b06:	6827      	ldr	r7, [r4, #0]
 8000b08:	001d      	movs	r5, r3
 8000b0a:	601f      	str	r7, [r3, #0]
 8000b0c:	6867      	ldr	r7, [r4, #4]
 8000b0e:	605f      	str	r7, [r3, #4]
 8000b10:	68a7      	ldr	r7, [r4, #8]
 8000b12:	609f      	str	r7, [r3, #8]
 8000b14:	68e7      	ldr	r7, [r4, #12]
 8000b16:	3410      	adds	r4, #16
 8000b18:	60df      	str	r7, [r3, #12]
 8000b1a:	3310      	adds	r3, #16
 8000b1c:	4565      	cmp	r5, ip
 8000b1e:	d1f2      	bne.n	8000b06 <memcpy+0x2a>
 8000b20:	4645      	mov	r5, r8
 8000b22:	230f      	movs	r3, #15
 8000b24:	240c      	movs	r4, #12
 8000b26:	3501      	adds	r5, #1
 8000b28:	012d      	lsls	r5, r5, #4
 8000b2a:	1949      	adds	r1, r1, r5
 8000b2c:	4013      	ands	r3, r2
 8000b2e:	1945      	adds	r5, r0, r5
 8000b30:	4214      	tst	r4, r2
 8000b32:	d022      	beq.n	8000b7a <memcpy+0x9e>
 8000b34:	598c      	ldr	r4, [r1, r6]
 8000b36:	51ac      	str	r4, [r5, r6]
 8000b38:	3604      	adds	r6, #4
 8000b3a:	1b9c      	subs	r4, r3, r6
 8000b3c:	2c03      	cmp	r4, #3
 8000b3e:	d8f9      	bhi.n	8000b34 <memcpy+0x58>
 8000b40:	3b04      	subs	r3, #4
 8000b42:	089b      	lsrs	r3, r3, #2
 8000b44:	3301      	adds	r3, #1
 8000b46:	009b      	lsls	r3, r3, #2
 8000b48:	18ed      	adds	r5, r5, r3
 8000b4a:	18c9      	adds	r1, r1, r3
 8000b4c:	2303      	movs	r3, #3
 8000b4e:	401a      	ands	r2, r3
 8000b50:	1e56      	subs	r6, r2, #1
 8000b52:	2a00      	cmp	r2, #0
 8000b54:	d006      	beq.n	8000b64 <memcpy+0x88>
 8000b56:	2300      	movs	r3, #0
 8000b58:	5ccc      	ldrb	r4, [r1, r3]
 8000b5a:	001a      	movs	r2, r3
 8000b5c:	54ec      	strb	r4, [r5, r3]
 8000b5e:	3301      	adds	r3, #1
 8000b60:	4296      	cmp	r6, r2
 8000b62:	d1f9      	bne.n	8000b58 <memcpy+0x7c>
 8000b64:	bc80      	pop	{r7}
 8000b66:	46b8      	mov	r8, r7
 8000b68:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b6a:	0005      	movs	r5, r0
 8000b6c:	1e56      	subs	r6, r2, #1
 8000b6e:	2a00      	cmp	r2, #0
 8000b70:	d1f1      	bne.n	8000b56 <memcpy+0x7a>
 8000b72:	e7f7      	b.n	8000b64 <memcpy+0x88>
 8000b74:	0005      	movs	r5, r0
 8000b76:	1e56      	subs	r6, r2, #1
 8000b78:	e7ed      	b.n	8000b56 <memcpy+0x7a>
 8000b7a:	001a      	movs	r2, r3
 8000b7c:	e7f6      	b.n	8000b6c <memcpy+0x90>
 8000b7e:	46c0      	nop			; (mov r8, r8)

08000b80 <register_fini>:
 8000b80:	4b03      	ldr	r3, [pc, #12]	; (8000b90 <register_fini+0x10>)
 8000b82:	b510      	push	{r4, lr}
 8000b84:	2b00      	cmp	r3, #0
 8000b86:	d002      	beq.n	8000b8e <register_fini+0xe>
 8000b88:	4802      	ldr	r0, [pc, #8]	; (8000b94 <register_fini+0x14>)
 8000b8a:	f000 f805 	bl	8000b98 <atexit>
 8000b8e:	bd10      	pop	{r4, pc}
 8000b90:	00000000 	.word	0x00000000
 8000b94:	08000ba9 	.word	0x08000ba9

08000b98 <atexit>:
 8000b98:	b510      	push	{r4, lr}
 8000b9a:	0001      	movs	r1, r0
 8000b9c:	2300      	movs	r3, #0
 8000b9e:	2200      	movs	r2, #0
 8000ba0:	2000      	movs	r0, #0
 8000ba2:	f000 f819 	bl	8000bd8 <__register_exitproc>
 8000ba6:	bd10      	pop	{r4, pc}

08000ba8 <__libc_fini_array>:
 8000ba8:	b570      	push	{r4, r5, r6, lr}
 8000baa:	4d07      	ldr	r5, [pc, #28]	; (8000bc8 <__libc_fini_array+0x20>)
 8000bac:	4c07      	ldr	r4, [pc, #28]	; (8000bcc <__libc_fini_array+0x24>)
 8000bae:	1b64      	subs	r4, r4, r5
 8000bb0:	10a4      	asrs	r4, r4, #2
 8000bb2:	d005      	beq.n	8000bc0 <__libc_fini_array+0x18>
 8000bb4:	3c01      	subs	r4, #1
 8000bb6:	00a3      	lsls	r3, r4, #2
 8000bb8:	58eb      	ldr	r3, [r5, r3]
 8000bba:	4798      	blx	r3
 8000bbc:	2c00      	cmp	r4, #0
 8000bbe:	d1f9      	bne.n	8000bb4 <__libc_fini_array+0xc>
 8000bc0:	f000 f866 	bl	8000c90 <_fini>
 8000bc4:	bd70      	pop	{r4, r5, r6, pc}
 8000bc6:	46c0      	nop			; (mov r8, r8)
 8000bc8:	08000ce8 	.word	0x08000ce8
 8000bcc:	08000cec 	.word	0x08000cec

08000bd0 <__retarget_lock_acquire_recursive>:
 8000bd0:	4770      	bx	lr
 8000bd2:	46c0      	nop			; (mov r8, r8)

08000bd4 <__retarget_lock_release_recursive>:
 8000bd4:	4770      	bx	lr
 8000bd6:	46c0      	nop			; (mov r8, r8)

08000bd8 <__register_exitproc>:
 8000bd8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000bda:	46d6      	mov	lr, sl
 8000bdc:	464f      	mov	r7, r9
 8000bde:	4646      	mov	r6, r8
 8000be0:	b5c0      	push	{r6, r7, lr}
 8000be2:	4f26      	ldr	r7, [pc, #152]	; (8000c7c <__register_exitproc+0xa4>)
 8000be4:	b082      	sub	sp, #8
 8000be6:	0006      	movs	r6, r0
 8000be8:	6838      	ldr	r0, [r7, #0]
 8000bea:	4692      	mov	sl, r2
 8000bec:	4698      	mov	r8, r3
 8000bee:	4689      	mov	r9, r1
 8000bf0:	f7ff ffee 	bl	8000bd0 <__retarget_lock_acquire_recursive>
 8000bf4:	4b22      	ldr	r3, [pc, #136]	; (8000c80 <__register_exitproc+0xa8>)
 8000bf6:	681b      	ldr	r3, [r3, #0]
 8000bf8:	9301      	str	r3, [sp, #4]
 8000bfa:	23a4      	movs	r3, #164	; 0xa4
 8000bfc:	9a01      	ldr	r2, [sp, #4]
 8000bfe:	005b      	lsls	r3, r3, #1
 8000c00:	58d5      	ldr	r5, [r2, r3]
 8000c02:	2d00      	cmp	r5, #0
 8000c04:	d02e      	beq.n	8000c64 <__register_exitproc+0x8c>
 8000c06:	686c      	ldr	r4, [r5, #4]
 8000c08:	2c1f      	cmp	r4, #31
 8000c0a:	dc30      	bgt.n	8000c6e <__register_exitproc+0x96>
 8000c0c:	2e00      	cmp	r6, #0
 8000c0e:	d10f      	bne.n	8000c30 <__register_exitproc+0x58>
 8000c10:	1c63      	adds	r3, r4, #1
 8000c12:	606b      	str	r3, [r5, #4]
 8000c14:	464b      	mov	r3, r9
 8000c16:	3402      	adds	r4, #2
 8000c18:	00a4      	lsls	r4, r4, #2
 8000c1a:	6838      	ldr	r0, [r7, #0]
 8000c1c:	5163      	str	r3, [r4, r5]
 8000c1e:	f7ff ffd9 	bl	8000bd4 <__retarget_lock_release_recursive>
 8000c22:	2000      	movs	r0, #0
 8000c24:	b002      	add	sp, #8
 8000c26:	bce0      	pop	{r5, r6, r7}
 8000c28:	46ba      	mov	sl, r7
 8000c2a:	46b1      	mov	r9, r6
 8000c2c:	46a8      	mov	r8, r5
 8000c2e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c30:	2288      	movs	r2, #136	; 0x88
 8000c32:	4651      	mov	r1, sl
 8000c34:	0028      	movs	r0, r5
 8000c36:	00a3      	lsls	r3, r4, #2
 8000c38:	18eb      	adds	r3, r5, r3
 8000c3a:	5099      	str	r1, [r3, r2]
 8000c3c:	3a87      	subs	r2, #135	; 0x87
 8000c3e:	40a2      	lsls	r2, r4
 8000c40:	3089      	adds	r0, #137	; 0x89
 8000c42:	30ff      	adds	r0, #255	; 0xff
 8000c44:	6801      	ldr	r1, [r0, #0]
 8000c46:	4311      	orrs	r1, r2
 8000c48:	6001      	str	r1, [r0, #0]
 8000c4a:	2184      	movs	r1, #132	; 0x84
 8000c4c:	4640      	mov	r0, r8
 8000c4e:	0049      	lsls	r1, r1, #1
 8000c50:	5058      	str	r0, [r3, r1]
 8000c52:	2e02      	cmp	r6, #2
 8000c54:	d1dc      	bne.n	8000c10 <__register_exitproc+0x38>
 8000c56:	002b      	movs	r3, r5
 8000c58:	338d      	adds	r3, #141	; 0x8d
 8000c5a:	33ff      	adds	r3, #255	; 0xff
 8000c5c:	6819      	ldr	r1, [r3, #0]
 8000c5e:	430a      	orrs	r2, r1
 8000c60:	601a      	str	r2, [r3, #0]
 8000c62:	e7d5      	b.n	8000c10 <__register_exitproc+0x38>
 8000c64:	0015      	movs	r5, r2
 8000c66:	354d      	adds	r5, #77	; 0x4d
 8000c68:	35ff      	adds	r5, #255	; 0xff
 8000c6a:	50d5      	str	r5, [r2, r3]
 8000c6c:	e7cb      	b.n	8000c06 <__register_exitproc+0x2e>
 8000c6e:	6838      	ldr	r0, [r7, #0]
 8000c70:	f7ff ffb0 	bl	8000bd4 <__retarget_lock_release_recursive>
 8000c74:	2001      	movs	r0, #1
 8000c76:	4240      	negs	r0, r0
 8000c78:	e7d4      	b.n	8000c24 <__register_exitproc+0x4c>
 8000c7a:	46c0      	nop			; (mov r8, r8)
 8000c7c:	20000430 	.word	0x20000430
 8000c80:	08000cdc 	.word	0x08000cdc

08000c84 <_init>:
 8000c84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000c86:	46c0      	nop			; (mov r8, r8)
 8000c88:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000c8a:	bc08      	pop	{r3}
 8000c8c:	469e      	mov	lr, r3
 8000c8e:	4770      	bx	lr

08000c90 <_fini>:
 8000c90:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000c92:	46c0      	nop			; (mov r8, r8)
 8000c94:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000c96:	bc08      	pop	{r3}
 8000c98:	469e      	mov	lr, r3
 8000c9a:	4770      	bx	lr
