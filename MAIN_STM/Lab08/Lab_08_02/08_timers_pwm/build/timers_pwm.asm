
build/timers_pwm.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00002020  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000078  080020e0  080020e0  000120e0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08002158  08002158  00012158  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08002160  08002160  00012160  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08002164  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  08002598  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  08002598  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       000013ed  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003fe  00000000  00000000  00021849  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000009e0  00000000  00000000  00021c47  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    000001d0  00000000  00000000  00022627  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000001a0  00000000  00000000  000227f7  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       00000b84  00000000  00000000  00022997  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000a28  00000000  00000000  0002351b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00023f43  2**0  CONTENTS, READONLY
 17 .debug_frame      0000098c  00000000  00000000  00023f90  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	080020c8 	.word	0x080020c8

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
 8000104:	080020c8 	.word	0x080020c8

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

08000220 <__aeabi_d2uiz>:
 8000220:	b570      	push	{r4, r5, r6, lr}
 8000222:	2200      	movs	r2, #0
 8000224:	4b0c      	ldr	r3, [pc, #48]	; (8000258 <__aeabi_d2uiz+0x38>)
 8000226:	0004      	movs	r4, r0
 8000228:	000d      	movs	r5, r1
 800022a:	f000 fea7 	bl	8000f7c <__aeabi_dcmpge>
 800022e:	2800      	cmp	r0, #0
 8000230:	d104      	bne.n	800023c <__aeabi_d2uiz+0x1c>
 8000232:	0020      	movs	r0, r4
 8000234:	0029      	movs	r1, r5
 8000236:	f000 fe11 	bl	8000e5c <__aeabi_d2iz>
 800023a:	bd70      	pop	{r4, r5, r6, pc}
 800023c:	4b06      	ldr	r3, [pc, #24]	; (8000258 <__aeabi_d2uiz+0x38>)
 800023e:	2200      	movs	r2, #0
 8000240:	0020      	movs	r0, r4
 8000242:	0029      	movs	r1, r5
 8000244:	f000 fa78 	bl	8000738 <__aeabi_dsub>
 8000248:	f000 fe08 	bl	8000e5c <__aeabi_d2iz>
 800024c:	2380      	movs	r3, #128	; 0x80
 800024e:	061b      	lsls	r3, r3, #24
 8000250:	469c      	mov	ip, r3
 8000252:	4460      	add	r0, ip
 8000254:	e7f1      	b.n	800023a <__aeabi_d2uiz+0x1a>
 8000256:	46c0      	nop			; (mov r8, r8)
 8000258:	41e00000 	.word	0x41e00000

0800025c <__aeabi_dmul>:
 800025c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800025e:	4657      	mov	r7, sl
 8000260:	464e      	mov	r6, r9
 8000262:	4645      	mov	r5, r8
 8000264:	46de      	mov	lr, fp
 8000266:	b5e0      	push	{r5, r6, r7, lr}
 8000268:	4698      	mov	r8, r3
 800026a:	030c      	lsls	r4, r1, #12
 800026c:	004b      	lsls	r3, r1, #1
 800026e:	0006      	movs	r6, r0
 8000270:	4692      	mov	sl, r2
 8000272:	b087      	sub	sp, #28
 8000274:	0b24      	lsrs	r4, r4, #12
 8000276:	0d5b      	lsrs	r3, r3, #21
 8000278:	0fcf      	lsrs	r7, r1, #31
 800027a:	2b00      	cmp	r3, #0
 800027c:	d100      	bne.n	8000280 <__aeabi_dmul+0x24>
 800027e:	e15e      	b.n	800053e <__aeabi_dmul+0x2e2>
 8000280:	4ada      	ldr	r2, [pc, #872]	; (80005ec <__aeabi_dmul+0x390>)
 8000282:	4293      	cmp	r3, r2
 8000284:	d100      	bne.n	8000288 <__aeabi_dmul+0x2c>
 8000286:	e177      	b.n	8000578 <__aeabi_dmul+0x31c>
 8000288:	0f42      	lsrs	r2, r0, #29
 800028a:	00e4      	lsls	r4, r4, #3
 800028c:	4314      	orrs	r4, r2
 800028e:	2280      	movs	r2, #128	; 0x80
 8000290:	0412      	lsls	r2, r2, #16
 8000292:	4314      	orrs	r4, r2
 8000294:	4ad6      	ldr	r2, [pc, #856]	; (80005f0 <__aeabi_dmul+0x394>)
 8000296:	00c5      	lsls	r5, r0, #3
 8000298:	4694      	mov	ip, r2
 800029a:	4463      	add	r3, ip
 800029c:	9300      	str	r3, [sp, #0]
 800029e:	2300      	movs	r3, #0
 80002a0:	4699      	mov	r9, r3
 80002a2:	469b      	mov	fp, r3
 80002a4:	4643      	mov	r3, r8
 80002a6:	4642      	mov	r2, r8
 80002a8:	031e      	lsls	r6, r3, #12
 80002aa:	0fd2      	lsrs	r2, r2, #31
 80002ac:	005b      	lsls	r3, r3, #1
 80002ae:	4650      	mov	r0, sl
 80002b0:	4690      	mov	r8, r2
 80002b2:	0b36      	lsrs	r6, r6, #12
 80002b4:	0d5b      	lsrs	r3, r3, #21
 80002b6:	d100      	bne.n	80002ba <__aeabi_dmul+0x5e>
 80002b8:	e122      	b.n	8000500 <__aeabi_dmul+0x2a4>
 80002ba:	4acc      	ldr	r2, [pc, #816]	; (80005ec <__aeabi_dmul+0x390>)
 80002bc:	4293      	cmp	r3, r2
 80002be:	d100      	bne.n	80002c2 <__aeabi_dmul+0x66>
 80002c0:	e164      	b.n	800058c <__aeabi_dmul+0x330>
 80002c2:	49cb      	ldr	r1, [pc, #812]	; (80005f0 <__aeabi_dmul+0x394>)
 80002c4:	0f42      	lsrs	r2, r0, #29
 80002c6:	468c      	mov	ip, r1
 80002c8:	9900      	ldr	r1, [sp, #0]
 80002ca:	4463      	add	r3, ip
 80002cc:	00f6      	lsls	r6, r6, #3
 80002ce:	468c      	mov	ip, r1
 80002d0:	4316      	orrs	r6, r2
 80002d2:	2280      	movs	r2, #128	; 0x80
 80002d4:	449c      	add	ip, r3
 80002d6:	0412      	lsls	r2, r2, #16
 80002d8:	4663      	mov	r3, ip
 80002da:	4316      	orrs	r6, r2
 80002dc:	00c2      	lsls	r2, r0, #3
 80002de:	2000      	movs	r0, #0
 80002e0:	9300      	str	r3, [sp, #0]
 80002e2:	9900      	ldr	r1, [sp, #0]
 80002e4:	4643      	mov	r3, r8
 80002e6:	3101      	adds	r1, #1
 80002e8:	468c      	mov	ip, r1
 80002ea:	4649      	mov	r1, r9
 80002ec:	407b      	eors	r3, r7
 80002ee:	9301      	str	r3, [sp, #4]
 80002f0:	290f      	cmp	r1, #15
 80002f2:	d826      	bhi.n	8000342 <__aeabi_dmul+0xe6>
 80002f4:	4bbf      	ldr	r3, [pc, #764]	; (80005f4 <__aeabi_dmul+0x398>)
 80002f6:	0089      	lsls	r1, r1, #2
 80002f8:	5859      	ldr	r1, [r3, r1]
 80002fa:	468f      	mov	pc, r1
 80002fc:	4643      	mov	r3, r8
 80002fe:	9301      	str	r3, [sp, #4]
 8000300:	0034      	movs	r4, r6
 8000302:	0015      	movs	r5, r2
 8000304:	4683      	mov	fp, r0
 8000306:	465b      	mov	r3, fp
 8000308:	2b02      	cmp	r3, #2
 800030a:	d016      	beq.n	800033a <__aeabi_dmul+0xde>
 800030c:	2b03      	cmp	r3, #3
 800030e:	d100      	bne.n	8000312 <__aeabi_dmul+0xb6>
 8000310:	e205      	b.n	800071e <__aeabi_dmul+0x4c2>
 8000312:	2b01      	cmp	r3, #1
 8000314:	d000      	beq.n	8000318 <__aeabi_dmul+0xbc>
 8000316:	e0cf      	b.n	80004b8 <__aeabi_dmul+0x25c>
 8000318:	2200      	movs	r2, #0
 800031a:	2400      	movs	r4, #0
 800031c:	2500      	movs	r5, #0
 800031e:	9b01      	ldr	r3, [sp, #4]
 8000320:	0512      	lsls	r2, r2, #20
 8000322:	4322      	orrs	r2, r4
 8000324:	07db      	lsls	r3, r3, #31
 8000326:	431a      	orrs	r2, r3
 8000328:	0028      	movs	r0, r5
 800032a:	0011      	movs	r1, r2
 800032c:	b007      	add	sp, #28
 800032e:	bcf0      	pop	{r4, r5, r6, r7}
 8000330:	46bb      	mov	fp, r7
 8000332:	46b2      	mov	sl, r6
 8000334:	46a9      	mov	r9, r5
 8000336:	46a0      	mov	r8, r4
 8000338:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800033a:	2400      	movs	r4, #0
 800033c:	2500      	movs	r5, #0
 800033e:	4aab      	ldr	r2, [pc, #684]	; (80005ec <__aeabi_dmul+0x390>)
 8000340:	e7ed      	b.n	800031e <__aeabi_dmul+0xc2>
 8000342:	0c28      	lsrs	r0, r5, #16
 8000344:	042d      	lsls	r5, r5, #16
 8000346:	0c2d      	lsrs	r5, r5, #16
 8000348:	002b      	movs	r3, r5
 800034a:	0c11      	lsrs	r1, r2, #16
 800034c:	0412      	lsls	r2, r2, #16
 800034e:	0c12      	lsrs	r2, r2, #16
 8000350:	4353      	muls	r3, r2
 8000352:	4698      	mov	r8, r3
 8000354:	0013      	movs	r3, r2
 8000356:	002f      	movs	r7, r5
 8000358:	4343      	muls	r3, r0
 800035a:	4699      	mov	r9, r3
 800035c:	434f      	muls	r7, r1
 800035e:	444f      	add	r7, r9
 8000360:	46bb      	mov	fp, r7
 8000362:	4647      	mov	r7, r8
 8000364:	000b      	movs	r3, r1
 8000366:	0c3f      	lsrs	r7, r7, #16
 8000368:	46ba      	mov	sl, r7
 800036a:	465f      	mov	r7, fp
 800036c:	4343      	muls	r3, r0
 800036e:	4457      	add	r7, sl
 8000370:	9302      	str	r3, [sp, #8]
 8000372:	45b9      	cmp	r9, r7
 8000374:	d906      	bls.n	8000384 <__aeabi_dmul+0x128>
 8000376:	469a      	mov	sl, r3
 8000378:	2380      	movs	r3, #128	; 0x80
 800037a:	025b      	lsls	r3, r3, #9
 800037c:	4699      	mov	r9, r3
 800037e:	44ca      	add	sl, r9
 8000380:	4653      	mov	r3, sl
 8000382:	9302      	str	r3, [sp, #8]
 8000384:	0c3b      	lsrs	r3, r7, #16
 8000386:	469b      	mov	fp, r3
 8000388:	4643      	mov	r3, r8
 800038a:	041b      	lsls	r3, r3, #16
 800038c:	043f      	lsls	r7, r7, #16
 800038e:	0c1b      	lsrs	r3, r3, #16
 8000390:	4698      	mov	r8, r3
 8000392:	003b      	movs	r3, r7
 8000394:	4443      	add	r3, r8
 8000396:	9304      	str	r3, [sp, #16]
 8000398:	0c33      	lsrs	r3, r6, #16
 800039a:	0436      	lsls	r6, r6, #16
 800039c:	0c36      	lsrs	r6, r6, #16
 800039e:	4698      	mov	r8, r3
 80003a0:	0033      	movs	r3, r6
 80003a2:	4343      	muls	r3, r0
 80003a4:	4699      	mov	r9, r3
 80003a6:	4643      	mov	r3, r8
 80003a8:	4343      	muls	r3, r0
 80003aa:	002f      	movs	r7, r5
 80003ac:	469a      	mov	sl, r3
 80003ae:	4643      	mov	r3, r8
 80003b0:	4377      	muls	r7, r6
 80003b2:	435d      	muls	r5, r3
 80003b4:	0c38      	lsrs	r0, r7, #16
 80003b6:	444d      	add	r5, r9
 80003b8:	1945      	adds	r5, r0, r5
 80003ba:	45a9      	cmp	r9, r5
 80003bc:	d903      	bls.n	80003c6 <__aeabi_dmul+0x16a>
 80003be:	2380      	movs	r3, #128	; 0x80
 80003c0:	025b      	lsls	r3, r3, #9
 80003c2:	4699      	mov	r9, r3
 80003c4:	44ca      	add	sl, r9
 80003c6:	043f      	lsls	r7, r7, #16
 80003c8:	0c28      	lsrs	r0, r5, #16
 80003ca:	0c3f      	lsrs	r7, r7, #16
 80003cc:	042d      	lsls	r5, r5, #16
 80003ce:	19ed      	adds	r5, r5, r7
 80003d0:	0c27      	lsrs	r7, r4, #16
 80003d2:	0424      	lsls	r4, r4, #16
 80003d4:	0c24      	lsrs	r4, r4, #16
 80003d6:	0003      	movs	r3, r0
 80003d8:	0020      	movs	r0, r4
 80003da:	4350      	muls	r0, r2
 80003dc:	437a      	muls	r2, r7
 80003de:	4691      	mov	r9, r2
 80003e0:	003a      	movs	r2, r7
 80003e2:	4453      	add	r3, sl
 80003e4:	9305      	str	r3, [sp, #20]
 80003e6:	0c03      	lsrs	r3, r0, #16
 80003e8:	469a      	mov	sl, r3
 80003ea:	434a      	muls	r2, r1
 80003ec:	4361      	muls	r1, r4
 80003ee:	4449      	add	r1, r9
 80003f0:	4451      	add	r1, sl
 80003f2:	44ab      	add	fp, r5
 80003f4:	4589      	cmp	r9, r1
 80003f6:	d903      	bls.n	8000400 <__aeabi_dmul+0x1a4>
 80003f8:	2380      	movs	r3, #128	; 0x80
 80003fa:	025b      	lsls	r3, r3, #9
 80003fc:	4699      	mov	r9, r3
 80003fe:	444a      	add	r2, r9
 8000400:	0400      	lsls	r0, r0, #16
 8000402:	0c0b      	lsrs	r3, r1, #16
 8000404:	0c00      	lsrs	r0, r0, #16
 8000406:	0409      	lsls	r1, r1, #16
 8000408:	1809      	adds	r1, r1, r0
 800040a:	0020      	movs	r0, r4
 800040c:	4699      	mov	r9, r3
 800040e:	4643      	mov	r3, r8
 8000410:	4370      	muls	r0, r6
 8000412:	435c      	muls	r4, r3
 8000414:	437e      	muls	r6, r7
 8000416:	435f      	muls	r7, r3
 8000418:	0c03      	lsrs	r3, r0, #16
 800041a:	4698      	mov	r8, r3
 800041c:	19a4      	adds	r4, r4, r6
 800041e:	4444      	add	r4, r8
 8000420:	444a      	add	r2, r9
 8000422:	9703      	str	r7, [sp, #12]
 8000424:	42a6      	cmp	r6, r4
 8000426:	d904      	bls.n	8000432 <__aeabi_dmul+0x1d6>
 8000428:	2380      	movs	r3, #128	; 0x80
 800042a:	025b      	lsls	r3, r3, #9
 800042c:	4698      	mov	r8, r3
 800042e:	4447      	add	r7, r8
 8000430:	9703      	str	r7, [sp, #12]
 8000432:	9b02      	ldr	r3, [sp, #8]
 8000434:	0400      	lsls	r0, r0, #16
 8000436:	445b      	add	r3, fp
 8000438:	001e      	movs	r6, r3
 800043a:	42ab      	cmp	r3, r5
 800043c:	41ad      	sbcs	r5, r5
 800043e:	0423      	lsls	r3, r4, #16
 8000440:	469a      	mov	sl, r3
 8000442:	9b05      	ldr	r3, [sp, #20]
 8000444:	1876      	adds	r6, r6, r1
 8000446:	4698      	mov	r8, r3
 8000448:	428e      	cmp	r6, r1
 800044a:	4189      	sbcs	r1, r1
 800044c:	0c00      	lsrs	r0, r0, #16
 800044e:	4450      	add	r0, sl
 8000450:	4440      	add	r0, r8
 8000452:	426d      	negs	r5, r5
 8000454:	1947      	adds	r7, r0, r5
 8000456:	46b8      	mov	r8, r7
 8000458:	4693      	mov	fp, r2
 800045a:	4249      	negs	r1, r1
 800045c:	4689      	mov	r9, r1
 800045e:	44c3      	add	fp, r8
 8000460:	44d9      	add	r9, fp
 8000462:	4298      	cmp	r0, r3
 8000464:	4180      	sbcs	r0, r0
 8000466:	45a8      	cmp	r8, r5
 8000468:	41ad      	sbcs	r5, r5
 800046a:	4593      	cmp	fp, r2
 800046c:	4192      	sbcs	r2, r2
 800046e:	4589      	cmp	r9, r1
 8000470:	4189      	sbcs	r1, r1
 8000472:	426d      	negs	r5, r5
 8000474:	4240      	negs	r0, r0
 8000476:	4328      	orrs	r0, r5
 8000478:	0c24      	lsrs	r4, r4, #16
 800047a:	4252      	negs	r2, r2
 800047c:	4249      	negs	r1, r1
 800047e:	430a      	orrs	r2, r1
 8000480:	9b03      	ldr	r3, [sp, #12]
 8000482:	1900      	adds	r0, r0, r4
 8000484:	1880      	adds	r0, r0, r2
 8000486:	18c7      	adds	r7, r0, r3
 8000488:	464b      	mov	r3, r9
 800048a:	0ddc      	lsrs	r4, r3, #23
 800048c:	9b04      	ldr	r3, [sp, #16]
 800048e:	0275      	lsls	r5, r6, #9
 8000490:	431d      	orrs	r5, r3
 8000492:	1e6a      	subs	r2, r5, #1
 8000494:	4195      	sbcs	r5, r2
 8000496:	464b      	mov	r3, r9
 8000498:	0df6      	lsrs	r6, r6, #23
 800049a:	027f      	lsls	r7, r7, #9
 800049c:	4335      	orrs	r5, r6
 800049e:	025a      	lsls	r2, r3, #9
 80004a0:	433c      	orrs	r4, r7
 80004a2:	4315      	orrs	r5, r2
 80004a4:	01fb      	lsls	r3, r7, #7
 80004a6:	d400      	bmi.n	80004aa <__aeabi_dmul+0x24e>
 80004a8:	e11c      	b.n	80006e4 <__aeabi_dmul+0x488>
 80004aa:	2101      	movs	r1, #1
 80004ac:	086a      	lsrs	r2, r5, #1
 80004ae:	400d      	ands	r5, r1
 80004b0:	4315      	orrs	r5, r2
 80004b2:	07e2      	lsls	r2, r4, #31
 80004b4:	4315      	orrs	r5, r2
 80004b6:	0864      	lsrs	r4, r4, #1
 80004b8:	494f      	ldr	r1, [pc, #316]	; (80005f8 <__aeabi_dmul+0x39c>)
 80004ba:	4461      	add	r1, ip
 80004bc:	2900      	cmp	r1, #0
 80004be:	dc00      	bgt.n	80004c2 <__aeabi_dmul+0x266>
 80004c0:	e0b0      	b.n	8000624 <__aeabi_dmul+0x3c8>
 80004c2:	076b      	lsls	r3, r5, #29
 80004c4:	d009      	beq.n	80004da <__aeabi_dmul+0x27e>
 80004c6:	220f      	movs	r2, #15
 80004c8:	402a      	ands	r2, r5
 80004ca:	2a04      	cmp	r2, #4
 80004cc:	d005      	beq.n	80004da <__aeabi_dmul+0x27e>
 80004ce:	1d2a      	adds	r2, r5, #4
 80004d0:	42aa      	cmp	r2, r5
 80004d2:	41ad      	sbcs	r5, r5
 80004d4:	426d      	negs	r5, r5
 80004d6:	1964      	adds	r4, r4, r5
 80004d8:	0015      	movs	r5, r2
 80004da:	01e3      	lsls	r3, r4, #7
 80004dc:	d504      	bpl.n	80004e8 <__aeabi_dmul+0x28c>
 80004de:	2180      	movs	r1, #128	; 0x80
 80004e0:	4a46      	ldr	r2, [pc, #280]	; (80005fc <__aeabi_dmul+0x3a0>)
 80004e2:	00c9      	lsls	r1, r1, #3
 80004e4:	4014      	ands	r4, r2
 80004e6:	4461      	add	r1, ip
 80004e8:	4a45      	ldr	r2, [pc, #276]	; (8000600 <__aeabi_dmul+0x3a4>)
 80004ea:	4291      	cmp	r1, r2
 80004ec:	dd00      	ble.n	80004f0 <__aeabi_dmul+0x294>
 80004ee:	e724      	b.n	800033a <__aeabi_dmul+0xde>
 80004f0:	0762      	lsls	r2, r4, #29
 80004f2:	08ed      	lsrs	r5, r5, #3
 80004f4:	0264      	lsls	r4, r4, #9
 80004f6:	0549      	lsls	r1, r1, #21
 80004f8:	4315      	orrs	r5, r2
 80004fa:	0b24      	lsrs	r4, r4, #12
 80004fc:	0d4a      	lsrs	r2, r1, #21
 80004fe:	e70e      	b.n	800031e <__aeabi_dmul+0xc2>
 8000500:	4652      	mov	r2, sl
 8000502:	4332      	orrs	r2, r6
 8000504:	d100      	bne.n	8000508 <__aeabi_dmul+0x2ac>
 8000506:	e07f      	b.n	8000608 <__aeabi_dmul+0x3ac>
 8000508:	2e00      	cmp	r6, #0
 800050a:	d100      	bne.n	800050e <__aeabi_dmul+0x2b2>
 800050c:	e0dc      	b.n	80006c8 <__aeabi_dmul+0x46c>
 800050e:	0030      	movs	r0, r6
 8000510:	f000 fd3e 	bl	8000f90 <__clzsi2>
 8000514:	0002      	movs	r2, r0
 8000516:	3a0b      	subs	r2, #11
 8000518:	231d      	movs	r3, #29
 800051a:	0001      	movs	r1, r0
 800051c:	1a9b      	subs	r3, r3, r2
 800051e:	4652      	mov	r2, sl
 8000520:	3908      	subs	r1, #8
 8000522:	40da      	lsrs	r2, r3
 8000524:	408e      	lsls	r6, r1
 8000526:	4316      	orrs	r6, r2
 8000528:	4652      	mov	r2, sl
 800052a:	408a      	lsls	r2, r1
 800052c:	9b00      	ldr	r3, [sp, #0]
 800052e:	4935      	ldr	r1, [pc, #212]	; (8000604 <__aeabi_dmul+0x3a8>)
 8000530:	1a18      	subs	r0, r3, r0
 8000532:	0003      	movs	r3, r0
 8000534:	468c      	mov	ip, r1
 8000536:	4463      	add	r3, ip
 8000538:	2000      	movs	r0, #0
 800053a:	9300      	str	r3, [sp, #0]
 800053c:	e6d1      	b.n	80002e2 <__aeabi_dmul+0x86>
 800053e:	0025      	movs	r5, r4
 8000540:	4305      	orrs	r5, r0
 8000542:	d04a      	beq.n	80005da <__aeabi_dmul+0x37e>
 8000544:	2c00      	cmp	r4, #0
 8000546:	d100      	bne.n	800054a <__aeabi_dmul+0x2ee>
 8000548:	e0b0      	b.n	80006ac <__aeabi_dmul+0x450>
 800054a:	0020      	movs	r0, r4
 800054c:	f000 fd20 	bl	8000f90 <__clzsi2>
 8000550:	0001      	movs	r1, r0
 8000552:	0002      	movs	r2, r0
 8000554:	390b      	subs	r1, #11
 8000556:	231d      	movs	r3, #29
 8000558:	0010      	movs	r0, r2
 800055a:	1a5b      	subs	r3, r3, r1
 800055c:	0031      	movs	r1, r6
 800055e:	0035      	movs	r5, r6
 8000560:	3808      	subs	r0, #8
 8000562:	4084      	lsls	r4, r0
 8000564:	40d9      	lsrs	r1, r3
 8000566:	4085      	lsls	r5, r0
 8000568:	430c      	orrs	r4, r1
 800056a:	4826      	ldr	r0, [pc, #152]	; (8000604 <__aeabi_dmul+0x3a8>)
 800056c:	1a83      	subs	r3, r0, r2
 800056e:	9300      	str	r3, [sp, #0]
 8000570:	2300      	movs	r3, #0
 8000572:	4699      	mov	r9, r3
 8000574:	469b      	mov	fp, r3
 8000576:	e695      	b.n	80002a4 <__aeabi_dmul+0x48>
 8000578:	0005      	movs	r5, r0
 800057a:	4325      	orrs	r5, r4
 800057c:	d126      	bne.n	80005cc <__aeabi_dmul+0x370>
 800057e:	2208      	movs	r2, #8
 8000580:	9300      	str	r3, [sp, #0]
 8000582:	2302      	movs	r3, #2
 8000584:	2400      	movs	r4, #0
 8000586:	4691      	mov	r9, r2
 8000588:	469b      	mov	fp, r3
 800058a:	e68b      	b.n	80002a4 <__aeabi_dmul+0x48>
 800058c:	4652      	mov	r2, sl
 800058e:	9b00      	ldr	r3, [sp, #0]
 8000590:	4332      	orrs	r2, r6
 8000592:	d110      	bne.n	80005b6 <__aeabi_dmul+0x35a>
 8000594:	4915      	ldr	r1, [pc, #84]	; (80005ec <__aeabi_dmul+0x390>)
 8000596:	2600      	movs	r6, #0
 8000598:	468c      	mov	ip, r1
 800059a:	4463      	add	r3, ip
 800059c:	4649      	mov	r1, r9
 800059e:	9300      	str	r3, [sp, #0]
 80005a0:	2302      	movs	r3, #2
 80005a2:	4319      	orrs	r1, r3
 80005a4:	4689      	mov	r9, r1
 80005a6:	2002      	movs	r0, #2
 80005a8:	e69b      	b.n	80002e2 <__aeabi_dmul+0x86>
 80005aa:	465b      	mov	r3, fp
 80005ac:	9701      	str	r7, [sp, #4]
 80005ae:	2b02      	cmp	r3, #2
 80005b0:	d000      	beq.n	80005b4 <__aeabi_dmul+0x358>
 80005b2:	e6ab      	b.n	800030c <__aeabi_dmul+0xb0>
 80005b4:	e6c1      	b.n	800033a <__aeabi_dmul+0xde>
 80005b6:	4a0d      	ldr	r2, [pc, #52]	; (80005ec <__aeabi_dmul+0x390>)
 80005b8:	2003      	movs	r0, #3
 80005ba:	4694      	mov	ip, r2
 80005bc:	4463      	add	r3, ip
 80005be:	464a      	mov	r2, r9
 80005c0:	9300      	str	r3, [sp, #0]
 80005c2:	2303      	movs	r3, #3
 80005c4:	431a      	orrs	r2, r3
 80005c6:	4691      	mov	r9, r2
 80005c8:	4652      	mov	r2, sl
 80005ca:	e68a      	b.n	80002e2 <__aeabi_dmul+0x86>
 80005cc:	220c      	movs	r2, #12
 80005ce:	9300      	str	r3, [sp, #0]
 80005d0:	2303      	movs	r3, #3
 80005d2:	0005      	movs	r5, r0
 80005d4:	4691      	mov	r9, r2
 80005d6:	469b      	mov	fp, r3
 80005d8:	e664      	b.n	80002a4 <__aeabi_dmul+0x48>
 80005da:	2304      	movs	r3, #4
 80005dc:	4699      	mov	r9, r3
 80005de:	2300      	movs	r3, #0
 80005e0:	9300      	str	r3, [sp, #0]
 80005e2:	3301      	adds	r3, #1
 80005e4:	2400      	movs	r4, #0
 80005e6:	469b      	mov	fp, r3
 80005e8:	e65c      	b.n	80002a4 <__aeabi_dmul+0x48>
 80005ea:	46c0      	nop			; (mov r8, r8)
 80005ec:	000007ff 	.word	0x000007ff
 80005f0:	fffffc01 	.word	0xfffffc01
 80005f4:	080020f4 	.word	0x080020f4
 80005f8:	000003ff 	.word	0x000003ff
 80005fc:	feffffff 	.word	0xfeffffff
 8000600:	000007fe 	.word	0x000007fe
 8000604:	fffffc0d 	.word	0xfffffc0d
 8000608:	4649      	mov	r1, r9
 800060a:	2301      	movs	r3, #1
 800060c:	4319      	orrs	r1, r3
 800060e:	4689      	mov	r9, r1
 8000610:	2600      	movs	r6, #0
 8000612:	2001      	movs	r0, #1
 8000614:	e665      	b.n	80002e2 <__aeabi_dmul+0x86>
 8000616:	2300      	movs	r3, #0
 8000618:	2480      	movs	r4, #128	; 0x80
 800061a:	2500      	movs	r5, #0
 800061c:	4a43      	ldr	r2, [pc, #268]	; (800072c <__aeabi_dmul+0x4d0>)
 800061e:	9301      	str	r3, [sp, #4]
 8000620:	0324      	lsls	r4, r4, #12
 8000622:	e67c      	b.n	800031e <__aeabi_dmul+0xc2>
 8000624:	2001      	movs	r0, #1
 8000626:	1a40      	subs	r0, r0, r1
 8000628:	2838      	cmp	r0, #56	; 0x38
 800062a:	dd00      	ble.n	800062e <__aeabi_dmul+0x3d2>
 800062c:	e674      	b.n	8000318 <__aeabi_dmul+0xbc>
 800062e:	281f      	cmp	r0, #31
 8000630:	dd5b      	ble.n	80006ea <__aeabi_dmul+0x48e>
 8000632:	221f      	movs	r2, #31
 8000634:	0023      	movs	r3, r4
 8000636:	4252      	negs	r2, r2
 8000638:	1a51      	subs	r1, r2, r1
 800063a:	40cb      	lsrs	r3, r1
 800063c:	0019      	movs	r1, r3
 800063e:	2820      	cmp	r0, #32
 8000640:	d003      	beq.n	800064a <__aeabi_dmul+0x3ee>
 8000642:	4a3b      	ldr	r2, [pc, #236]	; (8000730 <__aeabi_dmul+0x4d4>)
 8000644:	4462      	add	r2, ip
 8000646:	4094      	lsls	r4, r2
 8000648:	4325      	orrs	r5, r4
 800064a:	1e6a      	subs	r2, r5, #1
 800064c:	4195      	sbcs	r5, r2
 800064e:	002a      	movs	r2, r5
 8000650:	430a      	orrs	r2, r1
 8000652:	2107      	movs	r1, #7
 8000654:	000d      	movs	r5, r1
 8000656:	2400      	movs	r4, #0
 8000658:	4015      	ands	r5, r2
 800065a:	4211      	tst	r1, r2
 800065c:	d05b      	beq.n	8000716 <__aeabi_dmul+0x4ba>
 800065e:	210f      	movs	r1, #15
 8000660:	2400      	movs	r4, #0
 8000662:	4011      	ands	r1, r2
 8000664:	2904      	cmp	r1, #4
 8000666:	d053      	beq.n	8000710 <__aeabi_dmul+0x4b4>
 8000668:	1d11      	adds	r1, r2, #4
 800066a:	4291      	cmp	r1, r2
 800066c:	4192      	sbcs	r2, r2
 800066e:	4252      	negs	r2, r2
 8000670:	18a4      	adds	r4, r4, r2
 8000672:	000a      	movs	r2, r1
 8000674:	0223      	lsls	r3, r4, #8
 8000676:	d54b      	bpl.n	8000710 <__aeabi_dmul+0x4b4>
 8000678:	2201      	movs	r2, #1
 800067a:	2400      	movs	r4, #0
 800067c:	2500      	movs	r5, #0
 800067e:	e64e      	b.n	800031e <__aeabi_dmul+0xc2>
 8000680:	2380      	movs	r3, #128	; 0x80
 8000682:	031b      	lsls	r3, r3, #12
 8000684:	421c      	tst	r4, r3
 8000686:	d009      	beq.n	800069c <__aeabi_dmul+0x440>
 8000688:	421e      	tst	r6, r3
 800068a:	d107      	bne.n	800069c <__aeabi_dmul+0x440>
 800068c:	4333      	orrs	r3, r6
 800068e:	031c      	lsls	r4, r3, #12
 8000690:	4643      	mov	r3, r8
 8000692:	0015      	movs	r5, r2
 8000694:	0b24      	lsrs	r4, r4, #12
 8000696:	4a25      	ldr	r2, [pc, #148]	; (800072c <__aeabi_dmul+0x4d0>)
 8000698:	9301      	str	r3, [sp, #4]
 800069a:	e640      	b.n	800031e <__aeabi_dmul+0xc2>
 800069c:	2280      	movs	r2, #128	; 0x80
 800069e:	0312      	lsls	r2, r2, #12
 80006a0:	4314      	orrs	r4, r2
 80006a2:	0324      	lsls	r4, r4, #12
 80006a4:	4a21      	ldr	r2, [pc, #132]	; (800072c <__aeabi_dmul+0x4d0>)
 80006a6:	0b24      	lsrs	r4, r4, #12
 80006a8:	9701      	str	r7, [sp, #4]
 80006aa:	e638      	b.n	800031e <__aeabi_dmul+0xc2>
 80006ac:	f000 fc70 	bl	8000f90 <__clzsi2>
 80006b0:	0001      	movs	r1, r0
 80006b2:	0002      	movs	r2, r0
 80006b4:	3115      	adds	r1, #21
 80006b6:	3220      	adds	r2, #32
 80006b8:	291c      	cmp	r1, #28
 80006ba:	dc00      	bgt.n	80006be <__aeabi_dmul+0x462>
 80006bc:	e74b      	b.n	8000556 <__aeabi_dmul+0x2fa>
 80006be:	0034      	movs	r4, r6
 80006c0:	3808      	subs	r0, #8
 80006c2:	2500      	movs	r5, #0
 80006c4:	4084      	lsls	r4, r0
 80006c6:	e750      	b.n	800056a <__aeabi_dmul+0x30e>
 80006c8:	f000 fc62 	bl	8000f90 <__clzsi2>
 80006cc:	0003      	movs	r3, r0
 80006ce:	001a      	movs	r2, r3
 80006d0:	3215      	adds	r2, #21
 80006d2:	3020      	adds	r0, #32
 80006d4:	2a1c      	cmp	r2, #28
 80006d6:	dc00      	bgt.n	80006da <__aeabi_dmul+0x47e>
 80006d8:	e71e      	b.n	8000518 <__aeabi_dmul+0x2bc>
 80006da:	4656      	mov	r6, sl
 80006dc:	3b08      	subs	r3, #8
 80006de:	2200      	movs	r2, #0
 80006e0:	409e      	lsls	r6, r3
 80006e2:	e723      	b.n	800052c <__aeabi_dmul+0x2d0>
 80006e4:	9b00      	ldr	r3, [sp, #0]
 80006e6:	469c      	mov	ip, r3
 80006e8:	e6e6      	b.n	80004b8 <__aeabi_dmul+0x25c>
 80006ea:	4912      	ldr	r1, [pc, #72]	; (8000734 <__aeabi_dmul+0x4d8>)
 80006ec:	0022      	movs	r2, r4
 80006ee:	4461      	add	r1, ip
 80006f0:	002e      	movs	r6, r5
 80006f2:	408d      	lsls	r5, r1
 80006f4:	408a      	lsls	r2, r1
 80006f6:	40c6      	lsrs	r6, r0
 80006f8:	1e69      	subs	r1, r5, #1
 80006fa:	418d      	sbcs	r5, r1
 80006fc:	4332      	orrs	r2, r6
 80006fe:	432a      	orrs	r2, r5
 8000700:	40c4      	lsrs	r4, r0
 8000702:	0753      	lsls	r3, r2, #29
 8000704:	d0b6      	beq.n	8000674 <__aeabi_dmul+0x418>
 8000706:	210f      	movs	r1, #15
 8000708:	4011      	ands	r1, r2
 800070a:	2904      	cmp	r1, #4
 800070c:	d1ac      	bne.n	8000668 <__aeabi_dmul+0x40c>
 800070e:	e7b1      	b.n	8000674 <__aeabi_dmul+0x418>
 8000710:	0765      	lsls	r5, r4, #29
 8000712:	0264      	lsls	r4, r4, #9
 8000714:	0b24      	lsrs	r4, r4, #12
 8000716:	08d2      	lsrs	r2, r2, #3
 8000718:	4315      	orrs	r5, r2
 800071a:	2200      	movs	r2, #0
 800071c:	e5ff      	b.n	800031e <__aeabi_dmul+0xc2>
 800071e:	2280      	movs	r2, #128	; 0x80
 8000720:	0312      	lsls	r2, r2, #12
 8000722:	4314      	orrs	r4, r2
 8000724:	0324      	lsls	r4, r4, #12
 8000726:	4a01      	ldr	r2, [pc, #4]	; (800072c <__aeabi_dmul+0x4d0>)
 8000728:	0b24      	lsrs	r4, r4, #12
 800072a:	e5f8      	b.n	800031e <__aeabi_dmul+0xc2>
 800072c:	000007ff 	.word	0x000007ff
 8000730:	0000043e 	.word	0x0000043e
 8000734:	0000041e 	.word	0x0000041e

08000738 <__aeabi_dsub>:
 8000738:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800073a:	4657      	mov	r7, sl
 800073c:	464e      	mov	r6, r9
 800073e:	4645      	mov	r5, r8
 8000740:	46de      	mov	lr, fp
 8000742:	b5e0      	push	{r5, r6, r7, lr}
 8000744:	001e      	movs	r6, r3
 8000746:	0017      	movs	r7, r2
 8000748:	004a      	lsls	r2, r1, #1
 800074a:	030b      	lsls	r3, r1, #12
 800074c:	0d52      	lsrs	r2, r2, #21
 800074e:	0a5b      	lsrs	r3, r3, #9
 8000750:	4690      	mov	r8, r2
 8000752:	0f42      	lsrs	r2, r0, #29
 8000754:	431a      	orrs	r2, r3
 8000756:	0fcd      	lsrs	r5, r1, #31
 8000758:	4ccd      	ldr	r4, [pc, #820]	; (8000a90 <__aeabi_dsub+0x358>)
 800075a:	0331      	lsls	r1, r6, #12
 800075c:	00c3      	lsls	r3, r0, #3
 800075e:	4694      	mov	ip, r2
 8000760:	0070      	lsls	r0, r6, #1
 8000762:	0f7a      	lsrs	r2, r7, #29
 8000764:	0a49      	lsrs	r1, r1, #9
 8000766:	00ff      	lsls	r7, r7, #3
 8000768:	469a      	mov	sl, r3
 800076a:	46b9      	mov	r9, r7
 800076c:	0d40      	lsrs	r0, r0, #21
 800076e:	0ff6      	lsrs	r6, r6, #31
 8000770:	4311      	orrs	r1, r2
 8000772:	42a0      	cmp	r0, r4
 8000774:	d100      	bne.n	8000778 <__aeabi_dsub+0x40>
 8000776:	e0b1      	b.n	80008dc <__aeabi_dsub+0x1a4>
 8000778:	2201      	movs	r2, #1
 800077a:	4056      	eors	r6, r2
 800077c:	46b3      	mov	fp, r6
 800077e:	42b5      	cmp	r5, r6
 8000780:	d100      	bne.n	8000784 <__aeabi_dsub+0x4c>
 8000782:	e088      	b.n	8000896 <__aeabi_dsub+0x15e>
 8000784:	4642      	mov	r2, r8
 8000786:	1a12      	subs	r2, r2, r0
 8000788:	2a00      	cmp	r2, #0
 800078a:	dc00      	bgt.n	800078e <__aeabi_dsub+0x56>
 800078c:	e0ae      	b.n	80008ec <__aeabi_dsub+0x1b4>
 800078e:	2800      	cmp	r0, #0
 8000790:	d100      	bne.n	8000794 <__aeabi_dsub+0x5c>
 8000792:	e0c1      	b.n	8000918 <__aeabi_dsub+0x1e0>
 8000794:	48be      	ldr	r0, [pc, #760]	; (8000a90 <__aeabi_dsub+0x358>)
 8000796:	4580      	cmp	r8, r0
 8000798:	d100      	bne.n	800079c <__aeabi_dsub+0x64>
 800079a:	e151      	b.n	8000a40 <__aeabi_dsub+0x308>
 800079c:	2080      	movs	r0, #128	; 0x80
 800079e:	0400      	lsls	r0, r0, #16
 80007a0:	4301      	orrs	r1, r0
 80007a2:	2a38      	cmp	r2, #56	; 0x38
 80007a4:	dd00      	ble.n	80007a8 <__aeabi_dsub+0x70>
 80007a6:	e17b      	b.n	8000aa0 <__aeabi_dsub+0x368>
 80007a8:	2a1f      	cmp	r2, #31
 80007aa:	dd00      	ble.n	80007ae <__aeabi_dsub+0x76>
 80007ac:	e1ee      	b.n	8000b8c <__aeabi_dsub+0x454>
 80007ae:	2020      	movs	r0, #32
 80007b0:	003e      	movs	r6, r7
 80007b2:	1a80      	subs	r0, r0, r2
 80007b4:	000c      	movs	r4, r1
 80007b6:	40d6      	lsrs	r6, r2
 80007b8:	40d1      	lsrs	r1, r2
 80007ba:	4087      	lsls	r7, r0
 80007bc:	4662      	mov	r2, ip
 80007be:	4084      	lsls	r4, r0
 80007c0:	1a52      	subs	r2, r2, r1
 80007c2:	1e78      	subs	r0, r7, #1
 80007c4:	4187      	sbcs	r7, r0
 80007c6:	4694      	mov	ip, r2
 80007c8:	4334      	orrs	r4, r6
 80007ca:	4327      	orrs	r7, r4
 80007cc:	1bdc      	subs	r4, r3, r7
 80007ce:	42a3      	cmp	r3, r4
 80007d0:	419b      	sbcs	r3, r3
 80007d2:	4662      	mov	r2, ip
 80007d4:	425b      	negs	r3, r3
 80007d6:	1ad3      	subs	r3, r2, r3
 80007d8:	4699      	mov	r9, r3
 80007da:	464b      	mov	r3, r9
 80007dc:	021b      	lsls	r3, r3, #8
 80007de:	d400      	bmi.n	80007e2 <__aeabi_dsub+0xaa>
 80007e0:	e118      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 80007e2:	464b      	mov	r3, r9
 80007e4:	0258      	lsls	r0, r3, #9
 80007e6:	0a43      	lsrs	r3, r0, #9
 80007e8:	4699      	mov	r9, r3
 80007ea:	464b      	mov	r3, r9
 80007ec:	2b00      	cmp	r3, #0
 80007ee:	d100      	bne.n	80007f2 <__aeabi_dsub+0xba>
 80007f0:	e137      	b.n	8000a62 <__aeabi_dsub+0x32a>
 80007f2:	4648      	mov	r0, r9
 80007f4:	f000 fbcc 	bl	8000f90 <__clzsi2>
 80007f8:	0001      	movs	r1, r0
 80007fa:	3908      	subs	r1, #8
 80007fc:	2320      	movs	r3, #32
 80007fe:	0022      	movs	r2, r4
 8000800:	4648      	mov	r0, r9
 8000802:	1a5b      	subs	r3, r3, r1
 8000804:	40da      	lsrs	r2, r3
 8000806:	4088      	lsls	r0, r1
 8000808:	408c      	lsls	r4, r1
 800080a:	4643      	mov	r3, r8
 800080c:	4310      	orrs	r0, r2
 800080e:	4588      	cmp	r8, r1
 8000810:	dd00      	ble.n	8000814 <__aeabi_dsub+0xdc>
 8000812:	e136      	b.n	8000a82 <__aeabi_dsub+0x34a>
 8000814:	1ac9      	subs	r1, r1, r3
 8000816:	1c4b      	adds	r3, r1, #1
 8000818:	2b1f      	cmp	r3, #31
 800081a:	dd00      	ble.n	800081e <__aeabi_dsub+0xe6>
 800081c:	e0ea      	b.n	80009f4 <__aeabi_dsub+0x2bc>
 800081e:	2220      	movs	r2, #32
 8000820:	0026      	movs	r6, r4
 8000822:	1ad2      	subs	r2, r2, r3
 8000824:	0001      	movs	r1, r0
 8000826:	4094      	lsls	r4, r2
 8000828:	40de      	lsrs	r6, r3
 800082a:	40d8      	lsrs	r0, r3
 800082c:	2300      	movs	r3, #0
 800082e:	4091      	lsls	r1, r2
 8000830:	1e62      	subs	r2, r4, #1
 8000832:	4194      	sbcs	r4, r2
 8000834:	4681      	mov	r9, r0
 8000836:	4698      	mov	r8, r3
 8000838:	4331      	orrs	r1, r6
 800083a:	430c      	orrs	r4, r1
 800083c:	0763      	lsls	r3, r4, #29
 800083e:	d009      	beq.n	8000854 <__aeabi_dsub+0x11c>
 8000840:	230f      	movs	r3, #15
 8000842:	4023      	ands	r3, r4
 8000844:	2b04      	cmp	r3, #4
 8000846:	d005      	beq.n	8000854 <__aeabi_dsub+0x11c>
 8000848:	1d23      	adds	r3, r4, #4
 800084a:	42a3      	cmp	r3, r4
 800084c:	41a4      	sbcs	r4, r4
 800084e:	4264      	negs	r4, r4
 8000850:	44a1      	add	r9, r4
 8000852:	001c      	movs	r4, r3
 8000854:	464b      	mov	r3, r9
 8000856:	021b      	lsls	r3, r3, #8
 8000858:	d400      	bmi.n	800085c <__aeabi_dsub+0x124>
 800085a:	e0de      	b.n	8000a1a <__aeabi_dsub+0x2e2>
 800085c:	4641      	mov	r1, r8
 800085e:	4b8c      	ldr	r3, [pc, #560]	; (8000a90 <__aeabi_dsub+0x358>)
 8000860:	3101      	adds	r1, #1
 8000862:	4299      	cmp	r1, r3
 8000864:	d100      	bne.n	8000868 <__aeabi_dsub+0x130>
 8000866:	e0e7      	b.n	8000a38 <__aeabi_dsub+0x300>
 8000868:	464b      	mov	r3, r9
 800086a:	488a      	ldr	r0, [pc, #552]	; (8000a94 <__aeabi_dsub+0x35c>)
 800086c:	08e4      	lsrs	r4, r4, #3
 800086e:	4003      	ands	r3, r0
 8000870:	0018      	movs	r0, r3
 8000872:	0549      	lsls	r1, r1, #21
 8000874:	075b      	lsls	r3, r3, #29
 8000876:	0240      	lsls	r0, r0, #9
 8000878:	4323      	orrs	r3, r4
 800087a:	0d4a      	lsrs	r2, r1, #21
 800087c:	0b04      	lsrs	r4, r0, #12
 800087e:	0512      	lsls	r2, r2, #20
 8000880:	07ed      	lsls	r5, r5, #31
 8000882:	4322      	orrs	r2, r4
 8000884:	432a      	orrs	r2, r5
 8000886:	0018      	movs	r0, r3
 8000888:	0011      	movs	r1, r2
 800088a:	bcf0      	pop	{r4, r5, r6, r7}
 800088c:	46bb      	mov	fp, r7
 800088e:	46b2      	mov	sl, r6
 8000890:	46a9      	mov	r9, r5
 8000892:	46a0      	mov	r8, r4
 8000894:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000896:	4642      	mov	r2, r8
 8000898:	1a12      	subs	r2, r2, r0
 800089a:	2a00      	cmp	r2, #0
 800089c:	dd52      	ble.n	8000944 <__aeabi_dsub+0x20c>
 800089e:	2800      	cmp	r0, #0
 80008a0:	d100      	bne.n	80008a4 <__aeabi_dsub+0x16c>
 80008a2:	e09c      	b.n	80009de <__aeabi_dsub+0x2a6>
 80008a4:	45a0      	cmp	r8, r4
 80008a6:	d100      	bne.n	80008aa <__aeabi_dsub+0x172>
 80008a8:	e0ca      	b.n	8000a40 <__aeabi_dsub+0x308>
 80008aa:	2080      	movs	r0, #128	; 0x80
 80008ac:	0400      	lsls	r0, r0, #16
 80008ae:	4301      	orrs	r1, r0
 80008b0:	2a38      	cmp	r2, #56	; 0x38
 80008b2:	dd00      	ble.n	80008b6 <__aeabi_dsub+0x17e>
 80008b4:	e149      	b.n	8000b4a <__aeabi_dsub+0x412>
 80008b6:	2a1f      	cmp	r2, #31
 80008b8:	dc00      	bgt.n	80008bc <__aeabi_dsub+0x184>
 80008ba:	e197      	b.n	8000bec <__aeabi_dsub+0x4b4>
 80008bc:	0010      	movs	r0, r2
 80008be:	000e      	movs	r6, r1
 80008c0:	3820      	subs	r0, #32
 80008c2:	40c6      	lsrs	r6, r0
 80008c4:	2a20      	cmp	r2, #32
 80008c6:	d004      	beq.n	80008d2 <__aeabi_dsub+0x19a>
 80008c8:	2040      	movs	r0, #64	; 0x40
 80008ca:	1a82      	subs	r2, r0, r2
 80008cc:	4091      	lsls	r1, r2
 80008ce:	430f      	orrs	r7, r1
 80008d0:	46b9      	mov	r9, r7
 80008d2:	464c      	mov	r4, r9
 80008d4:	1e62      	subs	r2, r4, #1
 80008d6:	4194      	sbcs	r4, r2
 80008d8:	4334      	orrs	r4, r6
 80008da:	e13a      	b.n	8000b52 <__aeabi_dsub+0x41a>
 80008dc:	000a      	movs	r2, r1
 80008de:	433a      	orrs	r2, r7
 80008e0:	d028      	beq.n	8000934 <__aeabi_dsub+0x1fc>
 80008e2:	46b3      	mov	fp, r6
 80008e4:	42b5      	cmp	r5, r6
 80008e6:	d02b      	beq.n	8000940 <__aeabi_dsub+0x208>
 80008e8:	4a6b      	ldr	r2, [pc, #428]	; (8000a98 <__aeabi_dsub+0x360>)
 80008ea:	4442      	add	r2, r8
 80008ec:	2a00      	cmp	r2, #0
 80008ee:	d05d      	beq.n	80009ac <__aeabi_dsub+0x274>
 80008f0:	4642      	mov	r2, r8
 80008f2:	4644      	mov	r4, r8
 80008f4:	1a82      	subs	r2, r0, r2
 80008f6:	2c00      	cmp	r4, #0
 80008f8:	d000      	beq.n	80008fc <__aeabi_dsub+0x1c4>
 80008fa:	e0f5      	b.n	8000ae8 <__aeabi_dsub+0x3b0>
 80008fc:	4665      	mov	r5, ip
 80008fe:	431d      	orrs	r5, r3
 8000900:	d100      	bne.n	8000904 <__aeabi_dsub+0x1cc>
 8000902:	e19c      	b.n	8000c3e <__aeabi_dsub+0x506>
 8000904:	1e55      	subs	r5, r2, #1
 8000906:	2a01      	cmp	r2, #1
 8000908:	d100      	bne.n	800090c <__aeabi_dsub+0x1d4>
 800090a:	e1fb      	b.n	8000d04 <__aeabi_dsub+0x5cc>
 800090c:	4c60      	ldr	r4, [pc, #384]	; (8000a90 <__aeabi_dsub+0x358>)
 800090e:	42a2      	cmp	r2, r4
 8000910:	d100      	bne.n	8000914 <__aeabi_dsub+0x1dc>
 8000912:	e1bd      	b.n	8000c90 <__aeabi_dsub+0x558>
 8000914:	002a      	movs	r2, r5
 8000916:	e0f0      	b.n	8000afa <__aeabi_dsub+0x3c2>
 8000918:	0008      	movs	r0, r1
 800091a:	4338      	orrs	r0, r7
 800091c:	d100      	bne.n	8000920 <__aeabi_dsub+0x1e8>
 800091e:	e0c3      	b.n	8000aa8 <__aeabi_dsub+0x370>
 8000920:	1e50      	subs	r0, r2, #1
 8000922:	2a01      	cmp	r2, #1
 8000924:	d100      	bne.n	8000928 <__aeabi_dsub+0x1f0>
 8000926:	e1a8      	b.n	8000c7a <__aeabi_dsub+0x542>
 8000928:	4c59      	ldr	r4, [pc, #356]	; (8000a90 <__aeabi_dsub+0x358>)
 800092a:	42a2      	cmp	r2, r4
 800092c:	d100      	bne.n	8000930 <__aeabi_dsub+0x1f8>
 800092e:	e087      	b.n	8000a40 <__aeabi_dsub+0x308>
 8000930:	0002      	movs	r2, r0
 8000932:	e736      	b.n	80007a2 <__aeabi_dsub+0x6a>
 8000934:	2201      	movs	r2, #1
 8000936:	4056      	eors	r6, r2
 8000938:	46b3      	mov	fp, r6
 800093a:	42b5      	cmp	r5, r6
 800093c:	d000      	beq.n	8000940 <__aeabi_dsub+0x208>
 800093e:	e721      	b.n	8000784 <__aeabi_dsub+0x4c>
 8000940:	4a55      	ldr	r2, [pc, #340]	; (8000a98 <__aeabi_dsub+0x360>)
 8000942:	4442      	add	r2, r8
 8000944:	2a00      	cmp	r2, #0
 8000946:	d100      	bne.n	800094a <__aeabi_dsub+0x212>
 8000948:	e0b5      	b.n	8000ab6 <__aeabi_dsub+0x37e>
 800094a:	4642      	mov	r2, r8
 800094c:	4644      	mov	r4, r8
 800094e:	1a82      	subs	r2, r0, r2
 8000950:	2c00      	cmp	r4, #0
 8000952:	d100      	bne.n	8000956 <__aeabi_dsub+0x21e>
 8000954:	e138      	b.n	8000bc8 <__aeabi_dsub+0x490>
 8000956:	4e4e      	ldr	r6, [pc, #312]	; (8000a90 <__aeabi_dsub+0x358>)
 8000958:	42b0      	cmp	r0, r6
 800095a:	d100      	bne.n	800095e <__aeabi_dsub+0x226>
 800095c:	e1de      	b.n	8000d1c <__aeabi_dsub+0x5e4>
 800095e:	2680      	movs	r6, #128	; 0x80
 8000960:	4664      	mov	r4, ip
 8000962:	0436      	lsls	r6, r6, #16
 8000964:	4334      	orrs	r4, r6
 8000966:	46a4      	mov	ip, r4
 8000968:	2a38      	cmp	r2, #56	; 0x38
 800096a:	dd00      	ble.n	800096e <__aeabi_dsub+0x236>
 800096c:	e196      	b.n	8000c9c <__aeabi_dsub+0x564>
 800096e:	2a1f      	cmp	r2, #31
 8000970:	dd00      	ble.n	8000974 <__aeabi_dsub+0x23c>
 8000972:	e224      	b.n	8000dbe <__aeabi_dsub+0x686>
 8000974:	2620      	movs	r6, #32
 8000976:	1ab4      	subs	r4, r6, r2
 8000978:	46a2      	mov	sl, r4
 800097a:	4664      	mov	r4, ip
 800097c:	4656      	mov	r6, sl
 800097e:	40b4      	lsls	r4, r6
 8000980:	46a1      	mov	r9, r4
 8000982:	001c      	movs	r4, r3
 8000984:	464e      	mov	r6, r9
 8000986:	40d4      	lsrs	r4, r2
 8000988:	4326      	orrs	r6, r4
 800098a:	0034      	movs	r4, r6
 800098c:	4656      	mov	r6, sl
 800098e:	40b3      	lsls	r3, r6
 8000990:	1e5e      	subs	r6, r3, #1
 8000992:	41b3      	sbcs	r3, r6
 8000994:	431c      	orrs	r4, r3
 8000996:	4663      	mov	r3, ip
 8000998:	40d3      	lsrs	r3, r2
 800099a:	18c9      	adds	r1, r1, r3
 800099c:	19e4      	adds	r4, r4, r7
 800099e:	42bc      	cmp	r4, r7
 80009a0:	41bf      	sbcs	r7, r7
 80009a2:	427f      	negs	r7, r7
 80009a4:	46b9      	mov	r9, r7
 80009a6:	4680      	mov	r8, r0
 80009a8:	4489      	add	r9, r1
 80009aa:	e0d8      	b.n	8000b5e <__aeabi_dsub+0x426>
 80009ac:	4640      	mov	r0, r8
 80009ae:	4c3b      	ldr	r4, [pc, #236]	; (8000a9c <__aeabi_dsub+0x364>)
 80009b0:	3001      	adds	r0, #1
 80009b2:	4220      	tst	r0, r4
 80009b4:	d000      	beq.n	80009b8 <__aeabi_dsub+0x280>
 80009b6:	e0b4      	b.n	8000b22 <__aeabi_dsub+0x3ea>
 80009b8:	4640      	mov	r0, r8
 80009ba:	2800      	cmp	r0, #0
 80009bc:	d000      	beq.n	80009c0 <__aeabi_dsub+0x288>
 80009be:	e144      	b.n	8000c4a <__aeabi_dsub+0x512>
 80009c0:	4660      	mov	r0, ip
 80009c2:	4318      	orrs	r0, r3
 80009c4:	d100      	bne.n	80009c8 <__aeabi_dsub+0x290>
 80009c6:	e190      	b.n	8000cea <__aeabi_dsub+0x5b2>
 80009c8:	0008      	movs	r0, r1
 80009ca:	4338      	orrs	r0, r7
 80009cc:	d000      	beq.n	80009d0 <__aeabi_dsub+0x298>
 80009ce:	e1aa      	b.n	8000d26 <__aeabi_dsub+0x5ee>
 80009d0:	4661      	mov	r1, ip
 80009d2:	08db      	lsrs	r3, r3, #3
 80009d4:	0749      	lsls	r1, r1, #29
 80009d6:	430b      	orrs	r3, r1
 80009d8:	4661      	mov	r1, ip
 80009da:	08cc      	lsrs	r4, r1, #3
 80009dc:	e027      	b.n	8000a2e <__aeabi_dsub+0x2f6>
 80009de:	0008      	movs	r0, r1
 80009e0:	4338      	orrs	r0, r7
 80009e2:	d061      	beq.n	8000aa8 <__aeabi_dsub+0x370>
 80009e4:	1e50      	subs	r0, r2, #1
 80009e6:	2a01      	cmp	r2, #1
 80009e8:	d100      	bne.n	80009ec <__aeabi_dsub+0x2b4>
 80009ea:	e139      	b.n	8000c60 <__aeabi_dsub+0x528>
 80009ec:	42a2      	cmp	r2, r4
 80009ee:	d027      	beq.n	8000a40 <__aeabi_dsub+0x308>
 80009f0:	0002      	movs	r2, r0
 80009f2:	e75d      	b.n	80008b0 <__aeabi_dsub+0x178>
 80009f4:	0002      	movs	r2, r0
 80009f6:	391f      	subs	r1, #31
 80009f8:	40ca      	lsrs	r2, r1
 80009fa:	0011      	movs	r1, r2
 80009fc:	2b20      	cmp	r3, #32
 80009fe:	d003      	beq.n	8000a08 <__aeabi_dsub+0x2d0>
 8000a00:	2240      	movs	r2, #64	; 0x40
 8000a02:	1ad3      	subs	r3, r2, r3
 8000a04:	4098      	lsls	r0, r3
 8000a06:	4304      	orrs	r4, r0
 8000a08:	1e63      	subs	r3, r4, #1
 8000a0a:	419c      	sbcs	r4, r3
 8000a0c:	2300      	movs	r3, #0
 8000a0e:	4699      	mov	r9, r3
 8000a10:	4698      	mov	r8, r3
 8000a12:	430c      	orrs	r4, r1
 8000a14:	0763      	lsls	r3, r4, #29
 8000a16:	d000      	beq.n	8000a1a <__aeabi_dsub+0x2e2>
 8000a18:	e712      	b.n	8000840 <__aeabi_dsub+0x108>
 8000a1a:	464b      	mov	r3, r9
 8000a1c:	464a      	mov	r2, r9
 8000a1e:	08e4      	lsrs	r4, r4, #3
 8000a20:	075b      	lsls	r3, r3, #29
 8000a22:	4323      	orrs	r3, r4
 8000a24:	08d4      	lsrs	r4, r2, #3
 8000a26:	4642      	mov	r2, r8
 8000a28:	4919      	ldr	r1, [pc, #100]	; (8000a90 <__aeabi_dsub+0x358>)
 8000a2a:	428a      	cmp	r2, r1
 8000a2c:	d00e      	beq.n	8000a4c <__aeabi_dsub+0x314>
 8000a2e:	0324      	lsls	r4, r4, #12
 8000a30:	0552      	lsls	r2, r2, #21
 8000a32:	0b24      	lsrs	r4, r4, #12
 8000a34:	0d52      	lsrs	r2, r2, #21
 8000a36:	e722      	b.n	800087e <__aeabi_dsub+0x146>
 8000a38:	000a      	movs	r2, r1
 8000a3a:	2400      	movs	r4, #0
 8000a3c:	2300      	movs	r3, #0
 8000a3e:	e71e      	b.n	800087e <__aeabi_dsub+0x146>
 8000a40:	08db      	lsrs	r3, r3, #3
 8000a42:	4662      	mov	r2, ip
 8000a44:	0752      	lsls	r2, r2, #29
 8000a46:	4313      	orrs	r3, r2
 8000a48:	4662      	mov	r2, ip
 8000a4a:	08d4      	lsrs	r4, r2, #3
 8000a4c:	001a      	movs	r2, r3
 8000a4e:	4322      	orrs	r2, r4
 8000a50:	d100      	bne.n	8000a54 <__aeabi_dsub+0x31c>
 8000a52:	e1fc      	b.n	8000e4e <__aeabi_dsub+0x716>
 8000a54:	2280      	movs	r2, #128	; 0x80
 8000a56:	0312      	lsls	r2, r2, #12
 8000a58:	4314      	orrs	r4, r2
 8000a5a:	0324      	lsls	r4, r4, #12
 8000a5c:	4a0c      	ldr	r2, [pc, #48]	; (8000a90 <__aeabi_dsub+0x358>)
 8000a5e:	0b24      	lsrs	r4, r4, #12
 8000a60:	e70d      	b.n	800087e <__aeabi_dsub+0x146>
 8000a62:	0020      	movs	r0, r4
 8000a64:	f000 fa94 	bl	8000f90 <__clzsi2>
 8000a68:	0001      	movs	r1, r0
 8000a6a:	3118      	adds	r1, #24
 8000a6c:	291f      	cmp	r1, #31
 8000a6e:	dc00      	bgt.n	8000a72 <__aeabi_dsub+0x33a>
 8000a70:	e6c4      	b.n	80007fc <__aeabi_dsub+0xc4>
 8000a72:	3808      	subs	r0, #8
 8000a74:	4084      	lsls	r4, r0
 8000a76:	4643      	mov	r3, r8
 8000a78:	0020      	movs	r0, r4
 8000a7a:	2400      	movs	r4, #0
 8000a7c:	4588      	cmp	r8, r1
 8000a7e:	dc00      	bgt.n	8000a82 <__aeabi_dsub+0x34a>
 8000a80:	e6c8      	b.n	8000814 <__aeabi_dsub+0xdc>
 8000a82:	4a04      	ldr	r2, [pc, #16]	; (8000a94 <__aeabi_dsub+0x35c>)
 8000a84:	1a5b      	subs	r3, r3, r1
 8000a86:	4010      	ands	r0, r2
 8000a88:	4698      	mov	r8, r3
 8000a8a:	4681      	mov	r9, r0
 8000a8c:	e6d6      	b.n	800083c <__aeabi_dsub+0x104>
 8000a8e:	46c0      	nop			; (mov r8, r8)
 8000a90:	000007ff 	.word	0x000007ff
 8000a94:	ff7fffff 	.word	0xff7fffff
 8000a98:	fffff801 	.word	0xfffff801
 8000a9c:	000007fe 	.word	0x000007fe
 8000aa0:	430f      	orrs	r7, r1
 8000aa2:	1e7a      	subs	r2, r7, #1
 8000aa4:	4197      	sbcs	r7, r2
 8000aa6:	e691      	b.n	80007cc <__aeabi_dsub+0x94>
 8000aa8:	4661      	mov	r1, ip
 8000aaa:	08db      	lsrs	r3, r3, #3
 8000aac:	0749      	lsls	r1, r1, #29
 8000aae:	430b      	orrs	r3, r1
 8000ab0:	4661      	mov	r1, ip
 8000ab2:	08cc      	lsrs	r4, r1, #3
 8000ab4:	e7b8      	b.n	8000a28 <__aeabi_dsub+0x2f0>
 8000ab6:	4640      	mov	r0, r8
 8000ab8:	4cd3      	ldr	r4, [pc, #844]	; (8000e08 <__aeabi_dsub+0x6d0>)
 8000aba:	3001      	adds	r0, #1
 8000abc:	4220      	tst	r0, r4
 8000abe:	d000      	beq.n	8000ac2 <__aeabi_dsub+0x38a>
 8000ac0:	e0a2      	b.n	8000c08 <__aeabi_dsub+0x4d0>
 8000ac2:	4640      	mov	r0, r8
 8000ac4:	2800      	cmp	r0, #0
 8000ac6:	d000      	beq.n	8000aca <__aeabi_dsub+0x392>
 8000ac8:	e101      	b.n	8000cce <__aeabi_dsub+0x596>
 8000aca:	4660      	mov	r0, ip
 8000acc:	4318      	orrs	r0, r3
 8000ace:	d100      	bne.n	8000ad2 <__aeabi_dsub+0x39a>
 8000ad0:	e15e      	b.n	8000d90 <__aeabi_dsub+0x658>
 8000ad2:	0008      	movs	r0, r1
 8000ad4:	4338      	orrs	r0, r7
 8000ad6:	d000      	beq.n	8000ada <__aeabi_dsub+0x3a2>
 8000ad8:	e15f      	b.n	8000d9a <__aeabi_dsub+0x662>
 8000ada:	4661      	mov	r1, ip
 8000adc:	08db      	lsrs	r3, r3, #3
 8000ade:	0749      	lsls	r1, r1, #29
 8000ae0:	430b      	orrs	r3, r1
 8000ae2:	4661      	mov	r1, ip
 8000ae4:	08cc      	lsrs	r4, r1, #3
 8000ae6:	e7a2      	b.n	8000a2e <__aeabi_dsub+0x2f6>
 8000ae8:	4dc8      	ldr	r5, [pc, #800]	; (8000e0c <__aeabi_dsub+0x6d4>)
 8000aea:	42a8      	cmp	r0, r5
 8000aec:	d100      	bne.n	8000af0 <__aeabi_dsub+0x3b8>
 8000aee:	e0cf      	b.n	8000c90 <__aeabi_dsub+0x558>
 8000af0:	2580      	movs	r5, #128	; 0x80
 8000af2:	4664      	mov	r4, ip
 8000af4:	042d      	lsls	r5, r5, #16
 8000af6:	432c      	orrs	r4, r5
 8000af8:	46a4      	mov	ip, r4
 8000afa:	2a38      	cmp	r2, #56	; 0x38
 8000afc:	dc56      	bgt.n	8000bac <__aeabi_dsub+0x474>
 8000afe:	2a1f      	cmp	r2, #31
 8000b00:	dd00      	ble.n	8000b04 <__aeabi_dsub+0x3cc>
 8000b02:	e0d1      	b.n	8000ca8 <__aeabi_dsub+0x570>
 8000b04:	2520      	movs	r5, #32
 8000b06:	001e      	movs	r6, r3
 8000b08:	1aad      	subs	r5, r5, r2
 8000b0a:	4664      	mov	r4, ip
 8000b0c:	40ab      	lsls	r3, r5
 8000b0e:	40ac      	lsls	r4, r5
 8000b10:	40d6      	lsrs	r6, r2
 8000b12:	1e5d      	subs	r5, r3, #1
 8000b14:	41ab      	sbcs	r3, r5
 8000b16:	4334      	orrs	r4, r6
 8000b18:	4323      	orrs	r3, r4
 8000b1a:	4664      	mov	r4, ip
 8000b1c:	40d4      	lsrs	r4, r2
 8000b1e:	1b09      	subs	r1, r1, r4
 8000b20:	e049      	b.n	8000bb6 <__aeabi_dsub+0x47e>
 8000b22:	4660      	mov	r0, ip
 8000b24:	1bdc      	subs	r4, r3, r7
 8000b26:	1a46      	subs	r6, r0, r1
 8000b28:	42a3      	cmp	r3, r4
 8000b2a:	4180      	sbcs	r0, r0
 8000b2c:	4240      	negs	r0, r0
 8000b2e:	4681      	mov	r9, r0
 8000b30:	0030      	movs	r0, r6
 8000b32:	464e      	mov	r6, r9
 8000b34:	1b80      	subs	r0, r0, r6
 8000b36:	4681      	mov	r9, r0
 8000b38:	0200      	lsls	r0, r0, #8
 8000b3a:	d476      	bmi.n	8000c2a <__aeabi_dsub+0x4f2>
 8000b3c:	464b      	mov	r3, r9
 8000b3e:	4323      	orrs	r3, r4
 8000b40:	d000      	beq.n	8000b44 <__aeabi_dsub+0x40c>
 8000b42:	e652      	b.n	80007ea <__aeabi_dsub+0xb2>
 8000b44:	2400      	movs	r4, #0
 8000b46:	2500      	movs	r5, #0
 8000b48:	e771      	b.n	8000a2e <__aeabi_dsub+0x2f6>
 8000b4a:	4339      	orrs	r1, r7
 8000b4c:	000c      	movs	r4, r1
 8000b4e:	1e62      	subs	r2, r4, #1
 8000b50:	4194      	sbcs	r4, r2
 8000b52:	18e4      	adds	r4, r4, r3
 8000b54:	429c      	cmp	r4, r3
 8000b56:	419b      	sbcs	r3, r3
 8000b58:	425b      	negs	r3, r3
 8000b5a:	4463      	add	r3, ip
 8000b5c:	4699      	mov	r9, r3
 8000b5e:	464b      	mov	r3, r9
 8000b60:	021b      	lsls	r3, r3, #8
 8000b62:	d400      	bmi.n	8000b66 <__aeabi_dsub+0x42e>
 8000b64:	e756      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 8000b66:	2301      	movs	r3, #1
 8000b68:	469c      	mov	ip, r3
 8000b6a:	4ba8      	ldr	r3, [pc, #672]	; (8000e0c <__aeabi_dsub+0x6d4>)
 8000b6c:	44e0      	add	r8, ip
 8000b6e:	4598      	cmp	r8, r3
 8000b70:	d038      	beq.n	8000be4 <__aeabi_dsub+0x4ac>
 8000b72:	464b      	mov	r3, r9
 8000b74:	48a6      	ldr	r0, [pc, #664]	; (8000e10 <__aeabi_dsub+0x6d8>)
 8000b76:	2201      	movs	r2, #1
 8000b78:	4003      	ands	r3, r0
 8000b7a:	0018      	movs	r0, r3
 8000b7c:	0863      	lsrs	r3, r4, #1
 8000b7e:	4014      	ands	r4, r2
 8000b80:	431c      	orrs	r4, r3
 8000b82:	07c3      	lsls	r3, r0, #31
 8000b84:	431c      	orrs	r4, r3
 8000b86:	0843      	lsrs	r3, r0, #1
 8000b88:	4699      	mov	r9, r3
 8000b8a:	e657      	b.n	800083c <__aeabi_dsub+0x104>
 8000b8c:	0010      	movs	r0, r2
 8000b8e:	000e      	movs	r6, r1
 8000b90:	3820      	subs	r0, #32
 8000b92:	40c6      	lsrs	r6, r0
 8000b94:	2a20      	cmp	r2, #32
 8000b96:	d004      	beq.n	8000ba2 <__aeabi_dsub+0x46a>
 8000b98:	2040      	movs	r0, #64	; 0x40
 8000b9a:	1a82      	subs	r2, r0, r2
 8000b9c:	4091      	lsls	r1, r2
 8000b9e:	430f      	orrs	r7, r1
 8000ba0:	46b9      	mov	r9, r7
 8000ba2:	464f      	mov	r7, r9
 8000ba4:	1e7a      	subs	r2, r7, #1
 8000ba6:	4197      	sbcs	r7, r2
 8000ba8:	4337      	orrs	r7, r6
 8000baa:	e60f      	b.n	80007cc <__aeabi_dsub+0x94>
 8000bac:	4662      	mov	r2, ip
 8000bae:	431a      	orrs	r2, r3
 8000bb0:	0013      	movs	r3, r2
 8000bb2:	1e5a      	subs	r2, r3, #1
 8000bb4:	4193      	sbcs	r3, r2
 8000bb6:	1afc      	subs	r4, r7, r3
 8000bb8:	42a7      	cmp	r7, r4
 8000bba:	41bf      	sbcs	r7, r7
 8000bbc:	427f      	negs	r7, r7
 8000bbe:	1bcb      	subs	r3, r1, r7
 8000bc0:	4699      	mov	r9, r3
 8000bc2:	465d      	mov	r5, fp
 8000bc4:	4680      	mov	r8, r0
 8000bc6:	e608      	b.n	80007da <__aeabi_dsub+0xa2>
 8000bc8:	4666      	mov	r6, ip
 8000bca:	431e      	orrs	r6, r3
 8000bcc:	d100      	bne.n	8000bd0 <__aeabi_dsub+0x498>
 8000bce:	e0be      	b.n	8000d4e <__aeabi_dsub+0x616>
 8000bd0:	1e56      	subs	r6, r2, #1
 8000bd2:	2a01      	cmp	r2, #1
 8000bd4:	d100      	bne.n	8000bd8 <__aeabi_dsub+0x4a0>
 8000bd6:	e109      	b.n	8000dec <__aeabi_dsub+0x6b4>
 8000bd8:	4c8c      	ldr	r4, [pc, #560]	; (8000e0c <__aeabi_dsub+0x6d4>)
 8000bda:	42a2      	cmp	r2, r4
 8000bdc:	d100      	bne.n	8000be0 <__aeabi_dsub+0x4a8>
 8000bde:	e119      	b.n	8000e14 <__aeabi_dsub+0x6dc>
 8000be0:	0032      	movs	r2, r6
 8000be2:	e6c1      	b.n	8000968 <__aeabi_dsub+0x230>
 8000be4:	4642      	mov	r2, r8
 8000be6:	2400      	movs	r4, #0
 8000be8:	2300      	movs	r3, #0
 8000bea:	e648      	b.n	800087e <__aeabi_dsub+0x146>
 8000bec:	2020      	movs	r0, #32
 8000bee:	000c      	movs	r4, r1
 8000bf0:	1a80      	subs	r0, r0, r2
 8000bf2:	003e      	movs	r6, r7
 8000bf4:	4087      	lsls	r7, r0
 8000bf6:	4084      	lsls	r4, r0
 8000bf8:	40d6      	lsrs	r6, r2
 8000bfa:	1e78      	subs	r0, r7, #1
 8000bfc:	4187      	sbcs	r7, r0
 8000bfe:	40d1      	lsrs	r1, r2
 8000c00:	4334      	orrs	r4, r6
 8000c02:	433c      	orrs	r4, r7
 8000c04:	448c      	add	ip, r1
 8000c06:	e7a4      	b.n	8000b52 <__aeabi_dsub+0x41a>
 8000c08:	4a80      	ldr	r2, [pc, #512]	; (8000e0c <__aeabi_dsub+0x6d4>)
 8000c0a:	4290      	cmp	r0, r2
 8000c0c:	d100      	bne.n	8000c10 <__aeabi_dsub+0x4d8>
 8000c0e:	e0e9      	b.n	8000de4 <__aeabi_dsub+0x6ac>
 8000c10:	19df      	adds	r7, r3, r7
 8000c12:	429f      	cmp	r7, r3
 8000c14:	419b      	sbcs	r3, r3
 8000c16:	4461      	add	r1, ip
 8000c18:	425b      	negs	r3, r3
 8000c1a:	18c9      	adds	r1, r1, r3
 8000c1c:	07cc      	lsls	r4, r1, #31
 8000c1e:	087f      	lsrs	r7, r7, #1
 8000c20:	084b      	lsrs	r3, r1, #1
 8000c22:	4699      	mov	r9, r3
 8000c24:	4680      	mov	r8, r0
 8000c26:	433c      	orrs	r4, r7
 8000c28:	e6f4      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 8000c2a:	1afc      	subs	r4, r7, r3
 8000c2c:	42a7      	cmp	r7, r4
 8000c2e:	41bf      	sbcs	r7, r7
 8000c30:	4663      	mov	r3, ip
 8000c32:	427f      	negs	r7, r7
 8000c34:	1ac9      	subs	r1, r1, r3
 8000c36:	1bcb      	subs	r3, r1, r7
 8000c38:	4699      	mov	r9, r3
 8000c3a:	465d      	mov	r5, fp
 8000c3c:	e5d5      	b.n	80007ea <__aeabi_dsub+0xb2>
 8000c3e:	08ff      	lsrs	r7, r7, #3
 8000c40:	074b      	lsls	r3, r1, #29
 8000c42:	465d      	mov	r5, fp
 8000c44:	433b      	orrs	r3, r7
 8000c46:	08cc      	lsrs	r4, r1, #3
 8000c48:	e6ee      	b.n	8000a28 <__aeabi_dsub+0x2f0>
 8000c4a:	4662      	mov	r2, ip
 8000c4c:	431a      	orrs	r2, r3
 8000c4e:	d000      	beq.n	8000c52 <__aeabi_dsub+0x51a>
 8000c50:	e082      	b.n	8000d58 <__aeabi_dsub+0x620>
 8000c52:	000b      	movs	r3, r1
 8000c54:	433b      	orrs	r3, r7
 8000c56:	d11b      	bne.n	8000c90 <__aeabi_dsub+0x558>
 8000c58:	2480      	movs	r4, #128	; 0x80
 8000c5a:	2500      	movs	r5, #0
 8000c5c:	0324      	lsls	r4, r4, #12
 8000c5e:	e6f9      	b.n	8000a54 <__aeabi_dsub+0x31c>
 8000c60:	19dc      	adds	r4, r3, r7
 8000c62:	429c      	cmp	r4, r3
 8000c64:	419b      	sbcs	r3, r3
 8000c66:	4461      	add	r1, ip
 8000c68:	4689      	mov	r9, r1
 8000c6a:	425b      	negs	r3, r3
 8000c6c:	4499      	add	r9, r3
 8000c6e:	464b      	mov	r3, r9
 8000c70:	021b      	lsls	r3, r3, #8
 8000c72:	d444      	bmi.n	8000cfe <__aeabi_dsub+0x5c6>
 8000c74:	2301      	movs	r3, #1
 8000c76:	4698      	mov	r8, r3
 8000c78:	e6cc      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 8000c7a:	1bdc      	subs	r4, r3, r7
 8000c7c:	4662      	mov	r2, ip
 8000c7e:	42a3      	cmp	r3, r4
 8000c80:	419b      	sbcs	r3, r3
 8000c82:	1a51      	subs	r1, r2, r1
 8000c84:	425b      	negs	r3, r3
 8000c86:	1acb      	subs	r3, r1, r3
 8000c88:	4699      	mov	r9, r3
 8000c8a:	2301      	movs	r3, #1
 8000c8c:	4698      	mov	r8, r3
 8000c8e:	e5a4      	b.n	80007da <__aeabi_dsub+0xa2>
 8000c90:	08ff      	lsrs	r7, r7, #3
 8000c92:	074b      	lsls	r3, r1, #29
 8000c94:	465d      	mov	r5, fp
 8000c96:	433b      	orrs	r3, r7
 8000c98:	08cc      	lsrs	r4, r1, #3
 8000c9a:	e6d7      	b.n	8000a4c <__aeabi_dsub+0x314>
 8000c9c:	4662      	mov	r2, ip
 8000c9e:	431a      	orrs	r2, r3
 8000ca0:	0014      	movs	r4, r2
 8000ca2:	1e63      	subs	r3, r4, #1
 8000ca4:	419c      	sbcs	r4, r3
 8000ca6:	e679      	b.n	800099c <__aeabi_dsub+0x264>
 8000ca8:	0015      	movs	r5, r2
 8000caa:	4664      	mov	r4, ip
 8000cac:	3d20      	subs	r5, #32
 8000cae:	40ec      	lsrs	r4, r5
 8000cb0:	46a0      	mov	r8, r4
 8000cb2:	2a20      	cmp	r2, #32
 8000cb4:	d005      	beq.n	8000cc2 <__aeabi_dsub+0x58a>
 8000cb6:	2540      	movs	r5, #64	; 0x40
 8000cb8:	4664      	mov	r4, ip
 8000cba:	1aaa      	subs	r2, r5, r2
 8000cbc:	4094      	lsls	r4, r2
 8000cbe:	4323      	orrs	r3, r4
 8000cc0:	469a      	mov	sl, r3
 8000cc2:	4654      	mov	r4, sl
 8000cc4:	1e63      	subs	r3, r4, #1
 8000cc6:	419c      	sbcs	r4, r3
 8000cc8:	4643      	mov	r3, r8
 8000cca:	4323      	orrs	r3, r4
 8000ccc:	e773      	b.n	8000bb6 <__aeabi_dsub+0x47e>
 8000cce:	4662      	mov	r2, ip
 8000cd0:	431a      	orrs	r2, r3
 8000cd2:	d023      	beq.n	8000d1c <__aeabi_dsub+0x5e4>
 8000cd4:	000a      	movs	r2, r1
 8000cd6:	433a      	orrs	r2, r7
 8000cd8:	d000      	beq.n	8000cdc <__aeabi_dsub+0x5a4>
 8000cda:	e0a0      	b.n	8000e1e <__aeabi_dsub+0x6e6>
 8000cdc:	4662      	mov	r2, ip
 8000cde:	08db      	lsrs	r3, r3, #3
 8000ce0:	0752      	lsls	r2, r2, #29
 8000ce2:	4313      	orrs	r3, r2
 8000ce4:	4662      	mov	r2, ip
 8000ce6:	08d4      	lsrs	r4, r2, #3
 8000ce8:	e6b0      	b.n	8000a4c <__aeabi_dsub+0x314>
 8000cea:	000b      	movs	r3, r1
 8000cec:	433b      	orrs	r3, r7
 8000cee:	d100      	bne.n	8000cf2 <__aeabi_dsub+0x5ba>
 8000cf0:	e728      	b.n	8000b44 <__aeabi_dsub+0x40c>
 8000cf2:	08ff      	lsrs	r7, r7, #3
 8000cf4:	074b      	lsls	r3, r1, #29
 8000cf6:	465d      	mov	r5, fp
 8000cf8:	433b      	orrs	r3, r7
 8000cfa:	08cc      	lsrs	r4, r1, #3
 8000cfc:	e697      	b.n	8000a2e <__aeabi_dsub+0x2f6>
 8000cfe:	2302      	movs	r3, #2
 8000d00:	4698      	mov	r8, r3
 8000d02:	e736      	b.n	8000b72 <__aeabi_dsub+0x43a>
 8000d04:	1afc      	subs	r4, r7, r3
 8000d06:	42a7      	cmp	r7, r4
 8000d08:	41bf      	sbcs	r7, r7
 8000d0a:	4663      	mov	r3, ip
 8000d0c:	427f      	negs	r7, r7
 8000d0e:	1ac9      	subs	r1, r1, r3
 8000d10:	1bcb      	subs	r3, r1, r7
 8000d12:	4699      	mov	r9, r3
 8000d14:	2301      	movs	r3, #1
 8000d16:	465d      	mov	r5, fp
 8000d18:	4698      	mov	r8, r3
 8000d1a:	e55e      	b.n	80007da <__aeabi_dsub+0xa2>
 8000d1c:	074b      	lsls	r3, r1, #29
 8000d1e:	08ff      	lsrs	r7, r7, #3
 8000d20:	433b      	orrs	r3, r7
 8000d22:	08cc      	lsrs	r4, r1, #3
 8000d24:	e692      	b.n	8000a4c <__aeabi_dsub+0x314>
 8000d26:	1bdc      	subs	r4, r3, r7
 8000d28:	4660      	mov	r0, ip
 8000d2a:	42a3      	cmp	r3, r4
 8000d2c:	41b6      	sbcs	r6, r6
 8000d2e:	1a40      	subs	r0, r0, r1
 8000d30:	4276      	negs	r6, r6
 8000d32:	1b80      	subs	r0, r0, r6
 8000d34:	4681      	mov	r9, r0
 8000d36:	0200      	lsls	r0, r0, #8
 8000d38:	d560      	bpl.n	8000dfc <__aeabi_dsub+0x6c4>
 8000d3a:	1afc      	subs	r4, r7, r3
 8000d3c:	42a7      	cmp	r7, r4
 8000d3e:	41bf      	sbcs	r7, r7
 8000d40:	4663      	mov	r3, ip
 8000d42:	427f      	negs	r7, r7
 8000d44:	1ac9      	subs	r1, r1, r3
 8000d46:	1bcb      	subs	r3, r1, r7
 8000d48:	4699      	mov	r9, r3
 8000d4a:	465d      	mov	r5, fp
 8000d4c:	e576      	b.n	800083c <__aeabi_dsub+0x104>
 8000d4e:	08ff      	lsrs	r7, r7, #3
 8000d50:	074b      	lsls	r3, r1, #29
 8000d52:	433b      	orrs	r3, r7
 8000d54:	08cc      	lsrs	r4, r1, #3
 8000d56:	e667      	b.n	8000a28 <__aeabi_dsub+0x2f0>
 8000d58:	000a      	movs	r2, r1
 8000d5a:	08db      	lsrs	r3, r3, #3
 8000d5c:	433a      	orrs	r2, r7
 8000d5e:	d100      	bne.n	8000d62 <__aeabi_dsub+0x62a>
 8000d60:	e66f      	b.n	8000a42 <__aeabi_dsub+0x30a>
 8000d62:	4662      	mov	r2, ip
 8000d64:	0752      	lsls	r2, r2, #29
 8000d66:	4313      	orrs	r3, r2
 8000d68:	4662      	mov	r2, ip
 8000d6a:	08d4      	lsrs	r4, r2, #3
 8000d6c:	2280      	movs	r2, #128	; 0x80
 8000d6e:	0312      	lsls	r2, r2, #12
 8000d70:	4214      	tst	r4, r2
 8000d72:	d007      	beq.n	8000d84 <__aeabi_dsub+0x64c>
 8000d74:	08c8      	lsrs	r0, r1, #3
 8000d76:	4210      	tst	r0, r2
 8000d78:	d104      	bne.n	8000d84 <__aeabi_dsub+0x64c>
 8000d7a:	465d      	mov	r5, fp
 8000d7c:	0004      	movs	r4, r0
 8000d7e:	08fb      	lsrs	r3, r7, #3
 8000d80:	0749      	lsls	r1, r1, #29
 8000d82:	430b      	orrs	r3, r1
 8000d84:	0f5a      	lsrs	r2, r3, #29
 8000d86:	00db      	lsls	r3, r3, #3
 8000d88:	08db      	lsrs	r3, r3, #3
 8000d8a:	0752      	lsls	r2, r2, #29
 8000d8c:	4313      	orrs	r3, r2
 8000d8e:	e65d      	b.n	8000a4c <__aeabi_dsub+0x314>
 8000d90:	074b      	lsls	r3, r1, #29
 8000d92:	08ff      	lsrs	r7, r7, #3
 8000d94:	433b      	orrs	r3, r7
 8000d96:	08cc      	lsrs	r4, r1, #3
 8000d98:	e649      	b.n	8000a2e <__aeabi_dsub+0x2f6>
 8000d9a:	19dc      	adds	r4, r3, r7
 8000d9c:	429c      	cmp	r4, r3
 8000d9e:	419b      	sbcs	r3, r3
 8000da0:	4461      	add	r1, ip
 8000da2:	4689      	mov	r9, r1
 8000da4:	425b      	negs	r3, r3
 8000da6:	4499      	add	r9, r3
 8000da8:	464b      	mov	r3, r9
 8000daa:	021b      	lsls	r3, r3, #8
 8000dac:	d400      	bmi.n	8000db0 <__aeabi_dsub+0x678>
 8000dae:	e631      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 8000db0:	464a      	mov	r2, r9
 8000db2:	4b17      	ldr	r3, [pc, #92]	; (8000e10 <__aeabi_dsub+0x6d8>)
 8000db4:	401a      	ands	r2, r3
 8000db6:	2301      	movs	r3, #1
 8000db8:	4691      	mov	r9, r2
 8000dba:	4698      	mov	r8, r3
 8000dbc:	e62a      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 8000dbe:	0016      	movs	r6, r2
 8000dc0:	4664      	mov	r4, ip
 8000dc2:	3e20      	subs	r6, #32
 8000dc4:	40f4      	lsrs	r4, r6
 8000dc6:	46a0      	mov	r8, r4
 8000dc8:	2a20      	cmp	r2, #32
 8000dca:	d005      	beq.n	8000dd8 <__aeabi_dsub+0x6a0>
 8000dcc:	2640      	movs	r6, #64	; 0x40
 8000dce:	4664      	mov	r4, ip
 8000dd0:	1ab2      	subs	r2, r6, r2
 8000dd2:	4094      	lsls	r4, r2
 8000dd4:	4323      	orrs	r3, r4
 8000dd6:	469a      	mov	sl, r3
 8000dd8:	4654      	mov	r4, sl
 8000dda:	1e63      	subs	r3, r4, #1
 8000ddc:	419c      	sbcs	r4, r3
 8000dde:	4643      	mov	r3, r8
 8000de0:	431c      	orrs	r4, r3
 8000de2:	e5db      	b.n	800099c <__aeabi_dsub+0x264>
 8000de4:	0002      	movs	r2, r0
 8000de6:	2400      	movs	r4, #0
 8000de8:	2300      	movs	r3, #0
 8000dea:	e548      	b.n	800087e <__aeabi_dsub+0x146>
 8000dec:	19dc      	adds	r4, r3, r7
 8000dee:	42bc      	cmp	r4, r7
 8000df0:	41bf      	sbcs	r7, r7
 8000df2:	4461      	add	r1, ip
 8000df4:	4689      	mov	r9, r1
 8000df6:	427f      	negs	r7, r7
 8000df8:	44b9      	add	r9, r7
 8000dfa:	e738      	b.n	8000c6e <__aeabi_dsub+0x536>
 8000dfc:	464b      	mov	r3, r9
 8000dfe:	4323      	orrs	r3, r4
 8000e00:	d100      	bne.n	8000e04 <__aeabi_dsub+0x6cc>
 8000e02:	e69f      	b.n	8000b44 <__aeabi_dsub+0x40c>
 8000e04:	e606      	b.n	8000a14 <__aeabi_dsub+0x2dc>
 8000e06:	46c0      	nop			; (mov r8, r8)
 8000e08:	000007fe 	.word	0x000007fe
 8000e0c:	000007ff 	.word	0x000007ff
 8000e10:	ff7fffff 	.word	0xff7fffff
 8000e14:	08ff      	lsrs	r7, r7, #3
 8000e16:	074b      	lsls	r3, r1, #29
 8000e18:	433b      	orrs	r3, r7
 8000e1a:	08cc      	lsrs	r4, r1, #3
 8000e1c:	e616      	b.n	8000a4c <__aeabi_dsub+0x314>
 8000e1e:	4662      	mov	r2, ip
 8000e20:	08db      	lsrs	r3, r3, #3
 8000e22:	0752      	lsls	r2, r2, #29
 8000e24:	4313      	orrs	r3, r2
 8000e26:	4662      	mov	r2, ip
 8000e28:	08d4      	lsrs	r4, r2, #3
 8000e2a:	2280      	movs	r2, #128	; 0x80
 8000e2c:	0312      	lsls	r2, r2, #12
 8000e2e:	4214      	tst	r4, r2
 8000e30:	d007      	beq.n	8000e42 <__aeabi_dsub+0x70a>
 8000e32:	08c8      	lsrs	r0, r1, #3
 8000e34:	4210      	tst	r0, r2
 8000e36:	d104      	bne.n	8000e42 <__aeabi_dsub+0x70a>
 8000e38:	465d      	mov	r5, fp
 8000e3a:	0004      	movs	r4, r0
 8000e3c:	08fb      	lsrs	r3, r7, #3
 8000e3e:	0749      	lsls	r1, r1, #29
 8000e40:	430b      	orrs	r3, r1
 8000e42:	0f5a      	lsrs	r2, r3, #29
 8000e44:	00db      	lsls	r3, r3, #3
 8000e46:	0752      	lsls	r2, r2, #29
 8000e48:	08db      	lsrs	r3, r3, #3
 8000e4a:	4313      	orrs	r3, r2
 8000e4c:	e5fe      	b.n	8000a4c <__aeabi_dsub+0x314>
 8000e4e:	2300      	movs	r3, #0
 8000e50:	4a01      	ldr	r2, [pc, #4]	; (8000e58 <__aeabi_dsub+0x720>)
 8000e52:	001c      	movs	r4, r3
 8000e54:	e513      	b.n	800087e <__aeabi_dsub+0x146>
 8000e56:	46c0      	nop			; (mov r8, r8)
 8000e58:	000007ff 	.word	0x000007ff

08000e5c <__aeabi_d2iz>:
 8000e5c:	000a      	movs	r2, r1
 8000e5e:	b530      	push	{r4, r5, lr}
 8000e60:	4c13      	ldr	r4, [pc, #76]	; (8000eb0 <__aeabi_d2iz+0x54>)
 8000e62:	0053      	lsls	r3, r2, #1
 8000e64:	0309      	lsls	r1, r1, #12
 8000e66:	0005      	movs	r5, r0
 8000e68:	0b09      	lsrs	r1, r1, #12
 8000e6a:	2000      	movs	r0, #0
 8000e6c:	0d5b      	lsrs	r3, r3, #21
 8000e6e:	0fd2      	lsrs	r2, r2, #31
 8000e70:	42a3      	cmp	r3, r4
 8000e72:	dd04      	ble.n	8000e7e <__aeabi_d2iz+0x22>
 8000e74:	480f      	ldr	r0, [pc, #60]	; (8000eb4 <__aeabi_d2iz+0x58>)
 8000e76:	4283      	cmp	r3, r0
 8000e78:	dd02      	ble.n	8000e80 <__aeabi_d2iz+0x24>
 8000e7a:	4b0f      	ldr	r3, [pc, #60]	; (8000eb8 <__aeabi_d2iz+0x5c>)
 8000e7c:	18d0      	adds	r0, r2, r3
 8000e7e:	bd30      	pop	{r4, r5, pc}
 8000e80:	2080      	movs	r0, #128	; 0x80
 8000e82:	0340      	lsls	r0, r0, #13
 8000e84:	4301      	orrs	r1, r0
 8000e86:	480d      	ldr	r0, [pc, #52]	; (8000ebc <__aeabi_d2iz+0x60>)
 8000e88:	1ac0      	subs	r0, r0, r3
 8000e8a:	281f      	cmp	r0, #31
 8000e8c:	dd08      	ble.n	8000ea0 <__aeabi_d2iz+0x44>
 8000e8e:	480c      	ldr	r0, [pc, #48]	; (8000ec0 <__aeabi_d2iz+0x64>)
 8000e90:	1ac3      	subs	r3, r0, r3
 8000e92:	40d9      	lsrs	r1, r3
 8000e94:	000b      	movs	r3, r1
 8000e96:	4258      	negs	r0, r3
 8000e98:	2a00      	cmp	r2, #0
 8000e9a:	d1f0      	bne.n	8000e7e <__aeabi_d2iz+0x22>
 8000e9c:	0018      	movs	r0, r3
 8000e9e:	e7ee      	b.n	8000e7e <__aeabi_d2iz+0x22>
 8000ea0:	4c08      	ldr	r4, [pc, #32]	; (8000ec4 <__aeabi_d2iz+0x68>)
 8000ea2:	40c5      	lsrs	r5, r0
 8000ea4:	46a4      	mov	ip, r4
 8000ea6:	4463      	add	r3, ip
 8000ea8:	4099      	lsls	r1, r3
 8000eaa:	000b      	movs	r3, r1
 8000eac:	432b      	orrs	r3, r5
 8000eae:	e7f2      	b.n	8000e96 <__aeabi_d2iz+0x3a>
 8000eb0:	000003fe 	.word	0x000003fe
 8000eb4:	0000041d 	.word	0x0000041d
 8000eb8:	7fffffff 	.word	0x7fffffff
 8000ebc:	00000433 	.word	0x00000433
 8000ec0:	00000413 	.word	0x00000413
 8000ec4:	fffffbed 	.word	0xfffffbed

08000ec8 <__aeabi_ui2d>:
 8000ec8:	b510      	push	{r4, lr}
 8000eca:	1e04      	subs	r4, r0, #0
 8000ecc:	d010      	beq.n	8000ef0 <__aeabi_ui2d+0x28>
 8000ece:	f000 f85f 	bl	8000f90 <__clzsi2>
 8000ed2:	4b0f      	ldr	r3, [pc, #60]	; (8000f10 <__aeabi_ui2d+0x48>)
 8000ed4:	1a1b      	subs	r3, r3, r0
 8000ed6:	280a      	cmp	r0, #10
 8000ed8:	dc11      	bgt.n	8000efe <__aeabi_ui2d+0x36>
 8000eda:	220b      	movs	r2, #11
 8000edc:	0021      	movs	r1, r4
 8000ede:	1a12      	subs	r2, r2, r0
 8000ee0:	40d1      	lsrs	r1, r2
 8000ee2:	3015      	adds	r0, #21
 8000ee4:	030a      	lsls	r2, r1, #12
 8000ee6:	055b      	lsls	r3, r3, #21
 8000ee8:	4084      	lsls	r4, r0
 8000eea:	0b12      	lsrs	r2, r2, #12
 8000eec:	0d5b      	lsrs	r3, r3, #21
 8000eee:	e001      	b.n	8000ef4 <__aeabi_ui2d+0x2c>
 8000ef0:	2300      	movs	r3, #0
 8000ef2:	2200      	movs	r2, #0
 8000ef4:	051b      	lsls	r3, r3, #20
 8000ef6:	4313      	orrs	r3, r2
 8000ef8:	0020      	movs	r0, r4
 8000efa:	0019      	movs	r1, r3
 8000efc:	bd10      	pop	{r4, pc}
 8000efe:	0022      	movs	r2, r4
 8000f00:	380b      	subs	r0, #11
 8000f02:	4082      	lsls	r2, r0
 8000f04:	055b      	lsls	r3, r3, #21
 8000f06:	0312      	lsls	r2, r2, #12
 8000f08:	2400      	movs	r4, #0
 8000f0a:	0b12      	lsrs	r2, r2, #12
 8000f0c:	0d5b      	lsrs	r3, r3, #21
 8000f0e:	e7f1      	b.n	8000ef4 <__aeabi_ui2d+0x2c>
 8000f10:	0000041e 	.word	0x0000041e

08000f14 <__aeabi_cdrcmple>:
 8000f14:	4684      	mov	ip, r0
 8000f16:	0010      	movs	r0, r2
 8000f18:	4662      	mov	r2, ip
 8000f1a:	468c      	mov	ip, r1
 8000f1c:	0019      	movs	r1, r3
 8000f1e:	4663      	mov	r3, ip
 8000f20:	e000      	b.n	8000f24 <__aeabi_cdcmpeq>
 8000f22:	46c0      	nop			; (mov r8, r8)

08000f24 <__aeabi_cdcmpeq>:
 8000f24:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8000f26:	f000 f8f9 	bl	800111c <__ledf2>
 8000f2a:	2800      	cmp	r0, #0
 8000f2c:	d401      	bmi.n	8000f32 <__aeabi_cdcmpeq+0xe>
 8000f2e:	2100      	movs	r1, #0
 8000f30:	42c8      	cmn	r0, r1
 8000f32:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08000f34 <__aeabi_dcmpeq>:
 8000f34:	b510      	push	{r4, lr}
 8000f36:	f000 f849 	bl	8000fcc <__eqdf2>
 8000f3a:	4240      	negs	r0, r0
 8000f3c:	3001      	adds	r0, #1
 8000f3e:	bd10      	pop	{r4, pc}

08000f40 <__aeabi_dcmplt>:
 8000f40:	b510      	push	{r4, lr}
 8000f42:	f000 f8eb 	bl	800111c <__ledf2>
 8000f46:	2800      	cmp	r0, #0
 8000f48:	db01      	blt.n	8000f4e <__aeabi_dcmplt+0xe>
 8000f4a:	2000      	movs	r0, #0
 8000f4c:	bd10      	pop	{r4, pc}
 8000f4e:	2001      	movs	r0, #1
 8000f50:	bd10      	pop	{r4, pc}
 8000f52:	46c0      	nop			; (mov r8, r8)

08000f54 <__aeabi_dcmple>:
 8000f54:	b510      	push	{r4, lr}
 8000f56:	f000 f8e1 	bl	800111c <__ledf2>
 8000f5a:	2800      	cmp	r0, #0
 8000f5c:	dd01      	ble.n	8000f62 <__aeabi_dcmple+0xe>
 8000f5e:	2000      	movs	r0, #0
 8000f60:	bd10      	pop	{r4, pc}
 8000f62:	2001      	movs	r0, #1
 8000f64:	bd10      	pop	{r4, pc}
 8000f66:	46c0      	nop			; (mov r8, r8)

08000f68 <__aeabi_dcmpgt>:
 8000f68:	b510      	push	{r4, lr}
 8000f6a:	f000 f871 	bl	8001050 <__gedf2>
 8000f6e:	2800      	cmp	r0, #0
 8000f70:	dc01      	bgt.n	8000f76 <__aeabi_dcmpgt+0xe>
 8000f72:	2000      	movs	r0, #0
 8000f74:	bd10      	pop	{r4, pc}
 8000f76:	2001      	movs	r0, #1
 8000f78:	bd10      	pop	{r4, pc}
 8000f7a:	46c0      	nop			; (mov r8, r8)

08000f7c <__aeabi_dcmpge>:
 8000f7c:	b510      	push	{r4, lr}
 8000f7e:	f000 f867 	bl	8001050 <__gedf2>
 8000f82:	2800      	cmp	r0, #0
 8000f84:	da01      	bge.n	8000f8a <__aeabi_dcmpge+0xe>
 8000f86:	2000      	movs	r0, #0
 8000f88:	bd10      	pop	{r4, pc}
 8000f8a:	2001      	movs	r0, #1
 8000f8c:	bd10      	pop	{r4, pc}
 8000f8e:	46c0      	nop			; (mov r8, r8)

08000f90 <__clzsi2>:
 8000f90:	211c      	movs	r1, #28
 8000f92:	2301      	movs	r3, #1
 8000f94:	041b      	lsls	r3, r3, #16
 8000f96:	4298      	cmp	r0, r3
 8000f98:	d301      	bcc.n	8000f9e <__clzsi2+0xe>
 8000f9a:	0c00      	lsrs	r0, r0, #16
 8000f9c:	3910      	subs	r1, #16
 8000f9e:	0a1b      	lsrs	r3, r3, #8
 8000fa0:	4298      	cmp	r0, r3
 8000fa2:	d301      	bcc.n	8000fa8 <__clzsi2+0x18>
 8000fa4:	0a00      	lsrs	r0, r0, #8
 8000fa6:	3908      	subs	r1, #8
 8000fa8:	091b      	lsrs	r3, r3, #4
 8000faa:	4298      	cmp	r0, r3
 8000fac:	d301      	bcc.n	8000fb2 <__clzsi2+0x22>
 8000fae:	0900      	lsrs	r0, r0, #4
 8000fb0:	3904      	subs	r1, #4
 8000fb2:	a202      	add	r2, pc, #8	; (adr r2, 8000fbc <__clzsi2+0x2c>)
 8000fb4:	5c10      	ldrb	r0, [r2, r0]
 8000fb6:	1840      	adds	r0, r0, r1
 8000fb8:	4770      	bx	lr
 8000fba:	46c0      	nop			; (mov r8, r8)
 8000fbc:	02020304 	.word	0x02020304
 8000fc0:	01010101 	.word	0x01010101
	...

08000fcc <__eqdf2>:
 8000fcc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000fce:	464e      	mov	r6, r9
 8000fd0:	4645      	mov	r5, r8
 8000fd2:	46de      	mov	lr, fp
 8000fd4:	4657      	mov	r7, sl
 8000fd6:	4690      	mov	r8, r2
 8000fd8:	b5e0      	push	{r5, r6, r7, lr}
 8000fda:	0017      	movs	r7, r2
 8000fdc:	031a      	lsls	r2, r3, #12
 8000fde:	0b12      	lsrs	r2, r2, #12
 8000fe0:	0005      	movs	r5, r0
 8000fe2:	4684      	mov	ip, r0
 8000fe4:	4819      	ldr	r0, [pc, #100]	; (800104c <__eqdf2+0x80>)
 8000fe6:	030e      	lsls	r6, r1, #12
 8000fe8:	004c      	lsls	r4, r1, #1
 8000fea:	4691      	mov	r9, r2
 8000fec:	005a      	lsls	r2, r3, #1
 8000fee:	0fdb      	lsrs	r3, r3, #31
 8000ff0:	469b      	mov	fp, r3
 8000ff2:	0b36      	lsrs	r6, r6, #12
 8000ff4:	0d64      	lsrs	r4, r4, #21
 8000ff6:	0fc9      	lsrs	r1, r1, #31
 8000ff8:	0d52      	lsrs	r2, r2, #21
 8000ffa:	4284      	cmp	r4, r0
 8000ffc:	d019      	beq.n	8001032 <__eqdf2+0x66>
 8000ffe:	4282      	cmp	r2, r0
 8001000:	d010      	beq.n	8001024 <__eqdf2+0x58>
 8001002:	2001      	movs	r0, #1
 8001004:	4294      	cmp	r4, r2
 8001006:	d10e      	bne.n	8001026 <__eqdf2+0x5a>
 8001008:	454e      	cmp	r6, r9
 800100a:	d10c      	bne.n	8001026 <__eqdf2+0x5a>
 800100c:	2001      	movs	r0, #1
 800100e:	45c4      	cmp	ip, r8
 8001010:	d109      	bne.n	8001026 <__eqdf2+0x5a>
 8001012:	4559      	cmp	r1, fp
 8001014:	d017      	beq.n	8001046 <__eqdf2+0x7a>
 8001016:	2c00      	cmp	r4, #0
 8001018:	d105      	bne.n	8001026 <__eqdf2+0x5a>
 800101a:	0030      	movs	r0, r6
 800101c:	4328      	orrs	r0, r5
 800101e:	1e43      	subs	r3, r0, #1
 8001020:	4198      	sbcs	r0, r3
 8001022:	e000      	b.n	8001026 <__eqdf2+0x5a>
 8001024:	2001      	movs	r0, #1
 8001026:	bcf0      	pop	{r4, r5, r6, r7}
 8001028:	46bb      	mov	fp, r7
 800102a:	46b2      	mov	sl, r6
 800102c:	46a9      	mov	r9, r5
 800102e:	46a0      	mov	r8, r4
 8001030:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001032:	0033      	movs	r3, r6
 8001034:	2001      	movs	r0, #1
 8001036:	432b      	orrs	r3, r5
 8001038:	d1f5      	bne.n	8001026 <__eqdf2+0x5a>
 800103a:	42a2      	cmp	r2, r4
 800103c:	d1f3      	bne.n	8001026 <__eqdf2+0x5a>
 800103e:	464b      	mov	r3, r9
 8001040:	433b      	orrs	r3, r7
 8001042:	d1f0      	bne.n	8001026 <__eqdf2+0x5a>
 8001044:	e7e2      	b.n	800100c <__eqdf2+0x40>
 8001046:	2000      	movs	r0, #0
 8001048:	e7ed      	b.n	8001026 <__eqdf2+0x5a>
 800104a:	46c0      	nop			; (mov r8, r8)
 800104c:	000007ff 	.word	0x000007ff

08001050 <__gedf2>:
 8001050:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001052:	4647      	mov	r7, r8
 8001054:	46ce      	mov	lr, r9
 8001056:	0004      	movs	r4, r0
 8001058:	0018      	movs	r0, r3
 800105a:	0016      	movs	r6, r2
 800105c:	031b      	lsls	r3, r3, #12
 800105e:	0b1b      	lsrs	r3, r3, #12
 8001060:	4d2d      	ldr	r5, [pc, #180]	; (8001118 <__gedf2+0xc8>)
 8001062:	004a      	lsls	r2, r1, #1
 8001064:	4699      	mov	r9, r3
 8001066:	b580      	push	{r7, lr}
 8001068:	0043      	lsls	r3, r0, #1
 800106a:	030f      	lsls	r7, r1, #12
 800106c:	46a4      	mov	ip, r4
 800106e:	46b0      	mov	r8, r6
 8001070:	0b3f      	lsrs	r7, r7, #12
 8001072:	0d52      	lsrs	r2, r2, #21
 8001074:	0fc9      	lsrs	r1, r1, #31
 8001076:	0d5b      	lsrs	r3, r3, #21
 8001078:	0fc0      	lsrs	r0, r0, #31
 800107a:	42aa      	cmp	r2, r5
 800107c:	d021      	beq.n	80010c2 <__gedf2+0x72>
 800107e:	42ab      	cmp	r3, r5
 8001080:	d013      	beq.n	80010aa <__gedf2+0x5a>
 8001082:	2a00      	cmp	r2, #0
 8001084:	d122      	bne.n	80010cc <__gedf2+0x7c>
 8001086:	433c      	orrs	r4, r7
 8001088:	2b00      	cmp	r3, #0
 800108a:	d102      	bne.n	8001092 <__gedf2+0x42>
 800108c:	464d      	mov	r5, r9
 800108e:	432e      	orrs	r6, r5
 8001090:	d022      	beq.n	80010d8 <__gedf2+0x88>
 8001092:	2c00      	cmp	r4, #0
 8001094:	d010      	beq.n	80010b8 <__gedf2+0x68>
 8001096:	4281      	cmp	r1, r0
 8001098:	d022      	beq.n	80010e0 <__gedf2+0x90>
 800109a:	2002      	movs	r0, #2
 800109c:	3901      	subs	r1, #1
 800109e:	4008      	ands	r0, r1
 80010a0:	3801      	subs	r0, #1
 80010a2:	bcc0      	pop	{r6, r7}
 80010a4:	46b9      	mov	r9, r7
 80010a6:	46b0      	mov	r8, r6
 80010a8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80010aa:	464d      	mov	r5, r9
 80010ac:	432e      	orrs	r6, r5
 80010ae:	d129      	bne.n	8001104 <__gedf2+0xb4>
 80010b0:	2a00      	cmp	r2, #0
 80010b2:	d1f0      	bne.n	8001096 <__gedf2+0x46>
 80010b4:	433c      	orrs	r4, r7
 80010b6:	d1ee      	bne.n	8001096 <__gedf2+0x46>
 80010b8:	2800      	cmp	r0, #0
 80010ba:	d1f2      	bne.n	80010a2 <__gedf2+0x52>
 80010bc:	2001      	movs	r0, #1
 80010be:	4240      	negs	r0, r0
 80010c0:	e7ef      	b.n	80010a2 <__gedf2+0x52>
 80010c2:	003d      	movs	r5, r7
 80010c4:	4325      	orrs	r5, r4
 80010c6:	d11d      	bne.n	8001104 <__gedf2+0xb4>
 80010c8:	4293      	cmp	r3, r2
 80010ca:	d0ee      	beq.n	80010aa <__gedf2+0x5a>
 80010cc:	2b00      	cmp	r3, #0
 80010ce:	d1e2      	bne.n	8001096 <__gedf2+0x46>
 80010d0:	464c      	mov	r4, r9
 80010d2:	4326      	orrs	r6, r4
 80010d4:	d1df      	bne.n	8001096 <__gedf2+0x46>
 80010d6:	e7e0      	b.n	800109a <__gedf2+0x4a>
 80010d8:	2000      	movs	r0, #0
 80010da:	2c00      	cmp	r4, #0
 80010dc:	d0e1      	beq.n	80010a2 <__gedf2+0x52>
 80010de:	e7dc      	b.n	800109a <__gedf2+0x4a>
 80010e0:	429a      	cmp	r2, r3
 80010e2:	dc0a      	bgt.n	80010fa <__gedf2+0xaa>
 80010e4:	dbe8      	blt.n	80010b8 <__gedf2+0x68>
 80010e6:	454f      	cmp	r7, r9
 80010e8:	d8d7      	bhi.n	800109a <__gedf2+0x4a>
 80010ea:	d00e      	beq.n	800110a <__gedf2+0xba>
 80010ec:	2000      	movs	r0, #0
 80010ee:	454f      	cmp	r7, r9
 80010f0:	d2d7      	bcs.n	80010a2 <__gedf2+0x52>
 80010f2:	2900      	cmp	r1, #0
 80010f4:	d0e2      	beq.n	80010bc <__gedf2+0x6c>
 80010f6:	0008      	movs	r0, r1
 80010f8:	e7d3      	b.n	80010a2 <__gedf2+0x52>
 80010fa:	4243      	negs	r3, r0
 80010fc:	4158      	adcs	r0, r3
 80010fe:	0040      	lsls	r0, r0, #1
 8001100:	3801      	subs	r0, #1
 8001102:	e7ce      	b.n	80010a2 <__gedf2+0x52>
 8001104:	2002      	movs	r0, #2
 8001106:	4240      	negs	r0, r0
 8001108:	e7cb      	b.n	80010a2 <__gedf2+0x52>
 800110a:	45c4      	cmp	ip, r8
 800110c:	d8c5      	bhi.n	800109a <__gedf2+0x4a>
 800110e:	2000      	movs	r0, #0
 8001110:	45c4      	cmp	ip, r8
 8001112:	d2c6      	bcs.n	80010a2 <__gedf2+0x52>
 8001114:	e7ed      	b.n	80010f2 <__gedf2+0xa2>
 8001116:	46c0      	nop			; (mov r8, r8)
 8001118:	000007ff 	.word	0x000007ff

0800111c <__ledf2>:
 800111c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800111e:	4647      	mov	r7, r8
 8001120:	46ce      	mov	lr, r9
 8001122:	0004      	movs	r4, r0
 8001124:	0018      	movs	r0, r3
 8001126:	0016      	movs	r6, r2
 8001128:	031b      	lsls	r3, r3, #12
 800112a:	0b1b      	lsrs	r3, r3, #12
 800112c:	4d2c      	ldr	r5, [pc, #176]	; (80011e0 <__ledf2+0xc4>)
 800112e:	004a      	lsls	r2, r1, #1
 8001130:	4699      	mov	r9, r3
 8001132:	b580      	push	{r7, lr}
 8001134:	0043      	lsls	r3, r0, #1
 8001136:	030f      	lsls	r7, r1, #12
 8001138:	46a4      	mov	ip, r4
 800113a:	46b0      	mov	r8, r6
 800113c:	0b3f      	lsrs	r7, r7, #12
 800113e:	0d52      	lsrs	r2, r2, #21
 8001140:	0fc9      	lsrs	r1, r1, #31
 8001142:	0d5b      	lsrs	r3, r3, #21
 8001144:	0fc0      	lsrs	r0, r0, #31
 8001146:	42aa      	cmp	r2, r5
 8001148:	d00d      	beq.n	8001166 <__ledf2+0x4a>
 800114a:	42ab      	cmp	r3, r5
 800114c:	d010      	beq.n	8001170 <__ledf2+0x54>
 800114e:	2a00      	cmp	r2, #0
 8001150:	d127      	bne.n	80011a2 <__ledf2+0x86>
 8001152:	433c      	orrs	r4, r7
 8001154:	2b00      	cmp	r3, #0
 8001156:	d111      	bne.n	800117c <__ledf2+0x60>
 8001158:	464d      	mov	r5, r9
 800115a:	432e      	orrs	r6, r5
 800115c:	d10e      	bne.n	800117c <__ledf2+0x60>
 800115e:	2000      	movs	r0, #0
 8001160:	2c00      	cmp	r4, #0
 8001162:	d015      	beq.n	8001190 <__ledf2+0x74>
 8001164:	e00e      	b.n	8001184 <__ledf2+0x68>
 8001166:	003d      	movs	r5, r7
 8001168:	4325      	orrs	r5, r4
 800116a:	d110      	bne.n	800118e <__ledf2+0x72>
 800116c:	4293      	cmp	r3, r2
 800116e:	d118      	bne.n	80011a2 <__ledf2+0x86>
 8001170:	464d      	mov	r5, r9
 8001172:	432e      	orrs	r6, r5
 8001174:	d10b      	bne.n	800118e <__ledf2+0x72>
 8001176:	2a00      	cmp	r2, #0
 8001178:	d102      	bne.n	8001180 <__ledf2+0x64>
 800117a:	433c      	orrs	r4, r7
 800117c:	2c00      	cmp	r4, #0
 800117e:	d00b      	beq.n	8001198 <__ledf2+0x7c>
 8001180:	4281      	cmp	r1, r0
 8001182:	d014      	beq.n	80011ae <__ledf2+0x92>
 8001184:	2002      	movs	r0, #2
 8001186:	3901      	subs	r1, #1
 8001188:	4008      	ands	r0, r1
 800118a:	3801      	subs	r0, #1
 800118c:	e000      	b.n	8001190 <__ledf2+0x74>
 800118e:	2002      	movs	r0, #2
 8001190:	bcc0      	pop	{r6, r7}
 8001192:	46b9      	mov	r9, r7
 8001194:	46b0      	mov	r8, r6
 8001196:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001198:	2800      	cmp	r0, #0
 800119a:	d1f9      	bne.n	8001190 <__ledf2+0x74>
 800119c:	2001      	movs	r0, #1
 800119e:	4240      	negs	r0, r0
 80011a0:	e7f6      	b.n	8001190 <__ledf2+0x74>
 80011a2:	2b00      	cmp	r3, #0
 80011a4:	d1ec      	bne.n	8001180 <__ledf2+0x64>
 80011a6:	464c      	mov	r4, r9
 80011a8:	4326      	orrs	r6, r4
 80011aa:	d1e9      	bne.n	8001180 <__ledf2+0x64>
 80011ac:	e7ea      	b.n	8001184 <__ledf2+0x68>
 80011ae:	429a      	cmp	r2, r3
 80011b0:	dd04      	ble.n	80011bc <__ledf2+0xa0>
 80011b2:	4243      	negs	r3, r0
 80011b4:	4158      	adcs	r0, r3
 80011b6:	0040      	lsls	r0, r0, #1
 80011b8:	3801      	subs	r0, #1
 80011ba:	e7e9      	b.n	8001190 <__ledf2+0x74>
 80011bc:	429a      	cmp	r2, r3
 80011be:	dbeb      	blt.n	8001198 <__ledf2+0x7c>
 80011c0:	454f      	cmp	r7, r9
 80011c2:	d8df      	bhi.n	8001184 <__ledf2+0x68>
 80011c4:	d006      	beq.n	80011d4 <__ledf2+0xb8>
 80011c6:	2000      	movs	r0, #0
 80011c8:	454f      	cmp	r7, r9
 80011ca:	d2e1      	bcs.n	8001190 <__ledf2+0x74>
 80011cc:	2900      	cmp	r1, #0
 80011ce:	d0e5      	beq.n	800119c <__ledf2+0x80>
 80011d0:	0008      	movs	r0, r1
 80011d2:	e7dd      	b.n	8001190 <__ledf2+0x74>
 80011d4:	45c4      	cmp	ip, r8
 80011d6:	d8d5      	bhi.n	8001184 <__ledf2+0x68>
 80011d8:	2000      	movs	r0, #0
 80011da:	45c4      	cmp	ip, r8
 80011dc:	d2d8      	bcs.n	8001190 <__ledf2+0x74>
 80011de:	e7f5      	b.n	80011cc <__ledf2+0xb0>
 80011e0:	000007ff 	.word	0x000007ff

080011e4 <Reset_Handler>:
 80011e4:	480d      	ldr	r0, [pc, #52]	; (800121c <LoopForever+0x2>)
 80011e6:	4685      	mov	sp, r0
 80011e8:	480d      	ldr	r0, [pc, #52]	; (8001220 <LoopForever+0x6>)
 80011ea:	490e      	ldr	r1, [pc, #56]	; (8001224 <LoopForever+0xa>)
 80011ec:	4a0e      	ldr	r2, [pc, #56]	; (8001228 <LoopForever+0xe>)
 80011ee:	2300      	movs	r3, #0
 80011f0:	e002      	b.n	80011f8 <LoopCopyDataInit>

080011f2 <CopyDataInit>:
 80011f2:	58d4      	ldr	r4, [r2, r3]
 80011f4:	50c4      	str	r4, [r0, r3]
 80011f6:	3304      	adds	r3, #4

080011f8 <LoopCopyDataInit>:
 80011f8:	18c4      	adds	r4, r0, r3
 80011fa:	428c      	cmp	r4, r1
 80011fc:	d3f9      	bcc.n	80011f2 <CopyDataInit>
 80011fe:	4a0b      	ldr	r2, [pc, #44]	; (800122c <LoopForever+0x12>)
 8001200:	4c0b      	ldr	r4, [pc, #44]	; (8001230 <LoopForever+0x16>)
 8001202:	2300      	movs	r3, #0
 8001204:	e001      	b.n	800120a <LoopFillZerobss>

08001206 <FillZerobss>:
 8001206:	6013      	str	r3, [r2, #0]
 8001208:	3204      	adds	r2, #4

0800120a <LoopFillZerobss>:
 800120a:	42a2      	cmp	r2, r4
 800120c:	d3fb      	bcc.n	8001206 <FillZerobss>
 800120e:	f000 fe61 	bl	8001ed4 <SystemInit>
 8001212:	f000 feb5 	bl	8001f80 <__libc_init_array>
 8001216:	f000 fe4f 	bl	8001eb8 <main>

0800121a <LoopForever>:
 800121a:	e7fe      	b.n	800121a <LoopForever>
 800121c:	20002000 	.word	0x20002000
 8001220:	20000000 	.word	0x20000000
 8001224:	20000434 	.word	0x20000434
 8001228:	08002164 	.word	0x08002164
 800122c:	20000434 	.word	0x20000434
 8001230:	20000458 	.word	0x20000458

08001234 <ADC1_COMP_IRQHandler>:
 8001234:	e7fe      	b.n	8001234 <ADC1_COMP_IRQHandler>
	...

08001238 <NVIC_EnableIRQ>:
 8001238:	b580      	push	{r7, lr}
 800123a:	b082      	sub	sp, #8
 800123c:	af00      	add	r7, sp, #0
 800123e:	0002      	movs	r2, r0
 8001240:	1dfb      	adds	r3, r7, #7
 8001242:	701a      	strb	r2, [r3, #0]
 8001244:	1dfb      	adds	r3, r7, #7
 8001246:	781b      	ldrb	r3, [r3, #0]
 8001248:	001a      	movs	r2, r3
 800124a:	231f      	movs	r3, #31
 800124c:	401a      	ands	r2, r3
 800124e:	4b04      	ldr	r3, [pc, #16]	; (8001260 <NVIC_EnableIRQ+0x28>)
 8001250:	2101      	movs	r1, #1
 8001252:	4091      	lsls	r1, r2
 8001254:	000a      	movs	r2, r1
 8001256:	601a      	str	r2, [r3, #0]
 8001258:	46c0      	nop			; (mov r8, r8)
 800125a:	46bd      	mov	sp, r7
 800125c:	b002      	add	sp, #8
 800125e:	bd80      	pop	{r7, pc}
 8001260:	e000e100 	.word	0xe000e100

08001264 <NVIC_SetPriority>:
 8001264:	b590      	push	{r4, r7, lr}
 8001266:	b083      	sub	sp, #12
 8001268:	af00      	add	r7, sp, #0
 800126a:	0002      	movs	r2, r0
 800126c:	6039      	str	r1, [r7, #0]
 800126e:	1dfb      	adds	r3, r7, #7
 8001270:	701a      	strb	r2, [r3, #0]
 8001272:	1dfb      	adds	r3, r7, #7
 8001274:	781b      	ldrb	r3, [r3, #0]
 8001276:	2b7f      	cmp	r3, #127	; 0x7f
 8001278:	d932      	bls.n	80012e0 <NVIC_SetPriority+0x7c>
 800127a:	4a2f      	ldr	r2, [pc, #188]	; (8001338 <NVIC_SetPriority+0xd4>)
 800127c:	1dfb      	adds	r3, r7, #7
 800127e:	781b      	ldrb	r3, [r3, #0]
 8001280:	0019      	movs	r1, r3
 8001282:	230f      	movs	r3, #15
 8001284:	400b      	ands	r3, r1
 8001286:	3b08      	subs	r3, #8
 8001288:	089b      	lsrs	r3, r3, #2
 800128a:	3306      	adds	r3, #6
 800128c:	009b      	lsls	r3, r3, #2
 800128e:	18d3      	adds	r3, r2, r3
 8001290:	3304      	adds	r3, #4
 8001292:	681b      	ldr	r3, [r3, #0]
 8001294:	1dfa      	adds	r2, r7, #7
 8001296:	7812      	ldrb	r2, [r2, #0]
 8001298:	0011      	movs	r1, r2
 800129a:	2203      	movs	r2, #3
 800129c:	400a      	ands	r2, r1
 800129e:	00d2      	lsls	r2, r2, #3
 80012a0:	21ff      	movs	r1, #255	; 0xff
 80012a2:	4091      	lsls	r1, r2
 80012a4:	000a      	movs	r2, r1
 80012a6:	43d2      	mvns	r2, r2
 80012a8:	401a      	ands	r2, r3
 80012aa:	0011      	movs	r1, r2
 80012ac:	683b      	ldr	r3, [r7, #0]
 80012ae:	019b      	lsls	r3, r3, #6
 80012b0:	22ff      	movs	r2, #255	; 0xff
 80012b2:	401a      	ands	r2, r3
 80012b4:	1dfb      	adds	r3, r7, #7
 80012b6:	781b      	ldrb	r3, [r3, #0]
 80012b8:	0018      	movs	r0, r3
 80012ba:	2303      	movs	r3, #3
 80012bc:	4003      	ands	r3, r0
 80012be:	00db      	lsls	r3, r3, #3
 80012c0:	409a      	lsls	r2, r3
 80012c2:	481d      	ldr	r0, [pc, #116]	; (8001338 <NVIC_SetPriority+0xd4>)
 80012c4:	1dfb      	adds	r3, r7, #7
 80012c6:	781b      	ldrb	r3, [r3, #0]
 80012c8:	001c      	movs	r4, r3
 80012ca:	230f      	movs	r3, #15
 80012cc:	4023      	ands	r3, r4
 80012ce:	3b08      	subs	r3, #8
 80012d0:	089b      	lsrs	r3, r3, #2
 80012d2:	430a      	orrs	r2, r1
 80012d4:	3306      	adds	r3, #6
 80012d6:	009b      	lsls	r3, r3, #2
 80012d8:	18c3      	adds	r3, r0, r3
 80012da:	3304      	adds	r3, #4
 80012dc:	601a      	str	r2, [r3, #0]
 80012de:	e027      	b.n	8001330 <NVIC_SetPriority+0xcc>
 80012e0:	4a16      	ldr	r2, [pc, #88]	; (800133c <NVIC_SetPriority+0xd8>)
 80012e2:	1dfb      	adds	r3, r7, #7
 80012e4:	781b      	ldrb	r3, [r3, #0]
 80012e6:	b25b      	sxtb	r3, r3
 80012e8:	089b      	lsrs	r3, r3, #2
 80012ea:	33c0      	adds	r3, #192	; 0xc0
 80012ec:	009b      	lsls	r3, r3, #2
 80012ee:	589b      	ldr	r3, [r3, r2]
 80012f0:	1dfa      	adds	r2, r7, #7
 80012f2:	7812      	ldrb	r2, [r2, #0]
 80012f4:	0011      	movs	r1, r2
 80012f6:	2203      	movs	r2, #3
 80012f8:	400a      	ands	r2, r1
 80012fa:	00d2      	lsls	r2, r2, #3
 80012fc:	21ff      	movs	r1, #255	; 0xff
 80012fe:	4091      	lsls	r1, r2
 8001300:	000a      	movs	r2, r1
 8001302:	43d2      	mvns	r2, r2
 8001304:	401a      	ands	r2, r3
 8001306:	0011      	movs	r1, r2
 8001308:	683b      	ldr	r3, [r7, #0]
 800130a:	019b      	lsls	r3, r3, #6
 800130c:	22ff      	movs	r2, #255	; 0xff
 800130e:	401a      	ands	r2, r3
 8001310:	1dfb      	adds	r3, r7, #7
 8001312:	781b      	ldrb	r3, [r3, #0]
 8001314:	0018      	movs	r0, r3
 8001316:	2303      	movs	r3, #3
 8001318:	4003      	ands	r3, r0
 800131a:	00db      	lsls	r3, r3, #3
 800131c:	409a      	lsls	r2, r3
 800131e:	4807      	ldr	r0, [pc, #28]	; (800133c <NVIC_SetPriority+0xd8>)
 8001320:	1dfb      	adds	r3, r7, #7
 8001322:	781b      	ldrb	r3, [r3, #0]
 8001324:	b25b      	sxtb	r3, r3
 8001326:	089b      	lsrs	r3, r3, #2
 8001328:	430a      	orrs	r2, r1
 800132a:	33c0      	adds	r3, #192	; 0xc0
 800132c:	009b      	lsls	r3, r3, #2
 800132e:	501a      	str	r2, [r3, r0]
 8001330:	46c0      	nop			; (mov r8, r8)
 8001332:	46bd      	mov	sp, r7
 8001334:	b003      	add	sp, #12
 8001336:	bd90      	pop	{r4, r7, pc}
 8001338:	e000ed00 	.word	0xe000ed00
 800133c:	e000e100 	.word	0xe000e100

08001340 <LL_RCC_HSI_Enable>:
 8001340:	b580      	push	{r7, lr}
 8001342:	af00      	add	r7, sp, #0
 8001344:	4b04      	ldr	r3, [pc, #16]	; (8001358 <LL_RCC_HSI_Enable+0x18>)
 8001346:	681a      	ldr	r2, [r3, #0]
 8001348:	4b03      	ldr	r3, [pc, #12]	; (8001358 <LL_RCC_HSI_Enable+0x18>)
 800134a:	2101      	movs	r1, #1
 800134c:	430a      	orrs	r2, r1
 800134e:	601a      	str	r2, [r3, #0]
 8001350:	46c0      	nop			; (mov r8, r8)
 8001352:	46bd      	mov	sp, r7
 8001354:	bd80      	pop	{r7, pc}
 8001356:	46c0      	nop			; (mov r8, r8)
 8001358:	40021000 	.word	0x40021000

0800135c <LL_RCC_HSI_IsReady>:
 800135c:	b580      	push	{r7, lr}
 800135e:	af00      	add	r7, sp, #0
 8001360:	4b05      	ldr	r3, [pc, #20]	; (8001378 <LL_RCC_HSI_IsReady+0x1c>)
 8001362:	681b      	ldr	r3, [r3, #0]
 8001364:	2202      	movs	r2, #2
 8001366:	4013      	ands	r3, r2
 8001368:	3b02      	subs	r3, #2
 800136a:	425a      	negs	r2, r3
 800136c:	4153      	adcs	r3, r2
 800136e:	b2db      	uxtb	r3, r3
 8001370:	0018      	movs	r0, r3
 8001372:	46bd      	mov	sp, r7
 8001374:	bd80      	pop	{r7, pc}
 8001376:	46c0      	nop			; (mov r8, r8)
 8001378:	40021000 	.word	0x40021000

0800137c <LL_RCC_SetSysClkSource>:
 800137c:	b580      	push	{r7, lr}
 800137e:	b082      	sub	sp, #8
 8001380:	af00      	add	r7, sp, #0
 8001382:	6078      	str	r0, [r7, #4]
 8001384:	4b06      	ldr	r3, [pc, #24]	; (80013a0 <LL_RCC_SetSysClkSource+0x24>)
 8001386:	685b      	ldr	r3, [r3, #4]
 8001388:	2203      	movs	r2, #3
 800138a:	4393      	bics	r3, r2
 800138c:	0019      	movs	r1, r3
 800138e:	4b04      	ldr	r3, [pc, #16]	; (80013a0 <LL_RCC_SetSysClkSource+0x24>)
 8001390:	687a      	ldr	r2, [r7, #4]
 8001392:	430a      	orrs	r2, r1
 8001394:	605a      	str	r2, [r3, #4]
 8001396:	46c0      	nop			; (mov r8, r8)
 8001398:	46bd      	mov	sp, r7
 800139a:	b002      	add	sp, #8
 800139c:	bd80      	pop	{r7, pc}
 800139e:	46c0      	nop			; (mov r8, r8)
 80013a0:	40021000 	.word	0x40021000

080013a4 <LL_RCC_GetSysClkSource>:
 80013a4:	b580      	push	{r7, lr}
 80013a6:	af00      	add	r7, sp, #0
 80013a8:	4b03      	ldr	r3, [pc, #12]	; (80013b8 <LL_RCC_GetSysClkSource+0x14>)
 80013aa:	685b      	ldr	r3, [r3, #4]
 80013ac:	220c      	movs	r2, #12
 80013ae:	4013      	ands	r3, r2
 80013b0:	0018      	movs	r0, r3
 80013b2:	46bd      	mov	sp, r7
 80013b4:	bd80      	pop	{r7, pc}
 80013b6:	46c0      	nop			; (mov r8, r8)
 80013b8:	40021000 	.word	0x40021000

080013bc <LL_RCC_SetAHBPrescaler>:
 80013bc:	b580      	push	{r7, lr}
 80013be:	b082      	sub	sp, #8
 80013c0:	af00      	add	r7, sp, #0
 80013c2:	6078      	str	r0, [r7, #4]
 80013c4:	4b06      	ldr	r3, [pc, #24]	; (80013e0 <LL_RCC_SetAHBPrescaler+0x24>)
 80013c6:	685b      	ldr	r3, [r3, #4]
 80013c8:	22f0      	movs	r2, #240	; 0xf0
 80013ca:	4393      	bics	r3, r2
 80013cc:	0019      	movs	r1, r3
 80013ce:	4b04      	ldr	r3, [pc, #16]	; (80013e0 <LL_RCC_SetAHBPrescaler+0x24>)
 80013d0:	687a      	ldr	r2, [r7, #4]
 80013d2:	430a      	orrs	r2, r1
 80013d4:	605a      	str	r2, [r3, #4]
 80013d6:	46c0      	nop			; (mov r8, r8)
 80013d8:	46bd      	mov	sp, r7
 80013da:	b002      	add	sp, #8
 80013dc:	bd80      	pop	{r7, pc}
 80013de:	46c0      	nop			; (mov r8, r8)
 80013e0:	40021000 	.word	0x40021000

080013e4 <LL_RCC_SetAPB1Prescaler>:
 80013e4:	b580      	push	{r7, lr}
 80013e6:	b082      	sub	sp, #8
 80013e8:	af00      	add	r7, sp, #0
 80013ea:	6078      	str	r0, [r7, #4]
 80013ec:	4b06      	ldr	r3, [pc, #24]	; (8001408 <LL_RCC_SetAPB1Prescaler+0x24>)
 80013ee:	685b      	ldr	r3, [r3, #4]
 80013f0:	4a06      	ldr	r2, [pc, #24]	; (800140c <LL_RCC_SetAPB1Prescaler+0x28>)
 80013f2:	4013      	ands	r3, r2
 80013f4:	0019      	movs	r1, r3
 80013f6:	4b04      	ldr	r3, [pc, #16]	; (8001408 <LL_RCC_SetAPB1Prescaler+0x24>)
 80013f8:	687a      	ldr	r2, [r7, #4]
 80013fa:	430a      	orrs	r2, r1
 80013fc:	605a      	str	r2, [r3, #4]
 80013fe:	46c0      	nop			; (mov r8, r8)
 8001400:	46bd      	mov	sp, r7
 8001402:	b002      	add	sp, #8
 8001404:	bd80      	pop	{r7, pc}
 8001406:	46c0      	nop			; (mov r8, r8)
 8001408:	40021000 	.word	0x40021000
 800140c:	fffff8ff 	.word	0xfffff8ff

08001410 <LL_RCC_PLL_Enable>:
 8001410:	b580      	push	{r7, lr}
 8001412:	af00      	add	r7, sp, #0
 8001414:	4b04      	ldr	r3, [pc, #16]	; (8001428 <LL_RCC_PLL_Enable+0x18>)
 8001416:	681a      	ldr	r2, [r3, #0]
 8001418:	4b03      	ldr	r3, [pc, #12]	; (8001428 <LL_RCC_PLL_Enable+0x18>)
 800141a:	2180      	movs	r1, #128	; 0x80
 800141c:	0449      	lsls	r1, r1, #17
 800141e:	430a      	orrs	r2, r1
 8001420:	601a      	str	r2, [r3, #0]
 8001422:	46c0      	nop			; (mov r8, r8)
 8001424:	46bd      	mov	sp, r7
 8001426:	bd80      	pop	{r7, pc}
 8001428:	40021000 	.word	0x40021000

0800142c <LL_RCC_PLL_IsReady>:
 800142c:	b580      	push	{r7, lr}
 800142e:	af00      	add	r7, sp, #0
 8001430:	4b07      	ldr	r3, [pc, #28]	; (8001450 <LL_RCC_PLL_IsReady+0x24>)
 8001432:	681a      	ldr	r2, [r3, #0]
 8001434:	2380      	movs	r3, #128	; 0x80
 8001436:	049b      	lsls	r3, r3, #18
 8001438:	4013      	ands	r3, r2
 800143a:	22fe      	movs	r2, #254	; 0xfe
 800143c:	0612      	lsls	r2, r2, #24
 800143e:	4694      	mov	ip, r2
 8001440:	4463      	add	r3, ip
 8001442:	425a      	negs	r2, r3
 8001444:	4153      	adcs	r3, r2
 8001446:	b2db      	uxtb	r3, r3
 8001448:	0018      	movs	r0, r3
 800144a:	46bd      	mov	sp, r7
 800144c:	bd80      	pop	{r7, pc}
 800144e:	46c0      	nop			; (mov r8, r8)
 8001450:	40021000 	.word	0x40021000

08001454 <LL_RCC_PLL_ConfigDomain_SYS>:
 8001454:	b580      	push	{r7, lr}
 8001456:	b082      	sub	sp, #8
 8001458:	af00      	add	r7, sp, #0
 800145a:	6078      	str	r0, [r7, #4]
 800145c:	6039      	str	r1, [r7, #0]
 800145e:	4b0e      	ldr	r3, [pc, #56]	; (8001498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001460:	685b      	ldr	r3, [r3, #4]
 8001462:	4a0e      	ldr	r2, [pc, #56]	; (800149c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8001464:	4013      	ands	r3, r2
 8001466:	0019      	movs	r1, r3
 8001468:	687a      	ldr	r2, [r7, #4]
 800146a:	2380      	movs	r3, #128	; 0x80
 800146c:	025b      	lsls	r3, r3, #9
 800146e:	401a      	ands	r2, r3
 8001470:	683b      	ldr	r3, [r7, #0]
 8001472:	431a      	orrs	r2, r3
 8001474:	4b08      	ldr	r3, [pc, #32]	; (8001498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001476:	430a      	orrs	r2, r1
 8001478:	605a      	str	r2, [r3, #4]
 800147a:	4b07      	ldr	r3, [pc, #28]	; (8001498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800147c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800147e:	220f      	movs	r2, #15
 8001480:	4393      	bics	r3, r2
 8001482:	0019      	movs	r1, r3
 8001484:	687b      	ldr	r3, [r7, #4]
 8001486:	220f      	movs	r2, #15
 8001488:	401a      	ands	r2, r3
 800148a:	4b03      	ldr	r3, [pc, #12]	; (8001498 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800148c:	430a      	orrs	r2, r1
 800148e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001490:	46c0      	nop			; (mov r8, r8)
 8001492:	46bd      	mov	sp, r7
 8001494:	b002      	add	sp, #8
 8001496:	bd80      	pop	{r7, pc}
 8001498:	40021000 	.word	0x40021000
 800149c:	ffc2ffff 	.word	0xffc2ffff

080014a0 <LL_FLASH_SetLatency>:
 80014a0:	b580      	push	{r7, lr}
 80014a2:	b082      	sub	sp, #8
 80014a4:	af00      	add	r7, sp, #0
 80014a6:	6078      	str	r0, [r7, #4]
 80014a8:	4b06      	ldr	r3, [pc, #24]	; (80014c4 <LL_FLASH_SetLatency+0x24>)
 80014aa:	681b      	ldr	r3, [r3, #0]
 80014ac:	2201      	movs	r2, #1
 80014ae:	4393      	bics	r3, r2
 80014b0:	0019      	movs	r1, r3
 80014b2:	4b04      	ldr	r3, [pc, #16]	; (80014c4 <LL_FLASH_SetLatency+0x24>)
 80014b4:	687a      	ldr	r2, [r7, #4]
 80014b6:	430a      	orrs	r2, r1
 80014b8:	601a      	str	r2, [r3, #0]
 80014ba:	46c0      	nop			; (mov r8, r8)
 80014bc:	46bd      	mov	sp, r7
 80014be:	b002      	add	sp, #8
 80014c0:	bd80      	pop	{r7, pc}
 80014c2:	46c0      	nop			; (mov r8, r8)
 80014c4:	40022000 	.word	0x40022000

080014c8 <LL_AHB1_GRP1_EnableClock>:
 80014c8:	b580      	push	{r7, lr}
 80014ca:	b084      	sub	sp, #16
 80014cc:	af00      	add	r7, sp, #0
 80014ce:	6078      	str	r0, [r7, #4]
 80014d0:	4b07      	ldr	r3, [pc, #28]	; (80014f0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80014d2:	6959      	ldr	r1, [r3, #20]
 80014d4:	4b06      	ldr	r3, [pc, #24]	; (80014f0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80014d6:	687a      	ldr	r2, [r7, #4]
 80014d8:	430a      	orrs	r2, r1
 80014da:	615a      	str	r2, [r3, #20]
 80014dc:	4b04      	ldr	r3, [pc, #16]	; (80014f0 <LL_AHB1_GRP1_EnableClock+0x28>)
 80014de:	695b      	ldr	r3, [r3, #20]
 80014e0:	687a      	ldr	r2, [r7, #4]
 80014e2:	4013      	ands	r3, r2
 80014e4:	60fb      	str	r3, [r7, #12]
 80014e6:	68fb      	ldr	r3, [r7, #12]
 80014e8:	46c0      	nop			; (mov r8, r8)
 80014ea:	46bd      	mov	sp, r7
 80014ec:	b004      	add	sp, #16
 80014ee:	bd80      	pop	{r7, pc}
 80014f0:	40021000 	.word	0x40021000

080014f4 <LL_APB1_GRP1_EnableClock>:
 80014f4:	b580      	push	{r7, lr}
 80014f6:	b084      	sub	sp, #16
 80014f8:	af00      	add	r7, sp, #0
 80014fa:	6078      	str	r0, [r7, #4]
 80014fc:	4b07      	ldr	r3, [pc, #28]	; (800151c <LL_APB1_GRP1_EnableClock+0x28>)
 80014fe:	69d9      	ldr	r1, [r3, #28]
 8001500:	4b06      	ldr	r3, [pc, #24]	; (800151c <LL_APB1_GRP1_EnableClock+0x28>)
 8001502:	687a      	ldr	r2, [r7, #4]
 8001504:	430a      	orrs	r2, r1
 8001506:	61da      	str	r2, [r3, #28]
 8001508:	4b04      	ldr	r3, [pc, #16]	; (800151c <LL_APB1_GRP1_EnableClock+0x28>)
 800150a:	69db      	ldr	r3, [r3, #28]
 800150c:	687a      	ldr	r2, [r7, #4]
 800150e:	4013      	ands	r3, r2
 8001510:	60fb      	str	r3, [r7, #12]
 8001512:	68fb      	ldr	r3, [r7, #12]
 8001514:	46c0      	nop			; (mov r8, r8)
 8001516:	46bd      	mov	sp, r7
 8001518:	b004      	add	sp, #16
 800151a:	bd80      	pop	{r7, pc}
 800151c:	40021000 	.word	0x40021000

08001520 <LL_GPIO_SetPinMode>:
 8001520:	b580      	push	{r7, lr}
 8001522:	b084      	sub	sp, #16
 8001524:	af00      	add	r7, sp, #0
 8001526:	60f8      	str	r0, [r7, #12]
 8001528:	60b9      	str	r1, [r7, #8]
 800152a:	607a      	str	r2, [r7, #4]
 800152c:	68fb      	ldr	r3, [r7, #12]
 800152e:	6819      	ldr	r1, [r3, #0]
 8001530:	68bb      	ldr	r3, [r7, #8]
 8001532:	435b      	muls	r3, r3
 8001534:	001a      	movs	r2, r3
 8001536:	0013      	movs	r3, r2
 8001538:	005b      	lsls	r3, r3, #1
 800153a:	189b      	adds	r3, r3, r2
 800153c:	43db      	mvns	r3, r3
 800153e:	400b      	ands	r3, r1
 8001540:	001a      	movs	r2, r3
 8001542:	68bb      	ldr	r3, [r7, #8]
 8001544:	435b      	muls	r3, r3
 8001546:	6879      	ldr	r1, [r7, #4]
 8001548:	434b      	muls	r3, r1
 800154a:	431a      	orrs	r2, r3
 800154c:	68fb      	ldr	r3, [r7, #12]
 800154e:	601a      	str	r2, [r3, #0]
 8001550:	46c0      	nop			; (mov r8, r8)
 8001552:	46bd      	mov	sp, r7
 8001554:	b004      	add	sp, #16
 8001556:	bd80      	pop	{r7, pc}

08001558 <LL_GPIO_SetPinPull>:
 8001558:	b580      	push	{r7, lr}
 800155a:	b084      	sub	sp, #16
 800155c:	af00      	add	r7, sp, #0
 800155e:	60f8      	str	r0, [r7, #12]
 8001560:	60b9      	str	r1, [r7, #8]
 8001562:	607a      	str	r2, [r7, #4]
 8001564:	68fb      	ldr	r3, [r7, #12]
 8001566:	68d9      	ldr	r1, [r3, #12]
 8001568:	68bb      	ldr	r3, [r7, #8]
 800156a:	435b      	muls	r3, r3
 800156c:	001a      	movs	r2, r3
 800156e:	0013      	movs	r3, r2
 8001570:	005b      	lsls	r3, r3, #1
 8001572:	189b      	adds	r3, r3, r2
 8001574:	43db      	mvns	r3, r3
 8001576:	400b      	ands	r3, r1
 8001578:	001a      	movs	r2, r3
 800157a:	68bb      	ldr	r3, [r7, #8]
 800157c:	435b      	muls	r3, r3
 800157e:	6879      	ldr	r1, [r7, #4]
 8001580:	434b      	muls	r3, r1
 8001582:	431a      	orrs	r2, r3
 8001584:	68fb      	ldr	r3, [r7, #12]
 8001586:	60da      	str	r2, [r3, #12]
 8001588:	46c0      	nop			; (mov r8, r8)
 800158a:	46bd      	mov	sp, r7
 800158c:	b004      	add	sp, #16
 800158e:	bd80      	pop	{r7, pc}

08001590 <LL_GPIO_SetAFPin_0_7>:
 8001590:	b580      	push	{r7, lr}
 8001592:	b084      	sub	sp, #16
 8001594:	af00      	add	r7, sp, #0
 8001596:	60f8      	str	r0, [r7, #12]
 8001598:	60b9      	str	r1, [r7, #8]
 800159a:	607a      	str	r2, [r7, #4]
 800159c:	68fb      	ldr	r3, [r7, #12]
 800159e:	6a19      	ldr	r1, [r3, #32]
 80015a0:	68bb      	ldr	r3, [r7, #8]
 80015a2:	435b      	muls	r3, r3
 80015a4:	68ba      	ldr	r2, [r7, #8]
 80015a6:	4353      	muls	r3, r2
 80015a8:	68ba      	ldr	r2, [r7, #8]
 80015aa:	435a      	muls	r2, r3
 80015ac:	0013      	movs	r3, r2
 80015ae:	011b      	lsls	r3, r3, #4
 80015b0:	1a9b      	subs	r3, r3, r2
 80015b2:	43db      	mvns	r3, r3
 80015b4:	400b      	ands	r3, r1
 80015b6:	001a      	movs	r2, r3
 80015b8:	68bb      	ldr	r3, [r7, #8]
 80015ba:	435b      	muls	r3, r3
 80015bc:	68b9      	ldr	r1, [r7, #8]
 80015be:	434b      	muls	r3, r1
 80015c0:	68b9      	ldr	r1, [r7, #8]
 80015c2:	434b      	muls	r3, r1
 80015c4:	6879      	ldr	r1, [r7, #4]
 80015c6:	434b      	muls	r3, r1
 80015c8:	431a      	orrs	r2, r3
 80015ca:	68fb      	ldr	r3, [r7, #12]
 80015cc:	621a      	str	r2, [r3, #32]
 80015ce:	46c0      	nop			; (mov r8, r8)
 80015d0:	46bd      	mov	sp, r7
 80015d2:	b004      	add	sp, #16
 80015d4:	bd80      	pop	{r7, pc}

080015d6 <LL_GPIO_WriteOutputPort>:
 80015d6:	b580      	push	{r7, lr}
 80015d8:	b082      	sub	sp, #8
 80015da:	af00      	add	r7, sp, #0
 80015dc:	6078      	str	r0, [r7, #4]
 80015de:	6039      	str	r1, [r7, #0]
 80015e0:	687b      	ldr	r3, [r7, #4]
 80015e2:	683a      	ldr	r2, [r7, #0]
 80015e4:	615a      	str	r2, [r3, #20]
 80015e6:	46c0      	nop			; (mov r8, r8)
 80015e8:	46bd      	mov	sp, r7
 80015ea:	b002      	add	sp, #8
 80015ec:	bd80      	pop	{r7, pc}

080015ee <LL_GPIO_ResetOutputPin>:
 80015ee:	b580      	push	{r7, lr}
 80015f0:	b082      	sub	sp, #8
 80015f2:	af00      	add	r7, sp, #0
 80015f4:	6078      	str	r0, [r7, #4]
 80015f6:	6039      	str	r1, [r7, #0]
 80015f8:	687b      	ldr	r3, [r7, #4]
 80015fa:	683a      	ldr	r2, [r7, #0]
 80015fc:	629a      	str	r2, [r3, #40]	; 0x28
 80015fe:	46c0      	nop			; (mov r8, r8)
 8001600:	46bd      	mov	sp, r7
 8001602:	b002      	add	sp, #8
 8001604:	bd80      	pop	{r7, pc}

08001606 <LL_TIM_EnableCounter>:
 8001606:	b580      	push	{r7, lr}
 8001608:	b082      	sub	sp, #8
 800160a:	af00      	add	r7, sp, #0
 800160c:	6078      	str	r0, [r7, #4]
 800160e:	687b      	ldr	r3, [r7, #4]
 8001610:	681b      	ldr	r3, [r3, #0]
 8001612:	2201      	movs	r2, #1
 8001614:	431a      	orrs	r2, r3
 8001616:	687b      	ldr	r3, [r7, #4]
 8001618:	601a      	str	r2, [r3, #0]
 800161a:	46c0      	nop			; (mov r8, r8)
 800161c:	46bd      	mov	sp, r7
 800161e:	b002      	add	sp, #8
 8001620:	bd80      	pop	{r7, pc}

08001622 <LL_TIM_SetCounterMode>:
 8001622:	b580      	push	{r7, lr}
 8001624:	b082      	sub	sp, #8
 8001626:	af00      	add	r7, sp, #0
 8001628:	6078      	str	r0, [r7, #4]
 800162a:	6039      	str	r1, [r7, #0]
 800162c:	687b      	ldr	r3, [r7, #4]
 800162e:	681b      	ldr	r3, [r3, #0]
 8001630:	2270      	movs	r2, #112	; 0x70
 8001632:	4393      	bics	r3, r2
 8001634:	001a      	movs	r2, r3
 8001636:	683b      	ldr	r3, [r7, #0]
 8001638:	431a      	orrs	r2, r3
 800163a:	687b      	ldr	r3, [r7, #4]
 800163c:	601a      	str	r2, [r3, #0]
 800163e:	46c0      	nop			; (mov r8, r8)
 8001640:	46bd      	mov	sp, r7
 8001642:	b002      	add	sp, #8
 8001644:	bd80      	pop	{r7, pc}

08001646 <LL_TIM_GetCounter>:
 8001646:	b580      	push	{r7, lr}
 8001648:	b082      	sub	sp, #8
 800164a:	af00      	add	r7, sp, #0
 800164c:	6078      	str	r0, [r7, #4]
 800164e:	687b      	ldr	r3, [r7, #4]
 8001650:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001652:	0018      	movs	r0, r3
 8001654:	46bd      	mov	sp, r7
 8001656:	b002      	add	sp, #8
 8001658:	bd80      	pop	{r7, pc}

0800165a <LL_TIM_SetPrescaler>:
 800165a:	b580      	push	{r7, lr}
 800165c:	b082      	sub	sp, #8
 800165e:	af00      	add	r7, sp, #0
 8001660:	6078      	str	r0, [r7, #4]
 8001662:	6039      	str	r1, [r7, #0]
 8001664:	687b      	ldr	r3, [r7, #4]
 8001666:	683a      	ldr	r2, [r7, #0]
 8001668:	629a      	str	r2, [r3, #40]	; 0x28
 800166a:	46c0      	nop			; (mov r8, r8)
 800166c:	46bd      	mov	sp, r7
 800166e:	b002      	add	sp, #8
 8001670:	bd80      	pop	{r7, pc}

08001672 <LL_TIM_SetAutoReload>:
 8001672:	b580      	push	{r7, lr}
 8001674:	b082      	sub	sp, #8
 8001676:	af00      	add	r7, sp, #0
 8001678:	6078      	str	r0, [r7, #4]
 800167a:	6039      	str	r1, [r7, #0]
 800167c:	687b      	ldr	r3, [r7, #4]
 800167e:	683a      	ldr	r2, [r7, #0]
 8001680:	62da      	str	r2, [r3, #44]	; 0x2c
 8001682:	46c0      	nop			; (mov r8, r8)
 8001684:	46bd      	mov	sp, r7
 8001686:	b002      	add	sp, #8
 8001688:	bd80      	pop	{r7, pc}

0800168a <LL_TIM_CC_EnableChannel>:
 800168a:	b580      	push	{r7, lr}
 800168c:	b082      	sub	sp, #8
 800168e:	af00      	add	r7, sp, #0
 8001690:	6078      	str	r0, [r7, #4]
 8001692:	6039      	str	r1, [r7, #0]
 8001694:	687b      	ldr	r3, [r7, #4]
 8001696:	6a1a      	ldr	r2, [r3, #32]
 8001698:	683b      	ldr	r3, [r7, #0]
 800169a:	431a      	orrs	r2, r3
 800169c:	687b      	ldr	r3, [r7, #4]
 800169e:	621a      	str	r2, [r3, #32]
 80016a0:	46c0      	nop			; (mov r8, r8)
 80016a2:	46bd      	mov	sp, r7
 80016a4:	b002      	add	sp, #8
 80016a6:	bd80      	pop	{r7, pc}

080016a8 <LL_TIM_OC_SetMode>:
 80016a8:	b5b0      	push	{r4, r5, r7, lr}
 80016aa:	b084      	sub	sp, #16
 80016ac:	af00      	add	r7, sp, #0
 80016ae:	60f8      	str	r0, [r7, #12]
 80016b0:	60b9      	str	r1, [r7, #8]
 80016b2:	607a      	str	r2, [r7, #4]
 80016b4:	68bb      	ldr	r3, [r7, #8]
 80016b6:	2b01      	cmp	r3, #1
 80016b8:	d01e      	beq.n	80016f8 <LL_TIM_OC_SetMode+0x50>
 80016ba:	68bb      	ldr	r3, [r7, #8]
 80016bc:	2b04      	cmp	r3, #4
 80016be:	d019      	beq.n	80016f4 <LL_TIM_OC_SetMode+0x4c>
 80016c0:	68bb      	ldr	r3, [r7, #8]
 80016c2:	2b10      	cmp	r3, #16
 80016c4:	d014      	beq.n	80016f0 <LL_TIM_OC_SetMode+0x48>
 80016c6:	68bb      	ldr	r3, [r7, #8]
 80016c8:	2b40      	cmp	r3, #64	; 0x40
 80016ca:	d00f      	beq.n	80016ec <LL_TIM_OC_SetMode+0x44>
 80016cc:	68ba      	ldr	r2, [r7, #8]
 80016ce:	2380      	movs	r3, #128	; 0x80
 80016d0:	005b      	lsls	r3, r3, #1
 80016d2:	429a      	cmp	r2, r3
 80016d4:	d008      	beq.n	80016e8 <LL_TIM_OC_SetMode+0x40>
 80016d6:	68ba      	ldr	r2, [r7, #8]
 80016d8:	2380      	movs	r3, #128	; 0x80
 80016da:	00db      	lsls	r3, r3, #3
 80016dc:	429a      	cmp	r2, r3
 80016de:	d101      	bne.n	80016e4 <LL_TIM_OC_SetMode+0x3c>
 80016e0:	2305      	movs	r3, #5
 80016e2:	e00a      	b.n	80016fa <LL_TIM_OC_SetMode+0x52>
 80016e4:	2306      	movs	r3, #6
 80016e6:	e008      	b.n	80016fa <LL_TIM_OC_SetMode+0x52>
 80016e8:	2304      	movs	r3, #4
 80016ea:	e006      	b.n	80016fa <LL_TIM_OC_SetMode+0x52>
 80016ec:	2303      	movs	r3, #3
 80016ee:	e004      	b.n	80016fa <LL_TIM_OC_SetMode+0x52>
 80016f0:	2302      	movs	r3, #2
 80016f2:	e002      	b.n	80016fa <LL_TIM_OC_SetMode+0x52>
 80016f4:	2301      	movs	r3, #1
 80016f6:	e000      	b.n	80016fa <LL_TIM_OC_SetMode+0x52>
 80016f8:	2300      	movs	r3, #0
 80016fa:	001d      	movs	r5, r3
 80016fc:	68fb      	ldr	r3, [r7, #12]
 80016fe:	3318      	adds	r3, #24
 8001700:	001a      	movs	r2, r3
 8001702:	0029      	movs	r1, r5
 8001704:	4b0c      	ldr	r3, [pc, #48]	; (8001738 <LL_TIM_OC_SetMode+0x90>)
 8001706:	5c5b      	ldrb	r3, [r3, r1]
 8001708:	18d3      	adds	r3, r2, r3
 800170a:	001c      	movs	r4, r3
 800170c:	6823      	ldr	r3, [r4, #0]
 800170e:	0029      	movs	r1, r5
 8001710:	4a0a      	ldr	r2, [pc, #40]	; (800173c <LL_TIM_OC_SetMode+0x94>)
 8001712:	5c52      	ldrb	r2, [r2, r1]
 8001714:	0011      	movs	r1, r2
 8001716:	2273      	movs	r2, #115	; 0x73
 8001718:	408a      	lsls	r2, r1
 800171a:	43d2      	mvns	r2, r2
 800171c:	401a      	ands	r2, r3
 800171e:	0029      	movs	r1, r5
 8001720:	4b06      	ldr	r3, [pc, #24]	; (800173c <LL_TIM_OC_SetMode+0x94>)
 8001722:	5c5b      	ldrb	r3, [r3, r1]
 8001724:	0019      	movs	r1, r3
 8001726:	687b      	ldr	r3, [r7, #4]
 8001728:	408b      	lsls	r3, r1
 800172a:	4313      	orrs	r3, r2
 800172c:	6023      	str	r3, [r4, #0]
 800172e:	46c0      	nop			; (mov r8, r8)
 8001730:	46bd      	mov	sp, r7
 8001732:	b004      	add	sp, #16
 8001734:	bdb0      	pop	{r4, r5, r7, pc}
 8001736:	46c0      	nop			; (mov r8, r8)
 8001738:	08002134 	.word	0x08002134
 800173c:	0800213c 	.word	0x0800213c

08001740 <LL_TIM_OC_SetPolarity>:
 8001740:	b590      	push	{r4, r7, lr}
 8001742:	b085      	sub	sp, #20
 8001744:	af00      	add	r7, sp, #0
 8001746:	60f8      	str	r0, [r7, #12]
 8001748:	60b9      	str	r1, [r7, #8]
 800174a:	607a      	str	r2, [r7, #4]
 800174c:	68bb      	ldr	r3, [r7, #8]
 800174e:	2b01      	cmp	r3, #1
 8001750:	d01e      	beq.n	8001790 <LL_TIM_OC_SetPolarity+0x50>
 8001752:	68bb      	ldr	r3, [r7, #8]
 8001754:	2b04      	cmp	r3, #4
 8001756:	d019      	beq.n	800178c <LL_TIM_OC_SetPolarity+0x4c>
 8001758:	68bb      	ldr	r3, [r7, #8]
 800175a:	2b10      	cmp	r3, #16
 800175c:	d014      	beq.n	8001788 <LL_TIM_OC_SetPolarity+0x48>
 800175e:	68bb      	ldr	r3, [r7, #8]
 8001760:	2b40      	cmp	r3, #64	; 0x40
 8001762:	d00f      	beq.n	8001784 <LL_TIM_OC_SetPolarity+0x44>
 8001764:	68ba      	ldr	r2, [r7, #8]
 8001766:	2380      	movs	r3, #128	; 0x80
 8001768:	005b      	lsls	r3, r3, #1
 800176a:	429a      	cmp	r2, r3
 800176c:	d008      	beq.n	8001780 <LL_TIM_OC_SetPolarity+0x40>
 800176e:	68ba      	ldr	r2, [r7, #8]
 8001770:	2380      	movs	r3, #128	; 0x80
 8001772:	00db      	lsls	r3, r3, #3
 8001774:	429a      	cmp	r2, r3
 8001776:	d101      	bne.n	800177c <LL_TIM_OC_SetPolarity+0x3c>
 8001778:	2305      	movs	r3, #5
 800177a:	e00a      	b.n	8001792 <LL_TIM_OC_SetPolarity+0x52>
 800177c:	2306      	movs	r3, #6
 800177e:	e008      	b.n	8001792 <LL_TIM_OC_SetPolarity+0x52>
 8001780:	2304      	movs	r3, #4
 8001782:	e006      	b.n	8001792 <LL_TIM_OC_SetPolarity+0x52>
 8001784:	2303      	movs	r3, #3
 8001786:	e004      	b.n	8001792 <LL_TIM_OC_SetPolarity+0x52>
 8001788:	2302      	movs	r3, #2
 800178a:	e002      	b.n	8001792 <LL_TIM_OC_SetPolarity+0x52>
 800178c:	2301      	movs	r3, #1
 800178e:	e000      	b.n	8001792 <LL_TIM_OC_SetPolarity+0x52>
 8001790:	2300      	movs	r3, #0
 8001792:	001c      	movs	r4, r3
 8001794:	68fb      	ldr	r3, [r7, #12]
 8001796:	6a1b      	ldr	r3, [r3, #32]
 8001798:	0021      	movs	r1, r4
 800179a:	4a0a      	ldr	r2, [pc, #40]	; (80017c4 <LL_TIM_OC_SetPolarity+0x84>)
 800179c:	5c52      	ldrb	r2, [r2, r1]
 800179e:	0011      	movs	r1, r2
 80017a0:	2202      	movs	r2, #2
 80017a2:	408a      	lsls	r2, r1
 80017a4:	43d2      	mvns	r2, r2
 80017a6:	401a      	ands	r2, r3
 80017a8:	0021      	movs	r1, r4
 80017aa:	4b06      	ldr	r3, [pc, #24]	; (80017c4 <LL_TIM_OC_SetPolarity+0x84>)
 80017ac:	5c5b      	ldrb	r3, [r3, r1]
 80017ae:	0019      	movs	r1, r3
 80017b0:	687b      	ldr	r3, [r7, #4]
 80017b2:	408b      	lsls	r3, r1
 80017b4:	431a      	orrs	r2, r3
 80017b6:	68fb      	ldr	r3, [r7, #12]
 80017b8:	621a      	str	r2, [r3, #32]
 80017ba:	46c0      	nop			; (mov r8, r8)
 80017bc:	46bd      	mov	sp, r7
 80017be:	b005      	add	sp, #20
 80017c0:	bd90      	pop	{r4, r7, pc}
 80017c2:	46c0      	nop			; (mov r8, r8)
 80017c4:	0800214c 	.word	0x0800214c

080017c8 <LL_TIM_OC_SetCompareCH1>:
 80017c8:	b580      	push	{r7, lr}
 80017ca:	b082      	sub	sp, #8
 80017cc:	af00      	add	r7, sp, #0
 80017ce:	6078      	str	r0, [r7, #4]
 80017d0:	6039      	str	r1, [r7, #0]
 80017d2:	687b      	ldr	r3, [r7, #4]
 80017d4:	683a      	ldr	r2, [r7, #0]
 80017d6:	635a      	str	r2, [r3, #52]	; 0x34
 80017d8:	46c0      	nop			; (mov r8, r8)
 80017da:	46bd      	mov	sp, r7
 80017dc:	b002      	add	sp, #8
 80017de:	bd80      	pop	{r7, pc}

080017e0 <LL_TIM_IC_SetActiveInput>:
 80017e0:	b5b0      	push	{r4, r5, r7, lr}
 80017e2:	b084      	sub	sp, #16
 80017e4:	af00      	add	r7, sp, #0
 80017e6:	60f8      	str	r0, [r7, #12]
 80017e8:	60b9      	str	r1, [r7, #8]
 80017ea:	607a      	str	r2, [r7, #4]
 80017ec:	68bb      	ldr	r3, [r7, #8]
 80017ee:	2b01      	cmp	r3, #1
 80017f0:	d01e      	beq.n	8001830 <LL_TIM_IC_SetActiveInput+0x50>
 80017f2:	68bb      	ldr	r3, [r7, #8]
 80017f4:	2b04      	cmp	r3, #4
 80017f6:	d019      	beq.n	800182c <LL_TIM_IC_SetActiveInput+0x4c>
 80017f8:	68bb      	ldr	r3, [r7, #8]
 80017fa:	2b10      	cmp	r3, #16
 80017fc:	d014      	beq.n	8001828 <LL_TIM_IC_SetActiveInput+0x48>
 80017fe:	68bb      	ldr	r3, [r7, #8]
 8001800:	2b40      	cmp	r3, #64	; 0x40
 8001802:	d00f      	beq.n	8001824 <LL_TIM_IC_SetActiveInput+0x44>
 8001804:	68ba      	ldr	r2, [r7, #8]
 8001806:	2380      	movs	r3, #128	; 0x80
 8001808:	005b      	lsls	r3, r3, #1
 800180a:	429a      	cmp	r2, r3
 800180c:	d008      	beq.n	8001820 <LL_TIM_IC_SetActiveInput+0x40>
 800180e:	68ba      	ldr	r2, [r7, #8]
 8001810:	2380      	movs	r3, #128	; 0x80
 8001812:	00db      	lsls	r3, r3, #3
 8001814:	429a      	cmp	r2, r3
 8001816:	d101      	bne.n	800181c <LL_TIM_IC_SetActiveInput+0x3c>
 8001818:	2305      	movs	r3, #5
 800181a:	e00a      	b.n	8001832 <LL_TIM_IC_SetActiveInput+0x52>
 800181c:	2306      	movs	r3, #6
 800181e:	e008      	b.n	8001832 <LL_TIM_IC_SetActiveInput+0x52>
 8001820:	2304      	movs	r3, #4
 8001822:	e006      	b.n	8001832 <LL_TIM_IC_SetActiveInput+0x52>
 8001824:	2303      	movs	r3, #3
 8001826:	e004      	b.n	8001832 <LL_TIM_IC_SetActiveInput+0x52>
 8001828:	2302      	movs	r3, #2
 800182a:	e002      	b.n	8001832 <LL_TIM_IC_SetActiveInput+0x52>
 800182c:	2301      	movs	r3, #1
 800182e:	e000      	b.n	8001832 <LL_TIM_IC_SetActiveInput+0x52>
 8001830:	2300      	movs	r3, #0
 8001832:	001d      	movs	r5, r3
 8001834:	68fb      	ldr	r3, [r7, #12]
 8001836:	3318      	adds	r3, #24
 8001838:	001a      	movs	r2, r3
 800183a:	0029      	movs	r1, r5
 800183c:	4b0c      	ldr	r3, [pc, #48]	; (8001870 <LL_TIM_IC_SetActiveInput+0x90>)
 800183e:	5c5b      	ldrb	r3, [r3, r1]
 8001840:	18d3      	adds	r3, r2, r3
 8001842:	001c      	movs	r4, r3
 8001844:	6823      	ldr	r3, [r4, #0]
 8001846:	0029      	movs	r1, r5
 8001848:	4a0a      	ldr	r2, [pc, #40]	; (8001874 <LL_TIM_IC_SetActiveInput+0x94>)
 800184a:	5c52      	ldrb	r2, [r2, r1]
 800184c:	0011      	movs	r1, r2
 800184e:	2203      	movs	r2, #3
 8001850:	408a      	lsls	r2, r1
 8001852:	43d2      	mvns	r2, r2
 8001854:	401a      	ands	r2, r3
 8001856:	687b      	ldr	r3, [r7, #4]
 8001858:	0c1b      	lsrs	r3, r3, #16
 800185a:	0028      	movs	r0, r5
 800185c:	4905      	ldr	r1, [pc, #20]	; (8001874 <LL_TIM_IC_SetActiveInput+0x94>)
 800185e:	5c09      	ldrb	r1, [r1, r0]
 8001860:	408b      	lsls	r3, r1
 8001862:	4313      	orrs	r3, r2
 8001864:	6023      	str	r3, [r4, #0]
 8001866:	46c0      	nop			; (mov r8, r8)
 8001868:	46bd      	mov	sp, r7
 800186a:	b004      	add	sp, #16
 800186c:	bdb0      	pop	{r4, r5, r7, pc}
 800186e:	46c0      	nop			; (mov r8, r8)
 8001870:	08002134 	.word	0x08002134
 8001874:	08002144 	.word	0x08002144

08001878 <LL_TIM_IC_SetPolarity>:
 8001878:	b590      	push	{r4, r7, lr}
 800187a:	b085      	sub	sp, #20
 800187c:	af00      	add	r7, sp, #0
 800187e:	60f8      	str	r0, [r7, #12]
 8001880:	60b9      	str	r1, [r7, #8]
 8001882:	607a      	str	r2, [r7, #4]
 8001884:	68bb      	ldr	r3, [r7, #8]
 8001886:	2b01      	cmp	r3, #1
 8001888:	d01e      	beq.n	80018c8 <LL_TIM_IC_SetPolarity+0x50>
 800188a:	68bb      	ldr	r3, [r7, #8]
 800188c:	2b04      	cmp	r3, #4
 800188e:	d019      	beq.n	80018c4 <LL_TIM_IC_SetPolarity+0x4c>
 8001890:	68bb      	ldr	r3, [r7, #8]
 8001892:	2b10      	cmp	r3, #16
 8001894:	d014      	beq.n	80018c0 <LL_TIM_IC_SetPolarity+0x48>
 8001896:	68bb      	ldr	r3, [r7, #8]
 8001898:	2b40      	cmp	r3, #64	; 0x40
 800189a:	d00f      	beq.n	80018bc <LL_TIM_IC_SetPolarity+0x44>
 800189c:	68ba      	ldr	r2, [r7, #8]
 800189e:	2380      	movs	r3, #128	; 0x80
 80018a0:	005b      	lsls	r3, r3, #1
 80018a2:	429a      	cmp	r2, r3
 80018a4:	d008      	beq.n	80018b8 <LL_TIM_IC_SetPolarity+0x40>
 80018a6:	68ba      	ldr	r2, [r7, #8]
 80018a8:	2380      	movs	r3, #128	; 0x80
 80018aa:	00db      	lsls	r3, r3, #3
 80018ac:	429a      	cmp	r2, r3
 80018ae:	d101      	bne.n	80018b4 <LL_TIM_IC_SetPolarity+0x3c>
 80018b0:	2305      	movs	r3, #5
 80018b2:	e00a      	b.n	80018ca <LL_TIM_IC_SetPolarity+0x52>
 80018b4:	2306      	movs	r3, #6
 80018b6:	e008      	b.n	80018ca <LL_TIM_IC_SetPolarity+0x52>
 80018b8:	2304      	movs	r3, #4
 80018ba:	e006      	b.n	80018ca <LL_TIM_IC_SetPolarity+0x52>
 80018bc:	2303      	movs	r3, #3
 80018be:	e004      	b.n	80018ca <LL_TIM_IC_SetPolarity+0x52>
 80018c0:	2302      	movs	r3, #2
 80018c2:	e002      	b.n	80018ca <LL_TIM_IC_SetPolarity+0x52>
 80018c4:	2301      	movs	r3, #1
 80018c6:	e000      	b.n	80018ca <LL_TIM_IC_SetPolarity+0x52>
 80018c8:	2300      	movs	r3, #0
 80018ca:	001c      	movs	r4, r3
 80018cc:	68fb      	ldr	r3, [r7, #12]
 80018ce:	6a1b      	ldr	r3, [r3, #32]
 80018d0:	0021      	movs	r1, r4
 80018d2:	4a0a      	ldr	r2, [pc, #40]	; (80018fc <LL_TIM_IC_SetPolarity+0x84>)
 80018d4:	5c52      	ldrb	r2, [r2, r1]
 80018d6:	0011      	movs	r1, r2
 80018d8:	220a      	movs	r2, #10
 80018da:	408a      	lsls	r2, r1
 80018dc:	43d2      	mvns	r2, r2
 80018de:	401a      	ands	r2, r3
 80018e0:	0021      	movs	r1, r4
 80018e2:	4b06      	ldr	r3, [pc, #24]	; (80018fc <LL_TIM_IC_SetPolarity+0x84>)
 80018e4:	5c5b      	ldrb	r3, [r3, r1]
 80018e6:	0019      	movs	r1, r3
 80018e8:	687b      	ldr	r3, [r7, #4]
 80018ea:	408b      	lsls	r3, r1
 80018ec:	431a      	orrs	r2, r3
 80018ee:	68fb      	ldr	r3, [r7, #12]
 80018f0:	621a      	str	r2, [r3, #32]
 80018f2:	46c0      	nop			; (mov r8, r8)
 80018f4:	46bd      	mov	sp, r7
 80018f6:	b005      	add	sp, #20
 80018f8:	bd90      	pop	{r4, r7, pc}
 80018fa:	46c0      	nop			; (mov r8, r8)
 80018fc:	0800214c 	.word	0x0800214c

08001900 <LL_TIM_SetEncoderMode>:
 8001900:	b580      	push	{r7, lr}
 8001902:	b082      	sub	sp, #8
 8001904:	af00      	add	r7, sp, #0
 8001906:	6078      	str	r0, [r7, #4]
 8001908:	6039      	str	r1, [r7, #0]
 800190a:	687b      	ldr	r3, [r7, #4]
 800190c:	689b      	ldr	r3, [r3, #8]
 800190e:	2207      	movs	r2, #7
 8001910:	4393      	bics	r3, r2
 8001912:	001a      	movs	r2, r3
 8001914:	683b      	ldr	r3, [r7, #0]
 8001916:	431a      	orrs	r2, r3
 8001918:	687b      	ldr	r3, [r7, #4]
 800191a:	609a      	str	r2, [r3, #8]
 800191c:	46c0      	nop			; (mov r8, r8)
 800191e:	46bd      	mov	sp, r7
 8001920:	b002      	add	sp, #8
 8001922:	bd80      	pop	{r7, pc}

08001924 <LL_TIM_EnableIT_CC1>:
 8001924:	b580      	push	{r7, lr}
 8001926:	b082      	sub	sp, #8
 8001928:	af00      	add	r7, sp, #0
 800192a:	6078      	str	r0, [r7, #4]
 800192c:	687b      	ldr	r3, [r7, #4]
 800192e:	68db      	ldr	r3, [r3, #12]
 8001930:	2202      	movs	r2, #2
 8001932:	431a      	orrs	r2, r3
 8001934:	687b      	ldr	r3, [r7, #4]
 8001936:	60da      	str	r2, [r3, #12]
 8001938:	46c0      	nop			; (mov r8, r8)
 800193a:	46bd      	mov	sp, r7
 800193c:	b002      	add	sp, #8
 800193e:	bd80      	pop	{r7, pc}

08001940 <LL_InitTick>:
 8001940:	b580      	push	{r7, lr}
 8001942:	b082      	sub	sp, #8
 8001944:	af00      	add	r7, sp, #0
 8001946:	6078      	str	r0, [r7, #4]
 8001948:	6039      	str	r1, [r7, #0]
 800194a:	6839      	ldr	r1, [r7, #0]
 800194c:	6878      	ldr	r0, [r7, #4]
 800194e:	f7fe fbdb 	bl	8000108 <__udivsi3>
 8001952:	0003      	movs	r3, r0
 8001954:	001a      	movs	r2, r3
 8001956:	4b06      	ldr	r3, [pc, #24]	; (8001970 <LL_InitTick+0x30>)
 8001958:	3a01      	subs	r2, #1
 800195a:	605a      	str	r2, [r3, #4]
 800195c:	4b04      	ldr	r3, [pc, #16]	; (8001970 <LL_InitTick+0x30>)
 800195e:	2200      	movs	r2, #0
 8001960:	609a      	str	r2, [r3, #8]
 8001962:	4b03      	ldr	r3, [pc, #12]	; (8001970 <LL_InitTick+0x30>)
 8001964:	2205      	movs	r2, #5
 8001966:	601a      	str	r2, [r3, #0]
 8001968:	46c0      	nop			; (mov r8, r8)
 800196a:	46bd      	mov	sp, r7
 800196c:	b002      	add	sp, #8
 800196e:	bd80      	pop	{r7, pc}
 8001970:	e000e010 	.word	0xe000e010

08001974 <LL_SYSTICK_EnableIT>:
 8001974:	b580      	push	{r7, lr}
 8001976:	af00      	add	r7, sp, #0
 8001978:	4b04      	ldr	r3, [pc, #16]	; (800198c <LL_SYSTICK_EnableIT+0x18>)
 800197a:	681a      	ldr	r2, [r3, #0]
 800197c:	4b03      	ldr	r3, [pc, #12]	; (800198c <LL_SYSTICK_EnableIT+0x18>)
 800197e:	2102      	movs	r1, #2
 8001980:	430a      	orrs	r2, r1
 8001982:	601a      	str	r2, [r3, #0]
 8001984:	46c0      	nop			; (mov r8, r8)
 8001986:	46bd      	mov	sp, r7
 8001988:	bd80      	pop	{r7, pc}
 800198a:	46c0      	nop			; (mov r8, r8)
 800198c:	e000e010 	.word	0xe000e010

08001990 <mask_indicator>:
 8001990:	b580      	push	{r7, lr}
 8001992:	b082      	sub	sp, #8
 8001994:	af00      	add	r7, sp, #0
 8001996:	6078      	str	r0, [r7, #4]
 8001998:	687b      	ldr	r3, [r7, #4]
 800199a:	09db      	lsrs	r3, r3, #7
 800199c:	2201      	movs	r2, #1
 800199e:	4013      	ands	r3, r2
 80019a0:	01da      	lsls	r2, r3, #7
 80019a2:	687b      	ldr	r3, [r7, #4]
 80019a4:	099b      	lsrs	r3, r3, #6
 80019a6:	2101      	movs	r1, #1
 80019a8:	400b      	ands	r3, r1
 80019aa:	019b      	lsls	r3, r3, #6
 80019ac:	431a      	orrs	r2, r3
 80019ae:	687b      	ldr	r3, [r7, #4]
 80019b0:	095b      	lsrs	r3, r3, #5
 80019b2:	2101      	movs	r1, #1
 80019b4:	400b      	ands	r3, r1
 80019b6:	015b      	lsls	r3, r3, #5
 80019b8:	431a      	orrs	r2, r3
 80019ba:	687b      	ldr	r3, [r7, #4]
 80019bc:	091b      	lsrs	r3, r3, #4
 80019be:	2101      	movs	r1, #1
 80019c0:	400b      	ands	r3, r1
 80019c2:	011b      	lsls	r3, r3, #4
 80019c4:	431a      	orrs	r2, r3
 80019c6:	687b      	ldr	r3, [r7, #4]
 80019c8:	08db      	lsrs	r3, r3, #3
 80019ca:	2101      	movs	r1, #1
 80019cc:	400b      	ands	r3, r1
 80019ce:	00db      	lsls	r3, r3, #3
 80019d0:	431a      	orrs	r2, r3
 80019d2:	687b      	ldr	r3, [r7, #4]
 80019d4:	089b      	lsrs	r3, r3, #2
 80019d6:	2101      	movs	r1, #1
 80019d8:	400b      	ands	r3, r1
 80019da:	009b      	lsls	r3, r3, #2
 80019dc:	431a      	orrs	r2, r3
 80019de:	687b      	ldr	r3, [r7, #4]
 80019e0:	085b      	lsrs	r3, r3, #1
 80019e2:	2101      	movs	r1, #1
 80019e4:	400b      	ands	r3, r1
 80019e6:	005b      	lsls	r3, r3, #1
 80019e8:	431a      	orrs	r2, r3
 80019ea:	687b      	ldr	r3, [r7, #4]
 80019ec:	2101      	movs	r1, #1
 80019ee:	400b      	ands	r3, r1
 80019f0:	4313      	orrs	r3, r2
 80019f2:	0018      	movs	r0, r3
 80019f4:	46bd      	mov	sp, r7
 80019f6:	b002      	add	sp, #8
 80019f8:	bd80      	pop	{r7, pc}
	...

080019fc <rcc_config>:
 80019fc:	b580      	push	{r7, lr}
 80019fe:	af00      	add	r7, sp, #0
 8001a00:	2001      	movs	r0, #1
 8001a02:	f7ff fd4d 	bl	80014a0 <LL_FLASH_SetLatency>
 8001a06:	f7ff fc9b 	bl	8001340 <LL_RCC_HSI_Enable>
 8001a0a:	46c0      	nop			; (mov r8, r8)
 8001a0c:	f7ff fca6 	bl	800135c <LL_RCC_HSI_IsReady>
 8001a10:	0003      	movs	r3, r0
 8001a12:	2b01      	cmp	r3, #1
 8001a14:	d1fa      	bne.n	8001a0c <rcc_config+0x10>
 8001a16:	23a0      	movs	r3, #160	; 0xa0
 8001a18:	039b      	lsls	r3, r3, #14
 8001a1a:	0019      	movs	r1, r3
 8001a1c:	2000      	movs	r0, #0
 8001a1e:	f7ff fd19 	bl	8001454 <LL_RCC_PLL_ConfigDomain_SYS>
 8001a22:	f7ff fcf5 	bl	8001410 <LL_RCC_PLL_Enable>
 8001a26:	46c0      	nop			; (mov r8, r8)
 8001a28:	f7ff fd00 	bl	800142c <LL_RCC_PLL_IsReady>
 8001a2c:	0003      	movs	r3, r0
 8001a2e:	2b01      	cmp	r3, #1
 8001a30:	d1fa      	bne.n	8001a28 <rcc_config+0x2c>
 8001a32:	2000      	movs	r0, #0
 8001a34:	f7ff fcc2 	bl	80013bc <LL_RCC_SetAHBPrescaler>
 8001a38:	2002      	movs	r0, #2
 8001a3a:	f7ff fc9f 	bl	800137c <LL_RCC_SetSysClkSource>
 8001a3e:	46c0      	nop			; (mov r8, r8)
 8001a40:	f7ff fcb0 	bl	80013a4 <LL_RCC_GetSysClkSource>
 8001a44:	0003      	movs	r3, r0
 8001a46:	2b08      	cmp	r3, #8
 8001a48:	d1fa      	bne.n	8001a40 <rcc_config+0x44>
 8001a4a:	2000      	movs	r0, #0
 8001a4c:	f7ff fcca 	bl	80013e4 <LL_RCC_SetAPB1Prescaler>
 8001a50:	4b02      	ldr	r3, [pc, #8]	; (8001a5c <rcc_config+0x60>)
 8001a52:	4a03      	ldr	r2, [pc, #12]	; (8001a60 <rcc_config+0x64>)
 8001a54:	601a      	str	r2, [r3, #0]
 8001a56:	46c0      	nop			; (mov r8, r8)
 8001a58:	46bd      	mov	sp, r7
 8001a5a:	bd80      	pop	{r7, pc}
 8001a5c:	20000000 	.word	0x20000000
 8001a60:	02dc6c00 	.word	0x02dc6c00

08001a64 <gpio_config>:
 8001a64:	b580      	push	{r7, lr}
 8001a66:	af00      	add	r7, sp, #0
 8001a68:	2380      	movs	r3, #128	; 0x80
 8001a6a:	031b      	lsls	r3, r3, #12
 8001a6c:	0018      	movs	r0, r3
 8001a6e:	f7ff fd2b 	bl	80014c8 <LL_AHB1_GRP1_EnableClock>
 8001a72:	2380      	movs	r3, #128	; 0x80
 8001a74:	005b      	lsls	r3, r3, #1
 8001a76:	4834      	ldr	r0, [pc, #208]	; (8001b48 <gpio_config+0xe4>)
 8001a78:	2201      	movs	r2, #1
 8001a7a:	0019      	movs	r1, r3
 8001a7c:	f7ff fd50 	bl	8001520 <LL_GPIO_SetPinMode>
 8001a80:	2380      	movs	r3, #128	; 0x80
 8001a82:	009b      	lsls	r3, r3, #2
 8001a84:	4830      	ldr	r0, [pc, #192]	; (8001b48 <gpio_config+0xe4>)
 8001a86:	2201      	movs	r2, #1
 8001a88:	0019      	movs	r1, r3
 8001a8a:	f7ff fd49 	bl	8001520 <LL_GPIO_SetPinMode>
 8001a8e:	4b2e      	ldr	r3, [pc, #184]	; (8001b48 <gpio_config+0xe4>)
 8001a90:	2201      	movs	r2, #1
 8001a92:	2101      	movs	r1, #1
 8001a94:	0018      	movs	r0, r3
 8001a96:	f7ff fd43 	bl	8001520 <LL_GPIO_SetPinMode>
 8001a9a:	4b2b      	ldr	r3, [pc, #172]	; (8001b48 <gpio_config+0xe4>)
 8001a9c:	2201      	movs	r2, #1
 8001a9e:	2102      	movs	r1, #2
 8001aa0:	0018      	movs	r0, r3
 8001aa2:	f7ff fd3d 	bl	8001520 <LL_GPIO_SetPinMode>
 8001aa6:	4b28      	ldr	r3, [pc, #160]	; (8001b48 <gpio_config+0xe4>)
 8001aa8:	2201      	movs	r2, #1
 8001aaa:	2104      	movs	r1, #4
 8001aac:	0018      	movs	r0, r3
 8001aae:	f7ff fd37 	bl	8001520 <LL_GPIO_SetPinMode>
 8001ab2:	4b25      	ldr	r3, [pc, #148]	; (8001b48 <gpio_config+0xe4>)
 8001ab4:	2201      	movs	r2, #1
 8001ab6:	2108      	movs	r1, #8
 8001ab8:	0018      	movs	r0, r3
 8001aba:	f7ff fd31 	bl	8001520 <LL_GPIO_SetPinMode>
 8001abe:	2380      	movs	r3, #128	; 0x80
 8001ac0:	029b      	lsls	r3, r3, #10
 8001ac2:	0018      	movs	r0, r3
 8001ac4:	f7ff fd00 	bl	80014c8 <LL_AHB1_GRP1_EnableClock>
 8001ac8:	2390      	movs	r3, #144	; 0x90
 8001aca:	05db      	lsls	r3, r3, #23
 8001acc:	2200      	movs	r2, #0
 8001ace:	2101      	movs	r1, #1
 8001ad0:	0018      	movs	r0, r3
 8001ad2:	f7ff fd25 	bl	8001520 <LL_GPIO_SetPinMode>
 8001ad6:	2380      	movs	r3, #128	; 0x80
 8001ad8:	02db      	lsls	r3, r3, #11
 8001ada:	0018      	movs	r0, r3
 8001adc:	f7ff fcf4 	bl	80014c8 <LL_AHB1_GRP1_EnableClock>
 8001ae0:	4b1a      	ldr	r3, [pc, #104]	; (8001b4c <gpio_config+0xe8>)
 8001ae2:	2201      	movs	r2, #1
 8001ae4:	2101      	movs	r1, #1
 8001ae6:	0018      	movs	r0, r3
 8001ae8:	f7ff fd1a 	bl	8001520 <LL_GPIO_SetPinMode>
 8001aec:	4b17      	ldr	r3, [pc, #92]	; (8001b4c <gpio_config+0xe8>)
 8001aee:	2201      	movs	r2, #1
 8001af0:	2102      	movs	r1, #2
 8001af2:	0018      	movs	r0, r3
 8001af4:	f7ff fd14 	bl	8001520 <LL_GPIO_SetPinMode>
 8001af8:	4b14      	ldr	r3, [pc, #80]	; (8001b4c <gpio_config+0xe8>)
 8001afa:	2201      	movs	r2, #1
 8001afc:	2104      	movs	r1, #4
 8001afe:	0018      	movs	r0, r3
 8001b00:	f7ff fd0e 	bl	8001520 <LL_GPIO_SetPinMode>
 8001b04:	4b11      	ldr	r3, [pc, #68]	; (8001b4c <gpio_config+0xe8>)
 8001b06:	2201      	movs	r2, #1
 8001b08:	2108      	movs	r1, #8
 8001b0a:	0018      	movs	r0, r3
 8001b0c:	f7ff fd08 	bl	8001520 <LL_GPIO_SetPinMode>
 8001b10:	4b0e      	ldr	r3, [pc, #56]	; (8001b4c <gpio_config+0xe8>)
 8001b12:	2201      	movs	r2, #1
 8001b14:	2110      	movs	r1, #16
 8001b16:	0018      	movs	r0, r3
 8001b18:	f7ff fd02 	bl	8001520 <LL_GPIO_SetPinMode>
 8001b1c:	4b0b      	ldr	r3, [pc, #44]	; (8001b4c <gpio_config+0xe8>)
 8001b1e:	2201      	movs	r2, #1
 8001b20:	2120      	movs	r1, #32
 8001b22:	0018      	movs	r0, r3
 8001b24:	f7ff fcfc 	bl	8001520 <LL_GPIO_SetPinMode>
 8001b28:	4b08      	ldr	r3, [pc, #32]	; (8001b4c <gpio_config+0xe8>)
 8001b2a:	2201      	movs	r2, #1
 8001b2c:	2140      	movs	r1, #64	; 0x40
 8001b2e:	0018      	movs	r0, r3
 8001b30:	f7ff fcf6 	bl	8001520 <LL_GPIO_SetPinMode>
 8001b34:	4b05      	ldr	r3, [pc, #20]	; (8001b4c <gpio_config+0xe8>)
 8001b36:	2201      	movs	r2, #1
 8001b38:	2180      	movs	r1, #128	; 0x80
 8001b3a:	0018      	movs	r0, r3
 8001b3c:	f7ff fcf0 	bl	8001520 <LL_GPIO_SetPinMode>
 8001b40:	46c0      	nop			; (mov r8, r8)
 8001b42:	46bd      	mov	sp, r7
 8001b44:	bd80      	pop	{r7, pc}
 8001b46:	46c0      	nop			; (mov r8, r8)
 8001b48:	48000800 	.word	0x48000800
 8001b4c:	48000400 	.word	0x48000400

08001b50 <dec_display>:
 8001b50:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001b52:	b089      	sub	sp, #36	; 0x24
 8001b54:	af00      	add	r7, sp, #0
 8001b56:	6078      	str	r0, [r7, #4]
 8001b58:	241e      	movs	r4, #30
 8001b5a:	193b      	adds	r3, r7, r4
 8001b5c:	2200      	movs	r2, #0
 8001b5e:	801a      	strh	r2, [r3, #0]
 8001b60:	2508      	movs	r5, #8
 8001b62:	197b      	adds	r3, r7, r5
 8001b64:	4a44      	ldr	r2, [pc, #272]	; (8001c78 <dec_display+0x128>)
 8001b66:	ca43      	ldmia	r2!, {r0, r1, r6}
 8001b68:	c343      	stmia	r3!, {r0, r1, r6}
 8001b6a:	ca03      	ldmia	r2!, {r0, r1}
 8001b6c:	c303      	stmia	r3!, {r0, r1}
 8001b6e:	200f      	movs	r0, #15
 8001b70:	f7ff ff0e 	bl	8001990 <mask_indicator>
 8001b74:	0003      	movs	r3, r0
 8001b76:	4a41      	ldr	r2, [pc, #260]	; (8001c7c <dec_display+0x12c>)
 8001b78:	0019      	movs	r1, r3
 8001b7a:	0010      	movs	r0, r2
 8001b7c:	f7ff fd2b 	bl	80015d6 <LL_GPIO_WriteOutputPort>
 8001b80:	4b3f      	ldr	r3, [pc, #252]	; (8001c80 <dec_display+0x130>)
 8001b82:	681b      	ldr	r3, [r3, #0]
 8001b84:	2201      	movs	r2, #1
 8001b86:	409a      	lsls	r2, r3
 8001b88:	0013      	movs	r3, r2
 8001b8a:	0018      	movs	r0, r3
 8001b8c:	f7ff ff00 	bl	8001990 <mask_indicator>
 8001b90:	0003      	movs	r3, r0
 8001b92:	4a3a      	ldr	r2, [pc, #232]	; (8001c7c <dec_display+0x12c>)
 8001b94:	0019      	movs	r1, r3
 8001b96:	0010      	movs	r0, r2
 8001b98:	f7ff fd29 	bl	80015ee <LL_GPIO_ResetOutputPin>
 8001b9c:	4b38      	ldr	r3, [pc, #224]	; (8001c80 <dec_display+0x130>)
 8001b9e:	681b      	ldr	r3, [r3, #0]
 8001ba0:	2b00      	cmp	r3, #0
 8001ba2:	d10b      	bne.n	8001bbc <dec_display+0x6c>
 8001ba4:	687b      	ldr	r3, [r7, #4]
 8001ba6:	210a      	movs	r1, #10
 8001ba8:	0018      	movs	r0, r3
 8001baa:	f7fe fb33 	bl	8000214 <__aeabi_uidivmod>
 8001bae:	000b      	movs	r3, r1
 8001bb0:	0019      	movs	r1, r3
 8001bb2:	193b      	adds	r3, r7, r4
 8001bb4:	197a      	adds	r2, r7, r5
 8001bb6:	0049      	lsls	r1, r1, #1
 8001bb8:	5a8a      	ldrh	r2, [r1, r2]
 8001bba:	801a      	strh	r2, [r3, #0]
 8001bbc:	4b30      	ldr	r3, [pc, #192]	; (8001c80 <dec_display+0x130>)
 8001bbe:	681b      	ldr	r3, [r3, #0]
 8001bc0:	2b01      	cmp	r3, #1
 8001bc2:	d112      	bne.n	8001bea <dec_display+0x9a>
 8001bc4:	687b      	ldr	r3, [r7, #4]
 8001bc6:	210a      	movs	r1, #10
 8001bc8:	0018      	movs	r0, r3
 8001bca:	f7fe fa9d 	bl	8000108 <__udivsi3>
 8001bce:	0003      	movs	r3, r0
 8001bd0:	210a      	movs	r1, #10
 8001bd2:	0018      	movs	r0, r3
 8001bd4:	f7fe fb1e 	bl	8000214 <__aeabi_uidivmod>
 8001bd8:	000b      	movs	r3, r1
 8001bda:	0019      	movs	r1, r3
 8001bdc:	231e      	movs	r3, #30
 8001bde:	18fb      	adds	r3, r7, r3
 8001be0:	2208      	movs	r2, #8
 8001be2:	18ba      	adds	r2, r7, r2
 8001be4:	0049      	lsls	r1, r1, #1
 8001be6:	5a8a      	ldrh	r2, [r1, r2]
 8001be8:	801a      	strh	r2, [r3, #0]
 8001bea:	4b25      	ldr	r3, [pc, #148]	; (8001c80 <dec_display+0x130>)
 8001bec:	681b      	ldr	r3, [r3, #0]
 8001bee:	2b02      	cmp	r3, #2
 8001bf0:	d112      	bne.n	8001c18 <dec_display+0xc8>
 8001bf2:	687b      	ldr	r3, [r7, #4]
 8001bf4:	2164      	movs	r1, #100	; 0x64
 8001bf6:	0018      	movs	r0, r3
 8001bf8:	f7fe fa86 	bl	8000108 <__udivsi3>
 8001bfc:	0003      	movs	r3, r0
 8001bfe:	210a      	movs	r1, #10
 8001c00:	0018      	movs	r0, r3
 8001c02:	f7fe fb07 	bl	8000214 <__aeabi_uidivmod>
 8001c06:	000b      	movs	r3, r1
 8001c08:	0019      	movs	r1, r3
 8001c0a:	231e      	movs	r3, #30
 8001c0c:	18fb      	adds	r3, r7, r3
 8001c0e:	2208      	movs	r2, #8
 8001c10:	18ba      	adds	r2, r7, r2
 8001c12:	0049      	lsls	r1, r1, #1
 8001c14:	5a8a      	ldrh	r2, [r1, r2]
 8001c16:	801a      	strh	r2, [r3, #0]
 8001c18:	4b19      	ldr	r3, [pc, #100]	; (8001c80 <dec_display+0x130>)
 8001c1a:	681b      	ldr	r3, [r3, #0]
 8001c1c:	2b03      	cmp	r3, #3
 8001c1e:	d113      	bne.n	8001c48 <dec_display+0xf8>
 8001c20:	687b      	ldr	r3, [r7, #4]
 8001c22:	22fa      	movs	r2, #250	; 0xfa
 8001c24:	0091      	lsls	r1, r2, #2
 8001c26:	0018      	movs	r0, r3
 8001c28:	f7fe fa6e 	bl	8000108 <__udivsi3>
 8001c2c:	0003      	movs	r3, r0
 8001c2e:	210a      	movs	r1, #10
 8001c30:	0018      	movs	r0, r3
 8001c32:	f7fe faef 	bl	8000214 <__aeabi_uidivmod>
 8001c36:	000b      	movs	r3, r1
 8001c38:	0019      	movs	r1, r3
 8001c3a:	231e      	movs	r3, #30
 8001c3c:	18fb      	adds	r3, r7, r3
 8001c3e:	2208      	movs	r2, #8
 8001c40:	18ba      	adds	r2, r7, r2
 8001c42:	0049      	lsls	r1, r1, #1
 8001c44:	5a8a      	ldrh	r2, [r1, r2]
 8001c46:	801a      	strh	r2, [r3, #0]
 8001c48:	231e      	movs	r3, #30
 8001c4a:	18fb      	adds	r3, r7, r3
 8001c4c:	881b      	ldrh	r3, [r3, #0]
 8001c4e:	0018      	movs	r0, r3
 8001c50:	f7ff fe9e 	bl	8001990 <mask_indicator>
 8001c54:	0003      	movs	r3, r0
 8001c56:	4a0b      	ldr	r2, [pc, #44]	; (8001c84 <dec_display+0x134>)
 8001c58:	0019      	movs	r1, r3
 8001c5a:	0010      	movs	r0, r2
 8001c5c:	f7ff fcbb 	bl	80015d6 <LL_GPIO_WriteOutputPort>
 8001c60:	4b07      	ldr	r3, [pc, #28]	; (8001c80 <dec_display+0x130>)
 8001c62:	681b      	ldr	r3, [r3, #0]
 8001c64:	3301      	adds	r3, #1
 8001c66:	2203      	movs	r2, #3
 8001c68:	401a      	ands	r2, r3
 8001c6a:	4b05      	ldr	r3, [pc, #20]	; (8001c80 <dec_display+0x130>)
 8001c6c:	601a      	str	r2, [r3, #0]
 8001c6e:	46c0      	nop			; (mov r8, r8)
 8001c70:	46bd      	mov	sp, r7
 8001c72:	b009      	add	sp, #36	; 0x24
 8001c74:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001c76:	46c0      	nop			; (mov r8, r8)
 8001c78:	080020e0 	.word	0x080020e0
 8001c7c:	48000800 	.word	0x48000800
 8001c80:	20000450 	.word	0x20000450
 8001c84:	48000400 	.word	0x48000400

08001c88 <timers_config_encoder>:
 8001c88:	b580      	push	{r7, lr}
 8001c8a:	af00      	add	r7, sp, #0
 8001c8c:	2380      	movs	r3, #128	; 0x80
 8001c8e:	029b      	lsls	r3, r3, #10
 8001c90:	0018      	movs	r0, r3
 8001c92:	f7ff fc19 	bl	80014c8 <LL_AHB1_GRP1_EnableClock>
 8001c96:	2390      	movs	r3, #144	; 0x90
 8001c98:	05db      	lsls	r3, r3, #23
 8001c9a:	2202      	movs	r2, #2
 8001c9c:	2102      	movs	r1, #2
 8001c9e:	0018      	movs	r0, r3
 8001ca0:	f7ff fc3e 	bl	8001520 <LL_GPIO_SetPinMode>
 8001ca4:	2390      	movs	r3, #144	; 0x90
 8001ca6:	05db      	lsls	r3, r3, #23
 8001ca8:	2202      	movs	r2, #2
 8001caa:	2120      	movs	r1, #32
 8001cac:	0018      	movs	r0, r3
 8001cae:	f7ff fc37 	bl	8001520 <LL_GPIO_SetPinMode>
 8001cb2:	2390      	movs	r3, #144	; 0x90
 8001cb4:	05db      	lsls	r3, r3, #23
 8001cb6:	2202      	movs	r2, #2
 8001cb8:	2102      	movs	r1, #2
 8001cba:	0018      	movs	r0, r3
 8001cbc:	f7ff fc68 	bl	8001590 <LL_GPIO_SetAFPin_0_7>
 8001cc0:	2390      	movs	r3, #144	; 0x90
 8001cc2:	05db      	lsls	r3, r3, #23
 8001cc4:	2202      	movs	r2, #2
 8001cc6:	2120      	movs	r1, #32
 8001cc8:	0018      	movs	r0, r3
 8001cca:	f7ff fc61 	bl	8001590 <LL_GPIO_SetAFPin_0_7>
 8001cce:	2390      	movs	r3, #144	; 0x90
 8001cd0:	05db      	lsls	r3, r3, #23
 8001cd2:	2201      	movs	r2, #1
 8001cd4:	2102      	movs	r1, #2
 8001cd6:	0018      	movs	r0, r3
 8001cd8:	f7ff fc3e 	bl	8001558 <LL_GPIO_SetPinPull>
 8001cdc:	2390      	movs	r3, #144	; 0x90
 8001cde:	05db      	lsls	r3, r3, #23
 8001ce0:	2201      	movs	r2, #1
 8001ce2:	2120      	movs	r1, #32
 8001ce4:	0018      	movs	r0, r3
 8001ce6:	f7ff fc37 	bl	8001558 <LL_GPIO_SetPinPull>
 8001cea:	2001      	movs	r0, #1
 8001cec:	f7ff fc02 	bl	80014f4 <LL_APB1_GRP1_EnableClock>
 8001cf0:	2380      	movs	r3, #128	; 0x80
 8001cf2:	025a      	lsls	r2, r3, #9
 8001cf4:	2380      	movs	r3, #128	; 0x80
 8001cf6:	05db      	lsls	r3, r3, #23
 8001cf8:	2101      	movs	r1, #1
 8001cfa:	0018      	movs	r0, r3
 8001cfc:	f7ff fd70 	bl	80017e0 <LL_TIM_IC_SetActiveInput>
 8001d00:	2380      	movs	r3, #128	; 0x80
 8001d02:	025a      	lsls	r2, r3, #9
 8001d04:	2380      	movs	r3, #128	; 0x80
 8001d06:	05db      	lsls	r3, r3, #23
 8001d08:	2110      	movs	r1, #16
 8001d0a:	0018      	movs	r0, r3
 8001d0c:	f7ff fd68 	bl	80017e0 <LL_TIM_IC_SetActiveInput>
 8001d10:	2380      	movs	r3, #128	; 0x80
 8001d12:	05db      	lsls	r3, r3, #23
 8001d14:	2200      	movs	r2, #0
 8001d16:	2101      	movs	r1, #1
 8001d18:	0018      	movs	r0, r3
 8001d1a:	f7ff fdad 	bl	8001878 <LL_TIM_IC_SetPolarity>
 8001d1e:	2380      	movs	r3, #128	; 0x80
 8001d20:	05db      	lsls	r3, r3, #23
 8001d22:	2200      	movs	r2, #0
 8001d24:	2110      	movs	r1, #16
 8001d26:	0018      	movs	r0, r3
 8001d28:	f7ff fda6 	bl	8001878 <LL_TIM_IC_SetPolarity>
 8001d2c:	2380      	movs	r3, #128	; 0x80
 8001d2e:	05db      	lsls	r3, r3, #23
 8001d30:	2103      	movs	r1, #3
 8001d32:	0018      	movs	r0, r3
 8001d34:	f7ff fde4 	bl	8001900 <LL_TIM_SetEncoderMode>
 8001d38:	4a07      	ldr	r2, [pc, #28]	; (8001d58 <timers_config_encoder+0xd0>)
 8001d3a:	2380      	movs	r3, #128	; 0x80
 8001d3c:	05db      	lsls	r3, r3, #23
 8001d3e:	0011      	movs	r1, r2
 8001d40:	0018      	movs	r0, r3
 8001d42:	f7ff fc96 	bl	8001672 <LL_TIM_SetAutoReload>
 8001d46:	2380      	movs	r3, #128	; 0x80
 8001d48:	05db      	lsls	r3, r3, #23
 8001d4a:	0018      	movs	r0, r3
 8001d4c:	f7ff fc5b 	bl	8001606 <LL_TIM_EnableCounter>
 8001d50:	46c0      	nop			; (mov r8, r8)
 8001d52:	46bd      	mov	sp, r7
 8001d54:	bd80      	pop	{r7, pc}
 8001d56:	46c0      	nop			; (mov r8, r8)
 8001d58:	000003e7 	.word	0x000003e7

08001d5c <timers_config_PWM>:
 8001d5c:	b580      	push	{r7, lr}
 8001d5e:	af00      	add	r7, sp, #0
 8001d60:	2380      	movs	r3, #128	; 0x80
 8001d62:	02db      	lsls	r3, r3, #11
 8001d64:	0018      	movs	r0, r3
 8001d66:	f7ff fbaf 	bl	80014c8 <LL_AHB1_GRP1_EnableClock>
 8001d6a:	2390      	movs	r3, #144	; 0x90
 8001d6c:	05db      	lsls	r3, r3, #23
 8001d6e:	2202      	movs	r2, #2
 8001d70:	2140      	movs	r1, #64	; 0x40
 8001d72:	0018      	movs	r0, r3
 8001d74:	f7ff fbd4 	bl	8001520 <LL_GPIO_SetPinMode>
 8001d78:	2390      	movs	r3, #144	; 0x90
 8001d7a:	05db      	lsls	r3, r3, #23
 8001d7c:	2201      	movs	r2, #1
 8001d7e:	2140      	movs	r1, #64	; 0x40
 8001d80:	0018      	movs	r0, r3
 8001d82:	f7ff fc05 	bl	8001590 <LL_GPIO_SetAFPin_0_7>
 8001d86:	2002      	movs	r0, #2
 8001d88:	f7ff fbb4 	bl	80014f4 <LL_APB1_GRP1_EnableClock>
 8001d8c:	4b1c      	ldr	r3, [pc, #112]	; (8001e00 <timers_config_PWM+0xa4>)
 8001d8e:	212f      	movs	r1, #47	; 0x2f
 8001d90:	0018      	movs	r0, r3
 8001d92:	f7ff fc62 	bl	800165a <LL_TIM_SetPrescaler>
 8001d96:	4a1b      	ldr	r2, [pc, #108]	; (8001e04 <timers_config_PWM+0xa8>)
 8001d98:	4b19      	ldr	r3, [pc, #100]	; (8001e00 <timers_config_PWM+0xa4>)
 8001d9a:	0011      	movs	r1, r2
 8001d9c:	0018      	movs	r0, r3
 8001d9e:	f7ff fc68 	bl	8001672 <LL_TIM_SetAutoReload>
 8001da2:	4a19      	ldr	r2, [pc, #100]	; (8001e08 <timers_config_PWM+0xac>)
 8001da4:	4b16      	ldr	r3, [pc, #88]	; (8001e00 <timers_config_PWM+0xa4>)
 8001da6:	0011      	movs	r1, r2
 8001da8:	0018      	movs	r0, r3
 8001daa:	f7ff fd0d 	bl	80017c8 <LL_TIM_OC_SetCompareCH1>
 8001dae:	4b14      	ldr	r3, [pc, #80]	; (8001e00 <timers_config_PWM+0xa4>)
 8001db0:	2101      	movs	r1, #1
 8001db2:	0018      	movs	r0, r3
 8001db4:	f7ff fc69 	bl	800168a <LL_TIM_CC_EnableChannel>
 8001db8:	4b11      	ldr	r3, [pc, #68]	; (8001e00 <timers_config_PWM+0xa4>)
 8001dba:	2200      	movs	r2, #0
 8001dbc:	2101      	movs	r1, #1
 8001dbe:	0018      	movs	r0, r3
 8001dc0:	f7ff fcbe 	bl	8001740 <LL_TIM_OC_SetPolarity>
 8001dc4:	4b0e      	ldr	r3, [pc, #56]	; (8001e00 <timers_config_PWM+0xa4>)
 8001dc6:	2260      	movs	r2, #96	; 0x60
 8001dc8:	2101      	movs	r1, #1
 8001dca:	0018      	movs	r0, r3
 8001dcc:	f7ff fc6c 	bl	80016a8 <LL_TIM_OC_SetMode>
 8001dd0:	4b0b      	ldr	r3, [pc, #44]	; (8001e00 <timers_config_PWM+0xa4>)
 8001dd2:	2100      	movs	r1, #0
 8001dd4:	0018      	movs	r0, r3
 8001dd6:	f7ff fc24 	bl	8001622 <LL_TIM_SetCounterMode>
 8001dda:	4b09      	ldr	r3, [pc, #36]	; (8001e00 <timers_config_PWM+0xa4>)
 8001ddc:	0018      	movs	r0, r3
 8001dde:	f7ff fda1 	bl	8001924 <LL_TIM_EnableIT_CC1>
 8001de2:	4b07      	ldr	r3, [pc, #28]	; (8001e00 <timers_config_PWM+0xa4>)
 8001de4:	0018      	movs	r0, r3
 8001de6:	f7ff fc0e 	bl	8001606 <LL_TIM_EnableCounter>
 8001dea:	2010      	movs	r0, #16
 8001dec:	f7ff fa24 	bl	8001238 <NVIC_EnableIRQ>
 8001df0:	2102      	movs	r1, #2
 8001df2:	2010      	movs	r0, #16
 8001df4:	f7ff fa36 	bl	8001264 <NVIC_SetPriority>
 8001df8:	46c0      	nop			; (mov r8, r8)
 8001dfa:	46bd      	mov	sp, r7
 8001dfc:	bd80      	pop	{r7, pc}
 8001dfe:	46c0      	nop			; (mov r8, r8)
 8001e00:	40000400 	.word	0x40000400
 8001e04:	0000270f 	.word	0x0000270f
 8001e08:	000003c5 	.word	0x000003c5

08001e0c <systick_config>:
 8001e0c:	b580      	push	{r7, lr}
 8001e0e:	af00      	add	r7, sp, #0
 8001e10:	23fa      	movs	r3, #250	; 0xfa
 8001e12:	009b      	lsls	r3, r3, #2
 8001e14:	4a07      	ldr	r2, [pc, #28]	; (8001e34 <systick_config+0x28>)
 8001e16:	0019      	movs	r1, r3
 8001e18:	0010      	movs	r0, r2
 8001e1a:	f7ff fd91 	bl	8001940 <LL_InitTick>
 8001e1e:	f7ff fda9 	bl	8001974 <LL_SYSTICK_EnableIT>
 8001e22:	2301      	movs	r3, #1
 8001e24:	425b      	negs	r3, r3
 8001e26:	2101      	movs	r1, #1
 8001e28:	0018      	movs	r0, r3
 8001e2a:	f7ff fa1b 	bl	8001264 <NVIC_SetPriority>
 8001e2e:	46c0      	nop			; (mov r8, r8)
 8001e30:	46bd      	mov	sp, r7
 8001e32:	bd80      	pop	{r7, pc}
 8001e34:	02dc6c00 	.word	0x02dc6c00

08001e38 <SysTick_Handler>:
 8001e38:	b580      	push	{r7, lr}
 8001e3a:	af00      	add	r7, sp, #0
 8001e3c:	2380      	movs	r3, #128	; 0x80
 8001e3e:	05db      	lsls	r3, r3, #23
 8001e40:	0018      	movs	r0, r3
 8001e42:	f7ff fc00 	bl	8001646 <LL_TIM_GetCounter>
 8001e46:	0003      	movs	r3, r0
 8001e48:	0018      	movs	r0, r3
 8001e4a:	f7ff f83d 	bl	8000ec8 <__aeabi_ui2d>
 8001e4e:	4a16      	ldr	r2, [pc, #88]	; (8001ea8 <SysTick_Handler+0x70>)
 8001e50:	4b16      	ldr	r3, [pc, #88]	; (8001eac <SysTick_Handler+0x74>)
 8001e52:	f7fe fa03 	bl	800025c <__aeabi_dmul>
 8001e56:	0002      	movs	r2, r0
 8001e58:	000b      	movs	r3, r1
 8001e5a:	0010      	movs	r0, r2
 8001e5c:	0019      	movs	r1, r3
 8001e5e:	f7fe f9df 	bl	8000220 <__aeabi_d2uiz>
 8001e62:	0003      	movs	r3, r0
 8001e64:	4a12      	ldr	r2, [pc, #72]	; (8001eb0 <SysTick_Handler+0x78>)
 8001e66:	0019      	movs	r1, r3
 8001e68:	0010      	movs	r0, r2
 8001e6a:	f7ff fcad 	bl	80017c8 <LL_TIM_OC_SetCompareCH1>
 8001e6e:	2380      	movs	r3, #128	; 0x80
 8001e70:	05db      	lsls	r3, r3, #23
 8001e72:	0018      	movs	r0, r3
 8001e74:	f7ff fbe7 	bl	8001646 <LL_TIM_GetCounter>
 8001e78:	0003      	movs	r3, r0
 8001e7a:	4a0d      	ldr	r2, [pc, #52]	; (8001eb0 <SysTick_Handler+0x78>)
 8001e7c:	0019      	movs	r1, r3
 8001e7e:	0010      	movs	r0, r2
 8001e80:	f7ff fbf7 	bl	8001672 <LL_TIM_SetAutoReload>
 8001e84:	2380      	movs	r3, #128	; 0x80
 8001e86:	05db      	lsls	r3, r3, #23
 8001e88:	0018      	movs	r0, r3
 8001e8a:	f7ff fbdc 	bl	8001646 <LL_TIM_GetCounter>
 8001e8e:	0003      	movs	r3, r0
 8001e90:	0019      	movs	r1, r3
 8001e92:	4808      	ldr	r0, [pc, #32]	; (8001eb4 <SysTick_Handler+0x7c>)
 8001e94:	f7fe f938 	bl	8000108 <__udivsi3>
 8001e98:	0003      	movs	r3, r0
 8001e9a:	0018      	movs	r0, r3
 8001e9c:	f7ff fe58 	bl	8001b50 <dec_display>
 8001ea0:	46c0      	nop			; (mov r8, r8)
 8001ea2:	46bd      	mov	sp, r7
 8001ea4:	bd80      	pop	{r7, pc}
 8001ea6:	46c0      	nop			; (mov r8, r8)
 8001ea8:	ae147ae1 	.word	0xae147ae1
 8001eac:	3feee147 	.word	0x3feee147
 8001eb0:	40000400 	.word	0x40000400
 8001eb4:	00002710 	.word	0x00002710

08001eb8 <main>:
 8001eb8:	b580      	push	{r7, lr}
 8001eba:	af00      	add	r7, sp, #0
 8001ebc:	f7ff fd9e 	bl	80019fc <rcc_config>
 8001ec0:	f7ff fdd0 	bl	8001a64 <gpio_config>
 8001ec4:	f7ff fee0 	bl	8001c88 <timers_config_encoder>
 8001ec8:	f7ff ff48 	bl	8001d5c <timers_config_PWM>
 8001ecc:	f7ff ff9e 	bl	8001e0c <systick_config>
 8001ed0:	e7fe      	b.n	8001ed0 <main+0x18>
	...

08001ed4 <SystemInit>:
 8001ed4:	b580      	push	{r7, lr}
 8001ed6:	af00      	add	r7, sp, #0
 8001ed8:	4b1a      	ldr	r3, [pc, #104]	; (8001f44 <SystemInit+0x70>)
 8001eda:	681a      	ldr	r2, [r3, #0]
 8001edc:	4b19      	ldr	r3, [pc, #100]	; (8001f44 <SystemInit+0x70>)
 8001ede:	2101      	movs	r1, #1
 8001ee0:	430a      	orrs	r2, r1
 8001ee2:	601a      	str	r2, [r3, #0]
 8001ee4:	4b17      	ldr	r3, [pc, #92]	; (8001f44 <SystemInit+0x70>)
 8001ee6:	685a      	ldr	r2, [r3, #4]
 8001ee8:	4b16      	ldr	r3, [pc, #88]	; (8001f44 <SystemInit+0x70>)
 8001eea:	4917      	ldr	r1, [pc, #92]	; (8001f48 <SystemInit+0x74>)
 8001eec:	400a      	ands	r2, r1
 8001eee:	605a      	str	r2, [r3, #4]
 8001ef0:	4b14      	ldr	r3, [pc, #80]	; (8001f44 <SystemInit+0x70>)
 8001ef2:	681a      	ldr	r2, [r3, #0]
 8001ef4:	4b13      	ldr	r3, [pc, #76]	; (8001f44 <SystemInit+0x70>)
 8001ef6:	4915      	ldr	r1, [pc, #84]	; (8001f4c <SystemInit+0x78>)
 8001ef8:	400a      	ands	r2, r1
 8001efa:	601a      	str	r2, [r3, #0]
 8001efc:	4b11      	ldr	r3, [pc, #68]	; (8001f44 <SystemInit+0x70>)
 8001efe:	681a      	ldr	r2, [r3, #0]
 8001f00:	4b10      	ldr	r3, [pc, #64]	; (8001f44 <SystemInit+0x70>)
 8001f02:	4913      	ldr	r1, [pc, #76]	; (8001f50 <SystemInit+0x7c>)
 8001f04:	400a      	ands	r2, r1
 8001f06:	601a      	str	r2, [r3, #0]
 8001f08:	4b0e      	ldr	r3, [pc, #56]	; (8001f44 <SystemInit+0x70>)
 8001f0a:	685a      	ldr	r2, [r3, #4]
 8001f0c:	4b0d      	ldr	r3, [pc, #52]	; (8001f44 <SystemInit+0x70>)
 8001f0e:	4911      	ldr	r1, [pc, #68]	; (8001f54 <SystemInit+0x80>)
 8001f10:	400a      	ands	r2, r1
 8001f12:	605a      	str	r2, [r3, #4]
 8001f14:	4b0b      	ldr	r3, [pc, #44]	; (8001f44 <SystemInit+0x70>)
 8001f16:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8001f18:	4b0a      	ldr	r3, [pc, #40]	; (8001f44 <SystemInit+0x70>)
 8001f1a:	210f      	movs	r1, #15
 8001f1c:	438a      	bics	r2, r1
 8001f1e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001f20:	4b08      	ldr	r3, [pc, #32]	; (8001f44 <SystemInit+0x70>)
 8001f22:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8001f24:	4b07      	ldr	r3, [pc, #28]	; (8001f44 <SystemInit+0x70>)
 8001f26:	490c      	ldr	r1, [pc, #48]	; (8001f58 <SystemInit+0x84>)
 8001f28:	400a      	ands	r2, r1
 8001f2a:	631a      	str	r2, [r3, #48]	; 0x30
 8001f2c:	4b05      	ldr	r3, [pc, #20]	; (8001f44 <SystemInit+0x70>)
 8001f2e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8001f30:	4b04      	ldr	r3, [pc, #16]	; (8001f44 <SystemInit+0x70>)
 8001f32:	2101      	movs	r1, #1
 8001f34:	438a      	bics	r2, r1
 8001f36:	635a      	str	r2, [r3, #52]	; 0x34
 8001f38:	4b02      	ldr	r3, [pc, #8]	; (8001f44 <SystemInit+0x70>)
 8001f3a:	2200      	movs	r2, #0
 8001f3c:	609a      	str	r2, [r3, #8]
 8001f3e:	46c0      	nop			; (mov r8, r8)
 8001f40:	46bd      	mov	sp, r7
 8001f42:	bd80      	pop	{r7, pc}
 8001f44:	40021000 	.word	0x40021000
 8001f48:	f8ffb80c 	.word	0xf8ffb80c
 8001f4c:	fef6ffff 	.word	0xfef6ffff
 8001f50:	fffbffff 	.word	0xfffbffff
 8001f54:	ffc0ffff 	.word	0xffc0ffff
 8001f58:	fffffeac 	.word	0xfffffeac

08001f5c <NMI_Handler>:
 8001f5c:	b580      	push	{r7, lr}
 8001f5e:	af00      	add	r7, sp, #0
 8001f60:	46c0      	nop			; (mov r8, r8)
 8001f62:	46bd      	mov	sp, r7
 8001f64:	bd80      	pop	{r7, pc}

08001f66 <HardFault_Handler>:
 8001f66:	b580      	push	{r7, lr}
 8001f68:	af00      	add	r7, sp, #0
 8001f6a:	e7fe      	b.n	8001f6a <HardFault_Handler+0x4>

08001f6c <SVC_Handler>:
 8001f6c:	b580      	push	{r7, lr}
 8001f6e:	af00      	add	r7, sp, #0
 8001f70:	46c0      	nop			; (mov r8, r8)
 8001f72:	46bd      	mov	sp, r7
 8001f74:	bd80      	pop	{r7, pc}

08001f76 <PendSV_Handler>:
 8001f76:	b580      	push	{r7, lr}
 8001f78:	af00      	add	r7, sp, #0
 8001f7a:	46c0      	nop			; (mov r8, r8)
 8001f7c:	46bd      	mov	sp, r7
 8001f7e:	bd80      	pop	{r7, pc}

08001f80 <__libc_init_array>:
 8001f80:	b570      	push	{r4, r5, r6, lr}
 8001f82:	4d0c      	ldr	r5, [pc, #48]	; (8001fb4 <__libc_init_array+0x34>)
 8001f84:	4e0c      	ldr	r6, [pc, #48]	; (8001fb8 <__libc_init_array+0x38>)
 8001f86:	1b76      	subs	r6, r6, r5
 8001f88:	10b6      	asrs	r6, r6, #2
 8001f8a:	d005      	beq.n	8001f98 <__libc_init_array+0x18>
 8001f8c:	2400      	movs	r4, #0
 8001f8e:	cd08      	ldmia	r5!, {r3}
 8001f90:	3401      	adds	r4, #1
 8001f92:	4798      	blx	r3
 8001f94:	42a6      	cmp	r6, r4
 8001f96:	d1fa      	bne.n	8001f8e <__libc_init_array+0xe>
 8001f98:	f000 f896 	bl	80020c8 <_init>
 8001f9c:	4d07      	ldr	r5, [pc, #28]	; (8001fbc <__libc_init_array+0x3c>)
 8001f9e:	4e08      	ldr	r6, [pc, #32]	; (8001fc0 <__libc_init_array+0x40>)
 8001fa0:	1b76      	subs	r6, r6, r5
 8001fa2:	10b6      	asrs	r6, r6, #2
 8001fa4:	d005      	beq.n	8001fb2 <__libc_init_array+0x32>
 8001fa6:	2400      	movs	r4, #0
 8001fa8:	cd08      	ldmia	r5!, {r3}
 8001faa:	3401      	adds	r4, #1
 8001fac:	4798      	blx	r3
 8001fae:	42a6      	cmp	r6, r4
 8001fb0:	d1fa      	bne.n	8001fa8 <__libc_init_array+0x28>
 8001fb2:	bd70      	pop	{r4, r5, r6, pc}
 8001fb4:	08002158 	.word	0x08002158
 8001fb8:	08002158 	.word	0x08002158
 8001fbc:	08002158 	.word	0x08002158
 8001fc0:	08002160 	.word	0x08002160

08001fc4 <register_fini>:
 8001fc4:	4b03      	ldr	r3, [pc, #12]	; (8001fd4 <register_fini+0x10>)
 8001fc6:	b510      	push	{r4, lr}
 8001fc8:	2b00      	cmp	r3, #0
 8001fca:	d002      	beq.n	8001fd2 <register_fini+0xe>
 8001fcc:	4802      	ldr	r0, [pc, #8]	; (8001fd8 <register_fini+0x14>)
 8001fce:	f000 f805 	bl	8001fdc <atexit>
 8001fd2:	bd10      	pop	{r4, pc}
 8001fd4:	00000000 	.word	0x00000000
 8001fd8:	08001fed 	.word	0x08001fed

08001fdc <atexit>:
 8001fdc:	b510      	push	{r4, lr}
 8001fde:	0001      	movs	r1, r0
 8001fe0:	2300      	movs	r3, #0
 8001fe2:	2200      	movs	r2, #0
 8001fe4:	2000      	movs	r0, #0
 8001fe6:	f000 f819 	bl	800201c <__register_exitproc>
 8001fea:	bd10      	pop	{r4, pc}

08001fec <__libc_fini_array>:
 8001fec:	b570      	push	{r4, r5, r6, lr}
 8001fee:	4d07      	ldr	r5, [pc, #28]	; (800200c <__libc_fini_array+0x20>)
 8001ff0:	4c07      	ldr	r4, [pc, #28]	; (8002010 <__libc_fini_array+0x24>)
 8001ff2:	1b64      	subs	r4, r4, r5
 8001ff4:	10a4      	asrs	r4, r4, #2
 8001ff6:	d005      	beq.n	8002004 <__libc_fini_array+0x18>
 8001ff8:	3c01      	subs	r4, #1
 8001ffa:	00a3      	lsls	r3, r4, #2
 8001ffc:	58eb      	ldr	r3, [r5, r3]
 8001ffe:	4798      	blx	r3
 8002000:	2c00      	cmp	r4, #0
 8002002:	d1f9      	bne.n	8001ff8 <__libc_fini_array+0xc>
 8002004:	f000 f866 	bl	80020d4 <_fini>
 8002008:	bd70      	pop	{r4, r5, r6, pc}
 800200a:	46c0      	nop			; (mov r8, r8)
 800200c:	08002160 	.word	0x08002160
 8002010:	08002164 	.word	0x08002164

08002014 <__retarget_lock_acquire_recursive>:
 8002014:	4770      	bx	lr
 8002016:	46c0      	nop			; (mov r8, r8)

08002018 <__retarget_lock_release_recursive>:
 8002018:	4770      	bx	lr
 800201a:	46c0      	nop			; (mov r8, r8)

0800201c <__register_exitproc>:
 800201c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800201e:	46d6      	mov	lr, sl
 8002020:	464f      	mov	r7, r9
 8002022:	4646      	mov	r6, r8
 8002024:	b5c0      	push	{r6, r7, lr}
 8002026:	4f26      	ldr	r7, [pc, #152]	; (80020c0 <__register_exitproc+0xa4>)
 8002028:	b082      	sub	sp, #8
 800202a:	0006      	movs	r6, r0
 800202c:	6838      	ldr	r0, [r7, #0]
 800202e:	4692      	mov	sl, r2
 8002030:	4698      	mov	r8, r3
 8002032:	4689      	mov	r9, r1
 8002034:	f7ff ffee 	bl	8002014 <__retarget_lock_acquire_recursive>
 8002038:	4b22      	ldr	r3, [pc, #136]	; (80020c4 <__register_exitproc+0xa8>)
 800203a:	681b      	ldr	r3, [r3, #0]
 800203c:	9301      	str	r3, [sp, #4]
 800203e:	23a4      	movs	r3, #164	; 0xa4
 8002040:	9a01      	ldr	r2, [sp, #4]
 8002042:	005b      	lsls	r3, r3, #1
 8002044:	58d5      	ldr	r5, [r2, r3]
 8002046:	2d00      	cmp	r5, #0
 8002048:	d02e      	beq.n	80020a8 <__register_exitproc+0x8c>
 800204a:	686c      	ldr	r4, [r5, #4]
 800204c:	2c1f      	cmp	r4, #31
 800204e:	dc30      	bgt.n	80020b2 <__register_exitproc+0x96>
 8002050:	2e00      	cmp	r6, #0
 8002052:	d10f      	bne.n	8002074 <__register_exitproc+0x58>
 8002054:	1c63      	adds	r3, r4, #1
 8002056:	606b      	str	r3, [r5, #4]
 8002058:	464b      	mov	r3, r9
 800205a:	3402      	adds	r4, #2
 800205c:	00a4      	lsls	r4, r4, #2
 800205e:	6838      	ldr	r0, [r7, #0]
 8002060:	5163      	str	r3, [r4, r5]
 8002062:	f7ff ffd9 	bl	8002018 <__retarget_lock_release_recursive>
 8002066:	2000      	movs	r0, #0
 8002068:	b002      	add	sp, #8
 800206a:	bce0      	pop	{r5, r6, r7}
 800206c:	46ba      	mov	sl, r7
 800206e:	46b1      	mov	r9, r6
 8002070:	46a8      	mov	r8, r5
 8002072:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002074:	2288      	movs	r2, #136	; 0x88
 8002076:	4651      	mov	r1, sl
 8002078:	0028      	movs	r0, r5
 800207a:	00a3      	lsls	r3, r4, #2
 800207c:	18eb      	adds	r3, r5, r3
 800207e:	5099      	str	r1, [r3, r2]
 8002080:	3a87      	subs	r2, #135	; 0x87
 8002082:	40a2      	lsls	r2, r4
 8002084:	3089      	adds	r0, #137	; 0x89
 8002086:	30ff      	adds	r0, #255	; 0xff
 8002088:	6801      	ldr	r1, [r0, #0]
 800208a:	4311      	orrs	r1, r2
 800208c:	6001      	str	r1, [r0, #0]
 800208e:	2184      	movs	r1, #132	; 0x84
 8002090:	4640      	mov	r0, r8
 8002092:	0049      	lsls	r1, r1, #1
 8002094:	5058      	str	r0, [r3, r1]
 8002096:	2e02      	cmp	r6, #2
 8002098:	d1dc      	bne.n	8002054 <__register_exitproc+0x38>
 800209a:	002b      	movs	r3, r5
 800209c:	338d      	adds	r3, #141	; 0x8d
 800209e:	33ff      	adds	r3, #255	; 0xff
 80020a0:	6819      	ldr	r1, [r3, #0]
 80020a2:	430a      	orrs	r2, r1
 80020a4:	601a      	str	r2, [r3, #0]
 80020a6:	e7d5      	b.n	8002054 <__register_exitproc+0x38>
 80020a8:	0015      	movs	r5, r2
 80020aa:	354d      	adds	r5, #77	; 0x4d
 80020ac:	35ff      	adds	r5, #255	; 0xff
 80020ae:	50d5      	str	r5, [r2, r3]
 80020b0:	e7cb      	b.n	800204a <__register_exitproc+0x2e>
 80020b2:	6838      	ldr	r0, [r7, #0]
 80020b4:	f7ff ffb0 	bl	8002018 <__retarget_lock_release_recursive>
 80020b8:	2001      	movs	r0, #1
 80020ba:	4240      	negs	r0, r0
 80020bc:	e7d4      	b.n	8002068 <__register_exitproc+0x4c>
 80020be:	46c0      	nop			; (mov r8, r8)
 80020c0:	20000430 	.word	0x20000430
 80020c4:	08002154 	.word	0x08002154

080020c8 <_init>:
 80020c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80020ca:	46c0      	nop			; (mov r8, r8)
 80020cc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80020ce:	bc08      	pop	{r3}
 80020d0:	469e      	mov	lr, r3
 80020d2:	4770      	bx	lr

080020d4 <_fini>:
 80020d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80020d6:	46c0      	nop			; (mov r8, r8)
 80020d8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80020da:	bc08      	pop	{r3}
 80020dc:	469e      	mov	lr, r3
 80020de:	4770      	bx	lr
