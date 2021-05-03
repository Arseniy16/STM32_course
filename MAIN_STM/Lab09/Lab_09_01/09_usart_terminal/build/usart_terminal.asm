
build/usart_terminal.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00001068  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000018  08001128  08001128  00011128  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08001140  08001140  00011140  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08001148  08001148  00011148  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  0800114c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000038  20000434  08001580  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000046c  08001580  0002046c  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00001431  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000476  00000000  00000000  0002188d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000af8  00000000  00000000  00021d03  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    000001f8  00000000  00000000  000227fb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000001c8  00000000  00000000  000229f3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000b7f  00000000  00000000  00022bbb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000a35  00000000  00000000  0002373a  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  0002416f  2**0  CONTENTS, READONLY
 17 .debug_frame      00000894  00000000  00000000  000241bc  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08001110 	.word	0x08001110

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
 8000104:	08001110 	.word	0x08001110

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
 800024a:	f000 fe67 	bl	8000f1c <SystemInit>
 800024e:	f000 febb 	bl	8000fc8 <__libc_init_array>
 8000252:	f000 fe55 	bl	8000f00 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	0800114c 	.word	0x0800114c
 8000268:	20000434 	.word	0x20000434
 800026c:	2000046c 	.word	0x2000046c

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

0800044c <LL_RCC_SetUSARTClockSource>:
 800044c:	b580      	push	{r7, lr}
 800044e:	b082      	sub	sp, #8
 8000450:	af00      	add	r7, sp, #0
 8000452:	6078      	str	r0, [r7, #4]
 8000454:	4b09      	ldr	r3, [pc, #36]	; (800047c <LL_RCC_SetUSARTClockSource+0x30>)
 8000456:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8000458:	687a      	ldr	r2, [r7, #4]
 800045a:	0e12      	lsrs	r2, r2, #24
 800045c:	2103      	movs	r1, #3
 800045e:	4091      	lsls	r1, r2
 8000460:	000a      	movs	r2, r1
 8000462:	43d2      	mvns	r2, r2
 8000464:	401a      	ands	r2, r3
 8000466:	0011      	movs	r1, r2
 8000468:	687b      	ldr	r3, [r7, #4]
 800046a:	021b      	lsls	r3, r3, #8
 800046c:	0a1a      	lsrs	r2, r3, #8
 800046e:	4b03      	ldr	r3, [pc, #12]	; (800047c <LL_RCC_SetUSARTClockSource+0x30>)
 8000470:	430a      	orrs	r2, r1
 8000472:	631a      	str	r2, [r3, #48]	; 0x30
 8000474:	46c0      	nop			; (mov r8, r8)
 8000476:	46bd      	mov	sp, r7
 8000478:	b002      	add	sp, #8
 800047a:	bd80      	pop	{r7, pc}
 800047c:	40021000 	.word	0x40021000

08000480 <LL_RCC_PLL_Enable>:
 8000480:	b580      	push	{r7, lr}
 8000482:	af00      	add	r7, sp, #0
 8000484:	4b04      	ldr	r3, [pc, #16]	; (8000498 <LL_RCC_PLL_Enable+0x18>)
 8000486:	681a      	ldr	r2, [r3, #0]
 8000488:	4b03      	ldr	r3, [pc, #12]	; (8000498 <LL_RCC_PLL_Enable+0x18>)
 800048a:	2180      	movs	r1, #128	; 0x80
 800048c:	0449      	lsls	r1, r1, #17
 800048e:	430a      	orrs	r2, r1
 8000490:	601a      	str	r2, [r3, #0]
 8000492:	46c0      	nop			; (mov r8, r8)
 8000494:	46bd      	mov	sp, r7
 8000496:	bd80      	pop	{r7, pc}
 8000498:	40021000 	.word	0x40021000

0800049c <LL_RCC_PLL_IsReady>:
 800049c:	b580      	push	{r7, lr}
 800049e:	af00      	add	r7, sp, #0
 80004a0:	4b07      	ldr	r3, [pc, #28]	; (80004c0 <LL_RCC_PLL_IsReady+0x24>)
 80004a2:	681a      	ldr	r2, [r3, #0]
 80004a4:	2380      	movs	r3, #128	; 0x80
 80004a6:	049b      	lsls	r3, r3, #18
 80004a8:	4013      	ands	r3, r2
 80004aa:	22fe      	movs	r2, #254	; 0xfe
 80004ac:	0612      	lsls	r2, r2, #24
 80004ae:	4694      	mov	ip, r2
 80004b0:	4463      	add	r3, ip
 80004b2:	425a      	negs	r2, r3
 80004b4:	4153      	adcs	r3, r2
 80004b6:	b2db      	uxtb	r3, r3
 80004b8:	0018      	movs	r0, r3
 80004ba:	46bd      	mov	sp, r7
 80004bc:	bd80      	pop	{r7, pc}
 80004be:	46c0      	nop			; (mov r8, r8)
 80004c0:	40021000 	.word	0x40021000

080004c4 <LL_RCC_PLL_ConfigDomain_SYS>:
 80004c4:	b580      	push	{r7, lr}
 80004c6:	b082      	sub	sp, #8
 80004c8:	af00      	add	r7, sp, #0
 80004ca:	6078      	str	r0, [r7, #4]
 80004cc:	6039      	str	r1, [r7, #0]
 80004ce:	4b0e      	ldr	r3, [pc, #56]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004d0:	685b      	ldr	r3, [r3, #4]
 80004d2:	4a0e      	ldr	r2, [pc, #56]	; (800050c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004d4:	4013      	ands	r3, r2
 80004d6:	0019      	movs	r1, r3
 80004d8:	687a      	ldr	r2, [r7, #4]
 80004da:	2380      	movs	r3, #128	; 0x80
 80004dc:	025b      	lsls	r3, r3, #9
 80004de:	401a      	ands	r2, r3
 80004e0:	683b      	ldr	r3, [r7, #0]
 80004e2:	431a      	orrs	r2, r3
 80004e4:	4b08      	ldr	r3, [pc, #32]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004e6:	430a      	orrs	r2, r1
 80004e8:	605a      	str	r2, [r3, #4]
 80004ea:	4b07      	ldr	r3, [pc, #28]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004ec:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004ee:	220f      	movs	r2, #15
 80004f0:	4393      	bics	r3, r2
 80004f2:	0019      	movs	r1, r3
 80004f4:	687b      	ldr	r3, [r7, #4]
 80004f6:	220f      	movs	r2, #15
 80004f8:	401a      	ands	r2, r3
 80004fa:	4b03      	ldr	r3, [pc, #12]	; (8000508 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004fc:	430a      	orrs	r2, r1
 80004fe:	62da      	str	r2, [r3, #44]	; 0x2c
 8000500:	46c0      	nop			; (mov r8, r8)
 8000502:	46bd      	mov	sp, r7
 8000504:	b002      	add	sp, #8
 8000506:	bd80      	pop	{r7, pc}
 8000508:	40021000 	.word	0x40021000
 800050c:	ffc2ffff 	.word	0xffc2ffff

08000510 <LL_FLASH_SetLatency>:
 8000510:	b580      	push	{r7, lr}
 8000512:	b082      	sub	sp, #8
 8000514:	af00      	add	r7, sp, #0
 8000516:	6078      	str	r0, [r7, #4]
 8000518:	4b06      	ldr	r3, [pc, #24]	; (8000534 <LL_FLASH_SetLatency+0x24>)
 800051a:	681b      	ldr	r3, [r3, #0]
 800051c:	2201      	movs	r2, #1
 800051e:	4393      	bics	r3, r2
 8000520:	0019      	movs	r1, r3
 8000522:	4b04      	ldr	r3, [pc, #16]	; (8000534 <LL_FLASH_SetLatency+0x24>)
 8000524:	687a      	ldr	r2, [r7, #4]
 8000526:	430a      	orrs	r2, r1
 8000528:	601a      	str	r2, [r3, #0]
 800052a:	46c0      	nop			; (mov r8, r8)
 800052c:	46bd      	mov	sp, r7
 800052e:	b002      	add	sp, #8
 8000530:	bd80      	pop	{r7, pc}
 8000532:	46c0      	nop			; (mov r8, r8)
 8000534:	40022000 	.word	0x40022000

08000538 <LL_AHB1_GRP1_EnableClock>:
 8000538:	b580      	push	{r7, lr}
 800053a:	b084      	sub	sp, #16
 800053c:	af00      	add	r7, sp, #0
 800053e:	6078      	str	r0, [r7, #4]
 8000540:	4b07      	ldr	r3, [pc, #28]	; (8000560 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000542:	6959      	ldr	r1, [r3, #20]
 8000544:	4b06      	ldr	r3, [pc, #24]	; (8000560 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000546:	687a      	ldr	r2, [r7, #4]
 8000548:	430a      	orrs	r2, r1
 800054a:	615a      	str	r2, [r3, #20]
 800054c:	4b04      	ldr	r3, [pc, #16]	; (8000560 <LL_AHB1_GRP1_EnableClock+0x28>)
 800054e:	695b      	ldr	r3, [r3, #20]
 8000550:	687a      	ldr	r2, [r7, #4]
 8000552:	4013      	ands	r3, r2
 8000554:	60fb      	str	r3, [r7, #12]
 8000556:	68fb      	ldr	r3, [r7, #12]
 8000558:	46c0      	nop			; (mov r8, r8)
 800055a:	46bd      	mov	sp, r7
 800055c:	b004      	add	sp, #16
 800055e:	bd80      	pop	{r7, pc}
 8000560:	40021000 	.word	0x40021000

08000564 <LL_APB1_GRP2_EnableClock>:
 8000564:	b580      	push	{r7, lr}
 8000566:	b084      	sub	sp, #16
 8000568:	af00      	add	r7, sp, #0
 800056a:	6078      	str	r0, [r7, #4]
 800056c:	4b07      	ldr	r3, [pc, #28]	; (800058c <LL_APB1_GRP2_EnableClock+0x28>)
 800056e:	6999      	ldr	r1, [r3, #24]
 8000570:	4b06      	ldr	r3, [pc, #24]	; (800058c <LL_APB1_GRP2_EnableClock+0x28>)
 8000572:	687a      	ldr	r2, [r7, #4]
 8000574:	430a      	orrs	r2, r1
 8000576:	619a      	str	r2, [r3, #24]
 8000578:	4b04      	ldr	r3, [pc, #16]	; (800058c <LL_APB1_GRP2_EnableClock+0x28>)
 800057a:	699b      	ldr	r3, [r3, #24]
 800057c:	687a      	ldr	r2, [r7, #4]
 800057e:	4013      	ands	r3, r2
 8000580:	60fb      	str	r3, [r7, #12]
 8000582:	68fb      	ldr	r3, [r7, #12]
 8000584:	46c0      	nop			; (mov r8, r8)
 8000586:	46bd      	mov	sp, r7
 8000588:	b004      	add	sp, #16
 800058a:	bd80      	pop	{r7, pc}
 800058c:	40021000 	.word	0x40021000

08000590 <LL_GPIO_SetPinMode>:
 8000590:	b580      	push	{r7, lr}
 8000592:	b084      	sub	sp, #16
 8000594:	af00      	add	r7, sp, #0
 8000596:	60f8      	str	r0, [r7, #12]
 8000598:	60b9      	str	r1, [r7, #8]
 800059a:	607a      	str	r2, [r7, #4]
 800059c:	68fb      	ldr	r3, [r7, #12]
 800059e:	6819      	ldr	r1, [r3, #0]
 80005a0:	68bb      	ldr	r3, [r7, #8]
 80005a2:	435b      	muls	r3, r3
 80005a4:	001a      	movs	r2, r3
 80005a6:	0013      	movs	r3, r2
 80005a8:	005b      	lsls	r3, r3, #1
 80005aa:	189b      	adds	r3, r3, r2
 80005ac:	43db      	mvns	r3, r3
 80005ae:	400b      	ands	r3, r1
 80005b0:	001a      	movs	r2, r3
 80005b2:	68bb      	ldr	r3, [r7, #8]
 80005b4:	435b      	muls	r3, r3
 80005b6:	6879      	ldr	r1, [r7, #4]
 80005b8:	434b      	muls	r3, r1
 80005ba:	431a      	orrs	r2, r3
 80005bc:	68fb      	ldr	r3, [r7, #12]
 80005be:	601a      	str	r2, [r3, #0]
 80005c0:	46c0      	nop			; (mov r8, r8)
 80005c2:	46bd      	mov	sp, r7
 80005c4:	b004      	add	sp, #16
 80005c6:	bd80      	pop	{r7, pc}

080005c8 <LL_GPIO_SetPinSpeed>:
 80005c8:	b580      	push	{r7, lr}
 80005ca:	b084      	sub	sp, #16
 80005cc:	af00      	add	r7, sp, #0
 80005ce:	60f8      	str	r0, [r7, #12]
 80005d0:	60b9      	str	r1, [r7, #8]
 80005d2:	607a      	str	r2, [r7, #4]
 80005d4:	68fb      	ldr	r3, [r7, #12]
 80005d6:	6899      	ldr	r1, [r3, #8]
 80005d8:	68bb      	ldr	r3, [r7, #8]
 80005da:	435b      	muls	r3, r3
 80005dc:	001a      	movs	r2, r3
 80005de:	0013      	movs	r3, r2
 80005e0:	005b      	lsls	r3, r3, #1
 80005e2:	189b      	adds	r3, r3, r2
 80005e4:	43db      	mvns	r3, r3
 80005e6:	400b      	ands	r3, r1
 80005e8:	001a      	movs	r2, r3
 80005ea:	68bb      	ldr	r3, [r7, #8]
 80005ec:	435b      	muls	r3, r3
 80005ee:	6879      	ldr	r1, [r7, #4]
 80005f0:	434b      	muls	r3, r1
 80005f2:	431a      	orrs	r2, r3
 80005f4:	68fb      	ldr	r3, [r7, #12]
 80005f6:	609a      	str	r2, [r3, #8]
 80005f8:	46c0      	nop			; (mov r8, r8)
 80005fa:	46bd      	mov	sp, r7
 80005fc:	b004      	add	sp, #16
 80005fe:	bd80      	pop	{r7, pc}

08000600 <LL_GPIO_SetAFPin_8_15>:
 8000600:	b580      	push	{r7, lr}
 8000602:	b084      	sub	sp, #16
 8000604:	af00      	add	r7, sp, #0
 8000606:	60f8      	str	r0, [r7, #12]
 8000608:	60b9      	str	r1, [r7, #8]
 800060a:	607a      	str	r2, [r7, #4]
 800060c:	68fb      	ldr	r3, [r7, #12]
 800060e:	6a59      	ldr	r1, [r3, #36]	; 0x24
 8000610:	68bb      	ldr	r3, [r7, #8]
 8000612:	0a1b      	lsrs	r3, r3, #8
 8000614:	68ba      	ldr	r2, [r7, #8]
 8000616:	0a12      	lsrs	r2, r2, #8
 8000618:	4353      	muls	r3, r2
 800061a:	68ba      	ldr	r2, [r7, #8]
 800061c:	0a12      	lsrs	r2, r2, #8
 800061e:	4353      	muls	r3, r2
 8000620:	68ba      	ldr	r2, [r7, #8]
 8000622:	0a12      	lsrs	r2, r2, #8
 8000624:	435a      	muls	r2, r3
 8000626:	0013      	movs	r3, r2
 8000628:	011b      	lsls	r3, r3, #4
 800062a:	1a9b      	subs	r3, r3, r2
 800062c:	43db      	mvns	r3, r3
 800062e:	400b      	ands	r3, r1
 8000630:	001a      	movs	r2, r3
 8000632:	68bb      	ldr	r3, [r7, #8]
 8000634:	0a1b      	lsrs	r3, r3, #8
 8000636:	68b9      	ldr	r1, [r7, #8]
 8000638:	0a09      	lsrs	r1, r1, #8
 800063a:	434b      	muls	r3, r1
 800063c:	68b9      	ldr	r1, [r7, #8]
 800063e:	0a09      	lsrs	r1, r1, #8
 8000640:	434b      	muls	r3, r1
 8000642:	68b9      	ldr	r1, [r7, #8]
 8000644:	0a09      	lsrs	r1, r1, #8
 8000646:	434b      	muls	r3, r1
 8000648:	6879      	ldr	r1, [r7, #4]
 800064a:	434b      	muls	r3, r1
 800064c:	431a      	orrs	r2, r3
 800064e:	68fb      	ldr	r3, [r7, #12]
 8000650:	625a      	str	r2, [r3, #36]	; 0x24
 8000652:	46c0      	nop			; (mov r8, r8)
 8000654:	46bd      	mov	sp, r7
 8000656:	b004      	add	sp, #16
 8000658:	bd80      	pop	{r7, pc}

0800065a <LL_GPIO_WriteOutputPort>:
 800065a:	b580      	push	{r7, lr}
 800065c:	b082      	sub	sp, #8
 800065e:	af00      	add	r7, sp, #0
 8000660:	6078      	str	r0, [r7, #4]
 8000662:	6039      	str	r1, [r7, #0]
 8000664:	687b      	ldr	r3, [r7, #4]
 8000666:	683a      	ldr	r2, [r7, #0]
 8000668:	615a      	str	r2, [r3, #20]
 800066a:	46c0      	nop			; (mov r8, r8)
 800066c:	46bd      	mov	sp, r7
 800066e:	b002      	add	sp, #8
 8000670:	bd80      	pop	{r7, pc}

08000672 <LL_GPIO_ResetOutputPin>:
 8000672:	b580      	push	{r7, lr}
 8000674:	b082      	sub	sp, #8
 8000676:	af00      	add	r7, sp, #0
 8000678:	6078      	str	r0, [r7, #4]
 800067a:	6039      	str	r1, [r7, #0]
 800067c:	687b      	ldr	r3, [r7, #4]
 800067e:	683a      	ldr	r2, [r7, #0]
 8000680:	629a      	str	r2, [r3, #40]	; 0x28
 8000682:	46c0      	nop			; (mov r8, r8)
 8000684:	46bd      	mov	sp, r7
 8000686:	b002      	add	sp, #8
 8000688:	bd80      	pop	{r7, pc}

0800068a <LL_USART_Enable>:
 800068a:	b580      	push	{r7, lr}
 800068c:	b082      	sub	sp, #8
 800068e:	af00      	add	r7, sp, #0
 8000690:	6078      	str	r0, [r7, #4]
 8000692:	687b      	ldr	r3, [r7, #4]
 8000694:	681b      	ldr	r3, [r3, #0]
 8000696:	2201      	movs	r2, #1
 8000698:	431a      	orrs	r2, r3
 800069a:	687b      	ldr	r3, [r7, #4]
 800069c:	601a      	str	r2, [r3, #0]
 800069e:	46c0      	nop			; (mov r8, r8)
 80006a0:	46bd      	mov	sp, r7
 80006a2:	b002      	add	sp, #8
 80006a4:	bd80      	pop	{r7, pc}

080006a6 <LL_USART_SetTransferDirection>:
 80006a6:	b580      	push	{r7, lr}
 80006a8:	b082      	sub	sp, #8
 80006aa:	af00      	add	r7, sp, #0
 80006ac:	6078      	str	r0, [r7, #4]
 80006ae:	6039      	str	r1, [r7, #0]
 80006b0:	687b      	ldr	r3, [r7, #4]
 80006b2:	681b      	ldr	r3, [r3, #0]
 80006b4:	220c      	movs	r2, #12
 80006b6:	4393      	bics	r3, r2
 80006b8:	001a      	movs	r2, r3
 80006ba:	683b      	ldr	r3, [r7, #0]
 80006bc:	431a      	orrs	r2, r3
 80006be:	687b      	ldr	r3, [r7, #4]
 80006c0:	601a      	str	r2, [r3, #0]
 80006c2:	46c0      	nop			; (mov r8, r8)
 80006c4:	46bd      	mov	sp, r7
 80006c6:	b002      	add	sp, #8
 80006c8:	bd80      	pop	{r7, pc}
	...

080006cc <LL_USART_SetParity>:
 80006cc:	b580      	push	{r7, lr}
 80006ce:	b082      	sub	sp, #8
 80006d0:	af00      	add	r7, sp, #0
 80006d2:	6078      	str	r0, [r7, #4]
 80006d4:	6039      	str	r1, [r7, #0]
 80006d6:	687b      	ldr	r3, [r7, #4]
 80006d8:	681b      	ldr	r3, [r3, #0]
 80006da:	4a05      	ldr	r2, [pc, #20]	; (80006f0 <LL_USART_SetParity+0x24>)
 80006dc:	401a      	ands	r2, r3
 80006de:	683b      	ldr	r3, [r7, #0]
 80006e0:	431a      	orrs	r2, r3
 80006e2:	687b      	ldr	r3, [r7, #4]
 80006e4:	601a      	str	r2, [r3, #0]
 80006e6:	46c0      	nop			; (mov r8, r8)
 80006e8:	46bd      	mov	sp, r7
 80006ea:	b002      	add	sp, #8
 80006ec:	bd80      	pop	{r7, pc}
 80006ee:	46c0      	nop			; (mov r8, r8)
 80006f0:	fffff9ff 	.word	0xfffff9ff

080006f4 <LL_USART_SetDataWidth>:
 80006f4:	b580      	push	{r7, lr}
 80006f6:	b082      	sub	sp, #8
 80006f8:	af00      	add	r7, sp, #0
 80006fa:	6078      	str	r0, [r7, #4]
 80006fc:	6039      	str	r1, [r7, #0]
 80006fe:	687b      	ldr	r3, [r7, #4]
 8000700:	681b      	ldr	r3, [r3, #0]
 8000702:	4a05      	ldr	r2, [pc, #20]	; (8000718 <LL_USART_SetDataWidth+0x24>)
 8000704:	401a      	ands	r2, r3
 8000706:	683b      	ldr	r3, [r7, #0]
 8000708:	431a      	orrs	r2, r3
 800070a:	687b      	ldr	r3, [r7, #4]
 800070c:	601a      	str	r2, [r3, #0]
 800070e:	46c0      	nop			; (mov r8, r8)
 8000710:	46bd      	mov	sp, r7
 8000712:	b002      	add	sp, #8
 8000714:	bd80      	pop	{r7, pc}
 8000716:	46c0      	nop			; (mov r8, r8)
 8000718:	ffffefff 	.word	0xffffefff

0800071c <LL_USART_SetStopBitsLength>:
 800071c:	b580      	push	{r7, lr}
 800071e:	b082      	sub	sp, #8
 8000720:	af00      	add	r7, sp, #0
 8000722:	6078      	str	r0, [r7, #4]
 8000724:	6039      	str	r1, [r7, #0]
 8000726:	687b      	ldr	r3, [r7, #4]
 8000728:	685b      	ldr	r3, [r3, #4]
 800072a:	4a05      	ldr	r2, [pc, #20]	; (8000740 <LL_USART_SetStopBitsLength+0x24>)
 800072c:	401a      	ands	r2, r3
 800072e:	683b      	ldr	r3, [r7, #0]
 8000730:	431a      	orrs	r2, r3
 8000732:	687b      	ldr	r3, [r7, #4]
 8000734:	605a      	str	r2, [r3, #4]
 8000736:	46c0      	nop			; (mov r8, r8)
 8000738:	46bd      	mov	sp, r7
 800073a:	b002      	add	sp, #8
 800073c:	bd80      	pop	{r7, pc}
 800073e:	46c0      	nop			; (mov r8, r8)
 8000740:	ffffcfff 	.word	0xffffcfff

08000744 <LL_USART_SetTransferBitOrder>:
 8000744:	b580      	push	{r7, lr}
 8000746:	b082      	sub	sp, #8
 8000748:	af00      	add	r7, sp, #0
 800074a:	6078      	str	r0, [r7, #4]
 800074c:	6039      	str	r1, [r7, #0]
 800074e:	687b      	ldr	r3, [r7, #4]
 8000750:	685b      	ldr	r3, [r3, #4]
 8000752:	4a05      	ldr	r2, [pc, #20]	; (8000768 <LL_USART_SetTransferBitOrder+0x24>)
 8000754:	401a      	ands	r2, r3
 8000756:	683b      	ldr	r3, [r7, #0]
 8000758:	431a      	orrs	r2, r3
 800075a:	687b      	ldr	r3, [r7, #4]
 800075c:	605a      	str	r2, [r3, #4]
 800075e:	46c0      	nop			; (mov r8, r8)
 8000760:	46bd      	mov	sp, r7
 8000762:	b002      	add	sp, #8
 8000764:	bd80      	pop	{r7, pc}
 8000766:	46c0      	nop			; (mov r8, r8)
 8000768:	fff7ffff 	.word	0xfff7ffff

0800076c <LL_USART_SetBaudRate>:
 800076c:	b5b0      	push	{r4, r5, r7, lr}
 800076e:	b084      	sub	sp, #16
 8000770:	af00      	add	r7, sp, #0
 8000772:	60f8      	str	r0, [r7, #12]
 8000774:	60b9      	str	r1, [r7, #8]
 8000776:	607a      	str	r2, [r7, #4]
 8000778:	603b      	str	r3, [r7, #0]
 800077a:	687a      	ldr	r2, [r7, #4]
 800077c:	2380      	movs	r3, #128	; 0x80
 800077e:	021b      	lsls	r3, r3, #8
 8000780:	429a      	cmp	r2, r3
 8000782:	d117      	bne.n	80007b4 <LL_USART_SetBaudRate+0x48>
 8000784:	68bb      	ldr	r3, [r7, #8]
 8000786:	005a      	lsls	r2, r3, #1
 8000788:	683b      	ldr	r3, [r7, #0]
 800078a:	085b      	lsrs	r3, r3, #1
 800078c:	18d3      	adds	r3, r2, r3
 800078e:	6839      	ldr	r1, [r7, #0]
 8000790:	0018      	movs	r0, r3
 8000792:	f7ff fcb9 	bl	8000108 <__udivsi3>
 8000796:	0003      	movs	r3, r0
 8000798:	b29b      	uxth	r3, r3
 800079a:	001d      	movs	r5, r3
 800079c:	4b0e      	ldr	r3, [pc, #56]	; (80007d8 <LL_USART_SetBaudRate+0x6c>)
 800079e:	402b      	ands	r3, r5
 80007a0:	001c      	movs	r4, r3
 80007a2:	086b      	lsrs	r3, r5, #1
 80007a4:	b29b      	uxth	r3, r3
 80007a6:	001a      	movs	r2, r3
 80007a8:	2307      	movs	r3, #7
 80007aa:	4013      	ands	r3, r2
 80007ac:	431c      	orrs	r4, r3
 80007ae:	68fb      	ldr	r3, [r7, #12]
 80007b0:	60dc      	str	r4, [r3, #12]
 80007b2:	e00c      	b.n	80007ce <LL_USART_SetBaudRate+0x62>
 80007b4:	683b      	ldr	r3, [r7, #0]
 80007b6:	085a      	lsrs	r2, r3, #1
 80007b8:	68bb      	ldr	r3, [r7, #8]
 80007ba:	18d3      	adds	r3, r2, r3
 80007bc:	6839      	ldr	r1, [r7, #0]
 80007be:	0018      	movs	r0, r3
 80007c0:	f7ff fca2 	bl	8000108 <__udivsi3>
 80007c4:	0003      	movs	r3, r0
 80007c6:	b29b      	uxth	r3, r3
 80007c8:	001a      	movs	r2, r3
 80007ca:	68fb      	ldr	r3, [r7, #12]
 80007cc:	60da      	str	r2, [r3, #12]
 80007ce:	46c0      	nop			; (mov r8, r8)
 80007d0:	46bd      	mov	sp, r7
 80007d2:	b004      	add	sp, #16
 80007d4:	bdb0      	pop	{r4, r5, r7, pc}
 80007d6:	46c0      	nop			; (mov r8, r8)
 80007d8:	0000fff0 	.word	0x0000fff0

080007dc <LL_USART_IsActiveFlag_IDLE>:
 80007dc:	b580      	push	{r7, lr}
 80007de:	b082      	sub	sp, #8
 80007e0:	af00      	add	r7, sp, #0
 80007e2:	6078      	str	r0, [r7, #4]
 80007e4:	687b      	ldr	r3, [r7, #4]
 80007e6:	69db      	ldr	r3, [r3, #28]
 80007e8:	2210      	movs	r2, #16
 80007ea:	4013      	ands	r3, r2
 80007ec:	3b10      	subs	r3, #16
 80007ee:	425a      	negs	r2, r3
 80007f0:	4153      	adcs	r3, r2
 80007f2:	b2db      	uxtb	r3, r3
 80007f4:	0018      	movs	r0, r3
 80007f6:	46bd      	mov	sp, r7
 80007f8:	b002      	add	sp, #8
 80007fa:	bd80      	pop	{r7, pc}

080007fc <LL_USART_IsActiveFlag_RXNE>:
 80007fc:	b580      	push	{r7, lr}
 80007fe:	b082      	sub	sp, #8
 8000800:	af00      	add	r7, sp, #0
 8000802:	6078      	str	r0, [r7, #4]
 8000804:	687b      	ldr	r3, [r7, #4]
 8000806:	69db      	ldr	r3, [r3, #28]
 8000808:	2220      	movs	r2, #32
 800080a:	4013      	ands	r3, r2
 800080c:	3b20      	subs	r3, #32
 800080e:	425a      	negs	r2, r3
 8000810:	4153      	adcs	r3, r2
 8000812:	b2db      	uxtb	r3, r3
 8000814:	0018      	movs	r0, r3
 8000816:	46bd      	mov	sp, r7
 8000818:	b002      	add	sp, #8
 800081a:	bd80      	pop	{r7, pc}

0800081c <LL_USART_IsActiveFlag_TXE>:
 800081c:	b580      	push	{r7, lr}
 800081e:	b082      	sub	sp, #8
 8000820:	af00      	add	r7, sp, #0
 8000822:	6078      	str	r0, [r7, #4]
 8000824:	687b      	ldr	r3, [r7, #4]
 8000826:	69db      	ldr	r3, [r3, #28]
 8000828:	2280      	movs	r2, #128	; 0x80
 800082a:	4013      	ands	r3, r2
 800082c:	3b80      	subs	r3, #128	; 0x80
 800082e:	425a      	negs	r2, r3
 8000830:	4153      	adcs	r3, r2
 8000832:	b2db      	uxtb	r3, r3
 8000834:	0018      	movs	r0, r3
 8000836:	46bd      	mov	sp, r7
 8000838:	b002      	add	sp, #8
 800083a:	bd80      	pop	{r7, pc}

0800083c <LL_USART_IsActiveFlag_TEACK>:
 800083c:	b580      	push	{r7, lr}
 800083e:	b082      	sub	sp, #8
 8000840:	af00      	add	r7, sp, #0
 8000842:	6078      	str	r0, [r7, #4]
 8000844:	687b      	ldr	r3, [r7, #4]
 8000846:	69da      	ldr	r2, [r3, #28]
 8000848:	2380      	movs	r3, #128	; 0x80
 800084a:	039b      	lsls	r3, r3, #14
 800084c:	4013      	ands	r3, r2
 800084e:	4a05      	ldr	r2, [pc, #20]	; (8000864 <LL_USART_IsActiveFlag_TEACK+0x28>)
 8000850:	4694      	mov	ip, r2
 8000852:	4463      	add	r3, ip
 8000854:	425a      	negs	r2, r3
 8000856:	4153      	adcs	r3, r2
 8000858:	b2db      	uxtb	r3, r3
 800085a:	0018      	movs	r0, r3
 800085c:	46bd      	mov	sp, r7
 800085e:	b002      	add	sp, #8
 8000860:	bd80      	pop	{r7, pc}
 8000862:	46c0      	nop			; (mov r8, r8)
 8000864:	ffe00000 	.word	0xffe00000

08000868 <LL_USART_IsActiveFlag_REACK>:
 8000868:	b580      	push	{r7, lr}
 800086a:	b082      	sub	sp, #8
 800086c:	af00      	add	r7, sp, #0
 800086e:	6078      	str	r0, [r7, #4]
 8000870:	687b      	ldr	r3, [r7, #4]
 8000872:	69da      	ldr	r2, [r3, #28]
 8000874:	2380      	movs	r3, #128	; 0x80
 8000876:	03db      	lsls	r3, r3, #15
 8000878:	4013      	ands	r3, r2
 800087a:	4a05      	ldr	r2, [pc, #20]	; (8000890 <LL_USART_IsActiveFlag_REACK+0x28>)
 800087c:	4694      	mov	ip, r2
 800087e:	4463      	add	r3, ip
 8000880:	425a      	negs	r2, r3
 8000882:	4153      	adcs	r3, r2
 8000884:	b2db      	uxtb	r3, r3
 8000886:	0018      	movs	r0, r3
 8000888:	46bd      	mov	sp, r7
 800088a:	b002      	add	sp, #8
 800088c:	bd80      	pop	{r7, pc}
 800088e:	46c0      	nop			; (mov r8, r8)
 8000890:	ffc00000 	.word	0xffc00000

08000894 <LL_USART_ClearFlag_IDLE>:
 8000894:	b580      	push	{r7, lr}
 8000896:	b082      	sub	sp, #8
 8000898:	af00      	add	r7, sp, #0
 800089a:	6078      	str	r0, [r7, #4]
 800089c:	687b      	ldr	r3, [r7, #4]
 800089e:	2210      	movs	r2, #16
 80008a0:	621a      	str	r2, [r3, #32]
 80008a2:	46c0      	nop			; (mov r8, r8)
 80008a4:	46bd      	mov	sp, r7
 80008a6:	b002      	add	sp, #8
 80008a8:	bd80      	pop	{r7, pc}

080008aa <LL_USART_EnableIT_IDLE>:
 80008aa:	b580      	push	{r7, lr}
 80008ac:	b082      	sub	sp, #8
 80008ae:	af00      	add	r7, sp, #0
 80008b0:	6078      	str	r0, [r7, #4]
 80008b2:	687b      	ldr	r3, [r7, #4]
 80008b4:	681b      	ldr	r3, [r3, #0]
 80008b6:	2210      	movs	r2, #16
 80008b8:	431a      	orrs	r2, r3
 80008ba:	687b      	ldr	r3, [r7, #4]
 80008bc:	601a      	str	r2, [r3, #0]
 80008be:	46c0      	nop			; (mov r8, r8)
 80008c0:	46bd      	mov	sp, r7
 80008c2:	b002      	add	sp, #8
 80008c4:	bd80      	pop	{r7, pc}

080008c6 <LL_USART_EnableIT_RXNE>:
 80008c6:	b580      	push	{r7, lr}
 80008c8:	b082      	sub	sp, #8
 80008ca:	af00      	add	r7, sp, #0
 80008cc:	6078      	str	r0, [r7, #4]
 80008ce:	687b      	ldr	r3, [r7, #4]
 80008d0:	681b      	ldr	r3, [r3, #0]
 80008d2:	2220      	movs	r2, #32
 80008d4:	431a      	orrs	r2, r3
 80008d6:	687b      	ldr	r3, [r7, #4]
 80008d8:	601a      	str	r2, [r3, #0]
 80008da:	46c0      	nop			; (mov r8, r8)
 80008dc:	46bd      	mov	sp, r7
 80008de:	b002      	add	sp, #8
 80008e0:	bd80      	pop	{r7, pc}

080008e2 <LL_USART_ReceiveData8>:
 80008e2:	b580      	push	{r7, lr}
 80008e4:	b082      	sub	sp, #8
 80008e6:	af00      	add	r7, sp, #0
 80008e8:	6078      	str	r0, [r7, #4]
 80008ea:	687b      	ldr	r3, [r7, #4]
 80008ec:	8c9b      	ldrh	r3, [r3, #36]	; 0x24
 80008ee:	b29b      	uxth	r3, r3
 80008f0:	b2db      	uxtb	r3, r3
 80008f2:	0018      	movs	r0, r3
 80008f4:	46bd      	mov	sp, r7
 80008f6:	b002      	add	sp, #8
 80008f8:	bd80      	pop	{r7, pc}
	...

080008fc <LL_InitTick>:
 80008fc:	b580      	push	{r7, lr}
 80008fe:	b082      	sub	sp, #8
 8000900:	af00      	add	r7, sp, #0
 8000902:	6078      	str	r0, [r7, #4]
 8000904:	6039      	str	r1, [r7, #0]
 8000906:	6839      	ldr	r1, [r7, #0]
 8000908:	6878      	ldr	r0, [r7, #4]
 800090a:	f7ff fbfd 	bl	8000108 <__udivsi3>
 800090e:	0003      	movs	r3, r0
 8000910:	001a      	movs	r2, r3
 8000912:	4b06      	ldr	r3, [pc, #24]	; (800092c <LL_InitTick+0x30>)
 8000914:	3a01      	subs	r2, #1
 8000916:	605a      	str	r2, [r3, #4]
 8000918:	4b04      	ldr	r3, [pc, #16]	; (800092c <LL_InitTick+0x30>)
 800091a:	2200      	movs	r2, #0
 800091c:	609a      	str	r2, [r3, #8]
 800091e:	4b03      	ldr	r3, [pc, #12]	; (800092c <LL_InitTick+0x30>)
 8000920:	2205      	movs	r2, #5
 8000922:	601a      	str	r2, [r3, #0]
 8000924:	46c0      	nop			; (mov r8, r8)
 8000926:	46bd      	mov	sp, r7
 8000928:	b002      	add	sp, #8
 800092a:	bd80      	pop	{r7, pc}
 800092c:	e000e010 	.word	0xe000e010

08000930 <LL_SYSTICK_EnableIT>:
 8000930:	b580      	push	{r7, lr}
 8000932:	af00      	add	r7, sp, #0
 8000934:	4b04      	ldr	r3, [pc, #16]	; (8000948 <LL_SYSTICK_EnableIT+0x18>)
 8000936:	681a      	ldr	r2, [r3, #0]
 8000938:	4b03      	ldr	r3, [pc, #12]	; (8000948 <LL_SYSTICK_EnableIT+0x18>)
 800093a:	2102      	movs	r1, #2
 800093c:	430a      	orrs	r2, r1
 800093e:	601a      	str	r2, [r3, #0]
 8000940:	46c0      	nop			; (mov r8, r8)
 8000942:	46bd      	mov	sp, r7
 8000944:	bd80      	pop	{r7, pc}
 8000946:	46c0      	nop			; (mov r8, r8)
 8000948:	e000e010 	.word	0xe000e010

0800094c <mask_indicator>:
 800094c:	b580      	push	{r7, lr}
 800094e:	b082      	sub	sp, #8
 8000950:	af00      	add	r7, sp, #0
 8000952:	6078      	str	r0, [r7, #4]
 8000954:	687b      	ldr	r3, [r7, #4]
 8000956:	09db      	lsrs	r3, r3, #7
 8000958:	2201      	movs	r2, #1
 800095a:	4013      	ands	r3, r2
 800095c:	01da      	lsls	r2, r3, #7
 800095e:	687b      	ldr	r3, [r7, #4]
 8000960:	099b      	lsrs	r3, r3, #6
 8000962:	2101      	movs	r1, #1
 8000964:	400b      	ands	r3, r1
 8000966:	019b      	lsls	r3, r3, #6
 8000968:	431a      	orrs	r2, r3
 800096a:	687b      	ldr	r3, [r7, #4]
 800096c:	095b      	lsrs	r3, r3, #5
 800096e:	2101      	movs	r1, #1
 8000970:	400b      	ands	r3, r1
 8000972:	015b      	lsls	r3, r3, #5
 8000974:	431a      	orrs	r2, r3
 8000976:	687b      	ldr	r3, [r7, #4]
 8000978:	091b      	lsrs	r3, r3, #4
 800097a:	2101      	movs	r1, #1
 800097c:	400b      	ands	r3, r1
 800097e:	011b      	lsls	r3, r3, #4
 8000980:	431a      	orrs	r2, r3
 8000982:	687b      	ldr	r3, [r7, #4]
 8000984:	08db      	lsrs	r3, r3, #3
 8000986:	2101      	movs	r1, #1
 8000988:	400b      	ands	r3, r1
 800098a:	00db      	lsls	r3, r3, #3
 800098c:	431a      	orrs	r2, r3
 800098e:	687b      	ldr	r3, [r7, #4]
 8000990:	089b      	lsrs	r3, r3, #2
 8000992:	2101      	movs	r1, #1
 8000994:	400b      	ands	r3, r1
 8000996:	009b      	lsls	r3, r3, #2
 8000998:	431a      	orrs	r2, r3
 800099a:	687b      	ldr	r3, [r7, #4]
 800099c:	085b      	lsrs	r3, r3, #1
 800099e:	2101      	movs	r1, #1
 80009a0:	400b      	ands	r3, r1
 80009a2:	005b      	lsls	r3, r3, #1
 80009a4:	431a      	orrs	r2, r3
 80009a6:	687b      	ldr	r3, [r7, #4]
 80009a8:	2101      	movs	r1, #1
 80009aa:	400b      	ands	r3, r1
 80009ac:	4313      	orrs	r3, r2
 80009ae:	0018      	movs	r0, r3
 80009b0:	46bd      	mov	sp, r7
 80009b2:	b002      	add	sp, #8
 80009b4:	bd80      	pop	{r7, pc}
	...

080009b8 <rcc_config>:
 80009b8:	b580      	push	{r7, lr}
 80009ba:	af00      	add	r7, sp, #0
 80009bc:	2001      	movs	r0, #1
 80009be:	f7ff fda7 	bl	8000510 <LL_FLASH_SetLatency>
 80009c2:	f7ff fcdb 	bl	800037c <LL_RCC_HSI_Enable>
 80009c6:	46c0      	nop			; (mov r8, r8)
 80009c8:	f7ff fce6 	bl	8000398 <LL_RCC_HSI_IsReady>
 80009cc:	0003      	movs	r3, r0
 80009ce:	2b01      	cmp	r3, #1
 80009d0:	d1fa      	bne.n	80009c8 <rcc_config+0x10>
 80009d2:	23a0      	movs	r3, #160	; 0xa0
 80009d4:	039b      	lsls	r3, r3, #14
 80009d6:	0019      	movs	r1, r3
 80009d8:	2000      	movs	r0, #0
 80009da:	f7ff fd73 	bl	80004c4 <LL_RCC_PLL_ConfigDomain_SYS>
 80009de:	f7ff fd4f 	bl	8000480 <LL_RCC_PLL_Enable>
 80009e2:	46c0      	nop			; (mov r8, r8)
 80009e4:	f7ff fd5a 	bl	800049c <LL_RCC_PLL_IsReady>
 80009e8:	0003      	movs	r3, r0
 80009ea:	2b01      	cmp	r3, #1
 80009ec:	d1fa      	bne.n	80009e4 <rcc_config+0x2c>
 80009ee:	2000      	movs	r0, #0
 80009f0:	f7ff fd02 	bl	80003f8 <LL_RCC_SetAHBPrescaler>
 80009f4:	2002      	movs	r0, #2
 80009f6:	f7ff fcdf 	bl	80003b8 <LL_RCC_SetSysClkSource>
 80009fa:	46c0      	nop			; (mov r8, r8)
 80009fc:	f7ff fcf0 	bl	80003e0 <LL_RCC_GetSysClkSource>
 8000a00:	0003      	movs	r3, r0
 8000a02:	2b08      	cmp	r3, #8
 8000a04:	d1fa      	bne.n	80009fc <rcc_config+0x44>
 8000a06:	2000      	movs	r0, #0
 8000a08:	f7ff fd0a 	bl	8000420 <LL_RCC_SetAPB1Prescaler>
 8000a0c:	4b02      	ldr	r3, [pc, #8]	; (8000a18 <rcc_config+0x60>)
 8000a0e:	4a03      	ldr	r2, [pc, #12]	; (8000a1c <rcc_config+0x64>)
 8000a10:	601a      	str	r2, [r3, #0]
 8000a12:	46c0      	nop			; (mov r8, r8)
 8000a14:	46bd      	mov	sp, r7
 8000a16:	bd80      	pop	{r7, pc}
 8000a18:	20000000 	.word	0x20000000
 8000a1c:	02dc6c00 	.word	0x02dc6c00

08000a20 <gpio_config>:
 8000a20:	b580      	push	{r7, lr}
 8000a22:	af00      	add	r7, sp, #0
 8000a24:	2380      	movs	r3, #128	; 0x80
 8000a26:	031b      	lsls	r3, r3, #12
 8000a28:	0018      	movs	r0, r3
 8000a2a:	f7ff fd85 	bl	8000538 <LL_AHB1_GRP1_EnableClock>
 8000a2e:	2380      	movs	r3, #128	; 0x80
 8000a30:	005b      	lsls	r3, r3, #1
 8000a32:	4834      	ldr	r0, [pc, #208]	; (8000b04 <gpio_config+0xe4>)
 8000a34:	2201      	movs	r2, #1
 8000a36:	0019      	movs	r1, r3
 8000a38:	f7ff fdaa 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a3c:	2380      	movs	r3, #128	; 0x80
 8000a3e:	009b      	lsls	r3, r3, #2
 8000a40:	4830      	ldr	r0, [pc, #192]	; (8000b04 <gpio_config+0xe4>)
 8000a42:	2201      	movs	r2, #1
 8000a44:	0019      	movs	r1, r3
 8000a46:	f7ff fda3 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a4a:	4b2e      	ldr	r3, [pc, #184]	; (8000b04 <gpio_config+0xe4>)
 8000a4c:	2201      	movs	r2, #1
 8000a4e:	2101      	movs	r1, #1
 8000a50:	0018      	movs	r0, r3
 8000a52:	f7ff fd9d 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a56:	4b2b      	ldr	r3, [pc, #172]	; (8000b04 <gpio_config+0xe4>)
 8000a58:	2201      	movs	r2, #1
 8000a5a:	2102      	movs	r1, #2
 8000a5c:	0018      	movs	r0, r3
 8000a5e:	f7ff fd97 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a62:	4b28      	ldr	r3, [pc, #160]	; (8000b04 <gpio_config+0xe4>)
 8000a64:	2201      	movs	r2, #1
 8000a66:	2104      	movs	r1, #4
 8000a68:	0018      	movs	r0, r3
 8000a6a:	f7ff fd91 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a6e:	4b25      	ldr	r3, [pc, #148]	; (8000b04 <gpio_config+0xe4>)
 8000a70:	2201      	movs	r2, #1
 8000a72:	2108      	movs	r1, #8
 8000a74:	0018      	movs	r0, r3
 8000a76:	f7ff fd8b 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a7a:	2380      	movs	r3, #128	; 0x80
 8000a7c:	029b      	lsls	r3, r3, #10
 8000a7e:	0018      	movs	r0, r3
 8000a80:	f7ff fd5a 	bl	8000538 <LL_AHB1_GRP1_EnableClock>
 8000a84:	2390      	movs	r3, #144	; 0x90
 8000a86:	05db      	lsls	r3, r3, #23
 8000a88:	2200      	movs	r2, #0
 8000a8a:	2101      	movs	r1, #1
 8000a8c:	0018      	movs	r0, r3
 8000a8e:	f7ff fd7f 	bl	8000590 <LL_GPIO_SetPinMode>
 8000a92:	2380      	movs	r3, #128	; 0x80
 8000a94:	02db      	lsls	r3, r3, #11
 8000a96:	0018      	movs	r0, r3
 8000a98:	f7ff fd4e 	bl	8000538 <LL_AHB1_GRP1_EnableClock>
 8000a9c:	4b1a      	ldr	r3, [pc, #104]	; (8000b08 <gpio_config+0xe8>)
 8000a9e:	2201      	movs	r2, #1
 8000aa0:	2101      	movs	r1, #1
 8000aa2:	0018      	movs	r0, r3
 8000aa4:	f7ff fd74 	bl	8000590 <LL_GPIO_SetPinMode>
 8000aa8:	4b17      	ldr	r3, [pc, #92]	; (8000b08 <gpio_config+0xe8>)
 8000aaa:	2201      	movs	r2, #1
 8000aac:	2102      	movs	r1, #2
 8000aae:	0018      	movs	r0, r3
 8000ab0:	f7ff fd6e 	bl	8000590 <LL_GPIO_SetPinMode>
 8000ab4:	4b14      	ldr	r3, [pc, #80]	; (8000b08 <gpio_config+0xe8>)
 8000ab6:	2201      	movs	r2, #1
 8000ab8:	2104      	movs	r1, #4
 8000aba:	0018      	movs	r0, r3
 8000abc:	f7ff fd68 	bl	8000590 <LL_GPIO_SetPinMode>
 8000ac0:	4b11      	ldr	r3, [pc, #68]	; (8000b08 <gpio_config+0xe8>)
 8000ac2:	2201      	movs	r2, #1
 8000ac4:	2108      	movs	r1, #8
 8000ac6:	0018      	movs	r0, r3
 8000ac8:	f7ff fd62 	bl	8000590 <LL_GPIO_SetPinMode>
 8000acc:	4b0e      	ldr	r3, [pc, #56]	; (8000b08 <gpio_config+0xe8>)
 8000ace:	2201      	movs	r2, #1
 8000ad0:	2110      	movs	r1, #16
 8000ad2:	0018      	movs	r0, r3
 8000ad4:	f7ff fd5c 	bl	8000590 <LL_GPIO_SetPinMode>
 8000ad8:	4b0b      	ldr	r3, [pc, #44]	; (8000b08 <gpio_config+0xe8>)
 8000ada:	2201      	movs	r2, #1
 8000adc:	2120      	movs	r1, #32
 8000ade:	0018      	movs	r0, r3
 8000ae0:	f7ff fd56 	bl	8000590 <LL_GPIO_SetPinMode>
 8000ae4:	4b08      	ldr	r3, [pc, #32]	; (8000b08 <gpio_config+0xe8>)
 8000ae6:	2201      	movs	r2, #1
 8000ae8:	2140      	movs	r1, #64	; 0x40
 8000aea:	0018      	movs	r0, r3
 8000aec:	f7ff fd50 	bl	8000590 <LL_GPIO_SetPinMode>
 8000af0:	4b05      	ldr	r3, [pc, #20]	; (8000b08 <gpio_config+0xe8>)
 8000af2:	2201      	movs	r2, #1
 8000af4:	2180      	movs	r1, #128	; 0x80
 8000af6:	0018      	movs	r0, r3
 8000af8:	f7ff fd4a 	bl	8000590 <LL_GPIO_SetPinMode>
 8000afc:	46c0      	nop			; (mov r8, r8)
 8000afe:	46bd      	mov	sp, r7
 8000b00:	bd80      	pop	{r7, pc}
 8000b02:	46c0      	nop			; (mov r8, r8)
 8000b04:	48000800 	.word	0x48000800
 8000b08:	48000400 	.word	0x48000400

08000b0c <usart_config>:
 8000b0c:	b580      	push	{r7, lr}
 8000b0e:	af00      	add	r7, sp, #0
 8000b10:	2380      	movs	r3, #128	; 0x80
 8000b12:	029b      	lsls	r3, r3, #10
 8000b14:	0018      	movs	r0, r3
 8000b16:	f7ff fd0f 	bl	8000538 <LL_AHB1_GRP1_EnableClock>
 8000b1a:	2380      	movs	r3, #128	; 0x80
 8000b1c:	0099      	lsls	r1, r3, #2
 8000b1e:	2390      	movs	r3, #144	; 0x90
 8000b20:	05db      	lsls	r3, r3, #23
 8000b22:	2202      	movs	r2, #2
 8000b24:	0018      	movs	r0, r3
 8000b26:	f7ff fd33 	bl	8000590 <LL_GPIO_SetPinMode>
 8000b2a:	2380      	movs	r3, #128	; 0x80
 8000b2c:	0099      	lsls	r1, r3, #2
 8000b2e:	2390      	movs	r3, #144	; 0x90
 8000b30:	05db      	lsls	r3, r3, #23
 8000b32:	2201      	movs	r2, #1
 8000b34:	0018      	movs	r0, r3
 8000b36:	f7ff fd63 	bl	8000600 <LL_GPIO_SetAFPin_8_15>
 8000b3a:	2380      	movs	r3, #128	; 0x80
 8000b3c:	0099      	lsls	r1, r3, #2
 8000b3e:	2390      	movs	r3, #144	; 0x90
 8000b40:	05db      	lsls	r3, r3, #23
 8000b42:	2203      	movs	r2, #3
 8000b44:	0018      	movs	r0, r3
 8000b46:	f7ff fd3f 	bl	80005c8 <LL_GPIO_SetPinSpeed>
 8000b4a:	2380      	movs	r3, #128	; 0x80
 8000b4c:	00d9      	lsls	r1, r3, #3
 8000b4e:	2390      	movs	r3, #144	; 0x90
 8000b50:	05db      	lsls	r3, r3, #23
 8000b52:	2202      	movs	r2, #2
 8000b54:	0018      	movs	r0, r3
 8000b56:	f7ff fd1b 	bl	8000590 <LL_GPIO_SetPinMode>
 8000b5a:	2380      	movs	r3, #128	; 0x80
 8000b5c:	00d9      	lsls	r1, r3, #3
 8000b5e:	2390      	movs	r3, #144	; 0x90
 8000b60:	05db      	lsls	r3, r3, #23
 8000b62:	2201      	movs	r2, #1
 8000b64:	0018      	movs	r0, r3
 8000b66:	f7ff fd4b 	bl	8000600 <LL_GPIO_SetAFPin_8_15>
 8000b6a:	2380      	movs	r3, #128	; 0x80
 8000b6c:	00d9      	lsls	r1, r3, #3
 8000b6e:	2390      	movs	r3, #144	; 0x90
 8000b70:	05db      	lsls	r3, r3, #23
 8000b72:	2203      	movs	r2, #3
 8000b74:	0018      	movs	r0, r3
 8000b76:	f7ff fd27 	bl	80005c8 <LL_GPIO_SetPinSpeed>
 8000b7a:	2380      	movs	r3, #128	; 0x80
 8000b7c:	01db      	lsls	r3, r3, #7
 8000b7e:	0018      	movs	r0, r3
 8000b80:	f7ff fcf0 	bl	8000564 <LL_APB1_GRP2_EnableClock>
 8000b84:	2000      	movs	r0, #0
 8000b86:	f7ff fc61 	bl	800044c <LL_RCC_SetUSARTClockSource>
 8000b8a:	4b22      	ldr	r3, [pc, #136]	; (8000c14 <usart_config+0x108>)
 8000b8c:	210c      	movs	r1, #12
 8000b8e:	0018      	movs	r0, r3
 8000b90:	f7ff fd89 	bl	80006a6 <LL_USART_SetTransferDirection>
 8000b94:	4b1f      	ldr	r3, [pc, #124]	; (8000c14 <usart_config+0x108>)
 8000b96:	2100      	movs	r1, #0
 8000b98:	0018      	movs	r0, r3
 8000b9a:	f7ff fd97 	bl	80006cc <LL_USART_SetParity>
 8000b9e:	4b1d      	ldr	r3, [pc, #116]	; (8000c14 <usart_config+0x108>)
 8000ba0:	2100      	movs	r1, #0
 8000ba2:	0018      	movs	r0, r3
 8000ba4:	f7ff fda6 	bl	80006f4 <LL_USART_SetDataWidth>
 8000ba8:	4b1a      	ldr	r3, [pc, #104]	; (8000c14 <usart_config+0x108>)
 8000baa:	2100      	movs	r1, #0
 8000bac:	0018      	movs	r0, r3
 8000bae:	f7ff fdb5 	bl	800071c <LL_USART_SetStopBitsLength>
 8000bb2:	4b18      	ldr	r3, [pc, #96]	; (8000c14 <usart_config+0x108>)
 8000bb4:	2100      	movs	r1, #0
 8000bb6:	0018      	movs	r0, r3
 8000bb8:	f7ff fdc4 	bl	8000744 <LL_USART_SetTransferBitOrder>
 8000bbc:	4b16      	ldr	r3, [pc, #88]	; (8000c18 <usart_config+0x10c>)
 8000bbe:	6819      	ldr	r1, [r3, #0]
 8000bc0:	23e1      	movs	r3, #225	; 0xe1
 8000bc2:	025b      	lsls	r3, r3, #9
 8000bc4:	4813      	ldr	r0, [pc, #76]	; (8000c14 <usart_config+0x108>)
 8000bc6:	2200      	movs	r2, #0
 8000bc8:	f7ff fdd0 	bl	800076c <LL_USART_SetBaudRate>
 8000bcc:	4b11      	ldr	r3, [pc, #68]	; (8000c14 <usart_config+0x108>)
 8000bce:	0018      	movs	r0, r3
 8000bd0:	f7ff fe6b 	bl	80008aa <LL_USART_EnableIT_IDLE>
 8000bd4:	4b0f      	ldr	r3, [pc, #60]	; (8000c14 <usart_config+0x108>)
 8000bd6:	0018      	movs	r0, r3
 8000bd8:	f7ff fe75 	bl	80008c6 <LL_USART_EnableIT_RXNE>
 8000bdc:	4b0d      	ldr	r3, [pc, #52]	; (8000c14 <usart_config+0x108>)
 8000bde:	0018      	movs	r0, r3
 8000be0:	f7ff fd53 	bl	800068a <LL_USART_Enable>
 8000be4:	46c0      	nop			; (mov r8, r8)
 8000be6:	4b0b      	ldr	r3, [pc, #44]	; (8000c14 <usart_config+0x108>)
 8000be8:	0018      	movs	r0, r3
 8000bea:	f7ff fe27 	bl	800083c <LL_USART_IsActiveFlag_TEACK>
 8000bee:	1e03      	subs	r3, r0, #0
 8000bf0:	d0f9      	beq.n	8000be6 <usart_config+0xda>
 8000bf2:	4b08      	ldr	r3, [pc, #32]	; (8000c14 <usart_config+0x108>)
 8000bf4:	0018      	movs	r0, r3
 8000bf6:	f7ff fe37 	bl	8000868 <LL_USART_IsActiveFlag_REACK>
 8000bfa:	1e03      	subs	r3, r0, #0
 8000bfc:	d0f3      	beq.n	8000be6 <usart_config+0xda>
 8000bfe:	2100      	movs	r1, #0
 8000c00:	201b      	movs	r0, #27
 8000c02:	f7ff fb4d 	bl	80002a0 <NVIC_SetPriority>
 8000c06:	201b      	movs	r0, #27
 8000c08:	f7ff fb34 	bl	8000274 <NVIC_EnableIRQ>
 8000c0c:	46c0      	nop			; (mov r8, r8)
 8000c0e:	46bd      	mov	sp, r7
 8000c10:	bd80      	pop	{r7, pc}
 8000c12:	46c0      	nop			; (mov r8, r8)
 8000c14:	40013800 	.word	0x40013800
 8000c18:	20000000 	.word	0x20000000

08000c1c <dec_display>:
 8000c1c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c1e:	b089      	sub	sp, #36	; 0x24
 8000c20:	af00      	add	r7, sp, #0
 8000c22:	6078      	str	r0, [r7, #4]
 8000c24:	241e      	movs	r4, #30
 8000c26:	193b      	adds	r3, r7, r4
 8000c28:	2200      	movs	r2, #0
 8000c2a:	801a      	strh	r2, [r3, #0]
 8000c2c:	2508      	movs	r5, #8
 8000c2e:	197b      	adds	r3, r7, r5
 8000c30:	4a44      	ldr	r2, [pc, #272]	; (8000d44 <dec_display+0x128>)
 8000c32:	ca43      	ldmia	r2!, {r0, r1, r6}
 8000c34:	c343      	stmia	r3!, {r0, r1, r6}
 8000c36:	ca03      	ldmia	r2!, {r0, r1}
 8000c38:	c303      	stmia	r3!, {r0, r1}
 8000c3a:	200f      	movs	r0, #15
 8000c3c:	f7ff fe86 	bl	800094c <mask_indicator>
 8000c40:	0003      	movs	r3, r0
 8000c42:	4a41      	ldr	r2, [pc, #260]	; (8000d48 <dec_display+0x12c>)
 8000c44:	0019      	movs	r1, r3
 8000c46:	0010      	movs	r0, r2
 8000c48:	f7ff fd07 	bl	800065a <LL_GPIO_WriteOutputPort>
 8000c4c:	4b3f      	ldr	r3, [pc, #252]	; (8000d4c <dec_display+0x130>)
 8000c4e:	681b      	ldr	r3, [r3, #0]
 8000c50:	2201      	movs	r2, #1
 8000c52:	409a      	lsls	r2, r3
 8000c54:	0013      	movs	r3, r2
 8000c56:	0018      	movs	r0, r3
 8000c58:	f7ff fe78 	bl	800094c <mask_indicator>
 8000c5c:	0003      	movs	r3, r0
 8000c5e:	4a3a      	ldr	r2, [pc, #232]	; (8000d48 <dec_display+0x12c>)
 8000c60:	0019      	movs	r1, r3
 8000c62:	0010      	movs	r0, r2
 8000c64:	f7ff fd05 	bl	8000672 <LL_GPIO_ResetOutputPin>
 8000c68:	4b38      	ldr	r3, [pc, #224]	; (8000d4c <dec_display+0x130>)
 8000c6a:	681b      	ldr	r3, [r3, #0]
 8000c6c:	2b00      	cmp	r3, #0
 8000c6e:	d10b      	bne.n	8000c88 <dec_display+0x6c>
 8000c70:	687b      	ldr	r3, [r7, #4]
 8000c72:	210a      	movs	r1, #10
 8000c74:	0018      	movs	r0, r3
 8000c76:	f7ff facd 	bl	8000214 <__aeabi_uidivmod>
 8000c7a:	000b      	movs	r3, r1
 8000c7c:	0019      	movs	r1, r3
 8000c7e:	193b      	adds	r3, r7, r4
 8000c80:	197a      	adds	r2, r7, r5
 8000c82:	0049      	lsls	r1, r1, #1
 8000c84:	5a8a      	ldrh	r2, [r1, r2]
 8000c86:	801a      	strh	r2, [r3, #0]
 8000c88:	4b30      	ldr	r3, [pc, #192]	; (8000d4c <dec_display+0x130>)
 8000c8a:	681b      	ldr	r3, [r3, #0]
 8000c8c:	2b01      	cmp	r3, #1
 8000c8e:	d112      	bne.n	8000cb6 <dec_display+0x9a>
 8000c90:	687b      	ldr	r3, [r7, #4]
 8000c92:	210a      	movs	r1, #10
 8000c94:	0018      	movs	r0, r3
 8000c96:	f7ff fa37 	bl	8000108 <__udivsi3>
 8000c9a:	0003      	movs	r3, r0
 8000c9c:	210a      	movs	r1, #10
 8000c9e:	0018      	movs	r0, r3
 8000ca0:	f7ff fab8 	bl	8000214 <__aeabi_uidivmod>
 8000ca4:	000b      	movs	r3, r1
 8000ca6:	0019      	movs	r1, r3
 8000ca8:	231e      	movs	r3, #30
 8000caa:	18fb      	adds	r3, r7, r3
 8000cac:	2208      	movs	r2, #8
 8000cae:	18ba      	adds	r2, r7, r2
 8000cb0:	0049      	lsls	r1, r1, #1
 8000cb2:	5a8a      	ldrh	r2, [r1, r2]
 8000cb4:	801a      	strh	r2, [r3, #0]
 8000cb6:	4b25      	ldr	r3, [pc, #148]	; (8000d4c <dec_display+0x130>)
 8000cb8:	681b      	ldr	r3, [r3, #0]
 8000cba:	2b02      	cmp	r3, #2
 8000cbc:	d112      	bne.n	8000ce4 <dec_display+0xc8>
 8000cbe:	687b      	ldr	r3, [r7, #4]
 8000cc0:	2164      	movs	r1, #100	; 0x64
 8000cc2:	0018      	movs	r0, r3
 8000cc4:	f7ff fa20 	bl	8000108 <__udivsi3>
 8000cc8:	0003      	movs	r3, r0
 8000cca:	210a      	movs	r1, #10
 8000ccc:	0018      	movs	r0, r3
 8000cce:	f7ff faa1 	bl	8000214 <__aeabi_uidivmod>
 8000cd2:	000b      	movs	r3, r1
 8000cd4:	0019      	movs	r1, r3
 8000cd6:	231e      	movs	r3, #30
 8000cd8:	18fb      	adds	r3, r7, r3
 8000cda:	2208      	movs	r2, #8
 8000cdc:	18ba      	adds	r2, r7, r2
 8000cde:	0049      	lsls	r1, r1, #1
 8000ce0:	5a8a      	ldrh	r2, [r1, r2]
 8000ce2:	801a      	strh	r2, [r3, #0]
 8000ce4:	4b19      	ldr	r3, [pc, #100]	; (8000d4c <dec_display+0x130>)
 8000ce6:	681b      	ldr	r3, [r3, #0]
 8000ce8:	2b03      	cmp	r3, #3
 8000cea:	d113      	bne.n	8000d14 <dec_display+0xf8>
 8000cec:	687b      	ldr	r3, [r7, #4]
 8000cee:	22fa      	movs	r2, #250	; 0xfa
 8000cf0:	0091      	lsls	r1, r2, #2
 8000cf2:	0018      	movs	r0, r3
 8000cf4:	f7ff fa08 	bl	8000108 <__udivsi3>
 8000cf8:	0003      	movs	r3, r0
 8000cfa:	210a      	movs	r1, #10
 8000cfc:	0018      	movs	r0, r3
 8000cfe:	f7ff fa89 	bl	8000214 <__aeabi_uidivmod>
 8000d02:	000b      	movs	r3, r1
 8000d04:	0019      	movs	r1, r3
 8000d06:	231e      	movs	r3, #30
 8000d08:	18fb      	adds	r3, r7, r3
 8000d0a:	2208      	movs	r2, #8
 8000d0c:	18ba      	adds	r2, r7, r2
 8000d0e:	0049      	lsls	r1, r1, #1
 8000d10:	5a8a      	ldrh	r2, [r1, r2]
 8000d12:	801a      	strh	r2, [r3, #0]
 8000d14:	231e      	movs	r3, #30
 8000d16:	18fb      	adds	r3, r7, r3
 8000d18:	881b      	ldrh	r3, [r3, #0]
 8000d1a:	0018      	movs	r0, r3
 8000d1c:	f7ff fe16 	bl	800094c <mask_indicator>
 8000d20:	0003      	movs	r3, r0
 8000d22:	4a0b      	ldr	r2, [pc, #44]	; (8000d50 <dec_display+0x134>)
 8000d24:	0019      	movs	r1, r3
 8000d26:	0010      	movs	r0, r2
 8000d28:	f7ff fc97 	bl	800065a <LL_GPIO_WriteOutputPort>
 8000d2c:	4b07      	ldr	r3, [pc, #28]	; (8000d4c <dec_display+0x130>)
 8000d2e:	681b      	ldr	r3, [r3, #0]
 8000d30:	3301      	adds	r3, #1
 8000d32:	2203      	movs	r2, #3
 8000d34:	401a      	ands	r2, r3
 8000d36:	4b05      	ldr	r3, [pc, #20]	; (8000d4c <dec_display+0x130>)
 8000d38:	601a      	str	r2, [r3, #0]
 8000d3a:	46c0      	nop			; (mov r8, r8)
 8000d3c:	46bd      	mov	sp, r7
 8000d3e:	b009      	add	sp, #36	; 0x24
 8000d40:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000d42:	46c0      	nop			; (mov r8, r8)
 8000d44:	08001128 	.word	0x08001128
 8000d48:	48000800 	.word	0x48000800
 8000d4c:	20000460 	.word	0x20000460
 8000d50:	48000400 	.word	0x48000400

08000d54 <systick_config>:
 8000d54:	b580      	push	{r7, lr}
 8000d56:	af00      	add	r7, sp, #0
 8000d58:	23fa      	movs	r3, #250	; 0xfa
 8000d5a:	009b      	lsls	r3, r3, #2
 8000d5c:	4a07      	ldr	r2, [pc, #28]	; (8000d7c <systick_config+0x28>)
 8000d5e:	0019      	movs	r1, r3
 8000d60:	0010      	movs	r0, r2
 8000d62:	f7ff fdcb 	bl	80008fc <LL_InitTick>
 8000d66:	f7ff fde3 	bl	8000930 <LL_SYSTICK_EnableIT>
 8000d6a:	2301      	movs	r3, #1
 8000d6c:	425b      	negs	r3, r3
 8000d6e:	2101      	movs	r1, #1
 8000d70:	0018      	movs	r0, r3
 8000d72:	f7ff fa95 	bl	80002a0 <NVIC_SetPriority>
 8000d76:	46c0      	nop			; (mov r8, r8)
 8000d78:	46bd      	mov	sp, r7
 8000d7a:	bd80      	pop	{r7, pc}
 8000d7c:	02dc6c00 	.word	0x02dc6c00

08000d80 <SysTick_Handler>:
 8000d80:	b580      	push	{r7, lr}
 8000d82:	af00      	add	r7, sp, #0
 8000d84:	4b03      	ldr	r3, [pc, #12]	; (8000d94 <SysTick_Handler+0x14>)
 8000d86:	881b      	ldrh	r3, [r3, #0]
 8000d88:	0018      	movs	r0, r3
 8000d8a:	f7ff ff47 	bl	8000c1c <dec_display>
 8000d8e:	46c0      	nop			; (mov r8, r8)
 8000d90:	46bd      	mov	sp, r7
 8000d92:	bd80      	pop	{r7, pc}
 8000d94:	20000450 	.word	0x20000450

08000d98 <USART1_IRQHandler>:
 8000d98:	b5b0      	push	{r4, r5, r7, lr}
 8000d9a:	af00      	add	r7, sp, #0
 8000d9c:	4b18      	ldr	r3, [pc, #96]	; (8000e00 <USART1_IRQHandler+0x68>)
 8000d9e:	0018      	movs	r0, r3
 8000da0:	f7ff fd2c 	bl	80007fc <LL_USART_IsActiveFlag_RXNE>
 8000da4:	1e03      	subs	r3, r0, #0
 8000da6:	d017      	beq.n	8000dd8 <USART1_IRQHandler+0x40>
 8000da8:	4b16      	ldr	r3, [pc, #88]	; (8000e04 <USART1_IRQHandler+0x6c>)
 8000daa:	781b      	ldrb	r3, [r3, #0]
 8000dac:	001c      	movs	r4, r3
 8000dae:	4b14      	ldr	r3, [pc, #80]	; (8000e00 <USART1_IRQHandler+0x68>)
 8000db0:	0018      	movs	r0, r3
 8000db2:	f7ff fd96 	bl	80008e2 <LL_USART_ReceiveData8>
 8000db6:	0003      	movs	r3, r0
 8000db8:	001a      	movs	r2, r3
 8000dba:	4b13      	ldr	r3, [pc, #76]	; (8000e08 <USART1_IRQHandler+0x70>)
 8000dbc:	191b      	adds	r3, r3, r4
 8000dbe:	705a      	strb	r2, [r3, #1]
 8000dc0:	4b10      	ldr	r3, [pc, #64]	; (8000e04 <USART1_IRQHandler+0x6c>)
 8000dc2:	781b      	ldrb	r3, [r3, #0]
 8000dc4:	3301      	adds	r3, #1
 8000dc6:	b2da      	uxtb	r2, r3
 8000dc8:	4b0e      	ldr	r3, [pc, #56]	; (8000e04 <USART1_IRQHandler+0x6c>)
 8000dca:	701a      	strb	r2, [r3, #0]
 8000dcc:	4b0f      	ldr	r3, [pc, #60]	; (8000e0c <USART1_IRQHandler+0x74>)
 8000dce:	881b      	ldrh	r3, [r3, #0]
 8000dd0:	3301      	adds	r3, #1
 8000dd2:	b29a      	uxth	r2, r3
 8000dd4:	4b0d      	ldr	r3, [pc, #52]	; (8000e0c <USART1_IRQHandler+0x74>)
 8000dd6:	801a      	strh	r2, [r3, #0]
 8000dd8:	4b09      	ldr	r3, [pc, #36]	; (8000e00 <USART1_IRQHandler+0x68>)
 8000dda:	0018      	movs	r0, r3
 8000ddc:	f7ff fcfe 	bl	80007dc <LL_USART_IsActiveFlag_IDLE>
 8000de0:	1e03      	subs	r3, r0, #0
 8000de2:	d00a      	beq.n	8000dfa <USART1_IRQHandler+0x62>
 8000de4:	4b07      	ldr	r3, [pc, #28]	; (8000e04 <USART1_IRQHandler+0x6c>)
 8000de6:	2200      	movs	r2, #0
 8000de8:	701a      	strb	r2, [r3, #0]
 8000dea:	4b07      	ldr	r3, [pc, #28]	; (8000e08 <USART1_IRQHandler+0x70>)
 8000dec:	2201      	movs	r2, #1
 8000dee:	72da      	strb	r2, [r3, #11]
 8000df0:	4b03      	ldr	r3, [pc, #12]	; (8000e00 <USART1_IRQHandler+0x68>)
 8000df2:	0018      	movs	r0, r3
 8000df4:	f7ff fd4e 	bl	8000894 <LL_USART_ClearFlag_IDLE>
 8000df8:	46c0      	nop			; (mov r8, r8)
 8000dfa:	46c0      	nop			; (mov r8, r8)
 8000dfc:	46bd      	mov	sp, r7
 8000dfe:	bdb0      	pop	{r4, r5, r7, pc}
 8000e00:	40013800 	.word	0x40013800
 8000e04:	20000464 	.word	0x20000464
 8000e08:	20000454 	.word	0x20000454
 8000e0c:	20000452 	.word	0x20000452

08000e10 <manage_requests>:
 8000e10:	b580      	push	{r7, lr}
 8000e12:	b082      	sub	sp, #8
 8000e14:	af00      	add	r7, sp, #0
 8000e16:	1cbb      	adds	r3, r7, #2
 8000e18:	2200      	movs	r2, #0
 8000e1a:	801a      	strh	r2, [r3, #0]
 8000e1c:	1dbb      	adds	r3, r7, #6
 8000e1e:	2200      	movs	r2, #0
 8000e20:	801a      	strh	r2, [r3, #0]
 8000e22:	4b33      	ldr	r3, [pc, #204]	; (8000ef0 <manage_requests+0xe0>)
 8000e24:	7adb      	ldrb	r3, [r3, #11]
 8000e26:	2b00      	cmp	r3, #0
 8000e28:	d05e      	beq.n	8000ee8 <manage_requests+0xd8>
 8000e2a:	4b32      	ldr	r3, [pc, #200]	; (8000ef4 <manage_requests+0xe4>)
 8000e2c:	2200      	movs	r2, #0
 8000e2e:	801a      	strh	r2, [r3, #0]
 8000e30:	4b31      	ldr	r3, [pc, #196]	; (8000ef8 <manage_requests+0xe8>)
 8000e32:	881b      	ldrh	r3, [r3, #0]
 8000e34:	2b04      	cmp	r3, #4
 8000e36:	d906      	bls.n	8000e46 <manage_requests+0x36>
 8000e38:	4b2f      	ldr	r3, [pc, #188]	; (8000ef8 <manage_requests+0xe8>)
 8000e3a:	2204      	movs	r2, #4
 8000e3c:	801a      	strh	r2, [r3, #0]
 8000e3e:	1cbb      	adds	r3, r7, #2
 8000e40:	2200      	movs	r2, #0
 8000e42:	801a      	strh	r2, [r3, #0]
 8000e44:	e002      	b.n	8000e4c <manage_requests+0x3c>
 8000e46:	1cbb      	adds	r3, r7, #2
 8000e48:	2201      	movs	r2, #1
 8000e4a:	801a      	strh	r2, [r3, #0]
 8000e4c:	1d7b      	adds	r3, r7, #5
 8000e4e:	2200      	movs	r2, #0
 8000e50:	701a      	strb	r2, [r3, #0]
 8000e52:	e030      	b.n	8000eb6 <manage_requests+0xa6>
 8000e54:	1d7b      	adds	r3, r7, #5
 8000e56:	781b      	ldrb	r3, [r3, #0]
 8000e58:	4a25      	ldr	r2, [pc, #148]	; (8000ef0 <manage_requests+0xe0>)
 8000e5a:	18d3      	adds	r3, r2, r3
 8000e5c:	785b      	ldrb	r3, [r3, #1]
 8000e5e:	b29a      	uxth	r2, r3
 8000e60:	1dbb      	adds	r3, r7, #6
 8000e62:	3a30      	subs	r2, #48	; 0x30
 8000e64:	801a      	strh	r2, [r3, #0]
 8000e66:	1d3b      	adds	r3, r7, #4
 8000e68:	2201      	movs	r2, #1
 8000e6a:	701a      	strb	r2, [r3, #0]
 8000e6c:	e00c      	b.n	8000e88 <manage_requests+0x78>
 8000e6e:	1dba      	adds	r2, r7, #6
 8000e70:	1dbb      	adds	r3, r7, #6
 8000e72:	881b      	ldrh	r3, [r3, #0]
 8000e74:	1c19      	adds	r1, r3, #0
 8000e76:	0089      	lsls	r1, r1, #2
 8000e78:	18cb      	adds	r3, r1, r3
 8000e7a:	18db      	adds	r3, r3, r3
 8000e7c:	8013      	strh	r3, [r2, #0]
 8000e7e:	1d3b      	adds	r3, r7, #4
 8000e80:	781a      	ldrb	r2, [r3, #0]
 8000e82:	1d3b      	adds	r3, r7, #4
 8000e84:	3201      	adds	r2, #1
 8000e86:	701a      	strb	r2, [r3, #0]
 8000e88:	1d3b      	adds	r3, r7, #4
 8000e8a:	781a      	ldrb	r2, [r3, #0]
 8000e8c:	4b1a      	ldr	r3, [pc, #104]	; (8000ef8 <manage_requests+0xe8>)
 8000e8e:	881b      	ldrh	r3, [r3, #0]
 8000e90:	0019      	movs	r1, r3
 8000e92:	1d7b      	adds	r3, r7, #5
 8000e94:	781b      	ldrb	r3, [r3, #0]
 8000e96:	1acb      	subs	r3, r1, r3
 8000e98:	429a      	cmp	r2, r3
 8000e9a:	dbe8      	blt.n	8000e6e <manage_requests+0x5e>
 8000e9c:	4b15      	ldr	r3, [pc, #84]	; (8000ef4 <manage_requests+0xe4>)
 8000e9e:	881a      	ldrh	r2, [r3, #0]
 8000ea0:	1dbb      	adds	r3, r7, #6
 8000ea2:	881b      	ldrh	r3, [r3, #0]
 8000ea4:	18d3      	adds	r3, r2, r3
 8000ea6:	b29a      	uxth	r2, r3
 8000ea8:	4b12      	ldr	r3, [pc, #72]	; (8000ef4 <manage_requests+0xe4>)
 8000eaa:	801a      	strh	r2, [r3, #0]
 8000eac:	1d7b      	adds	r3, r7, #5
 8000eae:	781a      	ldrb	r2, [r3, #0]
 8000eb0:	1d7b      	adds	r3, r7, #5
 8000eb2:	3201      	adds	r2, #1
 8000eb4:	701a      	strb	r2, [r3, #0]
 8000eb6:	1d7b      	adds	r3, r7, #5
 8000eb8:	781b      	ldrb	r3, [r3, #0]
 8000eba:	b29a      	uxth	r2, r3
 8000ebc:	4b0e      	ldr	r3, [pc, #56]	; (8000ef8 <manage_requests+0xe8>)
 8000ebe:	881b      	ldrh	r3, [r3, #0]
 8000ec0:	429a      	cmp	r2, r3
 8000ec2:	d203      	bcs.n	8000ecc <manage_requests+0xbc>
 8000ec4:	1d7b      	adds	r3, r7, #5
 8000ec6:	781b      	ldrb	r3, [r3, #0]
 8000ec8:	2b03      	cmp	r3, #3
 8000eca:	d9c3      	bls.n	8000e54 <manage_requests+0x44>
 8000ecc:	4b0a      	ldr	r3, [pc, #40]	; (8000ef8 <manage_requests+0xe8>)
 8000ece:	2200      	movs	r2, #0
 8000ed0:	801a      	strh	r2, [r3, #0]
 8000ed2:	46c0      	nop			; (mov r8, r8)
 8000ed4:	4b09      	ldr	r3, [pc, #36]	; (8000efc <manage_requests+0xec>)
 8000ed6:	0018      	movs	r0, r3
 8000ed8:	f7ff fca0 	bl	800081c <LL_USART_IsActiveFlag_TXE>
 8000edc:	1e03      	subs	r3, r0, #0
 8000ede:	d0f9      	beq.n	8000ed4 <manage_requests+0xc4>
 8000ee0:	4b03      	ldr	r3, [pc, #12]	; (8000ef0 <manage_requests+0xe0>)
 8000ee2:	2200      	movs	r2, #0
 8000ee4:	72da      	strb	r2, [r3, #11]
 8000ee6:	e000      	b.n	8000eea <manage_requests+0xda>
 8000ee8:	46c0      	nop			; (mov r8, r8)
 8000eea:	46bd      	mov	sp, r7
 8000eec:	b002      	add	sp, #8
 8000eee:	bd80      	pop	{r7, pc}
 8000ef0:	20000454 	.word	0x20000454
 8000ef4:	20000450 	.word	0x20000450
 8000ef8:	20000452 	.word	0x20000452
 8000efc:	40013800 	.word	0x40013800

08000f00 <main>:
 8000f00:	b580      	push	{r7, lr}
 8000f02:	af00      	add	r7, sp, #0
 8000f04:	f7ff fd58 	bl	80009b8 <rcc_config>
 8000f08:	f7ff fd8a 	bl	8000a20 <gpio_config>
 8000f0c:	f7ff ff22 	bl	8000d54 <systick_config>
 8000f10:	f7ff fdfc 	bl	8000b0c <usart_config>
 8000f14:	f7ff ff7c 	bl	8000e10 <manage_requests>
 8000f18:	e7fc      	b.n	8000f14 <main+0x14>
	...

08000f1c <SystemInit>:
 8000f1c:	b580      	push	{r7, lr}
 8000f1e:	af00      	add	r7, sp, #0
 8000f20:	4b1a      	ldr	r3, [pc, #104]	; (8000f8c <SystemInit+0x70>)
 8000f22:	681a      	ldr	r2, [r3, #0]
 8000f24:	4b19      	ldr	r3, [pc, #100]	; (8000f8c <SystemInit+0x70>)
 8000f26:	2101      	movs	r1, #1
 8000f28:	430a      	orrs	r2, r1
 8000f2a:	601a      	str	r2, [r3, #0]
 8000f2c:	4b17      	ldr	r3, [pc, #92]	; (8000f8c <SystemInit+0x70>)
 8000f2e:	685a      	ldr	r2, [r3, #4]
 8000f30:	4b16      	ldr	r3, [pc, #88]	; (8000f8c <SystemInit+0x70>)
 8000f32:	4917      	ldr	r1, [pc, #92]	; (8000f90 <SystemInit+0x74>)
 8000f34:	400a      	ands	r2, r1
 8000f36:	605a      	str	r2, [r3, #4]
 8000f38:	4b14      	ldr	r3, [pc, #80]	; (8000f8c <SystemInit+0x70>)
 8000f3a:	681a      	ldr	r2, [r3, #0]
 8000f3c:	4b13      	ldr	r3, [pc, #76]	; (8000f8c <SystemInit+0x70>)
 8000f3e:	4915      	ldr	r1, [pc, #84]	; (8000f94 <SystemInit+0x78>)
 8000f40:	400a      	ands	r2, r1
 8000f42:	601a      	str	r2, [r3, #0]
 8000f44:	4b11      	ldr	r3, [pc, #68]	; (8000f8c <SystemInit+0x70>)
 8000f46:	681a      	ldr	r2, [r3, #0]
 8000f48:	4b10      	ldr	r3, [pc, #64]	; (8000f8c <SystemInit+0x70>)
 8000f4a:	4913      	ldr	r1, [pc, #76]	; (8000f98 <SystemInit+0x7c>)
 8000f4c:	400a      	ands	r2, r1
 8000f4e:	601a      	str	r2, [r3, #0]
 8000f50:	4b0e      	ldr	r3, [pc, #56]	; (8000f8c <SystemInit+0x70>)
 8000f52:	685a      	ldr	r2, [r3, #4]
 8000f54:	4b0d      	ldr	r3, [pc, #52]	; (8000f8c <SystemInit+0x70>)
 8000f56:	4911      	ldr	r1, [pc, #68]	; (8000f9c <SystemInit+0x80>)
 8000f58:	400a      	ands	r2, r1
 8000f5a:	605a      	str	r2, [r3, #4]
 8000f5c:	4b0b      	ldr	r3, [pc, #44]	; (8000f8c <SystemInit+0x70>)
 8000f5e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000f60:	4b0a      	ldr	r3, [pc, #40]	; (8000f8c <SystemInit+0x70>)
 8000f62:	210f      	movs	r1, #15
 8000f64:	438a      	bics	r2, r1
 8000f66:	62da      	str	r2, [r3, #44]	; 0x2c
 8000f68:	4b08      	ldr	r3, [pc, #32]	; (8000f8c <SystemInit+0x70>)
 8000f6a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000f6c:	4b07      	ldr	r3, [pc, #28]	; (8000f8c <SystemInit+0x70>)
 8000f6e:	490c      	ldr	r1, [pc, #48]	; (8000fa0 <SystemInit+0x84>)
 8000f70:	400a      	ands	r2, r1
 8000f72:	631a      	str	r2, [r3, #48]	; 0x30
 8000f74:	4b05      	ldr	r3, [pc, #20]	; (8000f8c <SystemInit+0x70>)
 8000f76:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000f78:	4b04      	ldr	r3, [pc, #16]	; (8000f8c <SystemInit+0x70>)
 8000f7a:	2101      	movs	r1, #1
 8000f7c:	438a      	bics	r2, r1
 8000f7e:	635a      	str	r2, [r3, #52]	; 0x34
 8000f80:	4b02      	ldr	r3, [pc, #8]	; (8000f8c <SystemInit+0x70>)
 8000f82:	2200      	movs	r2, #0
 8000f84:	609a      	str	r2, [r3, #8]
 8000f86:	46c0      	nop			; (mov r8, r8)
 8000f88:	46bd      	mov	sp, r7
 8000f8a:	bd80      	pop	{r7, pc}
 8000f8c:	40021000 	.word	0x40021000
 8000f90:	f8ffb80c 	.word	0xf8ffb80c
 8000f94:	fef6ffff 	.word	0xfef6ffff
 8000f98:	fffbffff 	.word	0xfffbffff
 8000f9c:	ffc0ffff 	.word	0xffc0ffff
 8000fa0:	fffffeac 	.word	0xfffffeac

08000fa4 <NMI_Handler>:
 8000fa4:	b580      	push	{r7, lr}
 8000fa6:	af00      	add	r7, sp, #0
 8000fa8:	46c0      	nop			; (mov r8, r8)
 8000faa:	46bd      	mov	sp, r7
 8000fac:	bd80      	pop	{r7, pc}

08000fae <HardFault_Handler>:
 8000fae:	b580      	push	{r7, lr}
 8000fb0:	af00      	add	r7, sp, #0
 8000fb2:	e7fe      	b.n	8000fb2 <HardFault_Handler+0x4>

08000fb4 <SVC_Handler>:
 8000fb4:	b580      	push	{r7, lr}
 8000fb6:	af00      	add	r7, sp, #0
 8000fb8:	46c0      	nop			; (mov r8, r8)
 8000fba:	46bd      	mov	sp, r7
 8000fbc:	bd80      	pop	{r7, pc}

08000fbe <PendSV_Handler>:
 8000fbe:	b580      	push	{r7, lr}
 8000fc0:	af00      	add	r7, sp, #0
 8000fc2:	46c0      	nop			; (mov r8, r8)
 8000fc4:	46bd      	mov	sp, r7
 8000fc6:	bd80      	pop	{r7, pc}

08000fc8 <__libc_init_array>:
 8000fc8:	b570      	push	{r4, r5, r6, lr}
 8000fca:	4d0c      	ldr	r5, [pc, #48]	; (8000ffc <__libc_init_array+0x34>)
 8000fcc:	4e0c      	ldr	r6, [pc, #48]	; (8001000 <__libc_init_array+0x38>)
 8000fce:	1b76      	subs	r6, r6, r5
 8000fd0:	10b6      	asrs	r6, r6, #2
 8000fd2:	d005      	beq.n	8000fe0 <__libc_init_array+0x18>
 8000fd4:	2400      	movs	r4, #0
 8000fd6:	cd08      	ldmia	r5!, {r3}
 8000fd8:	3401      	adds	r4, #1
 8000fda:	4798      	blx	r3
 8000fdc:	42a6      	cmp	r6, r4
 8000fde:	d1fa      	bne.n	8000fd6 <__libc_init_array+0xe>
 8000fe0:	f000 f896 	bl	8001110 <_init>
 8000fe4:	4d07      	ldr	r5, [pc, #28]	; (8001004 <__libc_init_array+0x3c>)
 8000fe6:	4e08      	ldr	r6, [pc, #32]	; (8001008 <__libc_init_array+0x40>)
 8000fe8:	1b76      	subs	r6, r6, r5
 8000fea:	10b6      	asrs	r6, r6, #2
 8000fec:	d005      	beq.n	8000ffa <__libc_init_array+0x32>
 8000fee:	2400      	movs	r4, #0
 8000ff0:	cd08      	ldmia	r5!, {r3}
 8000ff2:	3401      	adds	r4, #1
 8000ff4:	4798      	blx	r3
 8000ff6:	42a6      	cmp	r6, r4
 8000ff8:	d1fa      	bne.n	8000ff0 <__libc_init_array+0x28>
 8000ffa:	bd70      	pop	{r4, r5, r6, pc}
 8000ffc:	08001140 	.word	0x08001140
 8001000:	08001140 	.word	0x08001140
 8001004:	08001140 	.word	0x08001140
 8001008:	08001148 	.word	0x08001148

0800100c <register_fini>:
 800100c:	4b03      	ldr	r3, [pc, #12]	; (800101c <register_fini+0x10>)
 800100e:	b510      	push	{r4, lr}
 8001010:	2b00      	cmp	r3, #0
 8001012:	d002      	beq.n	800101a <register_fini+0xe>
 8001014:	4802      	ldr	r0, [pc, #8]	; (8001020 <register_fini+0x14>)
 8001016:	f000 f805 	bl	8001024 <atexit>
 800101a:	bd10      	pop	{r4, pc}
 800101c:	00000000 	.word	0x00000000
 8001020:	08001035 	.word	0x08001035

08001024 <atexit>:
 8001024:	b510      	push	{r4, lr}
 8001026:	0001      	movs	r1, r0
 8001028:	2300      	movs	r3, #0
 800102a:	2200      	movs	r2, #0
 800102c:	2000      	movs	r0, #0
 800102e:	f000 f819 	bl	8001064 <__register_exitproc>
 8001032:	bd10      	pop	{r4, pc}

08001034 <__libc_fini_array>:
 8001034:	b570      	push	{r4, r5, r6, lr}
 8001036:	4d07      	ldr	r5, [pc, #28]	; (8001054 <__libc_fini_array+0x20>)
 8001038:	4c07      	ldr	r4, [pc, #28]	; (8001058 <__libc_fini_array+0x24>)
 800103a:	1b64      	subs	r4, r4, r5
 800103c:	10a4      	asrs	r4, r4, #2
 800103e:	d005      	beq.n	800104c <__libc_fini_array+0x18>
 8001040:	3c01      	subs	r4, #1
 8001042:	00a3      	lsls	r3, r4, #2
 8001044:	58eb      	ldr	r3, [r5, r3]
 8001046:	4798      	blx	r3
 8001048:	2c00      	cmp	r4, #0
 800104a:	d1f9      	bne.n	8001040 <__libc_fini_array+0xc>
 800104c:	f000 f866 	bl	800111c <_fini>
 8001050:	bd70      	pop	{r4, r5, r6, pc}
 8001052:	46c0      	nop			; (mov r8, r8)
 8001054:	08001148 	.word	0x08001148
 8001058:	0800114c 	.word	0x0800114c

0800105c <__retarget_lock_acquire_recursive>:
 800105c:	4770      	bx	lr
 800105e:	46c0      	nop			; (mov r8, r8)

08001060 <__retarget_lock_release_recursive>:
 8001060:	4770      	bx	lr
 8001062:	46c0      	nop			; (mov r8, r8)

08001064 <__register_exitproc>:
 8001064:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001066:	46d6      	mov	lr, sl
 8001068:	464f      	mov	r7, r9
 800106a:	4646      	mov	r6, r8
 800106c:	b5c0      	push	{r6, r7, lr}
 800106e:	4f26      	ldr	r7, [pc, #152]	; (8001108 <__register_exitproc+0xa4>)
 8001070:	b082      	sub	sp, #8
 8001072:	0006      	movs	r6, r0
 8001074:	6838      	ldr	r0, [r7, #0]
 8001076:	4692      	mov	sl, r2
 8001078:	4698      	mov	r8, r3
 800107a:	4689      	mov	r9, r1
 800107c:	f7ff ffee 	bl	800105c <__retarget_lock_acquire_recursive>
 8001080:	4b22      	ldr	r3, [pc, #136]	; (800110c <__register_exitproc+0xa8>)
 8001082:	681b      	ldr	r3, [r3, #0]
 8001084:	9301      	str	r3, [sp, #4]
 8001086:	23a4      	movs	r3, #164	; 0xa4
 8001088:	9a01      	ldr	r2, [sp, #4]
 800108a:	005b      	lsls	r3, r3, #1
 800108c:	58d5      	ldr	r5, [r2, r3]
 800108e:	2d00      	cmp	r5, #0
 8001090:	d02e      	beq.n	80010f0 <__register_exitproc+0x8c>
 8001092:	686c      	ldr	r4, [r5, #4]
 8001094:	2c1f      	cmp	r4, #31
 8001096:	dc30      	bgt.n	80010fa <__register_exitproc+0x96>
 8001098:	2e00      	cmp	r6, #0
 800109a:	d10f      	bne.n	80010bc <__register_exitproc+0x58>
 800109c:	1c63      	adds	r3, r4, #1
 800109e:	606b      	str	r3, [r5, #4]
 80010a0:	464b      	mov	r3, r9
 80010a2:	3402      	adds	r4, #2
 80010a4:	00a4      	lsls	r4, r4, #2
 80010a6:	6838      	ldr	r0, [r7, #0]
 80010a8:	5163      	str	r3, [r4, r5]
 80010aa:	f7ff ffd9 	bl	8001060 <__retarget_lock_release_recursive>
 80010ae:	2000      	movs	r0, #0
 80010b0:	b002      	add	sp, #8
 80010b2:	bce0      	pop	{r5, r6, r7}
 80010b4:	46ba      	mov	sl, r7
 80010b6:	46b1      	mov	r9, r6
 80010b8:	46a8      	mov	r8, r5
 80010ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80010bc:	2288      	movs	r2, #136	; 0x88
 80010be:	4651      	mov	r1, sl
 80010c0:	0028      	movs	r0, r5
 80010c2:	00a3      	lsls	r3, r4, #2
 80010c4:	18eb      	adds	r3, r5, r3
 80010c6:	5099      	str	r1, [r3, r2]
 80010c8:	3a87      	subs	r2, #135	; 0x87
 80010ca:	40a2      	lsls	r2, r4
 80010cc:	3089      	adds	r0, #137	; 0x89
 80010ce:	30ff      	adds	r0, #255	; 0xff
 80010d0:	6801      	ldr	r1, [r0, #0]
 80010d2:	4311      	orrs	r1, r2
 80010d4:	6001      	str	r1, [r0, #0]
 80010d6:	2184      	movs	r1, #132	; 0x84
 80010d8:	4640      	mov	r0, r8
 80010da:	0049      	lsls	r1, r1, #1
 80010dc:	5058      	str	r0, [r3, r1]
 80010de:	2e02      	cmp	r6, #2
 80010e0:	d1dc      	bne.n	800109c <__register_exitproc+0x38>
 80010e2:	002b      	movs	r3, r5
 80010e4:	338d      	adds	r3, #141	; 0x8d
 80010e6:	33ff      	adds	r3, #255	; 0xff
 80010e8:	6819      	ldr	r1, [r3, #0]
 80010ea:	430a      	orrs	r2, r1
 80010ec:	601a      	str	r2, [r3, #0]
 80010ee:	e7d5      	b.n	800109c <__register_exitproc+0x38>
 80010f0:	0015      	movs	r5, r2
 80010f2:	354d      	adds	r5, #77	; 0x4d
 80010f4:	35ff      	adds	r5, #255	; 0xff
 80010f6:	50d5      	str	r5, [r2, r3]
 80010f8:	e7cb      	b.n	8001092 <__register_exitproc+0x2e>
 80010fa:	6838      	ldr	r0, [r7, #0]
 80010fc:	f7ff ffb0 	bl	8001060 <__retarget_lock_release_recursive>
 8001100:	2001      	movs	r0, #1
 8001102:	4240      	negs	r0, r0
 8001104:	e7d4      	b.n	80010b0 <__register_exitproc+0x4c>
 8001106:	46c0      	nop			; (mov r8, r8)
 8001108:	20000430 	.word	0x20000430
 800110c:	0800113c 	.word	0x0800113c

08001110 <_init>:
 8001110:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001112:	46c0      	nop			; (mov r8, r8)
 8001114:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001116:	bc08      	pop	{r3}
 8001118:	469e      	mov	lr, r3
 800111a:	4770      	bx	lr

0800111c <_fini>:
 800111c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800111e:	46c0      	nop			; (mov r8, r8)
 8001120:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001122:	bc08      	pop	{r3}
 8001124:	469e      	mov	lr, r3
 8001126:	4770      	bx	lr
