
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000af4  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000021c  08000bb4  08000bb4  00010bb4  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000dd0  08000dd0  00010dd0  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000dd8  08000dd8  00010dd8  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000ddc  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08001210  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08001210  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000c31  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003cd  00000000  00000000  0002108d  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        0000063c  00000000  00000000  0002145a  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000148  00000000  00000000  00021a96  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000118  00000000  00000000  00021bde  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000838  00000000  00000000  00021cf6  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        0000061a  00000000  00000000  0002252e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  00022b48  2**0  CONTENTS, READONLY
 17 .debug_frame      000005d8  00000000  00000000  00022c14  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000b9c 	.word	0x08000b9c

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
 8000104:	08000b9c 	.word	0x08000b9c

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
 800024a:	f000 fbad 	bl	80009a8 <SystemInit>
 800024e:	f000 fc01 	bl	8000a54 <__libc_init_array>
 8000252:	f000 fb7d 	bl	8000950 <main>

08000256 <LoopForever>:
 8000256:	e7fe      	b.n	8000256 <LoopForever>
 8000258:	20002000 	.word	0x20002000
 800025c:	20000000 	.word	0x20000000
 8000260:	20000434 	.word	0x20000434
 8000264:	08000ddc 	.word	0x08000ddc
 8000268:	20000434 	.word	0x20000434
 800026c:	20000454 	.word	0x20000454

08000270 <ADC1_COMP_IRQHandler>:
 8000270:	e7fe      	b.n	8000270 <ADC1_COMP_IRQHandler>
	...

08000274 <LL_RCC_HSI_Enable>:
 8000274:	b580      	push	{r7, lr}
 8000276:	af00      	add	r7, sp, #0
 8000278:	4b04      	ldr	r3, [pc, #16]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027a:	681a      	ldr	r2, [r3, #0]
 800027c:	4b03      	ldr	r3, [pc, #12]	; (800028c <LL_RCC_HSI_Enable+0x18>)
 800027e:	2101      	movs	r1, #1
 8000280:	430a      	orrs	r2, r1
 8000282:	601a      	str	r2, [r3, #0]
 8000284:	46c0      	nop			; (mov r8, r8)
 8000286:	46bd      	mov	sp, r7
 8000288:	bd80      	pop	{r7, pc}
 800028a:	46c0      	nop			; (mov r8, r8)
 800028c:	40021000 	.word	0x40021000

08000290 <LL_RCC_HSI_IsReady>:
 8000290:	b580      	push	{r7, lr}
 8000292:	af00      	add	r7, sp, #0
 8000294:	4b05      	ldr	r3, [pc, #20]	; (80002ac <LL_RCC_HSI_IsReady+0x1c>)
 8000296:	681b      	ldr	r3, [r3, #0]
 8000298:	2202      	movs	r2, #2
 800029a:	4013      	ands	r3, r2
 800029c:	3b02      	subs	r3, #2
 800029e:	425a      	negs	r2, r3
 80002a0:	4153      	adcs	r3, r2
 80002a2:	b2db      	uxtb	r3, r3
 80002a4:	0018      	movs	r0, r3
 80002a6:	46bd      	mov	sp, r7
 80002a8:	bd80      	pop	{r7, pc}
 80002aa:	46c0      	nop			; (mov r8, r8)
 80002ac:	40021000 	.word	0x40021000

080002b0 <LL_RCC_SetSysClkSource>:
 80002b0:	b580      	push	{r7, lr}
 80002b2:	b082      	sub	sp, #8
 80002b4:	af00      	add	r7, sp, #0
 80002b6:	6078      	str	r0, [r7, #4]
 80002b8:	4b06      	ldr	r3, [pc, #24]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002ba:	685b      	ldr	r3, [r3, #4]
 80002bc:	2203      	movs	r2, #3
 80002be:	4393      	bics	r3, r2
 80002c0:	0019      	movs	r1, r3
 80002c2:	4b04      	ldr	r3, [pc, #16]	; (80002d4 <LL_RCC_SetSysClkSource+0x24>)
 80002c4:	687a      	ldr	r2, [r7, #4]
 80002c6:	430a      	orrs	r2, r1
 80002c8:	605a      	str	r2, [r3, #4]
 80002ca:	46c0      	nop			; (mov r8, r8)
 80002cc:	46bd      	mov	sp, r7
 80002ce:	b002      	add	sp, #8
 80002d0:	bd80      	pop	{r7, pc}
 80002d2:	46c0      	nop			; (mov r8, r8)
 80002d4:	40021000 	.word	0x40021000

080002d8 <LL_RCC_GetSysClkSource>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b03      	ldr	r3, [pc, #12]	; (80002ec <LL_RCC_GetSysClkSource+0x14>)
 80002de:	685b      	ldr	r3, [r3, #4]
 80002e0:	220c      	movs	r2, #12
 80002e2:	4013      	ands	r3, r2
 80002e4:	0018      	movs	r0, r3
 80002e6:	46bd      	mov	sp, r7
 80002e8:	bd80      	pop	{r7, pc}
 80002ea:	46c0      	nop			; (mov r8, r8)
 80002ec:	40021000 	.word	0x40021000

080002f0 <LL_RCC_SetAHBPrescaler>:
 80002f0:	b580      	push	{r7, lr}
 80002f2:	b082      	sub	sp, #8
 80002f4:	af00      	add	r7, sp, #0
 80002f6:	6078      	str	r0, [r7, #4]
 80002f8:	4b06      	ldr	r3, [pc, #24]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 80002fa:	685b      	ldr	r3, [r3, #4]
 80002fc:	22f0      	movs	r2, #240	; 0xf0
 80002fe:	4393      	bics	r3, r2
 8000300:	0019      	movs	r1, r3
 8000302:	4b04      	ldr	r3, [pc, #16]	; (8000314 <LL_RCC_SetAHBPrescaler+0x24>)
 8000304:	687a      	ldr	r2, [r7, #4]
 8000306:	430a      	orrs	r2, r1
 8000308:	605a      	str	r2, [r3, #4]
 800030a:	46c0      	nop			; (mov r8, r8)
 800030c:	46bd      	mov	sp, r7
 800030e:	b002      	add	sp, #8
 8000310:	bd80      	pop	{r7, pc}
 8000312:	46c0      	nop			; (mov r8, r8)
 8000314:	40021000 	.word	0x40021000

08000318 <LL_RCC_SetAPB1Prescaler>:
 8000318:	b580      	push	{r7, lr}
 800031a:	b082      	sub	sp, #8
 800031c:	af00      	add	r7, sp, #0
 800031e:	6078      	str	r0, [r7, #4]
 8000320:	4b06      	ldr	r3, [pc, #24]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000322:	685b      	ldr	r3, [r3, #4]
 8000324:	4a06      	ldr	r2, [pc, #24]	; (8000340 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000326:	4013      	ands	r3, r2
 8000328:	0019      	movs	r1, r3
 800032a:	4b04      	ldr	r3, [pc, #16]	; (800033c <LL_RCC_SetAPB1Prescaler+0x24>)
 800032c:	687a      	ldr	r2, [r7, #4]
 800032e:	430a      	orrs	r2, r1
 8000330:	605a      	str	r2, [r3, #4]
 8000332:	46c0      	nop			; (mov r8, r8)
 8000334:	46bd      	mov	sp, r7
 8000336:	b002      	add	sp, #8
 8000338:	bd80      	pop	{r7, pc}
 800033a:	46c0      	nop			; (mov r8, r8)
 800033c:	40021000 	.word	0x40021000
 8000340:	fffff8ff 	.word	0xfffff8ff

08000344 <LL_RCC_PLL_Enable>:
 8000344:	b580      	push	{r7, lr}
 8000346:	af00      	add	r7, sp, #0
 8000348:	4b04      	ldr	r3, [pc, #16]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034a:	681a      	ldr	r2, [r3, #0]
 800034c:	4b03      	ldr	r3, [pc, #12]	; (800035c <LL_RCC_PLL_Enable+0x18>)
 800034e:	2180      	movs	r1, #128	; 0x80
 8000350:	0449      	lsls	r1, r1, #17
 8000352:	430a      	orrs	r2, r1
 8000354:	601a      	str	r2, [r3, #0]
 8000356:	46c0      	nop			; (mov r8, r8)
 8000358:	46bd      	mov	sp, r7
 800035a:	bd80      	pop	{r7, pc}
 800035c:	40021000 	.word	0x40021000

08000360 <LL_RCC_PLL_IsReady>:
 8000360:	b580      	push	{r7, lr}
 8000362:	af00      	add	r7, sp, #0
 8000364:	4b07      	ldr	r3, [pc, #28]	; (8000384 <LL_RCC_PLL_IsReady+0x24>)
 8000366:	681a      	ldr	r2, [r3, #0]
 8000368:	2380      	movs	r3, #128	; 0x80
 800036a:	049b      	lsls	r3, r3, #18
 800036c:	4013      	ands	r3, r2
 800036e:	22fe      	movs	r2, #254	; 0xfe
 8000370:	0612      	lsls	r2, r2, #24
 8000372:	4694      	mov	ip, r2
 8000374:	4463      	add	r3, ip
 8000376:	425a      	negs	r2, r3
 8000378:	4153      	adcs	r3, r2
 800037a:	b2db      	uxtb	r3, r3
 800037c:	0018      	movs	r0, r3
 800037e:	46bd      	mov	sp, r7
 8000380:	bd80      	pop	{r7, pc}
 8000382:	46c0      	nop			; (mov r8, r8)
 8000384:	40021000 	.word	0x40021000

08000388 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000388:	b580      	push	{r7, lr}
 800038a:	b082      	sub	sp, #8
 800038c:	af00      	add	r7, sp, #0
 800038e:	6078      	str	r0, [r7, #4]
 8000390:	6039      	str	r1, [r7, #0]
 8000392:	4b0e      	ldr	r3, [pc, #56]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000394:	685b      	ldr	r3, [r3, #4]
 8000396:	4a0e      	ldr	r2, [pc, #56]	; (80003d0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000398:	4013      	ands	r3, r2
 800039a:	0019      	movs	r1, r3
 800039c:	687a      	ldr	r2, [r7, #4]
 800039e:	2380      	movs	r3, #128	; 0x80
 80003a0:	025b      	lsls	r3, r3, #9
 80003a2:	401a      	ands	r2, r3
 80003a4:	683b      	ldr	r3, [r7, #0]
 80003a6:	431a      	orrs	r2, r3
 80003a8:	4b08      	ldr	r3, [pc, #32]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003aa:	430a      	orrs	r2, r1
 80003ac:	605a      	str	r2, [r3, #4]
 80003ae:	4b07      	ldr	r3, [pc, #28]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003b0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003b2:	220f      	movs	r2, #15
 80003b4:	4393      	bics	r3, r2
 80003b6:	0019      	movs	r1, r3
 80003b8:	687b      	ldr	r3, [r7, #4]
 80003ba:	220f      	movs	r2, #15
 80003bc:	401a      	ands	r2, r3
 80003be:	4b03      	ldr	r3, [pc, #12]	; (80003cc <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003c0:	430a      	orrs	r2, r1
 80003c2:	62da      	str	r2, [r3, #44]	; 0x2c
 80003c4:	46c0      	nop			; (mov r8, r8)
 80003c6:	46bd      	mov	sp, r7
 80003c8:	b002      	add	sp, #8
 80003ca:	bd80      	pop	{r7, pc}
 80003cc:	40021000 	.word	0x40021000
 80003d0:	ffc2ffff 	.word	0xffc2ffff

080003d4 <LL_FLASH_SetLatency>:
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b082      	sub	sp, #8
 80003d8:	af00      	add	r7, sp, #0
 80003da:	6078      	str	r0, [r7, #4]
 80003dc:	4b06      	ldr	r3, [pc, #24]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003de:	681b      	ldr	r3, [r3, #0]
 80003e0:	2201      	movs	r2, #1
 80003e2:	4393      	bics	r3, r2
 80003e4:	0019      	movs	r1, r3
 80003e6:	4b04      	ldr	r3, [pc, #16]	; (80003f8 <LL_FLASH_SetLatency+0x24>)
 80003e8:	687a      	ldr	r2, [r7, #4]
 80003ea:	430a      	orrs	r2, r1
 80003ec:	601a      	str	r2, [r3, #0]
 80003ee:	46c0      	nop			; (mov r8, r8)
 80003f0:	46bd      	mov	sp, r7
 80003f2:	b002      	add	sp, #8
 80003f4:	bd80      	pop	{r7, pc}
 80003f6:	46c0      	nop			; (mov r8, r8)
 80003f8:	40022000 	.word	0x40022000

080003fc <LL_AHB1_GRP1_EnableClock>:
 80003fc:	b580      	push	{r7, lr}
 80003fe:	b084      	sub	sp, #16
 8000400:	af00      	add	r7, sp, #0
 8000402:	6078      	str	r0, [r7, #4]
 8000404:	4b07      	ldr	r3, [pc, #28]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000406:	6959      	ldr	r1, [r3, #20]
 8000408:	4b06      	ldr	r3, [pc, #24]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 800040a:	687a      	ldr	r2, [r7, #4]
 800040c:	430a      	orrs	r2, r1
 800040e:	615a      	str	r2, [r3, #20]
 8000410:	4b04      	ldr	r3, [pc, #16]	; (8000424 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000412:	695b      	ldr	r3, [r3, #20]
 8000414:	687a      	ldr	r2, [r7, #4]
 8000416:	4013      	ands	r3, r2
 8000418:	60fb      	str	r3, [r7, #12]
 800041a:	68fb      	ldr	r3, [r7, #12]
 800041c:	46c0      	nop			; (mov r8, r8)
 800041e:	46bd      	mov	sp, r7
 8000420:	b004      	add	sp, #16
 8000422:	bd80      	pop	{r7, pc}
 8000424:	40021000 	.word	0x40021000

08000428 <LL_GPIO_SetPinMode>:
 8000428:	b580      	push	{r7, lr}
 800042a:	b084      	sub	sp, #16
 800042c:	af00      	add	r7, sp, #0
 800042e:	60f8      	str	r0, [r7, #12]
 8000430:	60b9      	str	r1, [r7, #8]
 8000432:	607a      	str	r2, [r7, #4]
 8000434:	68fb      	ldr	r3, [r7, #12]
 8000436:	6819      	ldr	r1, [r3, #0]
 8000438:	68bb      	ldr	r3, [r7, #8]
 800043a:	435b      	muls	r3, r3
 800043c:	001a      	movs	r2, r3
 800043e:	0013      	movs	r3, r2
 8000440:	005b      	lsls	r3, r3, #1
 8000442:	189b      	adds	r3, r3, r2
 8000444:	43db      	mvns	r3, r3
 8000446:	400b      	ands	r3, r1
 8000448:	001a      	movs	r2, r3
 800044a:	68bb      	ldr	r3, [r7, #8]
 800044c:	435b      	muls	r3, r3
 800044e:	6879      	ldr	r1, [r7, #4]
 8000450:	434b      	muls	r3, r1
 8000452:	431a      	orrs	r2, r3
 8000454:	68fb      	ldr	r3, [r7, #12]
 8000456:	601a      	str	r2, [r3, #0]
 8000458:	46c0      	nop			; (mov r8, r8)
 800045a:	46bd      	mov	sp, r7
 800045c:	b004      	add	sp, #16
 800045e:	bd80      	pop	{r7, pc}

08000460 <LL_GPIO_WriteOutputPort>:
 8000460:	b580      	push	{r7, lr}
 8000462:	b082      	sub	sp, #8
 8000464:	af00      	add	r7, sp, #0
 8000466:	6078      	str	r0, [r7, #4]
 8000468:	6039      	str	r1, [r7, #0]
 800046a:	687b      	ldr	r3, [r7, #4]
 800046c:	683a      	ldr	r2, [r7, #0]
 800046e:	615a      	str	r2, [r3, #20]
 8000470:	46c0      	nop			; (mov r8, r8)
 8000472:	46bd      	mov	sp, r7
 8000474:	b002      	add	sp, #8
 8000476:	bd80      	pop	{r7, pc}

08000478 <LL_GPIO_ReadOutputPort>:
 8000478:	b580      	push	{r7, lr}
 800047a:	b082      	sub	sp, #8
 800047c:	af00      	add	r7, sp, #0
 800047e:	6078      	str	r0, [r7, #4]
 8000480:	687b      	ldr	r3, [r7, #4]
 8000482:	695b      	ldr	r3, [r3, #20]
 8000484:	0018      	movs	r0, r3
 8000486:	46bd      	mov	sp, r7
 8000488:	b002      	add	sp, #8
 800048a:	bd80      	pop	{r7, pc}

0800048c <LL_GPIO_ResetOutputPin>:
 800048c:	b580      	push	{r7, lr}
 800048e:	b082      	sub	sp, #8
 8000490:	af00      	add	r7, sp, #0
 8000492:	6078      	str	r0, [r7, #4]
 8000494:	6039      	str	r1, [r7, #0]
 8000496:	687b      	ldr	r3, [r7, #4]
 8000498:	683a      	ldr	r2, [r7, #0]
 800049a:	629a      	str	r2, [r3, #40]	; 0x28
 800049c:	46c0      	nop			; (mov r8, r8)
 800049e:	46bd      	mov	sp, r7
 80004a0:	b002      	add	sp, #8
 80004a2:	bd80      	pop	{r7, pc}

080004a4 <rcc_config>:
 80004a4:	b580      	push	{r7, lr}
 80004a6:	af00      	add	r7, sp, #0
 80004a8:	2001      	movs	r0, #1
 80004aa:	f7ff ff93 	bl	80003d4 <LL_FLASH_SetLatency>
 80004ae:	f7ff fee1 	bl	8000274 <LL_RCC_HSI_Enable>
 80004b2:	46c0      	nop			; (mov r8, r8)
 80004b4:	f7ff feec 	bl	8000290 <LL_RCC_HSI_IsReady>
 80004b8:	0003      	movs	r3, r0
 80004ba:	2b01      	cmp	r3, #1
 80004bc:	d1fa      	bne.n	80004b4 <rcc_config+0x10>
 80004be:	23a0      	movs	r3, #160	; 0xa0
 80004c0:	039b      	lsls	r3, r3, #14
 80004c2:	0019      	movs	r1, r3
 80004c4:	2000      	movs	r0, #0
 80004c6:	f7ff ff5f 	bl	8000388 <LL_RCC_PLL_ConfigDomain_SYS>
 80004ca:	f7ff ff3b 	bl	8000344 <LL_RCC_PLL_Enable>
 80004ce:	46c0      	nop			; (mov r8, r8)
 80004d0:	f7ff ff46 	bl	8000360 <LL_RCC_PLL_IsReady>
 80004d4:	0003      	movs	r3, r0
 80004d6:	2b01      	cmp	r3, #1
 80004d8:	d1fa      	bne.n	80004d0 <rcc_config+0x2c>
 80004da:	2000      	movs	r0, #0
 80004dc:	f7ff ff08 	bl	80002f0 <LL_RCC_SetAHBPrescaler>
 80004e0:	2002      	movs	r0, #2
 80004e2:	f7ff fee5 	bl	80002b0 <LL_RCC_SetSysClkSource>
 80004e6:	46c0      	nop			; (mov r8, r8)
 80004e8:	f7ff fef6 	bl	80002d8 <LL_RCC_GetSysClkSource>
 80004ec:	0003      	movs	r3, r0
 80004ee:	2b08      	cmp	r3, #8
 80004f0:	d1fa      	bne.n	80004e8 <rcc_config+0x44>
 80004f2:	2000      	movs	r0, #0
 80004f4:	f7ff ff10 	bl	8000318 <LL_RCC_SetAPB1Prescaler>
 80004f8:	4b02      	ldr	r3, [pc, #8]	; (8000504 <rcc_config+0x60>)
 80004fa:	4a03      	ldr	r2, [pc, #12]	; (8000508 <rcc_config+0x64>)
 80004fc:	601a      	str	r2, [r3, #0]
 80004fe:	46c0      	nop			; (mov r8, r8)
 8000500:	46bd      	mov	sp, r7
 8000502:	bd80      	pop	{r7, pc}
 8000504:	20000004 	.word	0x20000004
 8000508:	02dc6c00 	.word	0x02dc6c00

0800050c <gpio_config>:
 800050c:	b580      	push	{r7, lr}
 800050e:	af00      	add	r7, sp, #0
 8000510:	2380      	movs	r3, #128	; 0x80
 8000512:	031b      	lsls	r3, r3, #12
 8000514:	0018      	movs	r0, r3
 8000516:	f7ff ff71 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 800051a:	2380      	movs	r3, #128	; 0x80
 800051c:	005b      	lsls	r3, r3, #1
 800051e:	4834      	ldr	r0, [pc, #208]	; (80005f0 <gpio_config+0xe4>)
 8000520:	2201      	movs	r2, #1
 8000522:	0019      	movs	r1, r3
 8000524:	f7ff ff80 	bl	8000428 <LL_GPIO_SetPinMode>
 8000528:	2380      	movs	r3, #128	; 0x80
 800052a:	009b      	lsls	r3, r3, #2
 800052c:	4830      	ldr	r0, [pc, #192]	; (80005f0 <gpio_config+0xe4>)
 800052e:	2201      	movs	r2, #1
 8000530:	0019      	movs	r1, r3
 8000532:	f7ff ff79 	bl	8000428 <LL_GPIO_SetPinMode>
 8000536:	4b2e      	ldr	r3, [pc, #184]	; (80005f0 <gpio_config+0xe4>)
 8000538:	2201      	movs	r2, #1
 800053a:	2101      	movs	r1, #1
 800053c:	0018      	movs	r0, r3
 800053e:	f7ff ff73 	bl	8000428 <LL_GPIO_SetPinMode>
 8000542:	4b2b      	ldr	r3, [pc, #172]	; (80005f0 <gpio_config+0xe4>)
 8000544:	2201      	movs	r2, #1
 8000546:	2102      	movs	r1, #2
 8000548:	0018      	movs	r0, r3
 800054a:	f7ff ff6d 	bl	8000428 <LL_GPIO_SetPinMode>
 800054e:	4b28      	ldr	r3, [pc, #160]	; (80005f0 <gpio_config+0xe4>)
 8000550:	2201      	movs	r2, #1
 8000552:	2104      	movs	r1, #4
 8000554:	0018      	movs	r0, r3
 8000556:	f7ff ff67 	bl	8000428 <LL_GPIO_SetPinMode>
 800055a:	4b25      	ldr	r3, [pc, #148]	; (80005f0 <gpio_config+0xe4>)
 800055c:	2201      	movs	r2, #1
 800055e:	2108      	movs	r1, #8
 8000560:	0018      	movs	r0, r3
 8000562:	f7ff ff61 	bl	8000428 <LL_GPIO_SetPinMode>
 8000566:	2380      	movs	r3, #128	; 0x80
 8000568:	029b      	lsls	r3, r3, #10
 800056a:	0018      	movs	r0, r3
 800056c:	f7ff ff46 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000570:	2390      	movs	r3, #144	; 0x90
 8000572:	05db      	lsls	r3, r3, #23
 8000574:	2200      	movs	r2, #0
 8000576:	2101      	movs	r1, #1
 8000578:	0018      	movs	r0, r3
 800057a:	f7ff ff55 	bl	8000428 <LL_GPIO_SetPinMode>
 800057e:	2380      	movs	r3, #128	; 0x80
 8000580:	02db      	lsls	r3, r3, #11
 8000582:	0018      	movs	r0, r3
 8000584:	f7ff ff3a 	bl	80003fc <LL_AHB1_GRP1_EnableClock>
 8000588:	4b1a      	ldr	r3, [pc, #104]	; (80005f4 <gpio_config+0xe8>)
 800058a:	2201      	movs	r2, #1
 800058c:	2101      	movs	r1, #1
 800058e:	0018      	movs	r0, r3
 8000590:	f7ff ff4a 	bl	8000428 <LL_GPIO_SetPinMode>
 8000594:	4b17      	ldr	r3, [pc, #92]	; (80005f4 <gpio_config+0xe8>)
 8000596:	2201      	movs	r2, #1
 8000598:	2102      	movs	r1, #2
 800059a:	0018      	movs	r0, r3
 800059c:	f7ff ff44 	bl	8000428 <LL_GPIO_SetPinMode>
 80005a0:	4b14      	ldr	r3, [pc, #80]	; (80005f4 <gpio_config+0xe8>)
 80005a2:	2201      	movs	r2, #1
 80005a4:	2104      	movs	r1, #4
 80005a6:	0018      	movs	r0, r3
 80005a8:	f7ff ff3e 	bl	8000428 <LL_GPIO_SetPinMode>
 80005ac:	4b11      	ldr	r3, [pc, #68]	; (80005f4 <gpio_config+0xe8>)
 80005ae:	2201      	movs	r2, #1
 80005b0:	2108      	movs	r1, #8
 80005b2:	0018      	movs	r0, r3
 80005b4:	f7ff ff38 	bl	8000428 <LL_GPIO_SetPinMode>
 80005b8:	4b0e      	ldr	r3, [pc, #56]	; (80005f4 <gpio_config+0xe8>)
 80005ba:	2201      	movs	r2, #1
 80005bc:	2110      	movs	r1, #16
 80005be:	0018      	movs	r0, r3
 80005c0:	f7ff ff32 	bl	8000428 <LL_GPIO_SetPinMode>
 80005c4:	4b0b      	ldr	r3, [pc, #44]	; (80005f4 <gpio_config+0xe8>)
 80005c6:	2201      	movs	r2, #1
 80005c8:	2120      	movs	r1, #32
 80005ca:	0018      	movs	r0, r3
 80005cc:	f7ff ff2c 	bl	8000428 <LL_GPIO_SetPinMode>
 80005d0:	4b08      	ldr	r3, [pc, #32]	; (80005f4 <gpio_config+0xe8>)
 80005d2:	2201      	movs	r2, #1
 80005d4:	2140      	movs	r1, #64	; 0x40
 80005d6:	0018      	movs	r0, r3
 80005d8:	f7ff ff26 	bl	8000428 <LL_GPIO_SetPinMode>
 80005dc:	4b05      	ldr	r3, [pc, #20]	; (80005f4 <gpio_config+0xe8>)
 80005de:	2201      	movs	r2, #1
 80005e0:	2180      	movs	r1, #128	; 0x80
 80005e2:	0018      	movs	r0, r3
 80005e4:	f7ff ff20 	bl	8000428 <LL_GPIO_SetPinMode>
 80005e8:	46c0      	nop			; (mov r8, r8)
 80005ea:	46bd      	mov	sp, r7
 80005ec:	bd80      	pop	{r7, pc}
 80005ee:	46c0      	nop			; (mov r8, r8)
 80005f0:	48000800 	.word	0x48000800
 80005f4:	48000400 	.word	0x48000400

080005f8 <delay>:
 80005f8:	b580      	push	{r7, lr}
 80005fa:	4e02      	ldr	r6, [pc, #8]	; (8000604 <delay+0xc>)
 80005fc:	3e01      	subs	r6, #1
 80005fe:	2e00      	cmp	r6, #0
 8000600:	d1fc      	bne.n	80005fc <delay+0x4>
 8000602:	bd80      	pop	{r7, pc}
 8000604:	00002ee0 	.word	0x00002ee0
 8000608:	46c0      	nop			; (mov r8, r8)
	...

0800060c <symbols>:
 800060c:	b580      	push	{r7, lr}
 800060e:	b084      	sub	sp, #16
 8000610:	af00      	add	r7, sp, #0
 8000612:	0002      	movs	r2, r0
 8000614:	1dfb      	adds	r3, r7, #7
 8000616:	701a      	strb	r2, [r3, #0]
 8000618:	2300      	movs	r3, #0
 800061a:	60fb      	str	r3, [r7, #12]
 800061c:	1dfb      	adds	r3, r7, #7
 800061e:	781b      	ldrb	r3, [r3, #0]
 8000620:	3b21      	subs	r3, #33	; 0x21
 8000622:	2b59      	cmp	r3, #89	; 0x59
 8000624:	d852      	bhi.n	80006cc <symbols+0xc0>
 8000626:	009a      	lsls	r2, r3, #2
 8000628:	4b2c      	ldr	r3, [pc, #176]	; (80006dc <symbols+0xd0>)
 800062a:	18d3      	adds	r3, r2, r3
 800062c:	681b      	ldr	r3, [r3, #0]
 800062e:	469f      	mov	pc, r3
 8000630:	2377      	movs	r3, #119	; 0x77
 8000632:	60fb      	str	r3, [r7, #12]
 8000634:	e04d      	b.n	80006d2 <symbols+0xc6>
 8000636:	237c      	movs	r3, #124	; 0x7c
 8000638:	60fb      	str	r3, [r7, #12]
 800063a:	e04a      	b.n	80006d2 <symbols+0xc6>
 800063c:	2339      	movs	r3, #57	; 0x39
 800063e:	60fb      	str	r3, [r7, #12]
 8000640:	e047      	b.n	80006d2 <symbols+0xc6>
 8000642:	235e      	movs	r3, #94	; 0x5e
 8000644:	60fb      	str	r3, [r7, #12]
 8000646:	e044      	b.n	80006d2 <symbols+0xc6>
 8000648:	2379      	movs	r3, #121	; 0x79
 800064a:	60fb      	str	r3, [r7, #12]
 800064c:	e041      	b.n	80006d2 <symbols+0xc6>
 800064e:	2371      	movs	r3, #113	; 0x71
 8000650:	60fb      	str	r3, [r7, #12]
 8000652:	e03e      	b.n	80006d2 <symbols+0xc6>
 8000654:	237d      	movs	r3, #125	; 0x7d
 8000656:	60fb      	str	r3, [r7, #12]
 8000658:	e03b      	b.n	80006d2 <symbols+0xc6>
 800065a:	2376      	movs	r3, #118	; 0x76
 800065c:	60fb      	str	r3, [r7, #12]
 800065e:	e038      	b.n	80006d2 <symbols+0xc6>
 8000660:	2306      	movs	r3, #6
 8000662:	60fb      	str	r3, [r7, #12]
 8000664:	e035      	b.n	80006d2 <symbols+0xc6>
 8000666:	230e      	movs	r3, #14
 8000668:	60fb      	str	r3, [r7, #12]
 800066a:	e032      	b.n	80006d2 <symbols+0xc6>
 800066c:	2338      	movs	r3, #56	; 0x38
 800066e:	60fb      	str	r3, [r7, #12]
 8000670:	e02f      	b.n	80006d2 <symbols+0xc6>
 8000672:	2354      	movs	r3, #84	; 0x54
 8000674:	60fb      	str	r3, [r7, #12]
 8000676:	e02c      	b.n	80006d2 <symbols+0xc6>
 8000678:	233f      	movs	r3, #63	; 0x3f
 800067a:	60fb      	str	r3, [r7, #12]
 800067c:	e029      	b.n	80006d2 <symbols+0xc6>
 800067e:	2373      	movs	r3, #115	; 0x73
 8000680:	60fb      	str	r3, [r7, #12]
 8000682:	e026      	b.n	80006d2 <symbols+0xc6>
 8000684:	236d      	movs	r3, #109	; 0x6d
 8000686:	60fb      	str	r3, [r7, #12]
 8000688:	e023      	b.n	80006d2 <symbols+0xc6>
 800068a:	233e      	movs	r3, #62	; 0x3e
 800068c:	60fb      	str	r3, [r7, #12]
 800068e:	e020      	b.n	80006d2 <symbols+0xc6>
 8000690:	235b      	movs	r3, #91	; 0x5b
 8000692:	60fb      	str	r3, [r7, #12]
 8000694:	e01d      	b.n	80006d2 <symbols+0xc6>
 8000696:	2367      	movs	r3, #103	; 0x67
 8000698:	60fb      	str	r3, [r7, #12]
 800069a:	e01a      	b.n	80006d2 <symbols+0xc6>
 800069c:	2350      	movs	r3, #80	; 0x50
 800069e:	60fb      	str	r3, [r7, #12]
 80006a0:	e017      	b.n	80006d2 <symbols+0xc6>
 80006a2:	2378      	movs	r3, #120	; 0x78
 80006a4:	60fb      	str	r3, [r7, #12]
 80006a6:	e014      	b.n	80006d2 <symbols+0xc6>
 80006a8:	236e      	movs	r3, #110	; 0x6e
 80006aa:	60fb      	str	r3, [r7, #12]
 80006ac:	e011      	b.n	80006d2 <symbols+0xc6>
 80006ae:	2380      	movs	r3, #128	; 0x80
 80006b0:	60fb      	str	r3, [r7, #12]
 80006b2:	e00e      	b.n	80006d2 <symbols+0xc6>
 80006b4:	2386      	movs	r3, #134	; 0x86
 80006b6:	60fb      	str	r3, [r7, #12]
 80006b8:	e00b      	b.n	80006d2 <symbols+0xc6>
 80006ba:	23a7      	movs	r3, #167	; 0xa7
 80006bc:	60fb      	str	r3, [r7, #12]
 80006be:	e008      	b.n	80006d2 <symbols+0xc6>
 80006c0:	2308      	movs	r3, #8
 80006c2:	60fb      	str	r3, [r7, #12]
 80006c4:	e005      	b.n	80006d2 <symbols+0xc6>
 80006c6:	2340      	movs	r3, #64	; 0x40
 80006c8:	60fb      	str	r3, [r7, #12]
 80006ca:	e002      	b.n	80006d2 <symbols+0xc6>
 80006cc:	2300      	movs	r3, #0
 80006ce:	60fb      	str	r3, [r7, #12]
 80006d0:	46c0      	nop			; (mov r8, r8)
 80006d2:	68fb      	ldr	r3, [r7, #12]
 80006d4:	0018      	movs	r0, r3
 80006d6:	46bd      	mov	sp, r7
 80006d8:	b004      	add	sp, #16
 80006da:	bd80      	pop	{r7, pc}
 80006dc:	08000c3c 	.word	0x08000c3c

080006e0 <set_indicator>:
 80006e0:	b5b0      	push	{r4, r5, r7, lr}
 80006e2:	b084      	sub	sp, #16
 80006e4:	af00      	add	r7, sp, #0
 80006e6:	0002      	movs	r2, r0
 80006e8:	1dfb      	adds	r3, r7, #7
 80006ea:	701a      	strb	r2, [r3, #0]
 80006ec:	250f      	movs	r5, #15
 80006ee:	197b      	adds	r3, r7, r5
 80006f0:	220a      	movs	r2, #10
 80006f2:	701a      	strb	r2, [r3, #0]
 80006f4:	2300      	movs	r3, #0
 80006f6:	60bb      	str	r3, [r7, #8]
 80006f8:	4b12      	ldr	r3, [pc, #72]	; (8000744 <set_indicator+0x64>)
 80006fa:	0018      	movs	r0, r3
 80006fc:	f7ff febc 	bl	8000478 <LL_GPIO_ReadOutputPort>
 8000700:	0003      	movs	r3, r0
 8000702:	60bb      	str	r3, [r7, #8]
 8000704:	4b10      	ldr	r3, [pc, #64]	; (8000748 <set_indicator+0x68>)
 8000706:	681b      	ldr	r3, [r3, #0]
 8000708:	43db      	mvns	r3, r3
 800070a:	68ba      	ldr	r2, [r7, #8]
 800070c:	401a      	ands	r2, r3
 800070e:	0014      	movs	r4, r2
 8000710:	1dfa      	adds	r2, r7, #7
 8000712:	197b      	adds	r3, r7, r5
 8000714:	7812      	ldrb	r2, [r2, #0]
 8000716:	781b      	ldrb	r3, [r3, #0]
 8000718:	0019      	movs	r1, r3
 800071a:	0010      	movs	r0, r2
 800071c:	f7ff fd7a 	bl	8000214 <__aeabi_uidivmod>
 8000720:	000b      	movs	r3, r1
 8000722:	b2db      	uxtb	r3, r3
 8000724:	001a      	movs	r2, r3
 8000726:	4b09      	ldr	r3, [pc, #36]	; (800074c <set_indicator+0x6c>)
 8000728:	0092      	lsls	r2, r2, #2
 800072a:	58d3      	ldr	r3, [r2, r3]
 800072c:	4323      	orrs	r3, r4
 800072e:	60bb      	str	r3, [r7, #8]
 8000730:	68bb      	ldr	r3, [r7, #8]
 8000732:	4a04      	ldr	r2, [pc, #16]	; (8000744 <set_indicator+0x64>)
 8000734:	0019      	movs	r1, r3
 8000736:	0010      	movs	r0, r2
 8000738:	f7ff fe92 	bl	8000460 <LL_GPIO_WriteOutputPort>
 800073c:	46c0      	nop			; (mov r8, r8)
 800073e:	46bd      	mov	sp, r7
 8000740:	b004      	add	sp, #16
 8000742:	bdb0      	pop	{r4, r5, r7, pc}
 8000744:	48000400 	.word	0x48000400
 8000748:	20000000 	.word	0x20000000
 800074c:	08000da4 	.word	0x08000da4

08000750 <mask_indicator>:
 8000750:	b580      	push	{r7, lr}
 8000752:	b082      	sub	sp, #8
 8000754:	af00      	add	r7, sp, #0
 8000756:	6078      	str	r0, [r7, #4]
 8000758:	687b      	ldr	r3, [r7, #4]
 800075a:	09db      	lsrs	r3, r3, #7
 800075c:	2201      	movs	r2, #1
 800075e:	4013      	ands	r3, r2
 8000760:	01da      	lsls	r2, r3, #7
 8000762:	687b      	ldr	r3, [r7, #4]
 8000764:	099b      	lsrs	r3, r3, #6
 8000766:	2101      	movs	r1, #1
 8000768:	400b      	ands	r3, r1
 800076a:	019b      	lsls	r3, r3, #6
 800076c:	431a      	orrs	r2, r3
 800076e:	687b      	ldr	r3, [r7, #4]
 8000770:	095b      	lsrs	r3, r3, #5
 8000772:	2101      	movs	r1, #1
 8000774:	400b      	ands	r3, r1
 8000776:	015b      	lsls	r3, r3, #5
 8000778:	431a      	orrs	r2, r3
 800077a:	687b      	ldr	r3, [r7, #4]
 800077c:	091b      	lsrs	r3, r3, #4
 800077e:	2101      	movs	r1, #1
 8000780:	400b      	ands	r3, r1
 8000782:	011b      	lsls	r3, r3, #4
 8000784:	431a      	orrs	r2, r3
 8000786:	687b      	ldr	r3, [r7, #4]
 8000788:	08db      	lsrs	r3, r3, #3
 800078a:	2101      	movs	r1, #1
 800078c:	400b      	ands	r3, r1
 800078e:	00db      	lsls	r3, r3, #3
 8000790:	431a      	orrs	r2, r3
 8000792:	687b      	ldr	r3, [r7, #4]
 8000794:	089b      	lsrs	r3, r3, #2
 8000796:	2101      	movs	r1, #1
 8000798:	400b      	ands	r3, r1
 800079a:	009b      	lsls	r3, r3, #2
 800079c:	431a      	orrs	r2, r3
 800079e:	687b      	ldr	r3, [r7, #4]
 80007a0:	085b      	lsrs	r3, r3, #1
 80007a2:	2101      	movs	r1, #1
 80007a4:	400b      	ands	r3, r1
 80007a6:	005b      	lsls	r3, r3, #1
 80007a8:	431a      	orrs	r2, r3
 80007aa:	687b      	ldr	r3, [r7, #4]
 80007ac:	2101      	movs	r1, #1
 80007ae:	400b      	ands	r3, r1
 80007b0:	4313      	orrs	r3, r2
 80007b2:	0018      	movs	r0, r3
 80007b4:	46bd      	mov	sp, r7
 80007b6:	b002      	add	sp, #8
 80007b8:	bd80      	pop	{r7, pc}
	...

080007bc <dynamic_text>:
 80007bc:	b590      	push	{r4, r7, lr}
 80007be:	b089      	sub	sp, #36	; 0x24
 80007c0:	af00      	add	r7, sp, #0
 80007c2:	6078      	str	r0, [r7, #4]
 80007c4:	231f      	movs	r3, #31
 80007c6:	18fb      	adds	r3, r7, r3
 80007c8:	687a      	ldr	r2, [r7, #4]
 80007ca:	7812      	ldrb	r2, [r2, #0]
 80007cc:	701a      	strb	r2, [r3, #0]
 80007ce:	2300      	movs	r3, #0
 80007d0:	61bb      	str	r3, [r7, #24]
 80007d2:	2300      	movs	r3, #0
 80007d4:	617b      	str	r3, [r7, #20]
 80007d6:	e060      	b.n	800089a <dynamic_text+0xde>
 80007d8:	2300      	movs	r3, #0
 80007da:	613b      	str	r3, [r7, #16]
 80007dc:	e03b      	b.n	8000856 <dynamic_text+0x9a>
 80007de:	69bb      	ldr	r3, [r7, #24]
 80007e0:	60fb      	str	r3, [r7, #12]
 80007e2:	2300      	movs	r3, #0
 80007e4:	60bb      	str	r3, [r7, #8]
 80007e6:	e030      	b.n	800084a <dynamic_text+0x8e>
 80007e8:	687a      	ldr	r2, [r7, #4]
 80007ea:	68fb      	ldr	r3, [r7, #12]
 80007ec:	18d2      	adds	r2, r2, r3
 80007ee:	241f      	movs	r4, #31
 80007f0:	193b      	adds	r3, r7, r4
 80007f2:	7812      	ldrb	r2, [r2, #0]
 80007f4:	701a      	strb	r2, [r3, #0]
 80007f6:	200f      	movs	r0, #15
 80007f8:	f7ff ffaa 	bl	8000750 <mask_indicator>
 80007fc:	0003      	movs	r3, r0
 80007fe:	4a2b      	ldr	r2, [pc, #172]	; (80008ac <dynamic_text+0xf0>)
 8000800:	0019      	movs	r1, r3
 8000802:	0010      	movs	r0, r2
 8000804:	f7ff fe2c 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000808:	2201      	movs	r2, #1
 800080a:	68bb      	ldr	r3, [r7, #8]
 800080c:	409a      	lsls	r2, r3
 800080e:	0013      	movs	r3, r2
 8000810:	0018      	movs	r0, r3
 8000812:	f7ff ff9d 	bl	8000750 <mask_indicator>
 8000816:	0003      	movs	r3, r0
 8000818:	4a24      	ldr	r2, [pc, #144]	; (80008ac <dynamic_text+0xf0>)
 800081a:	0019      	movs	r1, r3
 800081c:	0010      	movs	r0, r2
 800081e:	f7ff fe35 	bl	800048c <LL_GPIO_ResetOutputPin>
 8000822:	193b      	adds	r3, r7, r4
 8000824:	781b      	ldrb	r3, [r3, #0]
 8000826:	0018      	movs	r0, r3
 8000828:	f7ff fef0 	bl	800060c <symbols>
 800082c:	0003      	movs	r3, r0
 800082e:	001a      	movs	r2, r3
 8000830:	4b1f      	ldr	r3, [pc, #124]	; (80008b0 <dynamic_text+0xf4>)
 8000832:	0011      	movs	r1, r2
 8000834:	0018      	movs	r0, r3
 8000836:	f7ff fe13 	bl	8000460 <LL_GPIO_WriteOutputPort>
 800083a:	f7ff fedd 	bl	80005f8 <delay>
 800083e:	68fb      	ldr	r3, [r7, #12]
 8000840:	3b01      	subs	r3, #1
 8000842:	60fb      	str	r3, [r7, #12]
 8000844:	68bb      	ldr	r3, [r7, #8]
 8000846:	3301      	adds	r3, #1
 8000848:	60bb      	str	r3, [r7, #8]
 800084a:	68bb      	ldr	r3, [r7, #8]
 800084c:	2b03      	cmp	r3, #3
 800084e:	d9cb      	bls.n	80007e8 <dynamic_text+0x2c>
 8000850:	693b      	ldr	r3, [r7, #16]
 8000852:	3301      	adds	r3, #1
 8000854:	613b      	str	r3, [r7, #16]
 8000856:	693b      	ldr	r3, [r7, #16]
 8000858:	2b31      	cmp	r3, #49	; 0x31
 800085a:	ddc0      	ble.n	80007de <dynamic_text+0x22>
 800085c:	69bb      	ldr	r3, [r7, #24]
 800085e:	1c5a      	adds	r2, r3, #1
 8000860:	61ba      	str	r2, [r7, #24]
 8000862:	687a      	ldr	r2, [r7, #4]
 8000864:	18d2      	adds	r2, r2, r3
 8000866:	211f      	movs	r1, #31
 8000868:	187b      	adds	r3, r7, r1
 800086a:	7812      	ldrb	r2, [r2, #0]
 800086c:	701a      	strb	r2, [r3, #0]
 800086e:	187b      	adds	r3, r7, r1
 8000870:	781b      	ldrb	r3, [r3, #0]
 8000872:	2b00      	cmp	r3, #0
 8000874:	d002      	beq.n	800087c <dynamic_text+0xc0>
 8000876:	697b      	ldr	r3, [r7, #20]
 8000878:	2b00      	cmp	r3, #0
 800087a:	d00e      	beq.n	800089a <dynamic_text+0xde>
 800087c:	697b      	ldr	r3, [r7, #20]
 800087e:	2b01      	cmp	r3, #1
 8000880:	d807      	bhi.n	8000892 <dynamic_text+0xd6>
 8000882:	231f      	movs	r3, #31
 8000884:	18fb      	adds	r3, r7, r3
 8000886:	2220      	movs	r2, #32
 8000888:	701a      	strb	r2, [r3, #0]
 800088a:	697b      	ldr	r3, [r7, #20]
 800088c:	3301      	adds	r3, #1
 800088e:	617b      	str	r3, [r7, #20]
 8000890:	e003      	b.n	800089a <dynamic_text+0xde>
 8000892:	231f      	movs	r3, #31
 8000894:	18fb      	adds	r3, r7, r3
 8000896:	2200      	movs	r2, #0
 8000898:	701a      	strb	r2, [r3, #0]
 800089a:	231f      	movs	r3, #31
 800089c:	18fb      	adds	r3, r7, r3
 800089e:	781b      	ldrb	r3, [r3, #0]
 80008a0:	2b00      	cmp	r3, #0
 80008a2:	d199      	bne.n	80007d8 <dynamic_text+0x1c>
 80008a4:	46c0      	nop			; (mov r8, r8)
 80008a6:	46bd      	mov	sp, r7
 80008a8:	b009      	add	sp, #36	; 0x24
 80008aa:	bd90      	pop	{r4, r7, pc}
 80008ac:	48000800 	.word	0x48000800
 80008b0:	48000400 	.word	0x48000400

080008b4 <text>:
 80008b4:	b580      	push	{r7, lr}
 80008b6:	b086      	sub	sp, #24
 80008b8:	af00      	add	r7, sp, #0
 80008ba:	6078      	str	r0, [r7, #4]
 80008bc:	2317      	movs	r3, #23
 80008be:	18fb      	adds	r3, r7, r3
 80008c0:	687a      	ldr	r2, [r7, #4]
 80008c2:	7812      	ldrb	r2, [r2, #0]
 80008c4:	701a      	strb	r2, [r3, #0]
 80008c6:	2300      	movs	r3, #0
 80008c8:	613b      	str	r3, [r7, #16]
 80008ca:	2300      	movs	r3, #0
 80008cc:	60bb      	str	r3, [r7, #8]
 80008ce:	2303      	movs	r3, #3
 80008d0:	60fb      	str	r3, [r7, #12]
 80008d2:	e02f      	b.n	8000934 <text+0x80>
 80008d4:	693b      	ldr	r3, [r7, #16]
 80008d6:	1c5a      	adds	r2, r3, #1
 80008d8:	613a      	str	r2, [r7, #16]
 80008da:	687a      	ldr	r2, [r7, #4]
 80008dc:	18d2      	adds	r2, r2, r3
 80008de:	2117      	movs	r1, #23
 80008e0:	187b      	adds	r3, r7, r1
 80008e2:	7812      	ldrb	r2, [r2, #0]
 80008e4:	701a      	strb	r2, [r3, #0]
 80008e6:	187b      	adds	r3, r7, r1
 80008e8:	781b      	ldrb	r3, [r3, #0]
 80008ea:	0018      	movs	r0, r3
 80008ec:	f7ff fe8e 	bl	800060c <symbols>
 80008f0:	0003      	movs	r3, r0
 80008f2:	60bb      	str	r3, [r7, #8]
 80008f4:	200f      	movs	r0, #15
 80008f6:	f7ff ff2b 	bl	8000750 <mask_indicator>
 80008fa:	0003      	movs	r3, r0
 80008fc:	4a12      	ldr	r2, [pc, #72]	; (8000948 <text+0x94>)
 80008fe:	0019      	movs	r1, r3
 8000900:	0010      	movs	r0, r2
 8000902:	f7ff fdad 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000906:	68fb      	ldr	r3, [r7, #12]
 8000908:	1e5a      	subs	r2, r3, #1
 800090a:	60fa      	str	r2, [r7, #12]
 800090c:	2201      	movs	r2, #1
 800090e:	409a      	lsls	r2, r3
 8000910:	0013      	movs	r3, r2
 8000912:	0018      	movs	r0, r3
 8000914:	f7ff ff1c 	bl	8000750 <mask_indicator>
 8000918:	0003      	movs	r3, r0
 800091a:	4a0b      	ldr	r2, [pc, #44]	; (8000948 <text+0x94>)
 800091c:	0019      	movs	r1, r3
 800091e:	0010      	movs	r0, r2
 8000920:	f7ff fdb4 	bl	800048c <LL_GPIO_ResetOutputPin>
 8000924:	68bb      	ldr	r3, [r7, #8]
 8000926:	4a09      	ldr	r2, [pc, #36]	; (800094c <text+0x98>)
 8000928:	0019      	movs	r1, r3
 800092a:	0010      	movs	r0, r2
 800092c:	f7ff fd98 	bl	8000460 <LL_GPIO_WriteOutputPort>
 8000930:	f7ff fe62 	bl	80005f8 <delay>
 8000934:	2317      	movs	r3, #23
 8000936:	18fb      	adds	r3, r7, r3
 8000938:	781b      	ldrb	r3, [r3, #0]
 800093a:	2b00      	cmp	r3, #0
 800093c:	d1ca      	bne.n	80008d4 <text+0x20>
 800093e:	46c0      	nop			; (mov r8, r8)
 8000940:	46bd      	mov	sp, r7
 8000942:	b006      	add	sp, #24
 8000944:	bd80      	pop	{r7, pc}
 8000946:	46c0      	nop			; (mov r8, r8)
 8000948:	48000800 	.word	0x48000800
 800094c:	48000400 	.word	0x48000400

08000950 <main>:
 8000950:	b580      	push	{r7, lr}
 8000952:	b082      	sub	sp, #8
 8000954:	af00      	add	r7, sp, #0
 8000956:	f7ff fda5 	bl	80004a4 <rcc_config>
 800095a:	f7ff fdd7 	bl	800050c <gpio_config>
 800095e:	2300      	movs	r3, #0
 8000960:	607b      	str	r3, [r7, #4]
 8000962:	e007      	b.n	8000974 <main+0x24>
 8000964:	200f      	movs	r0, #15
 8000966:	f7ff febb 	bl	80006e0 <set_indicator>
 800096a:	f7ff fe45 	bl	80005f8 <delay>
 800096e:	687b      	ldr	r3, [r7, #4]
 8000970:	3301      	adds	r3, #1
 8000972:	607b      	str	r3, [r7, #4]
 8000974:	687b      	ldr	r3, [r7, #4]
 8000976:	4a08      	ldr	r2, [pc, #32]	; (8000998 <main+0x48>)
 8000978:	4293      	cmp	r3, r2
 800097a:	ddf3      	ble.n	8000964 <main+0x14>
 800097c:	4b07      	ldr	r3, [pc, #28]	; (800099c <main+0x4c>)
 800097e:	0018      	movs	r0, r3
 8000980:	f7ff ff1c 	bl	80007bc <dynamic_text>
 8000984:	4b06      	ldr	r3, [pc, #24]	; (80009a0 <main+0x50>)
 8000986:	0018      	movs	r0, r3
 8000988:	f7ff ff94 	bl	80008b4 <text>
 800098c:	4b05      	ldr	r3, [pc, #20]	; (80009a4 <main+0x54>)
 800098e:	0018      	movs	r0, r3
 8000990:	f7ff ff14 	bl	80007bc <dynamic_text>
 8000994:	e7e3      	b.n	800095e <main+0xe>
 8000996:	46c0      	nop			; (mov r8, r8)
 8000998:	00000bb7 	.word	0x00000bb7
 800099c:	08000c14 	.word	0x08000c14
 80009a0:	08000c2c 	.word	0x08000c2c
 80009a4:	08000c30 	.word	0x08000c30

080009a8 <SystemInit>:
 80009a8:	b580      	push	{r7, lr}
 80009aa:	af00      	add	r7, sp, #0
 80009ac:	4b1a      	ldr	r3, [pc, #104]	; (8000a18 <SystemInit+0x70>)
 80009ae:	681a      	ldr	r2, [r3, #0]
 80009b0:	4b19      	ldr	r3, [pc, #100]	; (8000a18 <SystemInit+0x70>)
 80009b2:	2101      	movs	r1, #1
 80009b4:	430a      	orrs	r2, r1
 80009b6:	601a      	str	r2, [r3, #0]
 80009b8:	4b17      	ldr	r3, [pc, #92]	; (8000a18 <SystemInit+0x70>)
 80009ba:	685a      	ldr	r2, [r3, #4]
 80009bc:	4b16      	ldr	r3, [pc, #88]	; (8000a18 <SystemInit+0x70>)
 80009be:	4917      	ldr	r1, [pc, #92]	; (8000a1c <SystemInit+0x74>)
 80009c0:	400a      	ands	r2, r1
 80009c2:	605a      	str	r2, [r3, #4]
 80009c4:	4b14      	ldr	r3, [pc, #80]	; (8000a18 <SystemInit+0x70>)
 80009c6:	681a      	ldr	r2, [r3, #0]
 80009c8:	4b13      	ldr	r3, [pc, #76]	; (8000a18 <SystemInit+0x70>)
 80009ca:	4915      	ldr	r1, [pc, #84]	; (8000a20 <SystemInit+0x78>)
 80009cc:	400a      	ands	r2, r1
 80009ce:	601a      	str	r2, [r3, #0]
 80009d0:	4b11      	ldr	r3, [pc, #68]	; (8000a18 <SystemInit+0x70>)
 80009d2:	681a      	ldr	r2, [r3, #0]
 80009d4:	4b10      	ldr	r3, [pc, #64]	; (8000a18 <SystemInit+0x70>)
 80009d6:	4913      	ldr	r1, [pc, #76]	; (8000a24 <SystemInit+0x7c>)
 80009d8:	400a      	ands	r2, r1
 80009da:	601a      	str	r2, [r3, #0]
 80009dc:	4b0e      	ldr	r3, [pc, #56]	; (8000a18 <SystemInit+0x70>)
 80009de:	685a      	ldr	r2, [r3, #4]
 80009e0:	4b0d      	ldr	r3, [pc, #52]	; (8000a18 <SystemInit+0x70>)
 80009e2:	4911      	ldr	r1, [pc, #68]	; (8000a28 <SystemInit+0x80>)
 80009e4:	400a      	ands	r2, r1
 80009e6:	605a      	str	r2, [r3, #4]
 80009e8:	4b0b      	ldr	r3, [pc, #44]	; (8000a18 <SystemInit+0x70>)
 80009ea:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 80009ec:	4b0a      	ldr	r3, [pc, #40]	; (8000a18 <SystemInit+0x70>)
 80009ee:	210f      	movs	r1, #15
 80009f0:	438a      	bics	r2, r1
 80009f2:	62da      	str	r2, [r3, #44]	; 0x2c
 80009f4:	4b08      	ldr	r3, [pc, #32]	; (8000a18 <SystemInit+0x70>)
 80009f6:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 80009f8:	4b07      	ldr	r3, [pc, #28]	; (8000a18 <SystemInit+0x70>)
 80009fa:	490c      	ldr	r1, [pc, #48]	; (8000a2c <SystemInit+0x84>)
 80009fc:	400a      	ands	r2, r1
 80009fe:	631a      	str	r2, [r3, #48]	; 0x30
 8000a00:	4b05      	ldr	r3, [pc, #20]	; (8000a18 <SystemInit+0x70>)
 8000a02:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000a04:	4b04      	ldr	r3, [pc, #16]	; (8000a18 <SystemInit+0x70>)
 8000a06:	2101      	movs	r1, #1
 8000a08:	438a      	bics	r2, r1
 8000a0a:	635a      	str	r2, [r3, #52]	; 0x34
 8000a0c:	4b02      	ldr	r3, [pc, #8]	; (8000a18 <SystemInit+0x70>)
 8000a0e:	2200      	movs	r2, #0
 8000a10:	609a      	str	r2, [r3, #8]
 8000a12:	46c0      	nop			; (mov r8, r8)
 8000a14:	46bd      	mov	sp, r7
 8000a16:	bd80      	pop	{r7, pc}
 8000a18:	40021000 	.word	0x40021000
 8000a1c:	f8ffb80c 	.word	0xf8ffb80c
 8000a20:	fef6ffff 	.word	0xfef6ffff
 8000a24:	fffbffff 	.word	0xfffbffff
 8000a28:	ffc0ffff 	.word	0xffc0ffff
 8000a2c:	fffffeac 	.word	0xfffffeac

08000a30 <NMI_Handler>:
 8000a30:	b580      	push	{r7, lr}
 8000a32:	af00      	add	r7, sp, #0
 8000a34:	46c0      	nop			; (mov r8, r8)
 8000a36:	46bd      	mov	sp, r7
 8000a38:	bd80      	pop	{r7, pc}

08000a3a <HardFault_Handler>:
 8000a3a:	b580      	push	{r7, lr}
 8000a3c:	af00      	add	r7, sp, #0
 8000a3e:	e7fe      	b.n	8000a3e <HardFault_Handler+0x4>

08000a40 <SVC_Handler>:
 8000a40:	b580      	push	{r7, lr}
 8000a42:	af00      	add	r7, sp, #0
 8000a44:	46c0      	nop			; (mov r8, r8)
 8000a46:	46bd      	mov	sp, r7
 8000a48:	bd80      	pop	{r7, pc}

08000a4a <PendSV_Handler>:
 8000a4a:	b580      	push	{r7, lr}
 8000a4c:	af00      	add	r7, sp, #0
 8000a4e:	46c0      	nop			; (mov r8, r8)
 8000a50:	46bd      	mov	sp, r7
 8000a52:	bd80      	pop	{r7, pc}

08000a54 <__libc_init_array>:
 8000a54:	b570      	push	{r4, r5, r6, lr}
 8000a56:	4d0c      	ldr	r5, [pc, #48]	; (8000a88 <__libc_init_array+0x34>)
 8000a58:	4e0c      	ldr	r6, [pc, #48]	; (8000a8c <__libc_init_array+0x38>)
 8000a5a:	1b76      	subs	r6, r6, r5
 8000a5c:	10b6      	asrs	r6, r6, #2
 8000a5e:	d005      	beq.n	8000a6c <__libc_init_array+0x18>
 8000a60:	2400      	movs	r4, #0
 8000a62:	cd08      	ldmia	r5!, {r3}
 8000a64:	3401      	adds	r4, #1
 8000a66:	4798      	blx	r3
 8000a68:	42a6      	cmp	r6, r4
 8000a6a:	d1fa      	bne.n	8000a62 <__libc_init_array+0xe>
 8000a6c:	f000 f896 	bl	8000b9c <_init>
 8000a70:	4d07      	ldr	r5, [pc, #28]	; (8000a90 <__libc_init_array+0x3c>)
 8000a72:	4e08      	ldr	r6, [pc, #32]	; (8000a94 <__libc_init_array+0x40>)
 8000a74:	1b76      	subs	r6, r6, r5
 8000a76:	10b6      	asrs	r6, r6, #2
 8000a78:	d005      	beq.n	8000a86 <__libc_init_array+0x32>
 8000a7a:	2400      	movs	r4, #0
 8000a7c:	cd08      	ldmia	r5!, {r3}
 8000a7e:	3401      	adds	r4, #1
 8000a80:	4798      	blx	r3
 8000a82:	42a6      	cmp	r6, r4
 8000a84:	d1fa      	bne.n	8000a7c <__libc_init_array+0x28>
 8000a86:	bd70      	pop	{r4, r5, r6, pc}
 8000a88:	08000dd0 	.word	0x08000dd0
 8000a8c:	08000dd0 	.word	0x08000dd0
 8000a90:	08000dd0 	.word	0x08000dd0
 8000a94:	08000dd8 	.word	0x08000dd8

08000a98 <register_fini>:
 8000a98:	4b03      	ldr	r3, [pc, #12]	; (8000aa8 <register_fini+0x10>)
 8000a9a:	b510      	push	{r4, lr}
 8000a9c:	2b00      	cmp	r3, #0
 8000a9e:	d002      	beq.n	8000aa6 <register_fini+0xe>
 8000aa0:	4802      	ldr	r0, [pc, #8]	; (8000aac <register_fini+0x14>)
 8000aa2:	f000 f805 	bl	8000ab0 <atexit>
 8000aa6:	bd10      	pop	{r4, pc}
 8000aa8:	00000000 	.word	0x00000000
 8000aac:	08000ac1 	.word	0x08000ac1

08000ab0 <atexit>:
 8000ab0:	b510      	push	{r4, lr}
 8000ab2:	0001      	movs	r1, r0
 8000ab4:	2300      	movs	r3, #0
 8000ab6:	2200      	movs	r2, #0
 8000ab8:	2000      	movs	r0, #0
 8000aba:	f000 f819 	bl	8000af0 <__register_exitproc>
 8000abe:	bd10      	pop	{r4, pc}

08000ac0 <__libc_fini_array>:
 8000ac0:	b570      	push	{r4, r5, r6, lr}
 8000ac2:	4d07      	ldr	r5, [pc, #28]	; (8000ae0 <__libc_fini_array+0x20>)
 8000ac4:	4c07      	ldr	r4, [pc, #28]	; (8000ae4 <__libc_fini_array+0x24>)
 8000ac6:	1b64      	subs	r4, r4, r5
 8000ac8:	10a4      	asrs	r4, r4, #2
 8000aca:	d005      	beq.n	8000ad8 <__libc_fini_array+0x18>
 8000acc:	3c01      	subs	r4, #1
 8000ace:	00a3      	lsls	r3, r4, #2
 8000ad0:	58eb      	ldr	r3, [r5, r3]
 8000ad2:	4798      	blx	r3
 8000ad4:	2c00      	cmp	r4, #0
 8000ad6:	d1f9      	bne.n	8000acc <__libc_fini_array+0xc>
 8000ad8:	f000 f866 	bl	8000ba8 <_fini>
 8000adc:	bd70      	pop	{r4, r5, r6, pc}
 8000ade:	46c0      	nop			; (mov r8, r8)
 8000ae0:	08000dd8 	.word	0x08000dd8
 8000ae4:	08000ddc 	.word	0x08000ddc

08000ae8 <__retarget_lock_acquire_recursive>:
 8000ae8:	4770      	bx	lr
 8000aea:	46c0      	nop			; (mov r8, r8)

08000aec <__retarget_lock_release_recursive>:
 8000aec:	4770      	bx	lr
 8000aee:	46c0      	nop			; (mov r8, r8)

08000af0 <__register_exitproc>:
 8000af0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000af2:	46d6      	mov	lr, sl
 8000af4:	464f      	mov	r7, r9
 8000af6:	4646      	mov	r6, r8
 8000af8:	b5c0      	push	{r6, r7, lr}
 8000afa:	4f26      	ldr	r7, [pc, #152]	; (8000b94 <__register_exitproc+0xa4>)
 8000afc:	b082      	sub	sp, #8
 8000afe:	0006      	movs	r6, r0
 8000b00:	6838      	ldr	r0, [r7, #0]
 8000b02:	4692      	mov	sl, r2
 8000b04:	4698      	mov	r8, r3
 8000b06:	4689      	mov	r9, r1
 8000b08:	f7ff ffee 	bl	8000ae8 <__retarget_lock_acquire_recursive>
 8000b0c:	4b22      	ldr	r3, [pc, #136]	; (8000b98 <__register_exitproc+0xa8>)
 8000b0e:	681b      	ldr	r3, [r3, #0]
 8000b10:	9301      	str	r3, [sp, #4]
 8000b12:	23a4      	movs	r3, #164	; 0xa4
 8000b14:	9a01      	ldr	r2, [sp, #4]
 8000b16:	005b      	lsls	r3, r3, #1
 8000b18:	58d5      	ldr	r5, [r2, r3]
 8000b1a:	2d00      	cmp	r5, #0
 8000b1c:	d02e      	beq.n	8000b7c <__register_exitproc+0x8c>
 8000b1e:	686c      	ldr	r4, [r5, #4]
 8000b20:	2c1f      	cmp	r4, #31
 8000b22:	dc30      	bgt.n	8000b86 <__register_exitproc+0x96>
 8000b24:	2e00      	cmp	r6, #0
 8000b26:	d10f      	bne.n	8000b48 <__register_exitproc+0x58>
 8000b28:	1c63      	adds	r3, r4, #1
 8000b2a:	606b      	str	r3, [r5, #4]
 8000b2c:	464b      	mov	r3, r9
 8000b2e:	3402      	adds	r4, #2
 8000b30:	00a4      	lsls	r4, r4, #2
 8000b32:	6838      	ldr	r0, [r7, #0]
 8000b34:	5163      	str	r3, [r4, r5]
 8000b36:	f7ff ffd9 	bl	8000aec <__retarget_lock_release_recursive>
 8000b3a:	2000      	movs	r0, #0
 8000b3c:	b002      	add	sp, #8
 8000b3e:	bce0      	pop	{r5, r6, r7}
 8000b40:	46ba      	mov	sl, r7
 8000b42:	46b1      	mov	r9, r6
 8000b44:	46a8      	mov	r8, r5
 8000b46:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000b48:	2288      	movs	r2, #136	; 0x88
 8000b4a:	4651      	mov	r1, sl
 8000b4c:	0028      	movs	r0, r5
 8000b4e:	00a3      	lsls	r3, r4, #2
 8000b50:	18eb      	adds	r3, r5, r3
 8000b52:	5099      	str	r1, [r3, r2]
 8000b54:	3a87      	subs	r2, #135	; 0x87
 8000b56:	40a2      	lsls	r2, r4
 8000b58:	3089      	adds	r0, #137	; 0x89
 8000b5a:	30ff      	adds	r0, #255	; 0xff
 8000b5c:	6801      	ldr	r1, [r0, #0]
 8000b5e:	4311      	orrs	r1, r2
 8000b60:	6001      	str	r1, [r0, #0]
 8000b62:	2184      	movs	r1, #132	; 0x84
 8000b64:	4640      	mov	r0, r8
 8000b66:	0049      	lsls	r1, r1, #1
 8000b68:	5058      	str	r0, [r3, r1]
 8000b6a:	2e02      	cmp	r6, #2
 8000b6c:	d1dc      	bne.n	8000b28 <__register_exitproc+0x38>
 8000b6e:	002b      	movs	r3, r5
 8000b70:	338d      	adds	r3, #141	; 0x8d
 8000b72:	33ff      	adds	r3, #255	; 0xff
 8000b74:	6819      	ldr	r1, [r3, #0]
 8000b76:	430a      	orrs	r2, r1
 8000b78:	601a      	str	r2, [r3, #0]
 8000b7a:	e7d5      	b.n	8000b28 <__register_exitproc+0x38>
 8000b7c:	0015      	movs	r5, r2
 8000b7e:	354d      	adds	r5, #77	; 0x4d
 8000b80:	35ff      	adds	r5, #255	; 0xff
 8000b82:	50d5      	str	r5, [r2, r3]
 8000b84:	e7cb      	b.n	8000b1e <__register_exitproc+0x2e>
 8000b86:	6838      	ldr	r0, [r7, #0]
 8000b88:	f7ff ffb0 	bl	8000aec <__retarget_lock_release_recursive>
 8000b8c:	2001      	movs	r0, #1
 8000b8e:	4240      	negs	r0, r0
 8000b90:	e7d4      	b.n	8000b3c <__register_exitproc+0x4c>
 8000b92:	46c0      	nop			; (mov r8, r8)
 8000b94:	20000430 	.word	0x20000430
 8000b98:	08000dcc 	.word	0x08000dcc

08000b9c <_init>:
 8000b9c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000b9e:	46c0      	nop			; (mov r8, r8)
 8000ba0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000ba2:	bc08      	pop	{r3}
 8000ba4:	469e      	mov	lr, r3
 8000ba6:	4770      	bx	lr

08000ba8 <_fini>:
 8000ba8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000baa:	46c0      	nop			; (mov r8, r8)
 8000bac:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000bae:	bc08      	pop	{r3}
 8000bb0:	469e      	mov	lr, r3
 8000bb2:	4770      	bx	lr
