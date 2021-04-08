
build/timers_enc.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00002348  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000000b0  08002408  08002408  00012408  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080024b8  080024b8  000124b8  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080024c0  080024c0  000124c0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080024c4  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  080028f8  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  080028f8  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       000011cb  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000400  00000000  00000000  00021627  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000007f4  00000000  00000000  00021a27  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000188  00000000  00000000  0002221b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000158  00000000  00000000  000223a3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       000009bb  00000000  00000000  000224fb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000931  00000000  00000000  00022eb6  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  000237e7  2**0  CONTENTS, READONLY
 17 .debug_frame      000008a8  00000000  00000000  00023834  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	080023f0 	.word	0x080023f0

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
 8000104:	080023f0 	.word	0x080023f0

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
 800022a:	f001 f99d 	bl	8001568 <__aeabi_dcmpge>
 800022e:	2800      	cmp	r0, #0
 8000230:	d104      	bne.n	800023c <__aeabi_d2uiz+0x1c>
 8000232:	0020      	movs	r0, r4
 8000234:	0029      	movs	r1, r5
 8000236:	f001 f907 	bl	8001448 <__aeabi_d2iz>
 800023a:	bd70      	pop	{r4, r5, r6, pc}
 800023c:	4b06      	ldr	r3, [pc, #24]	; (8000258 <__aeabi_d2uiz+0x38>)
 800023e:	2200      	movs	r2, #0
 8000240:	0020      	movs	r0, r4
 8000242:	0029      	movs	r1, r5
 8000244:	f000 fd6e 	bl	8000d24 <__aeabi_dsub>
 8000248:	f001 f8fe 	bl	8001448 <__aeabi_d2iz>
 800024c:	2380      	movs	r3, #128	; 0x80
 800024e:	061b      	lsls	r3, r3, #24
 8000250:	469c      	mov	ip, r3
 8000252:	4460      	add	r0, ip
 8000254:	e7f1      	b.n	800023a <__aeabi_d2uiz+0x1a>
 8000256:	46c0      	nop			; (mov r8, r8)
 8000258:	41e00000 	.word	0x41e00000

0800025c <__aeabi_ddiv>:
 800025c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800025e:	4657      	mov	r7, sl
 8000260:	464e      	mov	r6, r9
 8000262:	4645      	mov	r5, r8
 8000264:	46de      	mov	lr, fp
 8000266:	b5e0      	push	{r5, r6, r7, lr}
 8000268:	4681      	mov	r9, r0
 800026a:	0005      	movs	r5, r0
 800026c:	030c      	lsls	r4, r1, #12
 800026e:	0048      	lsls	r0, r1, #1
 8000270:	4692      	mov	sl, r2
 8000272:	001f      	movs	r7, r3
 8000274:	b085      	sub	sp, #20
 8000276:	0b24      	lsrs	r4, r4, #12
 8000278:	0d40      	lsrs	r0, r0, #21
 800027a:	0fce      	lsrs	r6, r1, #31
 800027c:	2800      	cmp	r0, #0
 800027e:	d100      	bne.n	8000282 <__aeabi_ddiv+0x26>
 8000280:	e156      	b.n	8000530 <__aeabi_ddiv+0x2d4>
 8000282:	4bd4      	ldr	r3, [pc, #848]	; (80005d4 <__aeabi_ddiv+0x378>)
 8000284:	4298      	cmp	r0, r3
 8000286:	d100      	bne.n	800028a <__aeabi_ddiv+0x2e>
 8000288:	e172      	b.n	8000570 <__aeabi_ddiv+0x314>
 800028a:	0f6b      	lsrs	r3, r5, #29
 800028c:	00e4      	lsls	r4, r4, #3
 800028e:	431c      	orrs	r4, r3
 8000290:	2380      	movs	r3, #128	; 0x80
 8000292:	041b      	lsls	r3, r3, #16
 8000294:	4323      	orrs	r3, r4
 8000296:	4698      	mov	r8, r3
 8000298:	4bcf      	ldr	r3, [pc, #828]	; (80005d8 <__aeabi_ddiv+0x37c>)
 800029a:	00ed      	lsls	r5, r5, #3
 800029c:	469b      	mov	fp, r3
 800029e:	2300      	movs	r3, #0
 80002a0:	4699      	mov	r9, r3
 80002a2:	4483      	add	fp, r0
 80002a4:	9300      	str	r3, [sp, #0]
 80002a6:	033c      	lsls	r4, r7, #12
 80002a8:	007b      	lsls	r3, r7, #1
 80002aa:	4650      	mov	r0, sl
 80002ac:	0b24      	lsrs	r4, r4, #12
 80002ae:	0d5b      	lsrs	r3, r3, #21
 80002b0:	0fff      	lsrs	r7, r7, #31
 80002b2:	2b00      	cmp	r3, #0
 80002b4:	d100      	bne.n	80002b8 <__aeabi_ddiv+0x5c>
 80002b6:	e11f      	b.n	80004f8 <__aeabi_ddiv+0x29c>
 80002b8:	4ac6      	ldr	r2, [pc, #792]	; (80005d4 <__aeabi_ddiv+0x378>)
 80002ba:	4293      	cmp	r3, r2
 80002bc:	d100      	bne.n	80002c0 <__aeabi_ddiv+0x64>
 80002be:	e162      	b.n	8000586 <__aeabi_ddiv+0x32a>
 80002c0:	49c5      	ldr	r1, [pc, #788]	; (80005d8 <__aeabi_ddiv+0x37c>)
 80002c2:	0f42      	lsrs	r2, r0, #29
 80002c4:	468c      	mov	ip, r1
 80002c6:	00e4      	lsls	r4, r4, #3
 80002c8:	4659      	mov	r1, fp
 80002ca:	4314      	orrs	r4, r2
 80002cc:	2280      	movs	r2, #128	; 0x80
 80002ce:	4463      	add	r3, ip
 80002d0:	0412      	lsls	r2, r2, #16
 80002d2:	1acb      	subs	r3, r1, r3
 80002d4:	4314      	orrs	r4, r2
 80002d6:	469b      	mov	fp, r3
 80002d8:	00c2      	lsls	r2, r0, #3
 80002da:	2000      	movs	r0, #0
 80002dc:	0033      	movs	r3, r6
 80002de:	407b      	eors	r3, r7
 80002e0:	469a      	mov	sl, r3
 80002e2:	464b      	mov	r3, r9
 80002e4:	2b0f      	cmp	r3, #15
 80002e6:	d827      	bhi.n	8000338 <__aeabi_ddiv+0xdc>
 80002e8:	49bc      	ldr	r1, [pc, #752]	; (80005dc <__aeabi_ddiv+0x380>)
 80002ea:	009b      	lsls	r3, r3, #2
 80002ec:	58cb      	ldr	r3, [r1, r3]
 80002ee:	469f      	mov	pc, r3
 80002f0:	46b2      	mov	sl, r6
 80002f2:	9b00      	ldr	r3, [sp, #0]
 80002f4:	2b02      	cmp	r3, #2
 80002f6:	d016      	beq.n	8000326 <__aeabi_ddiv+0xca>
 80002f8:	2b03      	cmp	r3, #3
 80002fa:	d100      	bne.n	80002fe <__aeabi_ddiv+0xa2>
 80002fc:	e28e      	b.n	800081c <__aeabi_ddiv+0x5c0>
 80002fe:	2b01      	cmp	r3, #1
 8000300:	d000      	beq.n	8000304 <__aeabi_ddiv+0xa8>
 8000302:	e0d9      	b.n	80004b8 <__aeabi_ddiv+0x25c>
 8000304:	2300      	movs	r3, #0
 8000306:	2400      	movs	r4, #0
 8000308:	2500      	movs	r5, #0
 800030a:	4652      	mov	r2, sl
 800030c:	051b      	lsls	r3, r3, #20
 800030e:	4323      	orrs	r3, r4
 8000310:	07d2      	lsls	r2, r2, #31
 8000312:	4313      	orrs	r3, r2
 8000314:	0028      	movs	r0, r5
 8000316:	0019      	movs	r1, r3
 8000318:	b005      	add	sp, #20
 800031a:	bcf0      	pop	{r4, r5, r6, r7}
 800031c:	46bb      	mov	fp, r7
 800031e:	46b2      	mov	sl, r6
 8000320:	46a9      	mov	r9, r5
 8000322:	46a0      	mov	r8, r4
 8000324:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000326:	2400      	movs	r4, #0
 8000328:	2500      	movs	r5, #0
 800032a:	4baa      	ldr	r3, [pc, #680]	; (80005d4 <__aeabi_ddiv+0x378>)
 800032c:	e7ed      	b.n	800030a <__aeabi_ddiv+0xae>
 800032e:	46ba      	mov	sl, r7
 8000330:	46a0      	mov	r8, r4
 8000332:	0015      	movs	r5, r2
 8000334:	9000      	str	r0, [sp, #0]
 8000336:	e7dc      	b.n	80002f2 <__aeabi_ddiv+0x96>
 8000338:	4544      	cmp	r4, r8
 800033a:	d200      	bcs.n	800033e <__aeabi_ddiv+0xe2>
 800033c:	e1c7      	b.n	80006ce <__aeabi_ddiv+0x472>
 800033e:	d100      	bne.n	8000342 <__aeabi_ddiv+0xe6>
 8000340:	e1c2      	b.n	80006c8 <__aeabi_ddiv+0x46c>
 8000342:	2301      	movs	r3, #1
 8000344:	425b      	negs	r3, r3
 8000346:	469c      	mov	ip, r3
 8000348:	002e      	movs	r6, r5
 800034a:	4640      	mov	r0, r8
 800034c:	2500      	movs	r5, #0
 800034e:	44e3      	add	fp, ip
 8000350:	0223      	lsls	r3, r4, #8
 8000352:	0e14      	lsrs	r4, r2, #24
 8000354:	431c      	orrs	r4, r3
 8000356:	0c1b      	lsrs	r3, r3, #16
 8000358:	4699      	mov	r9, r3
 800035a:	0423      	lsls	r3, r4, #16
 800035c:	0c1f      	lsrs	r7, r3, #16
 800035e:	0212      	lsls	r2, r2, #8
 8000360:	4649      	mov	r1, r9
 8000362:	9200      	str	r2, [sp, #0]
 8000364:	9701      	str	r7, [sp, #4]
 8000366:	f7ff ff55 	bl	8000214 <__aeabi_uidivmod>
 800036a:	0002      	movs	r2, r0
 800036c:	437a      	muls	r2, r7
 800036e:	040b      	lsls	r3, r1, #16
 8000370:	0c31      	lsrs	r1, r6, #16
 8000372:	4680      	mov	r8, r0
 8000374:	4319      	orrs	r1, r3
 8000376:	428a      	cmp	r2, r1
 8000378:	d907      	bls.n	800038a <__aeabi_ddiv+0x12e>
 800037a:	2301      	movs	r3, #1
 800037c:	425b      	negs	r3, r3
 800037e:	469c      	mov	ip, r3
 8000380:	1909      	adds	r1, r1, r4
 8000382:	44e0      	add	r8, ip
 8000384:	428c      	cmp	r4, r1
 8000386:	d800      	bhi.n	800038a <__aeabi_ddiv+0x12e>
 8000388:	e207      	b.n	800079a <__aeabi_ddiv+0x53e>
 800038a:	1a88      	subs	r0, r1, r2
 800038c:	4649      	mov	r1, r9
 800038e:	f7ff ff41 	bl	8000214 <__aeabi_uidivmod>
 8000392:	0409      	lsls	r1, r1, #16
 8000394:	468c      	mov	ip, r1
 8000396:	0431      	lsls	r1, r6, #16
 8000398:	4666      	mov	r6, ip
 800039a:	9a01      	ldr	r2, [sp, #4]
 800039c:	0c09      	lsrs	r1, r1, #16
 800039e:	4342      	muls	r2, r0
 80003a0:	0003      	movs	r3, r0
 80003a2:	4331      	orrs	r1, r6
 80003a4:	428a      	cmp	r2, r1
 80003a6:	d904      	bls.n	80003b2 <__aeabi_ddiv+0x156>
 80003a8:	1909      	adds	r1, r1, r4
 80003aa:	3b01      	subs	r3, #1
 80003ac:	428c      	cmp	r4, r1
 80003ae:	d800      	bhi.n	80003b2 <__aeabi_ddiv+0x156>
 80003b0:	e1ed      	b.n	800078e <__aeabi_ddiv+0x532>
 80003b2:	1a88      	subs	r0, r1, r2
 80003b4:	4642      	mov	r2, r8
 80003b6:	0412      	lsls	r2, r2, #16
 80003b8:	431a      	orrs	r2, r3
 80003ba:	4690      	mov	r8, r2
 80003bc:	4641      	mov	r1, r8
 80003be:	9b00      	ldr	r3, [sp, #0]
 80003c0:	040e      	lsls	r6, r1, #16
 80003c2:	0c1b      	lsrs	r3, r3, #16
 80003c4:	001f      	movs	r7, r3
 80003c6:	9302      	str	r3, [sp, #8]
 80003c8:	9b00      	ldr	r3, [sp, #0]
 80003ca:	0c36      	lsrs	r6, r6, #16
 80003cc:	041b      	lsls	r3, r3, #16
 80003ce:	0c19      	lsrs	r1, r3, #16
 80003d0:	000b      	movs	r3, r1
 80003d2:	4373      	muls	r3, r6
 80003d4:	0c12      	lsrs	r2, r2, #16
 80003d6:	437e      	muls	r6, r7
 80003d8:	9103      	str	r1, [sp, #12]
 80003da:	4351      	muls	r1, r2
 80003dc:	437a      	muls	r2, r7
 80003de:	0c1f      	lsrs	r7, r3, #16
 80003e0:	46bc      	mov	ip, r7
 80003e2:	1876      	adds	r6, r6, r1
 80003e4:	4466      	add	r6, ip
 80003e6:	42b1      	cmp	r1, r6
 80003e8:	d903      	bls.n	80003f2 <__aeabi_ddiv+0x196>
 80003ea:	2180      	movs	r1, #128	; 0x80
 80003ec:	0249      	lsls	r1, r1, #9
 80003ee:	468c      	mov	ip, r1
 80003f0:	4462      	add	r2, ip
 80003f2:	0c31      	lsrs	r1, r6, #16
 80003f4:	188a      	adds	r2, r1, r2
 80003f6:	0431      	lsls	r1, r6, #16
 80003f8:	041e      	lsls	r6, r3, #16
 80003fa:	0c36      	lsrs	r6, r6, #16
 80003fc:	198e      	adds	r6, r1, r6
 80003fe:	4290      	cmp	r0, r2
 8000400:	d302      	bcc.n	8000408 <__aeabi_ddiv+0x1ac>
 8000402:	d112      	bne.n	800042a <__aeabi_ddiv+0x1ce>
 8000404:	42b5      	cmp	r5, r6
 8000406:	d210      	bcs.n	800042a <__aeabi_ddiv+0x1ce>
 8000408:	4643      	mov	r3, r8
 800040a:	1e59      	subs	r1, r3, #1
 800040c:	9b00      	ldr	r3, [sp, #0]
 800040e:	469c      	mov	ip, r3
 8000410:	4465      	add	r5, ip
 8000412:	001f      	movs	r7, r3
 8000414:	429d      	cmp	r5, r3
 8000416:	419b      	sbcs	r3, r3
 8000418:	425b      	negs	r3, r3
 800041a:	191b      	adds	r3, r3, r4
 800041c:	18c0      	adds	r0, r0, r3
 800041e:	4284      	cmp	r4, r0
 8000420:	d200      	bcs.n	8000424 <__aeabi_ddiv+0x1c8>
 8000422:	e1a0      	b.n	8000766 <__aeabi_ddiv+0x50a>
 8000424:	d100      	bne.n	8000428 <__aeabi_ddiv+0x1cc>
 8000426:	e19b      	b.n	8000760 <__aeabi_ddiv+0x504>
 8000428:	4688      	mov	r8, r1
 800042a:	1bae      	subs	r6, r5, r6
 800042c:	42b5      	cmp	r5, r6
 800042e:	41ad      	sbcs	r5, r5
 8000430:	1a80      	subs	r0, r0, r2
 8000432:	426d      	negs	r5, r5
 8000434:	1b40      	subs	r0, r0, r5
 8000436:	4284      	cmp	r4, r0
 8000438:	d100      	bne.n	800043c <__aeabi_ddiv+0x1e0>
 800043a:	e1d5      	b.n	80007e8 <__aeabi_ddiv+0x58c>
 800043c:	4649      	mov	r1, r9
 800043e:	f7ff fee9 	bl	8000214 <__aeabi_uidivmod>
 8000442:	9a01      	ldr	r2, [sp, #4]
 8000444:	040b      	lsls	r3, r1, #16
 8000446:	4342      	muls	r2, r0
 8000448:	0c31      	lsrs	r1, r6, #16
 800044a:	0005      	movs	r5, r0
 800044c:	4319      	orrs	r1, r3
 800044e:	428a      	cmp	r2, r1
 8000450:	d900      	bls.n	8000454 <__aeabi_ddiv+0x1f8>
 8000452:	e16c      	b.n	800072e <__aeabi_ddiv+0x4d2>
 8000454:	1a88      	subs	r0, r1, r2
 8000456:	4649      	mov	r1, r9
 8000458:	f7ff fedc 	bl	8000214 <__aeabi_uidivmod>
 800045c:	9a01      	ldr	r2, [sp, #4]
 800045e:	0436      	lsls	r6, r6, #16
 8000460:	4342      	muls	r2, r0
 8000462:	0409      	lsls	r1, r1, #16
 8000464:	0c36      	lsrs	r6, r6, #16
 8000466:	0003      	movs	r3, r0
 8000468:	430e      	orrs	r6, r1
 800046a:	42b2      	cmp	r2, r6
 800046c:	d900      	bls.n	8000470 <__aeabi_ddiv+0x214>
 800046e:	e153      	b.n	8000718 <__aeabi_ddiv+0x4bc>
 8000470:	9803      	ldr	r0, [sp, #12]
 8000472:	1ab6      	subs	r6, r6, r2
 8000474:	0002      	movs	r2, r0
 8000476:	042d      	lsls	r5, r5, #16
 8000478:	431d      	orrs	r5, r3
 800047a:	9f02      	ldr	r7, [sp, #8]
 800047c:	042b      	lsls	r3, r5, #16
 800047e:	0c1b      	lsrs	r3, r3, #16
 8000480:	435a      	muls	r2, r3
 8000482:	437b      	muls	r3, r7
 8000484:	469c      	mov	ip, r3
 8000486:	0c29      	lsrs	r1, r5, #16
 8000488:	4348      	muls	r0, r1
 800048a:	0c13      	lsrs	r3, r2, #16
 800048c:	4484      	add	ip, r0
 800048e:	4463      	add	r3, ip
 8000490:	4379      	muls	r1, r7
 8000492:	4298      	cmp	r0, r3
 8000494:	d903      	bls.n	800049e <__aeabi_ddiv+0x242>
 8000496:	2080      	movs	r0, #128	; 0x80
 8000498:	0240      	lsls	r0, r0, #9
 800049a:	4684      	mov	ip, r0
 800049c:	4461      	add	r1, ip
 800049e:	0c18      	lsrs	r0, r3, #16
 80004a0:	0412      	lsls	r2, r2, #16
 80004a2:	041b      	lsls	r3, r3, #16
 80004a4:	0c12      	lsrs	r2, r2, #16
 80004a6:	1841      	adds	r1, r0, r1
 80004a8:	189b      	adds	r3, r3, r2
 80004aa:	428e      	cmp	r6, r1
 80004ac:	d200      	bcs.n	80004b0 <__aeabi_ddiv+0x254>
 80004ae:	e0ff      	b.n	80006b0 <__aeabi_ddiv+0x454>
 80004b0:	d100      	bne.n	80004b4 <__aeabi_ddiv+0x258>
 80004b2:	e0fa      	b.n	80006aa <__aeabi_ddiv+0x44e>
 80004b4:	2301      	movs	r3, #1
 80004b6:	431d      	orrs	r5, r3
 80004b8:	4a49      	ldr	r2, [pc, #292]	; (80005e0 <__aeabi_ddiv+0x384>)
 80004ba:	445a      	add	r2, fp
 80004bc:	2a00      	cmp	r2, #0
 80004be:	dc00      	bgt.n	80004c2 <__aeabi_ddiv+0x266>
 80004c0:	e0aa      	b.n	8000618 <__aeabi_ddiv+0x3bc>
 80004c2:	076b      	lsls	r3, r5, #29
 80004c4:	d000      	beq.n	80004c8 <__aeabi_ddiv+0x26c>
 80004c6:	e13d      	b.n	8000744 <__aeabi_ddiv+0x4e8>
 80004c8:	08ed      	lsrs	r5, r5, #3
 80004ca:	4643      	mov	r3, r8
 80004cc:	01db      	lsls	r3, r3, #7
 80004ce:	d506      	bpl.n	80004de <__aeabi_ddiv+0x282>
 80004d0:	4642      	mov	r2, r8
 80004d2:	4b44      	ldr	r3, [pc, #272]	; (80005e4 <__aeabi_ddiv+0x388>)
 80004d4:	401a      	ands	r2, r3
 80004d6:	4690      	mov	r8, r2
 80004d8:	2280      	movs	r2, #128	; 0x80
 80004da:	00d2      	lsls	r2, r2, #3
 80004dc:	445a      	add	r2, fp
 80004de:	4b42      	ldr	r3, [pc, #264]	; (80005e8 <__aeabi_ddiv+0x38c>)
 80004e0:	429a      	cmp	r2, r3
 80004e2:	dd00      	ble.n	80004e6 <__aeabi_ddiv+0x28a>
 80004e4:	e71f      	b.n	8000326 <__aeabi_ddiv+0xca>
 80004e6:	4643      	mov	r3, r8
 80004e8:	075b      	lsls	r3, r3, #29
 80004ea:	431d      	orrs	r5, r3
 80004ec:	4643      	mov	r3, r8
 80004ee:	0552      	lsls	r2, r2, #21
 80004f0:	025c      	lsls	r4, r3, #9
 80004f2:	0b24      	lsrs	r4, r4, #12
 80004f4:	0d53      	lsrs	r3, r2, #21
 80004f6:	e708      	b.n	800030a <__aeabi_ddiv+0xae>
 80004f8:	4652      	mov	r2, sl
 80004fa:	4322      	orrs	r2, r4
 80004fc:	d100      	bne.n	8000500 <__aeabi_ddiv+0x2a4>
 80004fe:	e07b      	b.n	80005f8 <__aeabi_ddiv+0x39c>
 8000500:	2c00      	cmp	r4, #0
 8000502:	d100      	bne.n	8000506 <__aeabi_ddiv+0x2aa>
 8000504:	e0fa      	b.n	80006fc <__aeabi_ddiv+0x4a0>
 8000506:	0020      	movs	r0, r4
 8000508:	f001 f838 	bl	800157c <__clzsi2>
 800050c:	0002      	movs	r2, r0
 800050e:	3a0b      	subs	r2, #11
 8000510:	231d      	movs	r3, #29
 8000512:	0001      	movs	r1, r0
 8000514:	1a9b      	subs	r3, r3, r2
 8000516:	4652      	mov	r2, sl
 8000518:	3908      	subs	r1, #8
 800051a:	40da      	lsrs	r2, r3
 800051c:	408c      	lsls	r4, r1
 800051e:	4314      	orrs	r4, r2
 8000520:	4652      	mov	r2, sl
 8000522:	408a      	lsls	r2, r1
 8000524:	4b31      	ldr	r3, [pc, #196]	; (80005ec <__aeabi_ddiv+0x390>)
 8000526:	4458      	add	r0, fp
 8000528:	469b      	mov	fp, r3
 800052a:	4483      	add	fp, r0
 800052c:	2000      	movs	r0, #0
 800052e:	e6d5      	b.n	80002dc <__aeabi_ddiv+0x80>
 8000530:	464b      	mov	r3, r9
 8000532:	4323      	orrs	r3, r4
 8000534:	4698      	mov	r8, r3
 8000536:	d044      	beq.n	80005c2 <__aeabi_ddiv+0x366>
 8000538:	2c00      	cmp	r4, #0
 800053a:	d100      	bne.n	800053e <__aeabi_ddiv+0x2e2>
 800053c:	e0ce      	b.n	80006dc <__aeabi_ddiv+0x480>
 800053e:	0020      	movs	r0, r4
 8000540:	f001 f81c 	bl	800157c <__clzsi2>
 8000544:	0001      	movs	r1, r0
 8000546:	0002      	movs	r2, r0
 8000548:	390b      	subs	r1, #11
 800054a:	231d      	movs	r3, #29
 800054c:	1a5b      	subs	r3, r3, r1
 800054e:	4649      	mov	r1, r9
 8000550:	0010      	movs	r0, r2
 8000552:	40d9      	lsrs	r1, r3
 8000554:	3808      	subs	r0, #8
 8000556:	4084      	lsls	r4, r0
 8000558:	000b      	movs	r3, r1
 800055a:	464d      	mov	r5, r9
 800055c:	4323      	orrs	r3, r4
 800055e:	4698      	mov	r8, r3
 8000560:	4085      	lsls	r5, r0
 8000562:	4823      	ldr	r0, [pc, #140]	; (80005f0 <__aeabi_ddiv+0x394>)
 8000564:	1a83      	subs	r3, r0, r2
 8000566:	469b      	mov	fp, r3
 8000568:	2300      	movs	r3, #0
 800056a:	4699      	mov	r9, r3
 800056c:	9300      	str	r3, [sp, #0]
 800056e:	e69a      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 8000570:	464b      	mov	r3, r9
 8000572:	4323      	orrs	r3, r4
 8000574:	4698      	mov	r8, r3
 8000576:	d11d      	bne.n	80005b4 <__aeabi_ddiv+0x358>
 8000578:	2308      	movs	r3, #8
 800057a:	4699      	mov	r9, r3
 800057c:	3b06      	subs	r3, #6
 800057e:	2500      	movs	r5, #0
 8000580:	4683      	mov	fp, r0
 8000582:	9300      	str	r3, [sp, #0]
 8000584:	e68f      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 8000586:	4652      	mov	r2, sl
 8000588:	4322      	orrs	r2, r4
 800058a:	d109      	bne.n	80005a0 <__aeabi_ddiv+0x344>
 800058c:	2302      	movs	r3, #2
 800058e:	4649      	mov	r1, r9
 8000590:	4319      	orrs	r1, r3
 8000592:	4b18      	ldr	r3, [pc, #96]	; (80005f4 <__aeabi_ddiv+0x398>)
 8000594:	4689      	mov	r9, r1
 8000596:	469c      	mov	ip, r3
 8000598:	2400      	movs	r4, #0
 800059a:	2002      	movs	r0, #2
 800059c:	44e3      	add	fp, ip
 800059e:	e69d      	b.n	80002dc <__aeabi_ddiv+0x80>
 80005a0:	2303      	movs	r3, #3
 80005a2:	464a      	mov	r2, r9
 80005a4:	431a      	orrs	r2, r3
 80005a6:	4b13      	ldr	r3, [pc, #76]	; (80005f4 <__aeabi_ddiv+0x398>)
 80005a8:	4691      	mov	r9, r2
 80005aa:	469c      	mov	ip, r3
 80005ac:	4652      	mov	r2, sl
 80005ae:	2003      	movs	r0, #3
 80005b0:	44e3      	add	fp, ip
 80005b2:	e693      	b.n	80002dc <__aeabi_ddiv+0x80>
 80005b4:	230c      	movs	r3, #12
 80005b6:	4699      	mov	r9, r3
 80005b8:	3b09      	subs	r3, #9
 80005ba:	46a0      	mov	r8, r4
 80005bc:	4683      	mov	fp, r0
 80005be:	9300      	str	r3, [sp, #0]
 80005c0:	e671      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 80005c2:	2304      	movs	r3, #4
 80005c4:	4699      	mov	r9, r3
 80005c6:	2300      	movs	r3, #0
 80005c8:	469b      	mov	fp, r3
 80005ca:	3301      	adds	r3, #1
 80005cc:	2500      	movs	r5, #0
 80005ce:	9300      	str	r3, [sp, #0]
 80005d0:	e669      	b.n	80002a6 <__aeabi_ddiv+0x4a>
 80005d2:	46c0      	nop			; (mov r8, r8)
 80005d4:	000007ff 	.word	0x000007ff
 80005d8:	fffffc01 	.word	0xfffffc01
 80005dc:	0800241c 	.word	0x0800241c
 80005e0:	000003ff 	.word	0x000003ff
 80005e4:	feffffff 	.word	0xfeffffff
 80005e8:	000007fe 	.word	0x000007fe
 80005ec:	000003f3 	.word	0x000003f3
 80005f0:	fffffc0d 	.word	0xfffffc0d
 80005f4:	fffff801 	.word	0xfffff801
 80005f8:	4649      	mov	r1, r9
 80005fa:	2301      	movs	r3, #1
 80005fc:	4319      	orrs	r1, r3
 80005fe:	4689      	mov	r9, r1
 8000600:	2400      	movs	r4, #0
 8000602:	2001      	movs	r0, #1
 8000604:	e66a      	b.n	80002dc <__aeabi_ddiv+0x80>
 8000606:	2300      	movs	r3, #0
 8000608:	2480      	movs	r4, #128	; 0x80
 800060a:	469a      	mov	sl, r3
 800060c:	2500      	movs	r5, #0
 800060e:	4b8a      	ldr	r3, [pc, #552]	; (8000838 <__aeabi_ddiv+0x5dc>)
 8000610:	0324      	lsls	r4, r4, #12
 8000612:	e67a      	b.n	800030a <__aeabi_ddiv+0xae>
 8000614:	2501      	movs	r5, #1
 8000616:	426d      	negs	r5, r5
 8000618:	2301      	movs	r3, #1
 800061a:	1a9b      	subs	r3, r3, r2
 800061c:	2b38      	cmp	r3, #56	; 0x38
 800061e:	dd00      	ble.n	8000622 <__aeabi_ddiv+0x3c6>
 8000620:	e670      	b.n	8000304 <__aeabi_ddiv+0xa8>
 8000622:	2b1f      	cmp	r3, #31
 8000624:	dc00      	bgt.n	8000628 <__aeabi_ddiv+0x3cc>
 8000626:	e0bf      	b.n	80007a8 <__aeabi_ddiv+0x54c>
 8000628:	211f      	movs	r1, #31
 800062a:	4249      	negs	r1, r1
 800062c:	1a8a      	subs	r2, r1, r2
 800062e:	4641      	mov	r1, r8
 8000630:	40d1      	lsrs	r1, r2
 8000632:	000a      	movs	r2, r1
 8000634:	2b20      	cmp	r3, #32
 8000636:	d004      	beq.n	8000642 <__aeabi_ddiv+0x3e6>
 8000638:	4641      	mov	r1, r8
 800063a:	4b80      	ldr	r3, [pc, #512]	; (800083c <__aeabi_ddiv+0x5e0>)
 800063c:	445b      	add	r3, fp
 800063e:	4099      	lsls	r1, r3
 8000640:	430d      	orrs	r5, r1
 8000642:	1e6b      	subs	r3, r5, #1
 8000644:	419d      	sbcs	r5, r3
 8000646:	2307      	movs	r3, #7
 8000648:	432a      	orrs	r2, r5
 800064a:	001d      	movs	r5, r3
 800064c:	2400      	movs	r4, #0
 800064e:	4015      	ands	r5, r2
 8000650:	4213      	tst	r3, r2
 8000652:	d100      	bne.n	8000656 <__aeabi_ddiv+0x3fa>
 8000654:	e0d4      	b.n	8000800 <__aeabi_ddiv+0x5a4>
 8000656:	210f      	movs	r1, #15
 8000658:	2300      	movs	r3, #0
 800065a:	4011      	ands	r1, r2
 800065c:	2904      	cmp	r1, #4
 800065e:	d100      	bne.n	8000662 <__aeabi_ddiv+0x406>
 8000660:	e0cb      	b.n	80007fa <__aeabi_ddiv+0x59e>
 8000662:	1d11      	adds	r1, r2, #4
 8000664:	4291      	cmp	r1, r2
 8000666:	4192      	sbcs	r2, r2
 8000668:	4252      	negs	r2, r2
 800066a:	189b      	adds	r3, r3, r2
 800066c:	000a      	movs	r2, r1
 800066e:	0219      	lsls	r1, r3, #8
 8000670:	d400      	bmi.n	8000674 <__aeabi_ddiv+0x418>
 8000672:	e0c2      	b.n	80007fa <__aeabi_ddiv+0x59e>
 8000674:	2301      	movs	r3, #1
 8000676:	2400      	movs	r4, #0
 8000678:	2500      	movs	r5, #0
 800067a:	e646      	b.n	800030a <__aeabi_ddiv+0xae>
 800067c:	2380      	movs	r3, #128	; 0x80
 800067e:	4641      	mov	r1, r8
 8000680:	031b      	lsls	r3, r3, #12
 8000682:	4219      	tst	r1, r3
 8000684:	d008      	beq.n	8000698 <__aeabi_ddiv+0x43c>
 8000686:	421c      	tst	r4, r3
 8000688:	d106      	bne.n	8000698 <__aeabi_ddiv+0x43c>
 800068a:	431c      	orrs	r4, r3
 800068c:	0324      	lsls	r4, r4, #12
 800068e:	46ba      	mov	sl, r7
 8000690:	0015      	movs	r5, r2
 8000692:	4b69      	ldr	r3, [pc, #420]	; (8000838 <__aeabi_ddiv+0x5dc>)
 8000694:	0b24      	lsrs	r4, r4, #12
 8000696:	e638      	b.n	800030a <__aeabi_ddiv+0xae>
 8000698:	2480      	movs	r4, #128	; 0x80
 800069a:	4643      	mov	r3, r8
 800069c:	0324      	lsls	r4, r4, #12
 800069e:	431c      	orrs	r4, r3
 80006a0:	0324      	lsls	r4, r4, #12
 80006a2:	46b2      	mov	sl, r6
 80006a4:	4b64      	ldr	r3, [pc, #400]	; (8000838 <__aeabi_ddiv+0x5dc>)
 80006a6:	0b24      	lsrs	r4, r4, #12
 80006a8:	e62f      	b.n	800030a <__aeabi_ddiv+0xae>
 80006aa:	2b00      	cmp	r3, #0
 80006ac:	d100      	bne.n	80006b0 <__aeabi_ddiv+0x454>
 80006ae:	e703      	b.n	80004b8 <__aeabi_ddiv+0x25c>
 80006b0:	19a6      	adds	r6, r4, r6
 80006b2:	1e68      	subs	r0, r5, #1
 80006b4:	42a6      	cmp	r6, r4
 80006b6:	d200      	bcs.n	80006ba <__aeabi_ddiv+0x45e>
 80006b8:	e08d      	b.n	80007d6 <__aeabi_ddiv+0x57a>
 80006ba:	428e      	cmp	r6, r1
 80006bc:	d200      	bcs.n	80006c0 <__aeabi_ddiv+0x464>
 80006be:	e0a3      	b.n	8000808 <__aeabi_ddiv+0x5ac>
 80006c0:	d100      	bne.n	80006c4 <__aeabi_ddiv+0x468>
 80006c2:	e0b3      	b.n	800082c <__aeabi_ddiv+0x5d0>
 80006c4:	0005      	movs	r5, r0
 80006c6:	e6f5      	b.n	80004b4 <__aeabi_ddiv+0x258>
 80006c8:	42aa      	cmp	r2, r5
 80006ca:	d900      	bls.n	80006ce <__aeabi_ddiv+0x472>
 80006cc:	e639      	b.n	8000342 <__aeabi_ddiv+0xe6>
 80006ce:	4643      	mov	r3, r8
 80006d0:	07de      	lsls	r6, r3, #31
 80006d2:	0858      	lsrs	r0, r3, #1
 80006d4:	086b      	lsrs	r3, r5, #1
 80006d6:	431e      	orrs	r6, r3
 80006d8:	07ed      	lsls	r5, r5, #31
 80006da:	e639      	b.n	8000350 <__aeabi_ddiv+0xf4>
 80006dc:	4648      	mov	r0, r9
 80006de:	f000 ff4d 	bl	800157c <__clzsi2>
 80006e2:	0001      	movs	r1, r0
 80006e4:	0002      	movs	r2, r0
 80006e6:	3115      	adds	r1, #21
 80006e8:	3220      	adds	r2, #32
 80006ea:	291c      	cmp	r1, #28
 80006ec:	dc00      	bgt.n	80006f0 <__aeabi_ddiv+0x494>
 80006ee:	e72c      	b.n	800054a <__aeabi_ddiv+0x2ee>
 80006f0:	464b      	mov	r3, r9
 80006f2:	3808      	subs	r0, #8
 80006f4:	4083      	lsls	r3, r0
 80006f6:	2500      	movs	r5, #0
 80006f8:	4698      	mov	r8, r3
 80006fa:	e732      	b.n	8000562 <__aeabi_ddiv+0x306>
 80006fc:	f000 ff3e 	bl	800157c <__clzsi2>
 8000700:	0003      	movs	r3, r0
 8000702:	001a      	movs	r2, r3
 8000704:	3215      	adds	r2, #21
 8000706:	3020      	adds	r0, #32
 8000708:	2a1c      	cmp	r2, #28
 800070a:	dc00      	bgt.n	800070e <__aeabi_ddiv+0x4b2>
 800070c:	e700      	b.n	8000510 <__aeabi_ddiv+0x2b4>
 800070e:	4654      	mov	r4, sl
 8000710:	3b08      	subs	r3, #8
 8000712:	2200      	movs	r2, #0
 8000714:	409c      	lsls	r4, r3
 8000716:	e705      	b.n	8000524 <__aeabi_ddiv+0x2c8>
 8000718:	1936      	adds	r6, r6, r4
 800071a:	3b01      	subs	r3, #1
 800071c:	42b4      	cmp	r4, r6
 800071e:	d900      	bls.n	8000722 <__aeabi_ddiv+0x4c6>
 8000720:	e6a6      	b.n	8000470 <__aeabi_ddiv+0x214>
 8000722:	42b2      	cmp	r2, r6
 8000724:	d800      	bhi.n	8000728 <__aeabi_ddiv+0x4cc>
 8000726:	e6a3      	b.n	8000470 <__aeabi_ddiv+0x214>
 8000728:	1e83      	subs	r3, r0, #2
 800072a:	1936      	adds	r6, r6, r4
 800072c:	e6a0      	b.n	8000470 <__aeabi_ddiv+0x214>
 800072e:	1909      	adds	r1, r1, r4
 8000730:	3d01      	subs	r5, #1
 8000732:	428c      	cmp	r4, r1
 8000734:	d900      	bls.n	8000738 <__aeabi_ddiv+0x4dc>
 8000736:	e68d      	b.n	8000454 <__aeabi_ddiv+0x1f8>
 8000738:	428a      	cmp	r2, r1
 800073a:	d800      	bhi.n	800073e <__aeabi_ddiv+0x4e2>
 800073c:	e68a      	b.n	8000454 <__aeabi_ddiv+0x1f8>
 800073e:	1e85      	subs	r5, r0, #2
 8000740:	1909      	adds	r1, r1, r4
 8000742:	e687      	b.n	8000454 <__aeabi_ddiv+0x1f8>
 8000744:	230f      	movs	r3, #15
 8000746:	402b      	ands	r3, r5
 8000748:	2b04      	cmp	r3, #4
 800074a:	d100      	bne.n	800074e <__aeabi_ddiv+0x4f2>
 800074c:	e6bc      	b.n	80004c8 <__aeabi_ddiv+0x26c>
 800074e:	2305      	movs	r3, #5
 8000750:	425b      	negs	r3, r3
 8000752:	42ab      	cmp	r3, r5
 8000754:	419b      	sbcs	r3, r3
 8000756:	3504      	adds	r5, #4
 8000758:	425b      	negs	r3, r3
 800075a:	08ed      	lsrs	r5, r5, #3
 800075c:	4498      	add	r8, r3
 800075e:	e6b4      	b.n	80004ca <__aeabi_ddiv+0x26e>
 8000760:	42af      	cmp	r7, r5
 8000762:	d900      	bls.n	8000766 <__aeabi_ddiv+0x50a>
 8000764:	e660      	b.n	8000428 <__aeabi_ddiv+0x1cc>
 8000766:	4282      	cmp	r2, r0
 8000768:	d804      	bhi.n	8000774 <__aeabi_ddiv+0x518>
 800076a:	d000      	beq.n	800076e <__aeabi_ddiv+0x512>
 800076c:	e65c      	b.n	8000428 <__aeabi_ddiv+0x1cc>
 800076e:	42ae      	cmp	r6, r5
 8000770:	d800      	bhi.n	8000774 <__aeabi_ddiv+0x518>
 8000772:	e659      	b.n	8000428 <__aeabi_ddiv+0x1cc>
 8000774:	2302      	movs	r3, #2
 8000776:	425b      	negs	r3, r3
 8000778:	469c      	mov	ip, r3
 800077a:	9b00      	ldr	r3, [sp, #0]
 800077c:	44e0      	add	r8, ip
 800077e:	469c      	mov	ip, r3
 8000780:	4465      	add	r5, ip
 8000782:	429d      	cmp	r5, r3
 8000784:	419b      	sbcs	r3, r3
 8000786:	425b      	negs	r3, r3
 8000788:	191b      	adds	r3, r3, r4
 800078a:	18c0      	adds	r0, r0, r3
 800078c:	e64d      	b.n	800042a <__aeabi_ddiv+0x1ce>
 800078e:	428a      	cmp	r2, r1
 8000790:	d800      	bhi.n	8000794 <__aeabi_ddiv+0x538>
 8000792:	e60e      	b.n	80003b2 <__aeabi_ddiv+0x156>
 8000794:	1e83      	subs	r3, r0, #2
 8000796:	1909      	adds	r1, r1, r4
 8000798:	e60b      	b.n	80003b2 <__aeabi_ddiv+0x156>
 800079a:	428a      	cmp	r2, r1
 800079c:	d800      	bhi.n	80007a0 <__aeabi_ddiv+0x544>
 800079e:	e5f4      	b.n	800038a <__aeabi_ddiv+0x12e>
 80007a0:	1e83      	subs	r3, r0, #2
 80007a2:	4698      	mov	r8, r3
 80007a4:	1909      	adds	r1, r1, r4
 80007a6:	e5f0      	b.n	800038a <__aeabi_ddiv+0x12e>
 80007a8:	4925      	ldr	r1, [pc, #148]	; (8000840 <__aeabi_ddiv+0x5e4>)
 80007aa:	0028      	movs	r0, r5
 80007ac:	4459      	add	r1, fp
 80007ae:	408d      	lsls	r5, r1
 80007b0:	4642      	mov	r2, r8
 80007b2:	408a      	lsls	r2, r1
 80007b4:	1e69      	subs	r1, r5, #1
 80007b6:	418d      	sbcs	r5, r1
 80007b8:	4641      	mov	r1, r8
 80007ba:	40d8      	lsrs	r0, r3
 80007bc:	40d9      	lsrs	r1, r3
 80007be:	4302      	orrs	r2, r0
 80007c0:	432a      	orrs	r2, r5
 80007c2:	000b      	movs	r3, r1
 80007c4:	0751      	lsls	r1, r2, #29
 80007c6:	d100      	bne.n	80007ca <__aeabi_ddiv+0x56e>
 80007c8:	e751      	b.n	800066e <__aeabi_ddiv+0x412>
 80007ca:	210f      	movs	r1, #15
 80007cc:	4011      	ands	r1, r2
 80007ce:	2904      	cmp	r1, #4
 80007d0:	d000      	beq.n	80007d4 <__aeabi_ddiv+0x578>
 80007d2:	e746      	b.n	8000662 <__aeabi_ddiv+0x406>
 80007d4:	e74b      	b.n	800066e <__aeabi_ddiv+0x412>
 80007d6:	0005      	movs	r5, r0
 80007d8:	428e      	cmp	r6, r1
 80007da:	d000      	beq.n	80007de <__aeabi_ddiv+0x582>
 80007dc:	e66a      	b.n	80004b4 <__aeabi_ddiv+0x258>
 80007de:	9a00      	ldr	r2, [sp, #0]
 80007e0:	4293      	cmp	r3, r2
 80007e2:	d000      	beq.n	80007e6 <__aeabi_ddiv+0x58a>
 80007e4:	e666      	b.n	80004b4 <__aeabi_ddiv+0x258>
 80007e6:	e667      	b.n	80004b8 <__aeabi_ddiv+0x25c>
 80007e8:	4a16      	ldr	r2, [pc, #88]	; (8000844 <__aeabi_ddiv+0x5e8>)
 80007ea:	445a      	add	r2, fp
 80007ec:	2a00      	cmp	r2, #0
 80007ee:	dc00      	bgt.n	80007f2 <__aeabi_ddiv+0x596>
 80007f0:	e710      	b.n	8000614 <__aeabi_ddiv+0x3b8>
 80007f2:	2301      	movs	r3, #1
 80007f4:	2500      	movs	r5, #0
 80007f6:	4498      	add	r8, r3
 80007f8:	e667      	b.n	80004ca <__aeabi_ddiv+0x26e>
 80007fa:	075d      	lsls	r5, r3, #29
 80007fc:	025b      	lsls	r3, r3, #9
 80007fe:	0b1c      	lsrs	r4, r3, #12
 8000800:	08d2      	lsrs	r2, r2, #3
 8000802:	2300      	movs	r3, #0
 8000804:	4315      	orrs	r5, r2
 8000806:	e580      	b.n	800030a <__aeabi_ddiv+0xae>
 8000808:	9800      	ldr	r0, [sp, #0]
 800080a:	3d02      	subs	r5, #2
 800080c:	0042      	lsls	r2, r0, #1
 800080e:	4282      	cmp	r2, r0
 8000810:	41bf      	sbcs	r7, r7
 8000812:	427f      	negs	r7, r7
 8000814:	193c      	adds	r4, r7, r4
 8000816:	1936      	adds	r6, r6, r4
 8000818:	9200      	str	r2, [sp, #0]
 800081a:	e7dd      	b.n	80007d8 <__aeabi_ddiv+0x57c>
 800081c:	2480      	movs	r4, #128	; 0x80
 800081e:	4643      	mov	r3, r8
 8000820:	0324      	lsls	r4, r4, #12
 8000822:	431c      	orrs	r4, r3
 8000824:	0324      	lsls	r4, r4, #12
 8000826:	4b04      	ldr	r3, [pc, #16]	; (8000838 <__aeabi_ddiv+0x5dc>)
 8000828:	0b24      	lsrs	r4, r4, #12
 800082a:	e56e      	b.n	800030a <__aeabi_ddiv+0xae>
 800082c:	9a00      	ldr	r2, [sp, #0]
 800082e:	429a      	cmp	r2, r3
 8000830:	d3ea      	bcc.n	8000808 <__aeabi_ddiv+0x5ac>
 8000832:	0005      	movs	r5, r0
 8000834:	e7d3      	b.n	80007de <__aeabi_ddiv+0x582>
 8000836:	46c0      	nop			; (mov r8, r8)
 8000838:	000007ff 	.word	0x000007ff
 800083c:	0000043e 	.word	0x0000043e
 8000840:	0000041e 	.word	0x0000041e
 8000844:	000003ff 	.word	0x000003ff

08000848 <__aeabi_dmul>:
 8000848:	b5f0      	push	{r4, r5, r6, r7, lr}
 800084a:	4657      	mov	r7, sl
 800084c:	464e      	mov	r6, r9
 800084e:	4645      	mov	r5, r8
 8000850:	46de      	mov	lr, fp
 8000852:	b5e0      	push	{r5, r6, r7, lr}
 8000854:	4698      	mov	r8, r3
 8000856:	030c      	lsls	r4, r1, #12
 8000858:	004b      	lsls	r3, r1, #1
 800085a:	0006      	movs	r6, r0
 800085c:	4692      	mov	sl, r2
 800085e:	b087      	sub	sp, #28
 8000860:	0b24      	lsrs	r4, r4, #12
 8000862:	0d5b      	lsrs	r3, r3, #21
 8000864:	0fcf      	lsrs	r7, r1, #31
 8000866:	2b00      	cmp	r3, #0
 8000868:	d100      	bne.n	800086c <__aeabi_dmul+0x24>
 800086a:	e15e      	b.n	8000b2a <__aeabi_dmul+0x2e2>
 800086c:	4ada      	ldr	r2, [pc, #872]	; (8000bd8 <__aeabi_dmul+0x390>)
 800086e:	4293      	cmp	r3, r2
 8000870:	d100      	bne.n	8000874 <__aeabi_dmul+0x2c>
 8000872:	e177      	b.n	8000b64 <__aeabi_dmul+0x31c>
 8000874:	0f42      	lsrs	r2, r0, #29
 8000876:	00e4      	lsls	r4, r4, #3
 8000878:	4314      	orrs	r4, r2
 800087a:	2280      	movs	r2, #128	; 0x80
 800087c:	0412      	lsls	r2, r2, #16
 800087e:	4314      	orrs	r4, r2
 8000880:	4ad6      	ldr	r2, [pc, #856]	; (8000bdc <__aeabi_dmul+0x394>)
 8000882:	00c5      	lsls	r5, r0, #3
 8000884:	4694      	mov	ip, r2
 8000886:	4463      	add	r3, ip
 8000888:	9300      	str	r3, [sp, #0]
 800088a:	2300      	movs	r3, #0
 800088c:	4699      	mov	r9, r3
 800088e:	469b      	mov	fp, r3
 8000890:	4643      	mov	r3, r8
 8000892:	4642      	mov	r2, r8
 8000894:	031e      	lsls	r6, r3, #12
 8000896:	0fd2      	lsrs	r2, r2, #31
 8000898:	005b      	lsls	r3, r3, #1
 800089a:	4650      	mov	r0, sl
 800089c:	4690      	mov	r8, r2
 800089e:	0b36      	lsrs	r6, r6, #12
 80008a0:	0d5b      	lsrs	r3, r3, #21
 80008a2:	d100      	bne.n	80008a6 <__aeabi_dmul+0x5e>
 80008a4:	e122      	b.n	8000aec <__aeabi_dmul+0x2a4>
 80008a6:	4acc      	ldr	r2, [pc, #816]	; (8000bd8 <__aeabi_dmul+0x390>)
 80008a8:	4293      	cmp	r3, r2
 80008aa:	d100      	bne.n	80008ae <__aeabi_dmul+0x66>
 80008ac:	e164      	b.n	8000b78 <__aeabi_dmul+0x330>
 80008ae:	49cb      	ldr	r1, [pc, #812]	; (8000bdc <__aeabi_dmul+0x394>)
 80008b0:	0f42      	lsrs	r2, r0, #29
 80008b2:	468c      	mov	ip, r1
 80008b4:	9900      	ldr	r1, [sp, #0]
 80008b6:	4463      	add	r3, ip
 80008b8:	00f6      	lsls	r6, r6, #3
 80008ba:	468c      	mov	ip, r1
 80008bc:	4316      	orrs	r6, r2
 80008be:	2280      	movs	r2, #128	; 0x80
 80008c0:	449c      	add	ip, r3
 80008c2:	0412      	lsls	r2, r2, #16
 80008c4:	4663      	mov	r3, ip
 80008c6:	4316      	orrs	r6, r2
 80008c8:	00c2      	lsls	r2, r0, #3
 80008ca:	2000      	movs	r0, #0
 80008cc:	9300      	str	r3, [sp, #0]
 80008ce:	9900      	ldr	r1, [sp, #0]
 80008d0:	4643      	mov	r3, r8
 80008d2:	3101      	adds	r1, #1
 80008d4:	468c      	mov	ip, r1
 80008d6:	4649      	mov	r1, r9
 80008d8:	407b      	eors	r3, r7
 80008da:	9301      	str	r3, [sp, #4]
 80008dc:	290f      	cmp	r1, #15
 80008de:	d826      	bhi.n	800092e <__aeabi_dmul+0xe6>
 80008e0:	4bbf      	ldr	r3, [pc, #764]	; (8000be0 <__aeabi_dmul+0x398>)
 80008e2:	0089      	lsls	r1, r1, #2
 80008e4:	5859      	ldr	r1, [r3, r1]
 80008e6:	468f      	mov	pc, r1
 80008e8:	4643      	mov	r3, r8
 80008ea:	9301      	str	r3, [sp, #4]
 80008ec:	0034      	movs	r4, r6
 80008ee:	0015      	movs	r5, r2
 80008f0:	4683      	mov	fp, r0
 80008f2:	465b      	mov	r3, fp
 80008f4:	2b02      	cmp	r3, #2
 80008f6:	d016      	beq.n	8000926 <__aeabi_dmul+0xde>
 80008f8:	2b03      	cmp	r3, #3
 80008fa:	d100      	bne.n	80008fe <__aeabi_dmul+0xb6>
 80008fc:	e205      	b.n	8000d0a <__aeabi_dmul+0x4c2>
 80008fe:	2b01      	cmp	r3, #1
 8000900:	d000      	beq.n	8000904 <__aeabi_dmul+0xbc>
 8000902:	e0cf      	b.n	8000aa4 <__aeabi_dmul+0x25c>
 8000904:	2200      	movs	r2, #0
 8000906:	2400      	movs	r4, #0
 8000908:	2500      	movs	r5, #0
 800090a:	9b01      	ldr	r3, [sp, #4]
 800090c:	0512      	lsls	r2, r2, #20
 800090e:	4322      	orrs	r2, r4
 8000910:	07db      	lsls	r3, r3, #31
 8000912:	431a      	orrs	r2, r3
 8000914:	0028      	movs	r0, r5
 8000916:	0011      	movs	r1, r2
 8000918:	b007      	add	sp, #28
 800091a:	bcf0      	pop	{r4, r5, r6, r7}
 800091c:	46bb      	mov	fp, r7
 800091e:	46b2      	mov	sl, r6
 8000920:	46a9      	mov	r9, r5
 8000922:	46a0      	mov	r8, r4
 8000924:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000926:	2400      	movs	r4, #0
 8000928:	2500      	movs	r5, #0
 800092a:	4aab      	ldr	r2, [pc, #684]	; (8000bd8 <__aeabi_dmul+0x390>)
 800092c:	e7ed      	b.n	800090a <__aeabi_dmul+0xc2>
 800092e:	0c28      	lsrs	r0, r5, #16
 8000930:	042d      	lsls	r5, r5, #16
 8000932:	0c2d      	lsrs	r5, r5, #16
 8000934:	002b      	movs	r3, r5
 8000936:	0c11      	lsrs	r1, r2, #16
 8000938:	0412      	lsls	r2, r2, #16
 800093a:	0c12      	lsrs	r2, r2, #16
 800093c:	4353      	muls	r3, r2
 800093e:	4698      	mov	r8, r3
 8000940:	0013      	movs	r3, r2
 8000942:	002f      	movs	r7, r5
 8000944:	4343      	muls	r3, r0
 8000946:	4699      	mov	r9, r3
 8000948:	434f      	muls	r7, r1
 800094a:	444f      	add	r7, r9
 800094c:	46bb      	mov	fp, r7
 800094e:	4647      	mov	r7, r8
 8000950:	000b      	movs	r3, r1
 8000952:	0c3f      	lsrs	r7, r7, #16
 8000954:	46ba      	mov	sl, r7
 8000956:	465f      	mov	r7, fp
 8000958:	4343      	muls	r3, r0
 800095a:	4457      	add	r7, sl
 800095c:	9302      	str	r3, [sp, #8]
 800095e:	45b9      	cmp	r9, r7
 8000960:	d906      	bls.n	8000970 <__aeabi_dmul+0x128>
 8000962:	469a      	mov	sl, r3
 8000964:	2380      	movs	r3, #128	; 0x80
 8000966:	025b      	lsls	r3, r3, #9
 8000968:	4699      	mov	r9, r3
 800096a:	44ca      	add	sl, r9
 800096c:	4653      	mov	r3, sl
 800096e:	9302      	str	r3, [sp, #8]
 8000970:	0c3b      	lsrs	r3, r7, #16
 8000972:	469b      	mov	fp, r3
 8000974:	4643      	mov	r3, r8
 8000976:	041b      	lsls	r3, r3, #16
 8000978:	043f      	lsls	r7, r7, #16
 800097a:	0c1b      	lsrs	r3, r3, #16
 800097c:	4698      	mov	r8, r3
 800097e:	003b      	movs	r3, r7
 8000980:	4443      	add	r3, r8
 8000982:	9304      	str	r3, [sp, #16]
 8000984:	0c33      	lsrs	r3, r6, #16
 8000986:	0436      	lsls	r6, r6, #16
 8000988:	0c36      	lsrs	r6, r6, #16
 800098a:	4698      	mov	r8, r3
 800098c:	0033      	movs	r3, r6
 800098e:	4343      	muls	r3, r0
 8000990:	4699      	mov	r9, r3
 8000992:	4643      	mov	r3, r8
 8000994:	4343      	muls	r3, r0
 8000996:	002f      	movs	r7, r5
 8000998:	469a      	mov	sl, r3
 800099a:	4643      	mov	r3, r8
 800099c:	4377      	muls	r7, r6
 800099e:	435d      	muls	r5, r3
 80009a0:	0c38      	lsrs	r0, r7, #16
 80009a2:	444d      	add	r5, r9
 80009a4:	1945      	adds	r5, r0, r5
 80009a6:	45a9      	cmp	r9, r5
 80009a8:	d903      	bls.n	80009b2 <__aeabi_dmul+0x16a>
 80009aa:	2380      	movs	r3, #128	; 0x80
 80009ac:	025b      	lsls	r3, r3, #9
 80009ae:	4699      	mov	r9, r3
 80009b0:	44ca      	add	sl, r9
 80009b2:	043f      	lsls	r7, r7, #16
 80009b4:	0c28      	lsrs	r0, r5, #16
 80009b6:	0c3f      	lsrs	r7, r7, #16
 80009b8:	042d      	lsls	r5, r5, #16
 80009ba:	19ed      	adds	r5, r5, r7
 80009bc:	0c27      	lsrs	r7, r4, #16
 80009be:	0424      	lsls	r4, r4, #16
 80009c0:	0c24      	lsrs	r4, r4, #16
 80009c2:	0003      	movs	r3, r0
 80009c4:	0020      	movs	r0, r4
 80009c6:	4350      	muls	r0, r2
 80009c8:	437a      	muls	r2, r7
 80009ca:	4691      	mov	r9, r2
 80009cc:	003a      	movs	r2, r7
 80009ce:	4453      	add	r3, sl
 80009d0:	9305      	str	r3, [sp, #20]
 80009d2:	0c03      	lsrs	r3, r0, #16
 80009d4:	469a      	mov	sl, r3
 80009d6:	434a      	muls	r2, r1
 80009d8:	4361      	muls	r1, r4
 80009da:	4449      	add	r1, r9
 80009dc:	4451      	add	r1, sl
 80009de:	44ab      	add	fp, r5
 80009e0:	4589      	cmp	r9, r1
 80009e2:	d903      	bls.n	80009ec <__aeabi_dmul+0x1a4>
 80009e4:	2380      	movs	r3, #128	; 0x80
 80009e6:	025b      	lsls	r3, r3, #9
 80009e8:	4699      	mov	r9, r3
 80009ea:	444a      	add	r2, r9
 80009ec:	0400      	lsls	r0, r0, #16
 80009ee:	0c0b      	lsrs	r3, r1, #16
 80009f0:	0c00      	lsrs	r0, r0, #16
 80009f2:	0409      	lsls	r1, r1, #16
 80009f4:	1809      	adds	r1, r1, r0
 80009f6:	0020      	movs	r0, r4
 80009f8:	4699      	mov	r9, r3
 80009fa:	4643      	mov	r3, r8
 80009fc:	4370      	muls	r0, r6
 80009fe:	435c      	muls	r4, r3
 8000a00:	437e      	muls	r6, r7
 8000a02:	435f      	muls	r7, r3
 8000a04:	0c03      	lsrs	r3, r0, #16
 8000a06:	4698      	mov	r8, r3
 8000a08:	19a4      	adds	r4, r4, r6
 8000a0a:	4444      	add	r4, r8
 8000a0c:	444a      	add	r2, r9
 8000a0e:	9703      	str	r7, [sp, #12]
 8000a10:	42a6      	cmp	r6, r4
 8000a12:	d904      	bls.n	8000a1e <__aeabi_dmul+0x1d6>
 8000a14:	2380      	movs	r3, #128	; 0x80
 8000a16:	025b      	lsls	r3, r3, #9
 8000a18:	4698      	mov	r8, r3
 8000a1a:	4447      	add	r7, r8
 8000a1c:	9703      	str	r7, [sp, #12]
 8000a1e:	9b02      	ldr	r3, [sp, #8]
 8000a20:	0400      	lsls	r0, r0, #16
 8000a22:	445b      	add	r3, fp
 8000a24:	001e      	movs	r6, r3
 8000a26:	42ab      	cmp	r3, r5
 8000a28:	41ad      	sbcs	r5, r5
 8000a2a:	0423      	lsls	r3, r4, #16
 8000a2c:	469a      	mov	sl, r3
 8000a2e:	9b05      	ldr	r3, [sp, #20]
 8000a30:	1876      	adds	r6, r6, r1
 8000a32:	4698      	mov	r8, r3
 8000a34:	428e      	cmp	r6, r1
 8000a36:	4189      	sbcs	r1, r1
 8000a38:	0c00      	lsrs	r0, r0, #16
 8000a3a:	4450      	add	r0, sl
 8000a3c:	4440      	add	r0, r8
 8000a3e:	426d      	negs	r5, r5
 8000a40:	1947      	adds	r7, r0, r5
 8000a42:	46b8      	mov	r8, r7
 8000a44:	4693      	mov	fp, r2
 8000a46:	4249      	negs	r1, r1
 8000a48:	4689      	mov	r9, r1
 8000a4a:	44c3      	add	fp, r8
 8000a4c:	44d9      	add	r9, fp
 8000a4e:	4298      	cmp	r0, r3
 8000a50:	4180      	sbcs	r0, r0
 8000a52:	45a8      	cmp	r8, r5
 8000a54:	41ad      	sbcs	r5, r5
 8000a56:	4593      	cmp	fp, r2
 8000a58:	4192      	sbcs	r2, r2
 8000a5a:	4589      	cmp	r9, r1
 8000a5c:	4189      	sbcs	r1, r1
 8000a5e:	426d      	negs	r5, r5
 8000a60:	4240      	negs	r0, r0
 8000a62:	4328      	orrs	r0, r5
 8000a64:	0c24      	lsrs	r4, r4, #16
 8000a66:	4252      	negs	r2, r2
 8000a68:	4249      	negs	r1, r1
 8000a6a:	430a      	orrs	r2, r1
 8000a6c:	9b03      	ldr	r3, [sp, #12]
 8000a6e:	1900      	adds	r0, r0, r4
 8000a70:	1880      	adds	r0, r0, r2
 8000a72:	18c7      	adds	r7, r0, r3
 8000a74:	464b      	mov	r3, r9
 8000a76:	0ddc      	lsrs	r4, r3, #23
 8000a78:	9b04      	ldr	r3, [sp, #16]
 8000a7a:	0275      	lsls	r5, r6, #9
 8000a7c:	431d      	orrs	r5, r3
 8000a7e:	1e6a      	subs	r2, r5, #1
 8000a80:	4195      	sbcs	r5, r2
 8000a82:	464b      	mov	r3, r9
 8000a84:	0df6      	lsrs	r6, r6, #23
 8000a86:	027f      	lsls	r7, r7, #9
 8000a88:	4335      	orrs	r5, r6
 8000a8a:	025a      	lsls	r2, r3, #9
 8000a8c:	433c      	orrs	r4, r7
 8000a8e:	4315      	orrs	r5, r2
 8000a90:	01fb      	lsls	r3, r7, #7
 8000a92:	d400      	bmi.n	8000a96 <__aeabi_dmul+0x24e>
 8000a94:	e11c      	b.n	8000cd0 <__aeabi_dmul+0x488>
 8000a96:	2101      	movs	r1, #1
 8000a98:	086a      	lsrs	r2, r5, #1
 8000a9a:	400d      	ands	r5, r1
 8000a9c:	4315      	orrs	r5, r2
 8000a9e:	07e2      	lsls	r2, r4, #31
 8000aa0:	4315      	orrs	r5, r2
 8000aa2:	0864      	lsrs	r4, r4, #1
 8000aa4:	494f      	ldr	r1, [pc, #316]	; (8000be4 <__aeabi_dmul+0x39c>)
 8000aa6:	4461      	add	r1, ip
 8000aa8:	2900      	cmp	r1, #0
 8000aaa:	dc00      	bgt.n	8000aae <__aeabi_dmul+0x266>
 8000aac:	e0b0      	b.n	8000c10 <__aeabi_dmul+0x3c8>
 8000aae:	076b      	lsls	r3, r5, #29
 8000ab0:	d009      	beq.n	8000ac6 <__aeabi_dmul+0x27e>
 8000ab2:	220f      	movs	r2, #15
 8000ab4:	402a      	ands	r2, r5
 8000ab6:	2a04      	cmp	r2, #4
 8000ab8:	d005      	beq.n	8000ac6 <__aeabi_dmul+0x27e>
 8000aba:	1d2a      	adds	r2, r5, #4
 8000abc:	42aa      	cmp	r2, r5
 8000abe:	41ad      	sbcs	r5, r5
 8000ac0:	426d      	negs	r5, r5
 8000ac2:	1964      	adds	r4, r4, r5
 8000ac4:	0015      	movs	r5, r2
 8000ac6:	01e3      	lsls	r3, r4, #7
 8000ac8:	d504      	bpl.n	8000ad4 <__aeabi_dmul+0x28c>
 8000aca:	2180      	movs	r1, #128	; 0x80
 8000acc:	4a46      	ldr	r2, [pc, #280]	; (8000be8 <__aeabi_dmul+0x3a0>)
 8000ace:	00c9      	lsls	r1, r1, #3
 8000ad0:	4014      	ands	r4, r2
 8000ad2:	4461      	add	r1, ip
 8000ad4:	4a45      	ldr	r2, [pc, #276]	; (8000bec <__aeabi_dmul+0x3a4>)
 8000ad6:	4291      	cmp	r1, r2
 8000ad8:	dd00      	ble.n	8000adc <__aeabi_dmul+0x294>
 8000ada:	e724      	b.n	8000926 <__aeabi_dmul+0xde>
 8000adc:	0762      	lsls	r2, r4, #29
 8000ade:	08ed      	lsrs	r5, r5, #3
 8000ae0:	0264      	lsls	r4, r4, #9
 8000ae2:	0549      	lsls	r1, r1, #21
 8000ae4:	4315      	orrs	r5, r2
 8000ae6:	0b24      	lsrs	r4, r4, #12
 8000ae8:	0d4a      	lsrs	r2, r1, #21
 8000aea:	e70e      	b.n	800090a <__aeabi_dmul+0xc2>
 8000aec:	4652      	mov	r2, sl
 8000aee:	4332      	orrs	r2, r6
 8000af0:	d100      	bne.n	8000af4 <__aeabi_dmul+0x2ac>
 8000af2:	e07f      	b.n	8000bf4 <__aeabi_dmul+0x3ac>
 8000af4:	2e00      	cmp	r6, #0
 8000af6:	d100      	bne.n	8000afa <__aeabi_dmul+0x2b2>
 8000af8:	e0dc      	b.n	8000cb4 <__aeabi_dmul+0x46c>
 8000afa:	0030      	movs	r0, r6
 8000afc:	f000 fd3e 	bl	800157c <__clzsi2>
 8000b00:	0002      	movs	r2, r0
 8000b02:	3a0b      	subs	r2, #11
 8000b04:	231d      	movs	r3, #29
 8000b06:	0001      	movs	r1, r0
 8000b08:	1a9b      	subs	r3, r3, r2
 8000b0a:	4652      	mov	r2, sl
 8000b0c:	3908      	subs	r1, #8
 8000b0e:	40da      	lsrs	r2, r3
 8000b10:	408e      	lsls	r6, r1
 8000b12:	4316      	orrs	r6, r2
 8000b14:	4652      	mov	r2, sl
 8000b16:	408a      	lsls	r2, r1
 8000b18:	9b00      	ldr	r3, [sp, #0]
 8000b1a:	4935      	ldr	r1, [pc, #212]	; (8000bf0 <__aeabi_dmul+0x3a8>)
 8000b1c:	1a18      	subs	r0, r3, r0
 8000b1e:	0003      	movs	r3, r0
 8000b20:	468c      	mov	ip, r1
 8000b22:	4463      	add	r3, ip
 8000b24:	2000      	movs	r0, #0
 8000b26:	9300      	str	r3, [sp, #0]
 8000b28:	e6d1      	b.n	80008ce <__aeabi_dmul+0x86>
 8000b2a:	0025      	movs	r5, r4
 8000b2c:	4305      	orrs	r5, r0
 8000b2e:	d04a      	beq.n	8000bc6 <__aeabi_dmul+0x37e>
 8000b30:	2c00      	cmp	r4, #0
 8000b32:	d100      	bne.n	8000b36 <__aeabi_dmul+0x2ee>
 8000b34:	e0b0      	b.n	8000c98 <__aeabi_dmul+0x450>
 8000b36:	0020      	movs	r0, r4
 8000b38:	f000 fd20 	bl	800157c <__clzsi2>
 8000b3c:	0001      	movs	r1, r0
 8000b3e:	0002      	movs	r2, r0
 8000b40:	390b      	subs	r1, #11
 8000b42:	231d      	movs	r3, #29
 8000b44:	0010      	movs	r0, r2
 8000b46:	1a5b      	subs	r3, r3, r1
 8000b48:	0031      	movs	r1, r6
 8000b4a:	0035      	movs	r5, r6
 8000b4c:	3808      	subs	r0, #8
 8000b4e:	4084      	lsls	r4, r0
 8000b50:	40d9      	lsrs	r1, r3
 8000b52:	4085      	lsls	r5, r0
 8000b54:	430c      	orrs	r4, r1
 8000b56:	4826      	ldr	r0, [pc, #152]	; (8000bf0 <__aeabi_dmul+0x3a8>)
 8000b58:	1a83      	subs	r3, r0, r2
 8000b5a:	9300      	str	r3, [sp, #0]
 8000b5c:	2300      	movs	r3, #0
 8000b5e:	4699      	mov	r9, r3
 8000b60:	469b      	mov	fp, r3
 8000b62:	e695      	b.n	8000890 <__aeabi_dmul+0x48>
 8000b64:	0005      	movs	r5, r0
 8000b66:	4325      	orrs	r5, r4
 8000b68:	d126      	bne.n	8000bb8 <__aeabi_dmul+0x370>
 8000b6a:	2208      	movs	r2, #8
 8000b6c:	9300      	str	r3, [sp, #0]
 8000b6e:	2302      	movs	r3, #2
 8000b70:	2400      	movs	r4, #0
 8000b72:	4691      	mov	r9, r2
 8000b74:	469b      	mov	fp, r3
 8000b76:	e68b      	b.n	8000890 <__aeabi_dmul+0x48>
 8000b78:	4652      	mov	r2, sl
 8000b7a:	9b00      	ldr	r3, [sp, #0]
 8000b7c:	4332      	orrs	r2, r6
 8000b7e:	d110      	bne.n	8000ba2 <__aeabi_dmul+0x35a>
 8000b80:	4915      	ldr	r1, [pc, #84]	; (8000bd8 <__aeabi_dmul+0x390>)
 8000b82:	2600      	movs	r6, #0
 8000b84:	468c      	mov	ip, r1
 8000b86:	4463      	add	r3, ip
 8000b88:	4649      	mov	r1, r9
 8000b8a:	9300      	str	r3, [sp, #0]
 8000b8c:	2302      	movs	r3, #2
 8000b8e:	4319      	orrs	r1, r3
 8000b90:	4689      	mov	r9, r1
 8000b92:	2002      	movs	r0, #2
 8000b94:	e69b      	b.n	80008ce <__aeabi_dmul+0x86>
 8000b96:	465b      	mov	r3, fp
 8000b98:	9701      	str	r7, [sp, #4]
 8000b9a:	2b02      	cmp	r3, #2
 8000b9c:	d000      	beq.n	8000ba0 <__aeabi_dmul+0x358>
 8000b9e:	e6ab      	b.n	80008f8 <__aeabi_dmul+0xb0>
 8000ba0:	e6c1      	b.n	8000926 <__aeabi_dmul+0xde>
 8000ba2:	4a0d      	ldr	r2, [pc, #52]	; (8000bd8 <__aeabi_dmul+0x390>)
 8000ba4:	2003      	movs	r0, #3
 8000ba6:	4694      	mov	ip, r2
 8000ba8:	4463      	add	r3, ip
 8000baa:	464a      	mov	r2, r9
 8000bac:	9300      	str	r3, [sp, #0]
 8000bae:	2303      	movs	r3, #3
 8000bb0:	431a      	orrs	r2, r3
 8000bb2:	4691      	mov	r9, r2
 8000bb4:	4652      	mov	r2, sl
 8000bb6:	e68a      	b.n	80008ce <__aeabi_dmul+0x86>
 8000bb8:	220c      	movs	r2, #12
 8000bba:	9300      	str	r3, [sp, #0]
 8000bbc:	2303      	movs	r3, #3
 8000bbe:	0005      	movs	r5, r0
 8000bc0:	4691      	mov	r9, r2
 8000bc2:	469b      	mov	fp, r3
 8000bc4:	e664      	b.n	8000890 <__aeabi_dmul+0x48>
 8000bc6:	2304      	movs	r3, #4
 8000bc8:	4699      	mov	r9, r3
 8000bca:	2300      	movs	r3, #0
 8000bcc:	9300      	str	r3, [sp, #0]
 8000bce:	3301      	adds	r3, #1
 8000bd0:	2400      	movs	r4, #0
 8000bd2:	469b      	mov	fp, r3
 8000bd4:	e65c      	b.n	8000890 <__aeabi_dmul+0x48>
 8000bd6:	46c0      	nop			; (mov r8, r8)
 8000bd8:	000007ff 	.word	0x000007ff
 8000bdc:	fffffc01 	.word	0xfffffc01
 8000be0:	0800245c 	.word	0x0800245c
 8000be4:	000003ff 	.word	0x000003ff
 8000be8:	feffffff 	.word	0xfeffffff
 8000bec:	000007fe 	.word	0x000007fe
 8000bf0:	fffffc0d 	.word	0xfffffc0d
 8000bf4:	4649      	mov	r1, r9
 8000bf6:	2301      	movs	r3, #1
 8000bf8:	4319      	orrs	r1, r3
 8000bfa:	4689      	mov	r9, r1
 8000bfc:	2600      	movs	r6, #0
 8000bfe:	2001      	movs	r0, #1
 8000c00:	e665      	b.n	80008ce <__aeabi_dmul+0x86>
 8000c02:	2300      	movs	r3, #0
 8000c04:	2480      	movs	r4, #128	; 0x80
 8000c06:	2500      	movs	r5, #0
 8000c08:	4a43      	ldr	r2, [pc, #268]	; (8000d18 <__aeabi_dmul+0x4d0>)
 8000c0a:	9301      	str	r3, [sp, #4]
 8000c0c:	0324      	lsls	r4, r4, #12
 8000c0e:	e67c      	b.n	800090a <__aeabi_dmul+0xc2>
 8000c10:	2001      	movs	r0, #1
 8000c12:	1a40      	subs	r0, r0, r1
 8000c14:	2838      	cmp	r0, #56	; 0x38
 8000c16:	dd00      	ble.n	8000c1a <__aeabi_dmul+0x3d2>
 8000c18:	e674      	b.n	8000904 <__aeabi_dmul+0xbc>
 8000c1a:	281f      	cmp	r0, #31
 8000c1c:	dd5b      	ble.n	8000cd6 <__aeabi_dmul+0x48e>
 8000c1e:	221f      	movs	r2, #31
 8000c20:	0023      	movs	r3, r4
 8000c22:	4252      	negs	r2, r2
 8000c24:	1a51      	subs	r1, r2, r1
 8000c26:	40cb      	lsrs	r3, r1
 8000c28:	0019      	movs	r1, r3
 8000c2a:	2820      	cmp	r0, #32
 8000c2c:	d003      	beq.n	8000c36 <__aeabi_dmul+0x3ee>
 8000c2e:	4a3b      	ldr	r2, [pc, #236]	; (8000d1c <__aeabi_dmul+0x4d4>)
 8000c30:	4462      	add	r2, ip
 8000c32:	4094      	lsls	r4, r2
 8000c34:	4325      	orrs	r5, r4
 8000c36:	1e6a      	subs	r2, r5, #1
 8000c38:	4195      	sbcs	r5, r2
 8000c3a:	002a      	movs	r2, r5
 8000c3c:	430a      	orrs	r2, r1
 8000c3e:	2107      	movs	r1, #7
 8000c40:	000d      	movs	r5, r1
 8000c42:	2400      	movs	r4, #0
 8000c44:	4015      	ands	r5, r2
 8000c46:	4211      	tst	r1, r2
 8000c48:	d05b      	beq.n	8000d02 <__aeabi_dmul+0x4ba>
 8000c4a:	210f      	movs	r1, #15
 8000c4c:	2400      	movs	r4, #0
 8000c4e:	4011      	ands	r1, r2
 8000c50:	2904      	cmp	r1, #4
 8000c52:	d053      	beq.n	8000cfc <__aeabi_dmul+0x4b4>
 8000c54:	1d11      	adds	r1, r2, #4
 8000c56:	4291      	cmp	r1, r2
 8000c58:	4192      	sbcs	r2, r2
 8000c5a:	4252      	negs	r2, r2
 8000c5c:	18a4      	adds	r4, r4, r2
 8000c5e:	000a      	movs	r2, r1
 8000c60:	0223      	lsls	r3, r4, #8
 8000c62:	d54b      	bpl.n	8000cfc <__aeabi_dmul+0x4b4>
 8000c64:	2201      	movs	r2, #1
 8000c66:	2400      	movs	r4, #0
 8000c68:	2500      	movs	r5, #0
 8000c6a:	e64e      	b.n	800090a <__aeabi_dmul+0xc2>
 8000c6c:	2380      	movs	r3, #128	; 0x80
 8000c6e:	031b      	lsls	r3, r3, #12
 8000c70:	421c      	tst	r4, r3
 8000c72:	d009      	beq.n	8000c88 <__aeabi_dmul+0x440>
 8000c74:	421e      	tst	r6, r3
 8000c76:	d107      	bne.n	8000c88 <__aeabi_dmul+0x440>
 8000c78:	4333      	orrs	r3, r6
 8000c7a:	031c      	lsls	r4, r3, #12
 8000c7c:	4643      	mov	r3, r8
 8000c7e:	0015      	movs	r5, r2
 8000c80:	0b24      	lsrs	r4, r4, #12
 8000c82:	4a25      	ldr	r2, [pc, #148]	; (8000d18 <__aeabi_dmul+0x4d0>)
 8000c84:	9301      	str	r3, [sp, #4]
 8000c86:	e640      	b.n	800090a <__aeabi_dmul+0xc2>
 8000c88:	2280      	movs	r2, #128	; 0x80
 8000c8a:	0312      	lsls	r2, r2, #12
 8000c8c:	4314      	orrs	r4, r2
 8000c8e:	0324      	lsls	r4, r4, #12
 8000c90:	4a21      	ldr	r2, [pc, #132]	; (8000d18 <__aeabi_dmul+0x4d0>)
 8000c92:	0b24      	lsrs	r4, r4, #12
 8000c94:	9701      	str	r7, [sp, #4]
 8000c96:	e638      	b.n	800090a <__aeabi_dmul+0xc2>
 8000c98:	f000 fc70 	bl	800157c <__clzsi2>
 8000c9c:	0001      	movs	r1, r0
 8000c9e:	0002      	movs	r2, r0
 8000ca0:	3115      	adds	r1, #21
 8000ca2:	3220      	adds	r2, #32
 8000ca4:	291c      	cmp	r1, #28
 8000ca6:	dc00      	bgt.n	8000caa <__aeabi_dmul+0x462>
 8000ca8:	e74b      	b.n	8000b42 <__aeabi_dmul+0x2fa>
 8000caa:	0034      	movs	r4, r6
 8000cac:	3808      	subs	r0, #8
 8000cae:	2500      	movs	r5, #0
 8000cb0:	4084      	lsls	r4, r0
 8000cb2:	e750      	b.n	8000b56 <__aeabi_dmul+0x30e>
 8000cb4:	f000 fc62 	bl	800157c <__clzsi2>
 8000cb8:	0003      	movs	r3, r0
 8000cba:	001a      	movs	r2, r3
 8000cbc:	3215      	adds	r2, #21
 8000cbe:	3020      	adds	r0, #32
 8000cc0:	2a1c      	cmp	r2, #28
 8000cc2:	dc00      	bgt.n	8000cc6 <__aeabi_dmul+0x47e>
 8000cc4:	e71e      	b.n	8000b04 <__aeabi_dmul+0x2bc>
 8000cc6:	4656      	mov	r6, sl
 8000cc8:	3b08      	subs	r3, #8
 8000cca:	2200      	movs	r2, #0
 8000ccc:	409e      	lsls	r6, r3
 8000cce:	e723      	b.n	8000b18 <__aeabi_dmul+0x2d0>
 8000cd0:	9b00      	ldr	r3, [sp, #0]
 8000cd2:	469c      	mov	ip, r3
 8000cd4:	e6e6      	b.n	8000aa4 <__aeabi_dmul+0x25c>
 8000cd6:	4912      	ldr	r1, [pc, #72]	; (8000d20 <__aeabi_dmul+0x4d8>)
 8000cd8:	0022      	movs	r2, r4
 8000cda:	4461      	add	r1, ip
 8000cdc:	002e      	movs	r6, r5
 8000cde:	408d      	lsls	r5, r1
 8000ce0:	408a      	lsls	r2, r1
 8000ce2:	40c6      	lsrs	r6, r0
 8000ce4:	1e69      	subs	r1, r5, #1
 8000ce6:	418d      	sbcs	r5, r1
 8000ce8:	4332      	orrs	r2, r6
 8000cea:	432a      	orrs	r2, r5
 8000cec:	40c4      	lsrs	r4, r0
 8000cee:	0753      	lsls	r3, r2, #29
 8000cf0:	d0b6      	beq.n	8000c60 <__aeabi_dmul+0x418>
 8000cf2:	210f      	movs	r1, #15
 8000cf4:	4011      	ands	r1, r2
 8000cf6:	2904      	cmp	r1, #4
 8000cf8:	d1ac      	bne.n	8000c54 <__aeabi_dmul+0x40c>
 8000cfa:	e7b1      	b.n	8000c60 <__aeabi_dmul+0x418>
 8000cfc:	0765      	lsls	r5, r4, #29
 8000cfe:	0264      	lsls	r4, r4, #9
 8000d00:	0b24      	lsrs	r4, r4, #12
 8000d02:	08d2      	lsrs	r2, r2, #3
 8000d04:	4315      	orrs	r5, r2
 8000d06:	2200      	movs	r2, #0
 8000d08:	e5ff      	b.n	800090a <__aeabi_dmul+0xc2>
 8000d0a:	2280      	movs	r2, #128	; 0x80
 8000d0c:	0312      	lsls	r2, r2, #12
 8000d0e:	4314      	orrs	r4, r2
 8000d10:	0324      	lsls	r4, r4, #12
 8000d12:	4a01      	ldr	r2, [pc, #4]	; (8000d18 <__aeabi_dmul+0x4d0>)
 8000d14:	0b24      	lsrs	r4, r4, #12
 8000d16:	e5f8      	b.n	800090a <__aeabi_dmul+0xc2>
 8000d18:	000007ff 	.word	0x000007ff
 8000d1c:	0000043e 	.word	0x0000043e
 8000d20:	0000041e 	.word	0x0000041e

08000d24 <__aeabi_dsub>:
 8000d24:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d26:	4657      	mov	r7, sl
 8000d28:	464e      	mov	r6, r9
 8000d2a:	4645      	mov	r5, r8
 8000d2c:	46de      	mov	lr, fp
 8000d2e:	b5e0      	push	{r5, r6, r7, lr}
 8000d30:	001e      	movs	r6, r3
 8000d32:	0017      	movs	r7, r2
 8000d34:	004a      	lsls	r2, r1, #1
 8000d36:	030b      	lsls	r3, r1, #12
 8000d38:	0d52      	lsrs	r2, r2, #21
 8000d3a:	0a5b      	lsrs	r3, r3, #9
 8000d3c:	4690      	mov	r8, r2
 8000d3e:	0f42      	lsrs	r2, r0, #29
 8000d40:	431a      	orrs	r2, r3
 8000d42:	0fcd      	lsrs	r5, r1, #31
 8000d44:	4ccd      	ldr	r4, [pc, #820]	; (800107c <__aeabi_dsub+0x358>)
 8000d46:	0331      	lsls	r1, r6, #12
 8000d48:	00c3      	lsls	r3, r0, #3
 8000d4a:	4694      	mov	ip, r2
 8000d4c:	0070      	lsls	r0, r6, #1
 8000d4e:	0f7a      	lsrs	r2, r7, #29
 8000d50:	0a49      	lsrs	r1, r1, #9
 8000d52:	00ff      	lsls	r7, r7, #3
 8000d54:	469a      	mov	sl, r3
 8000d56:	46b9      	mov	r9, r7
 8000d58:	0d40      	lsrs	r0, r0, #21
 8000d5a:	0ff6      	lsrs	r6, r6, #31
 8000d5c:	4311      	orrs	r1, r2
 8000d5e:	42a0      	cmp	r0, r4
 8000d60:	d100      	bne.n	8000d64 <__aeabi_dsub+0x40>
 8000d62:	e0b1      	b.n	8000ec8 <__aeabi_dsub+0x1a4>
 8000d64:	2201      	movs	r2, #1
 8000d66:	4056      	eors	r6, r2
 8000d68:	46b3      	mov	fp, r6
 8000d6a:	42b5      	cmp	r5, r6
 8000d6c:	d100      	bne.n	8000d70 <__aeabi_dsub+0x4c>
 8000d6e:	e088      	b.n	8000e82 <__aeabi_dsub+0x15e>
 8000d70:	4642      	mov	r2, r8
 8000d72:	1a12      	subs	r2, r2, r0
 8000d74:	2a00      	cmp	r2, #0
 8000d76:	dc00      	bgt.n	8000d7a <__aeabi_dsub+0x56>
 8000d78:	e0ae      	b.n	8000ed8 <__aeabi_dsub+0x1b4>
 8000d7a:	2800      	cmp	r0, #0
 8000d7c:	d100      	bne.n	8000d80 <__aeabi_dsub+0x5c>
 8000d7e:	e0c1      	b.n	8000f04 <__aeabi_dsub+0x1e0>
 8000d80:	48be      	ldr	r0, [pc, #760]	; (800107c <__aeabi_dsub+0x358>)
 8000d82:	4580      	cmp	r8, r0
 8000d84:	d100      	bne.n	8000d88 <__aeabi_dsub+0x64>
 8000d86:	e151      	b.n	800102c <__aeabi_dsub+0x308>
 8000d88:	2080      	movs	r0, #128	; 0x80
 8000d8a:	0400      	lsls	r0, r0, #16
 8000d8c:	4301      	orrs	r1, r0
 8000d8e:	2a38      	cmp	r2, #56	; 0x38
 8000d90:	dd00      	ble.n	8000d94 <__aeabi_dsub+0x70>
 8000d92:	e17b      	b.n	800108c <__aeabi_dsub+0x368>
 8000d94:	2a1f      	cmp	r2, #31
 8000d96:	dd00      	ble.n	8000d9a <__aeabi_dsub+0x76>
 8000d98:	e1ee      	b.n	8001178 <__aeabi_dsub+0x454>
 8000d9a:	2020      	movs	r0, #32
 8000d9c:	003e      	movs	r6, r7
 8000d9e:	1a80      	subs	r0, r0, r2
 8000da0:	000c      	movs	r4, r1
 8000da2:	40d6      	lsrs	r6, r2
 8000da4:	40d1      	lsrs	r1, r2
 8000da6:	4087      	lsls	r7, r0
 8000da8:	4662      	mov	r2, ip
 8000daa:	4084      	lsls	r4, r0
 8000dac:	1a52      	subs	r2, r2, r1
 8000dae:	1e78      	subs	r0, r7, #1
 8000db0:	4187      	sbcs	r7, r0
 8000db2:	4694      	mov	ip, r2
 8000db4:	4334      	orrs	r4, r6
 8000db6:	4327      	orrs	r7, r4
 8000db8:	1bdc      	subs	r4, r3, r7
 8000dba:	42a3      	cmp	r3, r4
 8000dbc:	419b      	sbcs	r3, r3
 8000dbe:	4662      	mov	r2, ip
 8000dc0:	425b      	negs	r3, r3
 8000dc2:	1ad3      	subs	r3, r2, r3
 8000dc4:	4699      	mov	r9, r3
 8000dc6:	464b      	mov	r3, r9
 8000dc8:	021b      	lsls	r3, r3, #8
 8000dca:	d400      	bmi.n	8000dce <__aeabi_dsub+0xaa>
 8000dcc:	e118      	b.n	8001000 <__aeabi_dsub+0x2dc>
 8000dce:	464b      	mov	r3, r9
 8000dd0:	0258      	lsls	r0, r3, #9
 8000dd2:	0a43      	lsrs	r3, r0, #9
 8000dd4:	4699      	mov	r9, r3
 8000dd6:	464b      	mov	r3, r9
 8000dd8:	2b00      	cmp	r3, #0
 8000dda:	d100      	bne.n	8000dde <__aeabi_dsub+0xba>
 8000ddc:	e137      	b.n	800104e <__aeabi_dsub+0x32a>
 8000dde:	4648      	mov	r0, r9
 8000de0:	f000 fbcc 	bl	800157c <__clzsi2>
 8000de4:	0001      	movs	r1, r0
 8000de6:	3908      	subs	r1, #8
 8000de8:	2320      	movs	r3, #32
 8000dea:	0022      	movs	r2, r4
 8000dec:	4648      	mov	r0, r9
 8000dee:	1a5b      	subs	r3, r3, r1
 8000df0:	40da      	lsrs	r2, r3
 8000df2:	4088      	lsls	r0, r1
 8000df4:	408c      	lsls	r4, r1
 8000df6:	4643      	mov	r3, r8
 8000df8:	4310      	orrs	r0, r2
 8000dfa:	4588      	cmp	r8, r1
 8000dfc:	dd00      	ble.n	8000e00 <__aeabi_dsub+0xdc>
 8000dfe:	e136      	b.n	800106e <__aeabi_dsub+0x34a>
 8000e00:	1ac9      	subs	r1, r1, r3
 8000e02:	1c4b      	adds	r3, r1, #1
 8000e04:	2b1f      	cmp	r3, #31
 8000e06:	dd00      	ble.n	8000e0a <__aeabi_dsub+0xe6>
 8000e08:	e0ea      	b.n	8000fe0 <__aeabi_dsub+0x2bc>
 8000e0a:	2220      	movs	r2, #32
 8000e0c:	0026      	movs	r6, r4
 8000e0e:	1ad2      	subs	r2, r2, r3
 8000e10:	0001      	movs	r1, r0
 8000e12:	4094      	lsls	r4, r2
 8000e14:	40de      	lsrs	r6, r3
 8000e16:	40d8      	lsrs	r0, r3
 8000e18:	2300      	movs	r3, #0
 8000e1a:	4091      	lsls	r1, r2
 8000e1c:	1e62      	subs	r2, r4, #1
 8000e1e:	4194      	sbcs	r4, r2
 8000e20:	4681      	mov	r9, r0
 8000e22:	4698      	mov	r8, r3
 8000e24:	4331      	orrs	r1, r6
 8000e26:	430c      	orrs	r4, r1
 8000e28:	0763      	lsls	r3, r4, #29
 8000e2a:	d009      	beq.n	8000e40 <__aeabi_dsub+0x11c>
 8000e2c:	230f      	movs	r3, #15
 8000e2e:	4023      	ands	r3, r4
 8000e30:	2b04      	cmp	r3, #4
 8000e32:	d005      	beq.n	8000e40 <__aeabi_dsub+0x11c>
 8000e34:	1d23      	adds	r3, r4, #4
 8000e36:	42a3      	cmp	r3, r4
 8000e38:	41a4      	sbcs	r4, r4
 8000e3a:	4264      	negs	r4, r4
 8000e3c:	44a1      	add	r9, r4
 8000e3e:	001c      	movs	r4, r3
 8000e40:	464b      	mov	r3, r9
 8000e42:	021b      	lsls	r3, r3, #8
 8000e44:	d400      	bmi.n	8000e48 <__aeabi_dsub+0x124>
 8000e46:	e0de      	b.n	8001006 <__aeabi_dsub+0x2e2>
 8000e48:	4641      	mov	r1, r8
 8000e4a:	4b8c      	ldr	r3, [pc, #560]	; (800107c <__aeabi_dsub+0x358>)
 8000e4c:	3101      	adds	r1, #1
 8000e4e:	4299      	cmp	r1, r3
 8000e50:	d100      	bne.n	8000e54 <__aeabi_dsub+0x130>
 8000e52:	e0e7      	b.n	8001024 <__aeabi_dsub+0x300>
 8000e54:	464b      	mov	r3, r9
 8000e56:	488a      	ldr	r0, [pc, #552]	; (8001080 <__aeabi_dsub+0x35c>)
 8000e58:	08e4      	lsrs	r4, r4, #3
 8000e5a:	4003      	ands	r3, r0
 8000e5c:	0018      	movs	r0, r3
 8000e5e:	0549      	lsls	r1, r1, #21
 8000e60:	075b      	lsls	r3, r3, #29
 8000e62:	0240      	lsls	r0, r0, #9
 8000e64:	4323      	orrs	r3, r4
 8000e66:	0d4a      	lsrs	r2, r1, #21
 8000e68:	0b04      	lsrs	r4, r0, #12
 8000e6a:	0512      	lsls	r2, r2, #20
 8000e6c:	07ed      	lsls	r5, r5, #31
 8000e6e:	4322      	orrs	r2, r4
 8000e70:	432a      	orrs	r2, r5
 8000e72:	0018      	movs	r0, r3
 8000e74:	0011      	movs	r1, r2
 8000e76:	bcf0      	pop	{r4, r5, r6, r7}
 8000e78:	46bb      	mov	fp, r7
 8000e7a:	46b2      	mov	sl, r6
 8000e7c:	46a9      	mov	r9, r5
 8000e7e:	46a0      	mov	r8, r4
 8000e80:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8000e82:	4642      	mov	r2, r8
 8000e84:	1a12      	subs	r2, r2, r0
 8000e86:	2a00      	cmp	r2, #0
 8000e88:	dd52      	ble.n	8000f30 <__aeabi_dsub+0x20c>
 8000e8a:	2800      	cmp	r0, #0
 8000e8c:	d100      	bne.n	8000e90 <__aeabi_dsub+0x16c>
 8000e8e:	e09c      	b.n	8000fca <__aeabi_dsub+0x2a6>
 8000e90:	45a0      	cmp	r8, r4
 8000e92:	d100      	bne.n	8000e96 <__aeabi_dsub+0x172>
 8000e94:	e0ca      	b.n	800102c <__aeabi_dsub+0x308>
 8000e96:	2080      	movs	r0, #128	; 0x80
 8000e98:	0400      	lsls	r0, r0, #16
 8000e9a:	4301      	orrs	r1, r0
 8000e9c:	2a38      	cmp	r2, #56	; 0x38
 8000e9e:	dd00      	ble.n	8000ea2 <__aeabi_dsub+0x17e>
 8000ea0:	e149      	b.n	8001136 <__aeabi_dsub+0x412>
 8000ea2:	2a1f      	cmp	r2, #31
 8000ea4:	dc00      	bgt.n	8000ea8 <__aeabi_dsub+0x184>
 8000ea6:	e197      	b.n	80011d8 <__aeabi_dsub+0x4b4>
 8000ea8:	0010      	movs	r0, r2
 8000eaa:	000e      	movs	r6, r1
 8000eac:	3820      	subs	r0, #32
 8000eae:	40c6      	lsrs	r6, r0
 8000eb0:	2a20      	cmp	r2, #32
 8000eb2:	d004      	beq.n	8000ebe <__aeabi_dsub+0x19a>
 8000eb4:	2040      	movs	r0, #64	; 0x40
 8000eb6:	1a82      	subs	r2, r0, r2
 8000eb8:	4091      	lsls	r1, r2
 8000eba:	430f      	orrs	r7, r1
 8000ebc:	46b9      	mov	r9, r7
 8000ebe:	464c      	mov	r4, r9
 8000ec0:	1e62      	subs	r2, r4, #1
 8000ec2:	4194      	sbcs	r4, r2
 8000ec4:	4334      	orrs	r4, r6
 8000ec6:	e13a      	b.n	800113e <__aeabi_dsub+0x41a>
 8000ec8:	000a      	movs	r2, r1
 8000eca:	433a      	orrs	r2, r7
 8000ecc:	d028      	beq.n	8000f20 <__aeabi_dsub+0x1fc>
 8000ece:	46b3      	mov	fp, r6
 8000ed0:	42b5      	cmp	r5, r6
 8000ed2:	d02b      	beq.n	8000f2c <__aeabi_dsub+0x208>
 8000ed4:	4a6b      	ldr	r2, [pc, #428]	; (8001084 <__aeabi_dsub+0x360>)
 8000ed6:	4442      	add	r2, r8
 8000ed8:	2a00      	cmp	r2, #0
 8000eda:	d05d      	beq.n	8000f98 <__aeabi_dsub+0x274>
 8000edc:	4642      	mov	r2, r8
 8000ede:	4644      	mov	r4, r8
 8000ee0:	1a82      	subs	r2, r0, r2
 8000ee2:	2c00      	cmp	r4, #0
 8000ee4:	d000      	beq.n	8000ee8 <__aeabi_dsub+0x1c4>
 8000ee6:	e0f5      	b.n	80010d4 <__aeabi_dsub+0x3b0>
 8000ee8:	4665      	mov	r5, ip
 8000eea:	431d      	orrs	r5, r3
 8000eec:	d100      	bne.n	8000ef0 <__aeabi_dsub+0x1cc>
 8000eee:	e19c      	b.n	800122a <__aeabi_dsub+0x506>
 8000ef0:	1e55      	subs	r5, r2, #1
 8000ef2:	2a01      	cmp	r2, #1
 8000ef4:	d100      	bne.n	8000ef8 <__aeabi_dsub+0x1d4>
 8000ef6:	e1fb      	b.n	80012f0 <__aeabi_dsub+0x5cc>
 8000ef8:	4c60      	ldr	r4, [pc, #384]	; (800107c <__aeabi_dsub+0x358>)
 8000efa:	42a2      	cmp	r2, r4
 8000efc:	d100      	bne.n	8000f00 <__aeabi_dsub+0x1dc>
 8000efe:	e1bd      	b.n	800127c <__aeabi_dsub+0x558>
 8000f00:	002a      	movs	r2, r5
 8000f02:	e0f0      	b.n	80010e6 <__aeabi_dsub+0x3c2>
 8000f04:	0008      	movs	r0, r1
 8000f06:	4338      	orrs	r0, r7
 8000f08:	d100      	bne.n	8000f0c <__aeabi_dsub+0x1e8>
 8000f0a:	e0c3      	b.n	8001094 <__aeabi_dsub+0x370>
 8000f0c:	1e50      	subs	r0, r2, #1
 8000f0e:	2a01      	cmp	r2, #1
 8000f10:	d100      	bne.n	8000f14 <__aeabi_dsub+0x1f0>
 8000f12:	e1a8      	b.n	8001266 <__aeabi_dsub+0x542>
 8000f14:	4c59      	ldr	r4, [pc, #356]	; (800107c <__aeabi_dsub+0x358>)
 8000f16:	42a2      	cmp	r2, r4
 8000f18:	d100      	bne.n	8000f1c <__aeabi_dsub+0x1f8>
 8000f1a:	e087      	b.n	800102c <__aeabi_dsub+0x308>
 8000f1c:	0002      	movs	r2, r0
 8000f1e:	e736      	b.n	8000d8e <__aeabi_dsub+0x6a>
 8000f20:	2201      	movs	r2, #1
 8000f22:	4056      	eors	r6, r2
 8000f24:	46b3      	mov	fp, r6
 8000f26:	42b5      	cmp	r5, r6
 8000f28:	d000      	beq.n	8000f2c <__aeabi_dsub+0x208>
 8000f2a:	e721      	b.n	8000d70 <__aeabi_dsub+0x4c>
 8000f2c:	4a55      	ldr	r2, [pc, #340]	; (8001084 <__aeabi_dsub+0x360>)
 8000f2e:	4442      	add	r2, r8
 8000f30:	2a00      	cmp	r2, #0
 8000f32:	d100      	bne.n	8000f36 <__aeabi_dsub+0x212>
 8000f34:	e0b5      	b.n	80010a2 <__aeabi_dsub+0x37e>
 8000f36:	4642      	mov	r2, r8
 8000f38:	4644      	mov	r4, r8
 8000f3a:	1a82      	subs	r2, r0, r2
 8000f3c:	2c00      	cmp	r4, #0
 8000f3e:	d100      	bne.n	8000f42 <__aeabi_dsub+0x21e>
 8000f40:	e138      	b.n	80011b4 <__aeabi_dsub+0x490>
 8000f42:	4e4e      	ldr	r6, [pc, #312]	; (800107c <__aeabi_dsub+0x358>)
 8000f44:	42b0      	cmp	r0, r6
 8000f46:	d100      	bne.n	8000f4a <__aeabi_dsub+0x226>
 8000f48:	e1de      	b.n	8001308 <__aeabi_dsub+0x5e4>
 8000f4a:	2680      	movs	r6, #128	; 0x80
 8000f4c:	4664      	mov	r4, ip
 8000f4e:	0436      	lsls	r6, r6, #16
 8000f50:	4334      	orrs	r4, r6
 8000f52:	46a4      	mov	ip, r4
 8000f54:	2a38      	cmp	r2, #56	; 0x38
 8000f56:	dd00      	ble.n	8000f5a <__aeabi_dsub+0x236>
 8000f58:	e196      	b.n	8001288 <__aeabi_dsub+0x564>
 8000f5a:	2a1f      	cmp	r2, #31
 8000f5c:	dd00      	ble.n	8000f60 <__aeabi_dsub+0x23c>
 8000f5e:	e224      	b.n	80013aa <__aeabi_dsub+0x686>
 8000f60:	2620      	movs	r6, #32
 8000f62:	1ab4      	subs	r4, r6, r2
 8000f64:	46a2      	mov	sl, r4
 8000f66:	4664      	mov	r4, ip
 8000f68:	4656      	mov	r6, sl
 8000f6a:	40b4      	lsls	r4, r6
 8000f6c:	46a1      	mov	r9, r4
 8000f6e:	001c      	movs	r4, r3
 8000f70:	464e      	mov	r6, r9
 8000f72:	40d4      	lsrs	r4, r2
 8000f74:	4326      	orrs	r6, r4
 8000f76:	0034      	movs	r4, r6
 8000f78:	4656      	mov	r6, sl
 8000f7a:	40b3      	lsls	r3, r6
 8000f7c:	1e5e      	subs	r6, r3, #1
 8000f7e:	41b3      	sbcs	r3, r6
 8000f80:	431c      	orrs	r4, r3
 8000f82:	4663      	mov	r3, ip
 8000f84:	40d3      	lsrs	r3, r2
 8000f86:	18c9      	adds	r1, r1, r3
 8000f88:	19e4      	adds	r4, r4, r7
 8000f8a:	42bc      	cmp	r4, r7
 8000f8c:	41bf      	sbcs	r7, r7
 8000f8e:	427f      	negs	r7, r7
 8000f90:	46b9      	mov	r9, r7
 8000f92:	4680      	mov	r8, r0
 8000f94:	4489      	add	r9, r1
 8000f96:	e0d8      	b.n	800114a <__aeabi_dsub+0x426>
 8000f98:	4640      	mov	r0, r8
 8000f9a:	4c3b      	ldr	r4, [pc, #236]	; (8001088 <__aeabi_dsub+0x364>)
 8000f9c:	3001      	adds	r0, #1
 8000f9e:	4220      	tst	r0, r4
 8000fa0:	d000      	beq.n	8000fa4 <__aeabi_dsub+0x280>
 8000fa2:	e0b4      	b.n	800110e <__aeabi_dsub+0x3ea>
 8000fa4:	4640      	mov	r0, r8
 8000fa6:	2800      	cmp	r0, #0
 8000fa8:	d000      	beq.n	8000fac <__aeabi_dsub+0x288>
 8000faa:	e144      	b.n	8001236 <__aeabi_dsub+0x512>
 8000fac:	4660      	mov	r0, ip
 8000fae:	4318      	orrs	r0, r3
 8000fb0:	d100      	bne.n	8000fb4 <__aeabi_dsub+0x290>
 8000fb2:	e190      	b.n	80012d6 <__aeabi_dsub+0x5b2>
 8000fb4:	0008      	movs	r0, r1
 8000fb6:	4338      	orrs	r0, r7
 8000fb8:	d000      	beq.n	8000fbc <__aeabi_dsub+0x298>
 8000fba:	e1aa      	b.n	8001312 <__aeabi_dsub+0x5ee>
 8000fbc:	4661      	mov	r1, ip
 8000fbe:	08db      	lsrs	r3, r3, #3
 8000fc0:	0749      	lsls	r1, r1, #29
 8000fc2:	430b      	orrs	r3, r1
 8000fc4:	4661      	mov	r1, ip
 8000fc6:	08cc      	lsrs	r4, r1, #3
 8000fc8:	e027      	b.n	800101a <__aeabi_dsub+0x2f6>
 8000fca:	0008      	movs	r0, r1
 8000fcc:	4338      	orrs	r0, r7
 8000fce:	d061      	beq.n	8001094 <__aeabi_dsub+0x370>
 8000fd0:	1e50      	subs	r0, r2, #1
 8000fd2:	2a01      	cmp	r2, #1
 8000fd4:	d100      	bne.n	8000fd8 <__aeabi_dsub+0x2b4>
 8000fd6:	e139      	b.n	800124c <__aeabi_dsub+0x528>
 8000fd8:	42a2      	cmp	r2, r4
 8000fda:	d027      	beq.n	800102c <__aeabi_dsub+0x308>
 8000fdc:	0002      	movs	r2, r0
 8000fde:	e75d      	b.n	8000e9c <__aeabi_dsub+0x178>
 8000fe0:	0002      	movs	r2, r0
 8000fe2:	391f      	subs	r1, #31
 8000fe4:	40ca      	lsrs	r2, r1
 8000fe6:	0011      	movs	r1, r2
 8000fe8:	2b20      	cmp	r3, #32
 8000fea:	d003      	beq.n	8000ff4 <__aeabi_dsub+0x2d0>
 8000fec:	2240      	movs	r2, #64	; 0x40
 8000fee:	1ad3      	subs	r3, r2, r3
 8000ff0:	4098      	lsls	r0, r3
 8000ff2:	4304      	orrs	r4, r0
 8000ff4:	1e63      	subs	r3, r4, #1
 8000ff6:	419c      	sbcs	r4, r3
 8000ff8:	2300      	movs	r3, #0
 8000ffa:	4699      	mov	r9, r3
 8000ffc:	4698      	mov	r8, r3
 8000ffe:	430c      	orrs	r4, r1
 8001000:	0763      	lsls	r3, r4, #29
 8001002:	d000      	beq.n	8001006 <__aeabi_dsub+0x2e2>
 8001004:	e712      	b.n	8000e2c <__aeabi_dsub+0x108>
 8001006:	464b      	mov	r3, r9
 8001008:	464a      	mov	r2, r9
 800100a:	08e4      	lsrs	r4, r4, #3
 800100c:	075b      	lsls	r3, r3, #29
 800100e:	4323      	orrs	r3, r4
 8001010:	08d4      	lsrs	r4, r2, #3
 8001012:	4642      	mov	r2, r8
 8001014:	4919      	ldr	r1, [pc, #100]	; (800107c <__aeabi_dsub+0x358>)
 8001016:	428a      	cmp	r2, r1
 8001018:	d00e      	beq.n	8001038 <__aeabi_dsub+0x314>
 800101a:	0324      	lsls	r4, r4, #12
 800101c:	0552      	lsls	r2, r2, #21
 800101e:	0b24      	lsrs	r4, r4, #12
 8001020:	0d52      	lsrs	r2, r2, #21
 8001022:	e722      	b.n	8000e6a <__aeabi_dsub+0x146>
 8001024:	000a      	movs	r2, r1
 8001026:	2400      	movs	r4, #0
 8001028:	2300      	movs	r3, #0
 800102a:	e71e      	b.n	8000e6a <__aeabi_dsub+0x146>
 800102c:	08db      	lsrs	r3, r3, #3
 800102e:	4662      	mov	r2, ip
 8001030:	0752      	lsls	r2, r2, #29
 8001032:	4313      	orrs	r3, r2
 8001034:	4662      	mov	r2, ip
 8001036:	08d4      	lsrs	r4, r2, #3
 8001038:	001a      	movs	r2, r3
 800103a:	4322      	orrs	r2, r4
 800103c:	d100      	bne.n	8001040 <__aeabi_dsub+0x31c>
 800103e:	e1fc      	b.n	800143a <__aeabi_dsub+0x716>
 8001040:	2280      	movs	r2, #128	; 0x80
 8001042:	0312      	lsls	r2, r2, #12
 8001044:	4314      	orrs	r4, r2
 8001046:	0324      	lsls	r4, r4, #12
 8001048:	4a0c      	ldr	r2, [pc, #48]	; (800107c <__aeabi_dsub+0x358>)
 800104a:	0b24      	lsrs	r4, r4, #12
 800104c:	e70d      	b.n	8000e6a <__aeabi_dsub+0x146>
 800104e:	0020      	movs	r0, r4
 8001050:	f000 fa94 	bl	800157c <__clzsi2>
 8001054:	0001      	movs	r1, r0
 8001056:	3118      	adds	r1, #24
 8001058:	291f      	cmp	r1, #31
 800105a:	dc00      	bgt.n	800105e <__aeabi_dsub+0x33a>
 800105c:	e6c4      	b.n	8000de8 <__aeabi_dsub+0xc4>
 800105e:	3808      	subs	r0, #8
 8001060:	4084      	lsls	r4, r0
 8001062:	4643      	mov	r3, r8
 8001064:	0020      	movs	r0, r4
 8001066:	2400      	movs	r4, #0
 8001068:	4588      	cmp	r8, r1
 800106a:	dc00      	bgt.n	800106e <__aeabi_dsub+0x34a>
 800106c:	e6c8      	b.n	8000e00 <__aeabi_dsub+0xdc>
 800106e:	4a04      	ldr	r2, [pc, #16]	; (8001080 <__aeabi_dsub+0x35c>)
 8001070:	1a5b      	subs	r3, r3, r1
 8001072:	4010      	ands	r0, r2
 8001074:	4698      	mov	r8, r3
 8001076:	4681      	mov	r9, r0
 8001078:	e6d6      	b.n	8000e28 <__aeabi_dsub+0x104>
 800107a:	46c0      	nop			; (mov r8, r8)
 800107c:	000007ff 	.word	0x000007ff
 8001080:	ff7fffff 	.word	0xff7fffff
 8001084:	fffff801 	.word	0xfffff801
 8001088:	000007fe 	.word	0x000007fe
 800108c:	430f      	orrs	r7, r1
 800108e:	1e7a      	subs	r2, r7, #1
 8001090:	4197      	sbcs	r7, r2
 8001092:	e691      	b.n	8000db8 <__aeabi_dsub+0x94>
 8001094:	4661      	mov	r1, ip
 8001096:	08db      	lsrs	r3, r3, #3
 8001098:	0749      	lsls	r1, r1, #29
 800109a:	430b      	orrs	r3, r1
 800109c:	4661      	mov	r1, ip
 800109e:	08cc      	lsrs	r4, r1, #3
 80010a0:	e7b8      	b.n	8001014 <__aeabi_dsub+0x2f0>
 80010a2:	4640      	mov	r0, r8
 80010a4:	4cd3      	ldr	r4, [pc, #844]	; (80013f4 <__aeabi_dsub+0x6d0>)
 80010a6:	3001      	adds	r0, #1
 80010a8:	4220      	tst	r0, r4
 80010aa:	d000      	beq.n	80010ae <__aeabi_dsub+0x38a>
 80010ac:	e0a2      	b.n	80011f4 <__aeabi_dsub+0x4d0>
 80010ae:	4640      	mov	r0, r8
 80010b0:	2800      	cmp	r0, #0
 80010b2:	d000      	beq.n	80010b6 <__aeabi_dsub+0x392>
 80010b4:	e101      	b.n	80012ba <__aeabi_dsub+0x596>
 80010b6:	4660      	mov	r0, ip
 80010b8:	4318      	orrs	r0, r3
 80010ba:	d100      	bne.n	80010be <__aeabi_dsub+0x39a>
 80010bc:	e15e      	b.n	800137c <__aeabi_dsub+0x658>
 80010be:	0008      	movs	r0, r1
 80010c0:	4338      	orrs	r0, r7
 80010c2:	d000      	beq.n	80010c6 <__aeabi_dsub+0x3a2>
 80010c4:	e15f      	b.n	8001386 <__aeabi_dsub+0x662>
 80010c6:	4661      	mov	r1, ip
 80010c8:	08db      	lsrs	r3, r3, #3
 80010ca:	0749      	lsls	r1, r1, #29
 80010cc:	430b      	orrs	r3, r1
 80010ce:	4661      	mov	r1, ip
 80010d0:	08cc      	lsrs	r4, r1, #3
 80010d2:	e7a2      	b.n	800101a <__aeabi_dsub+0x2f6>
 80010d4:	4dc8      	ldr	r5, [pc, #800]	; (80013f8 <__aeabi_dsub+0x6d4>)
 80010d6:	42a8      	cmp	r0, r5
 80010d8:	d100      	bne.n	80010dc <__aeabi_dsub+0x3b8>
 80010da:	e0cf      	b.n	800127c <__aeabi_dsub+0x558>
 80010dc:	2580      	movs	r5, #128	; 0x80
 80010de:	4664      	mov	r4, ip
 80010e0:	042d      	lsls	r5, r5, #16
 80010e2:	432c      	orrs	r4, r5
 80010e4:	46a4      	mov	ip, r4
 80010e6:	2a38      	cmp	r2, #56	; 0x38
 80010e8:	dc56      	bgt.n	8001198 <__aeabi_dsub+0x474>
 80010ea:	2a1f      	cmp	r2, #31
 80010ec:	dd00      	ble.n	80010f0 <__aeabi_dsub+0x3cc>
 80010ee:	e0d1      	b.n	8001294 <__aeabi_dsub+0x570>
 80010f0:	2520      	movs	r5, #32
 80010f2:	001e      	movs	r6, r3
 80010f4:	1aad      	subs	r5, r5, r2
 80010f6:	4664      	mov	r4, ip
 80010f8:	40ab      	lsls	r3, r5
 80010fa:	40ac      	lsls	r4, r5
 80010fc:	40d6      	lsrs	r6, r2
 80010fe:	1e5d      	subs	r5, r3, #1
 8001100:	41ab      	sbcs	r3, r5
 8001102:	4334      	orrs	r4, r6
 8001104:	4323      	orrs	r3, r4
 8001106:	4664      	mov	r4, ip
 8001108:	40d4      	lsrs	r4, r2
 800110a:	1b09      	subs	r1, r1, r4
 800110c:	e049      	b.n	80011a2 <__aeabi_dsub+0x47e>
 800110e:	4660      	mov	r0, ip
 8001110:	1bdc      	subs	r4, r3, r7
 8001112:	1a46      	subs	r6, r0, r1
 8001114:	42a3      	cmp	r3, r4
 8001116:	4180      	sbcs	r0, r0
 8001118:	4240      	negs	r0, r0
 800111a:	4681      	mov	r9, r0
 800111c:	0030      	movs	r0, r6
 800111e:	464e      	mov	r6, r9
 8001120:	1b80      	subs	r0, r0, r6
 8001122:	4681      	mov	r9, r0
 8001124:	0200      	lsls	r0, r0, #8
 8001126:	d476      	bmi.n	8001216 <__aeabi_dsub+0x4f2>
 8001128:	464b      	mov	r3, r9
 800112a:	4323      	orrs	r3, r4
 800112c:	d000      	beq.n	8001130 <__aeabi_dsub+0x40c>
 800112e:	e652      	b.n	8000dd6 <__aeabi_dsub+0xb2>
 8001130:	2400      	movs	r4, #0
 8001132:	2500      	movs	r5, #0
 8001134:	e771      	b.n	800101a <__aeabi_dsub+0x2f6>
 8001136:	4339      	orrs	r1, r7
 8001138:	000c      	movs	r4, r1
 800113a:	1e62      	subs	r2, r4, #1
 800113c:	4194      	sbcs	r4, r2
 800113e:	18e4      	adds	r4, r4, r3
 8001140:	429c      	cmp	r4, r3
 8001142:	419b      	sbcs	r3, r3
 8001144:	425b      	negs	r3, r3
 8001146:	4463      	add	r3, ip
 8001148:	4699      	mov	r9, r3
 800114a:	464b      	mov	r3, r9
 800114c:	021b      	lsls	r3, r3, #8
 800114e:	d400      	bmi.n	8001152 <__aeabi_dsub+0x42e>
 8001150:	e756      	b.n	8001000 <__aeabi_dsub+0x2dc>
 8001152:	2301      	movs	r3, #1
 8001154:	469c      	mov	ip, r3
 8001156:	4ba8      	ldr	r3, [pc, #672]	; (80013f8 <__aeabi_dsub+0x6d4>)
 8001158:	44e0      	add	r8, ip
 800115a:	4598      	cmp	r8, r3
 800115c:	d038      	beq.n	80011d0 <__aeabi_dsub+0x4ac>
 800115e:	464b      	mov	r3, r9
 8001160:	48a6      	ldr	r0, [pc, #664]	; (80013fc <__aeabi_dsub+0x6d8>)
 8001162:	2201      	movs	r2, #1
 8001164:	4003      	ands	r3, r0
 8001166:	0018      	movs	r0, r3
 8001168:	0863      	lsrs	r3, r4, #1
 800116a:	4014      	ands	r4, r2
 800116c:	431c      	orrs	r4, r3
 800116e:	07c3      	lsls	r3, r0, #31
 8001170:	431c      	orrs	r4, r3
 8001172:	0843      	lsrs	r3, r0, #1
 8001174:	4699      	mov	r9, r3
 8001176:	e657      	b.n	8000e28 <__aeabi_dsub+0x104>
 8001178:	0010      	movs	r0, r2
 800117a:	000e      	movs	r6, r1
 800117c:	3820      	subs	r0, #32
 800117e:	40c6      	lsrs	r6, r0
 8001180:	2a20      	cmp	r2, #32
 8001182:	d004      	beq.n	800118e <__aeabi_dsub+0x46a>
 8001184:	2040      	movs	r0, #64	; 0x40
 8001186:	1a82      	subs	r2, r0, r2
 8001188:	4091      	lsls	r1, r2
 800118a:	430f      	orrs	r7, r1
 800118c:	46b9      	mov	r9, r7
 800118e:	464f      	mov	r7, r9
 8001190:	1e7a      	subs	r2, r7, #1
 8001192:	4197      	sbcs	r7, r2
 8001194:	4337      	orrs	r7, r6
 8001196:	e60f      	b.n	8000db8 <__aeabi_dsub+0x94>
 8001198:	4662      	mov	r2, ip
 800119a:	431a      	orrs	r2, r3
 800119c:	0013      	movs	r3, r2
 800119e:	1e5a      	subs	r2, r3, #1
 80011a0:	4193      	sbcs	r3, r2
 80011a2:	1afc      	subs	r4, r7, r3
 80011a4:	42a7      	cmp	r7, r4
 80011a6:	41bf      	sbcs	r7, r7
 80011a8:	427f      	negs	r7, r7
 80011aa:	1bcb      	subs	r3, r1, r7
 80011ac:	4699      	mov	r9, r3
 80011ae:	465d      	mov	r5, fp
 80011b0:	4680      	mov	r8, r0
 80011b2:	e608      	b.n	8000dc6 <__aeabi_dsub+0xa2>
 80011b4:	4666      	mov	r6, ip
 80011b6:	431e      	orrs	r6, r3
 80011b8:	d100      	bne.n	80011bc <__aeabi_dsub+0x498>
 80011ba:	e0be      	b.n	800133a <__aeabi_dsub+0x616>
 80011bc:	1e56      	subs	r6, r2, #1
 80011be:	2a01      	cmp	r2, #1
 80011c0:	d100      	bne.n	80011c4 <__aeabi_dsub+0x4a0>
 80011c2:	e109      	b.n	80013d8 <__aeabi_dsub+0x6b4>
 80011c4:	4c8c      	ldr	r4, [pc, #560]	; (80013f8 <__aeabi_dsub+0x6d4>)
 80011c6:	42a2      	cmp	r2, r4
 80011c8:	d100      	bne.n	80011cc <__aeabi_dsub+0x4a8>
 80011ca:	e119      	b.n	8001400 <__aeabi_dsub+0x6dc>
 80011cc:	0032      	movs	r2, r6
 80011ce:	e6c1      	b.n	8000f54 <__aeabi_dsub+0x230>
 80011d0:	4642      	mov	r2, r8
 80011d2:	2400      	movs	r4, #0
 80011d4:	2300      	movs	r3, #0
 80011d6:	e648      	b.n	8000e6a <__aeabi_dsub+0x146>
 80011d8:	2020      	movs	r0, #32
 80011da:	000c      	movs	r4, r1
 80011dc:	1a80      	subs	r0, r0, r2
 80011de:	003e      	movs	r6, r7
 80011e0:	4087      	lsls	r7, r0
 80011e2:	4084      	lsls	r4, r0
 80011e4:	40d6      	lsrs	r6, r2
 80011e6:	1e78      	subs	r0, r7, #1
 80011e8:	4187      	sbcs	r7, r0
 80011ea:	40d1      	lsrs	r1, r2
 80011ec:	4334      	orrs	r4, r6
 80011ee:	433c      	orrs	r4, r7
 80011f0:	448c      	add	ip, r1
 80011f2:	e7a4      	b.n	800113e <__aeabi_dsub+0x41a>
 80011f4:	4a80      	ldr	r2, [pc, #512]	; (80013f8 <__aeabi_dsub+0x6d4>)
 80011f6:	4290      	cmp	r0, r2
 80011f8:	d100      	bne.n	80011fc <__aeabi_dsub+0x4d8>
 80011fa:	e0e9      	b.n	80013d0 <__aeabi_dsub+0x6ac>
 80011fc:	19df      	adds	r7, r3, r7
 80011fe:	429f      	cmp	r7, r3
 8001200:	419b      	sbcs	r3, r3
 8001202:	4461      	add	r1, ip
 8001204:	425b      	negs	r3, r3
 8001206:	18c9      	adds	r1, r1, r3
 8001208:	07cc      	lsls	r4, r1, #31
 800120a:	087f      	lsrs	r7, r7, #1
 800120c:	084b      	lsrs	r3, r1, #1
 800120e:	4699      	mov	r9, r3
 8001210:	4680      	mov	r8, r0
 8001212:	433c      	orrs	r4, r7
 8001214:	e6f4      	b.n	8001000 <__aeabi_dsub+0x2dc>
 8001216:	1afc      	subs	r4, r7, r3
 8001218:	42a7      	cmp	r7, r4
 800121a:	41bf      	sbcs	r7, r7
 800121c:	4663      	mov	r3, ip
 800121e:	427f      	negs	r7, r7
 8001220:	1ac9      	subs	r1, r1, r3
 8001222:	1bcb      	subs	r3, r1, r7
 8001224:	4699      	mov	r9, r3
 8001226:	465d      	mov	r5, fp
 8001228:	e5d5      	b.n	8000dd6 <__aeabi_dsub+0xb2>
 800122a:	08ff      	lsrs	r7, r7, #3
 800122c:	074b      	lsls	r3, r1, #29
 800122e:	465d      	mov	r5, fp
 8001230:	433b      	orrs	r3, r7
 8001232:	08cc      	lsrs	r4, r1, #3
 8001234:	e6ee      	b.n	8001014 <__aeabi_dsub+0x2f0>
 8001236:	4662      	mov	r2, ip
 8001238:	431a      	orrs	r2, r3
 800123a:	d000      	beq.n	800123e <__aeabi_dsub+0x51a>
 800123c:	e082      	b.n	8001344 <__aeabi_dsub+0x620>
 800123e:	000b      	movs	r3, r1
 8001240:	433b      	orrs	r3, r7
 8001242:	d11b      	bne.n	800127c <__aeabi_dsub+0x558>
 8001244:	2480      	movs	r4, #128	; 0x80
 8001246:	2500      	movs	r5, #0
 8001248:	0324      	lsls	r4, r4, #12
 800124a:	e6f9      	b.n	8001040 <__aeabi_dsub+0x31c>
 800124c:	19dc      	adds	r4, r3, r7
 800124e:	429c      	cmp	r4, r3
 8001250:	419b      	sbcs	r3, r3
 8001252:	4461      	add	r1, ip
 8001254:	4689      	mov	r9, r1
 8001256:	425b      	negs	r3, r3
 8001258:	4499      	add	r9, r3
 800125a:	464b      	mov	r3, r9
 800125c:	021b      	lsls	r3, r3, #8
 800125e:	d444      	bmi.n	80012ea <__aeabi_dsub+0x5c6>
 8001260:	2301      	movs	r3, #1
 8001262:	4698      	mov	r8, r3
 8001264:	e6cc      	b.n	8001000 <__aeabi_dsub+0x2dc>
 8001266:	1bdc      	subs	r4, r3, r7
 8001268:	4662      	mov	r2, ip
 800126a:	42a3      	cmp	r3, r4
 800126c:	419b      	sbcs	r3, r3
 800126e:	1a51      	subs	r1, r2, r1
 8001270:	425b      	negs	r3, r3
 8001272:	1acb      	subs	r3, r1, r3
 8001274:	4699      	mov	r9, r3
 8001276:	2301      	movs	r3, #1
 8001278:	4698      	mov	r8, r3
 800127a:	e5a4      	b.n	8000dc6 <__aeabi_dsub+0xa2>
 800127c:	08ff      	lsrs	r7, r7, #3
 800127e:	074b      	lsls	r3, r1, #29
 8001280:	465d      	mov	r5, fp
 8001282:	433b      	orrs	r3, r7
 8001284:	08cc      	lsrs	r4, r1, #3
 8001286:	e6d7      	b.n	8001038 <__aeabi_dsub+0x314>
 8001288:	4662      	mov	r2, ip
 800128a:	431a      	orrs	r2, r3
 800128c:	0014      	movs	r4, r2
 800128e:	1e63      	subs	r3, r4, #1
 8001290:	419c      	sbcs	r4, r3
 8001292:	e679      	b.n	8000f88 <__aeabi_dsub+0x264>
 8001294:	0015      	movs	r5, r2
 8001296:	4664      	mov	r4, ip
 8001298:	3d20      	subs	r5, #32
 800129a:	40ec      	lsrs	r4, r5
 800129c:	46a0      	mov	r8, r4
 800129e:	2a20      	cmp	r2, #32
 80012a0:	d005      	beq.n	80012ae <__aeabi_dsub+0x58a>
 80012a2:	2540      	movs	r5, #64	; 0x40
 80012a4:	4664      	mov	r4, ip
 80012a6:	1aaa      	subs	r2, r5, r2
 80012a8:	4094      	lsls	r4, r2
 80012aa:	4323      	orrs	r3, r4
 80012ac:	469a      	mov	sl, r3
 80012ae:	4654      	mov	r4, sl
 80012b0:	1e63      	subs	r3, r4, #1
 80012b2:	419c      	sbcs	r4, r3
 80012b4:	4643      	mov	r3, r8
 80012b6:	4323      	orrs	r3, r4
 80012b8:	e773      	b.n	80011a2 <__aeabi_dsub+0x47e>
 80012ba:	4662      	mov	r2, ip
 80012bc:	431a      	orrs	r2, r3
 80012be:	d023      	beq.n	8001308 <__aeabi_dsub+0x5e4>
 80012c0:	000a      	movs	r2, r1
 80012c2:	433a      	orrs	r2, r7
 80012c4:	d000      	beq.n	80012c8 <__aeabi_dsub+0x5a4>
 80012c6:	e0a0      	b.n	800140a <__aeabi_dsub+0x6e6>
 80012c8:	4662      	mov	r2, ip
 80012ca:	08db      	lsrs	r3, r3, #3
 80012cc:	0752      	lsls	r2, r2, #29
 80012ce:	4313      	orrs	r3, r2
 80012d0:	4662      	mov	r2, ip
 80012d2:	08d4      	lsrs	r4, r2, #3
 80012d4:	e6b0      	b.n	8001038 <__aeabi_dsub+0x314>
 80012d6:	000b      	movs	r3, r1
 80012d8:	433b      	orrs	r3, r7
 80012da:	d100      	bne.n	80012de <__aeabi_dsub+0x5ba>
 80012dc:	e728      	b.n	8001130 <__aeabi_dsub+0x40c>
 80012de:	08ff      	lsrs	r7, r7, #3
 80012e0:	074b      	lsls	r3, r1, #29
 80012e2:	465d      	mov	r5, fp
 80012e4:	433b      	orrs	r3, r7
 80012e6:	08cc      	lsrs	r4, r1, #3
 80012e8:	e697      	b.n	800101a <__aeabi_dsub+0x2f6>
 80012ea:	2302      	movs	r3, #2
 80012ec:	4698      	mov	r8, r3
 80012ee:	e736      	b.n	800115e <__aeabi_dsub+0x43a>
 80012f0:	1afc      	subs	r4, r7, r3
 80012f2:	42a7      	cmp	r7, r4
 80012f4:	41bf      	sbcs	r7, r7
 80012f6:	4663      	mov	r3, ip
 80012f8:	427f      	negs	r7, r7
 80012fa:	1ac9      	subs	r1, r1, r3
 80012fc:	1bcb      	subs	r3, r1, r7
 80012fe:	4699      	mov	r9, r3
 8001300:	2301      	movs	r3, #1
 8001302:	465d      	mov	r5, fp
 8001304:	4698      	mov	r8, r3
 8001306:	e55e      	b.n	8000dc6 <__aeabi_dsub+0xa2>
 8001308:	074b      	lsls	r3, r1, #29
 800130a:	08ff      	lsrs	r7, r7, #3
 800130c:	433b      	orrs	r3, r7
 800130e:	08cc      	lsrs	r4, r1, #3
 8001310:	e692      	b.n	8001038 <__aeabi_dsub+0x314>
 8001312:	1bdc      	subs	r4, r3, r7
 8001314:	4660      	mov	r0, ip
 8001316:	42a3      	cmp	r3, r4
 8001318:	41b6      	sbcs	r6, r6
 800131a:	1a40      	subs	r0, r0, r1
 800131c:	4276      	negs	r6, r6
 800131e:	1b80      	subs	r0, r0, r6
 8001320:	4681      	mov	r9, r0
 8001322:	0200      	lsls	r0, r0, #8
 8001324:	d560      	bpl.n	80013e8 <__aeabi_dsub+0x6c4>
 8001326:	1afc      	subs	r4, r7, r3
 8001328:	42a7      	cmp	r7, r4
 800132a:	41bf      	sbcs	r7, r7
 800132c:	4663      	mov	r3, ip
 800132e:	427f      	negs	r7, r7
 8001330:	1ac9      	subs	r1, r1, r3
 8001332:	1bcb      	subs	r3, r1, r7
 8001334:	4699      	mov	r9, r3
 8001336:	465d      	mov	r5, fp
 8001338:	e576      	b.n	8000e28 <__aeabi_dsub+0x104>
 800133a:	08ff      	lsrs	r7, r7, #3
 800133c:	074b      	lsls	r3, r1, #29
 800133e:	433b      	orrs	r3, r7
 8001340:	08cc      	lsrs	r4, r1, #3
 8001342:	e667      	b.n	8001014 <__aeabi_dsub+0x2f0>
 8001344:	000a      	movs	r2, r1
 8001346:	08db      	lsrs	r3, r3, #3
 8001348:	433a      	orrs	r2, r7
 800134a:	d100      	bne.n	800134e <__aeabi_dsub+0x62a>
 800134c:	e66f      	b.n	800102e <__aeabi_dsub+0x30a>
 800134e:	4662      	mov	r2, ip
 8001350:	0752      	lsls	r2, r2, #29
 8001352:	4313      	orrs	r3, r2
 8001354:	4662      	mov	r2, ip
 8001356:	08d4      	lsrs	r4, r2, #3
 8001358:	2280      	movs	r2, #128	; 0x80
 800135a:	0312      	lsls	r2, r2, #12
 800135c:	4214      	tst	r4, r2
 800135e:	d007      	beq.n	8001370 <__aeabi_dsub+0x64c>
 8001360:	08c8      	lsrs	r0, r1, #3
 8001362:	4210      	tst	r0, r2
 8001364:	d104      	bne.n	8001370 <__aeabi_dsub+0x64c>
 8001366:	465d      	mov	r5, fp
 8001368:	0004      	movs	r4, r0
 800136a:	08fb      	lsrs	r3, r7, #3
 800136c:	0749      	lsls	r1, r1, #29
 800136e:	430b      	orrs	r3, r1
 8001370:	0f5a      	lsrs	r2, r3, #29
 8001372:	00db      	lsls	r3, r3, #3
 8001374:	08db      	lsrs	r3, r3, #3
 8001376:	0752      	lsls	r2, r2, #29
 8001378:	4313      	orrs	r3, r2
 800137a:	e65d      	b.n	8001038 <__aeabi_dsub+0x314>
 800137c:	074b      	lsls	r3, r1, #29
 800137e:	08ff      	lsrs	r7, r7, #3
 8001380:	433b      	orrs	r3, r7
 8001382:	08cc      	lsrs	r4, r1, #3
 8001384:	e649      	b.n	800101a <__aeabi_dsub+0x2f6>
 8001386:	19dc      	adds	r4, r3, r7
 8001388:	429c      	cmp	r4, r3
 800138a:	419b      	sbcs	r3, r3
 800138c:	4461      	add	r1, ip
 800138e:	4689      	mov	r9, r1
 8001390:	425b      	negs	r3, r3
 8001392:	4499      	add	r9, r3
 8001394:	464b      	mov	r3, r9
 8001396:	021b      	lsls	r3, r3, #8
 8001398:	d400      	bmi.n	800139c <__aeabi_dsub+0x678>
 800139a:	e631      	b.n	8001000 <__aeabi_dsub+0x2dc>
 800139c:	464a      	mov	r2, r9
 800139e:	4b17      	ldr	r3, [pc, #92]	; (80013fc <__aeabi_dsub+0x6d8>)
 80013a0:	401a      	ands	r2, r3
 80013a2:	2301      	movs	r3, #1
 80013a4:	4691      	mov	r9, r2
 80013a6:	4698      	mov	r8, r3
 80013a8:	e62a      	b.n	8001000 <__aeabi_dsub+0x2dc>
 80013aa:	0016      	movs	r6, r2
 80013ac:	4664      	mov	r4, ip
 80013ae:	3e20      	subs	r6, #32
 80013b0:	40f4      	lsrs	r4, r6
 80013b2:	46a0      	mov	r8, r4
 80013b4:	2a20      	cmp	r2, #32
 80013b6:	d005      	beq.n	80013c4 <__aeabi_dsub+0x6a0>
 80013b8:	2640      	movs	r6, #64	; 0x40
 80013ba:	4664      	mov	r4, ip
 80013bc:	1ab2      	subs	r2, r6, r2
 80013be:	4094      	lsls	r4, r2
 80013c0:	4323      	orrs	r3, r4
 80013c2:	469a      	mov	sl, r3
 80013c4:	4654      	mov	r4, sl
 80013c6:	1e63      	subs	r3, r4, #1
 80013c8:	419c      	sbcs	r4, r3
 80013ca:	4643      	mov	r3, r8
 80013cc:	431c      	orrs	r4, r3
 80013ce:	e5db      	b.n	8000f88 <__aeabi_dsub+0x264>
 80013d0:	0002      	movs	r2, r0
 80013d2:	2400      	movs	r4, #0
 80013d4:	2300      	movs	r3, #0
 80013d6:	e548      	b.n	8000e6a <__aeabi_dsub+0x146>
 80013d8:	19dc      	adds	r4, r3, r7
 80013da:	42bc      	cmp	r4, r7
 80013dc:	41bf      	sbcs	r7, r7
 80013de:	4461      	add	r1, ip
 80013e0:	4689      	mov	r9, r1
 80013e2:	427f      	negs	r7, r7
 80013e4:	44b9      	add	r9, r7
 80013e6:	e738      	b.n	800125a <__aeabi_dsub+0x536>
 80013e8:	464b      	mov	r3, r9
 80013ea:	4323      	orrs	r3, r4
 80013ec:	d100      	bne.n	80013f0 <__aeabi_dsub+0x6cc>
 80013ee:	e69f      	b.n	8001130 <__aeabi_dsub+0x40c>
 80013f0:	e606      	b.n	8001000 <__aeabi_dsub+0x2dc>
 80013f2:	46c0      	nop			; (mov r8, r8)
 80013f4:	000007fe 	.word	0x000007fe
 80013f8:	000007ff 	.word	0x000007ff
 80013fc:	ff7fffff 	.word	0xff7fffff
 8001400:	08ff      	lsrs	r7, r7, #3
 8001402:	074b      	lsls	r3, r1, #29
 8001404:	433b      	orrs	r3, r7
 8001406:	08cc      	lsrs	r4, r1, #3
 8001408:	e616      	b.n	8001038 <__aeabi_dsub+0x314>
 800140a:	4662      	mov	r2, ip
 800140c:	08db      	lsrs	r3, r3, #3
 800140e:	0752      	lsls	r2, r2, #29
 8001410:	4313      	orrs	r3, r2
 8001412:	4662      	mov	r2, ip
 8001414:	08d4      	lsrs	r4, r2, #3
 8001416:	2280      	movs	r2, #128	; 0x80
 8001418:	0312      	lsls	r2, r2, #12
 800141a:	4214      	tst	r4, r2
 800141c:	d007      	beq.n	800142e <__aeabi_dsub+0x70a>
 800141e:	08c8      	lsrs	r0, r1, #3
 8001420:	4210      	tst	r0, r2
 8001422:	d104      	bne.n	800142e <__aeabi_dsub+0x70a>
 8001424:	465d      	mov	r5, fp
 8001426:	0004      	movs	r4, r0
 8001428:	08fb      	lsrs	r3, r7, #3
 800142a:	0749      	lsls	r1, r1, #29
 800142c:	430b      	orrs	r3, r1
 800142e:	0f5a      	lsrs	r2, r3, #29
 8001430:	00db      	lsls	r3, r3, #3
 8001432:	0752      	lsls	r2, r2, #29
 8001434:	08db      	lsrs	r3, r3, #3
 8001436:	4313      	orrs	r3, r2
 8001438:	e5fe      	b.n	8001038 <__aeabi_dsub+0x314>
 800143a:	2300      	movs	r3, #0
 800143c:	4a01      	ldr	r2, [pc, #4]	; (8001444 <__aeabi_dsub+0x720>)
 800143e:	001c      	movs	r4, r3
 8001440:	e513      	b.n	8000e6a <__aeabi_dsub+0x146>
 8001442:	46c0      	nop			; (mov r8, r8)
 8001444:	000007ff 	.word	0x000007ff

08001448 <__aeabi_d2iz>:
 8001448:	000a      	movs	r2, r1
 800144a:	b530      	push	{r4, r5, lr}
 800144c:	4c13      	ldr	r4, [pc, #76]	; (800149c <__aeabi_d2iz+0x54>)
 800144e:	0053      	lsls	r3, r2, #1
 8001450:	0309      	lsls	r1, r1, #12
 8001452:	0005      	movs	r5, r0
 8001454:	0b09      	lsrs	r1, r1, #12
 8001456:	2000      	movs	r0, #0
 8001458:	0d5b      	lsrs	r3, r3, #21
 800145a:	0fd2      	lsrs	r2, r2, #31
 800145c:	42a3      	cmp	r3, r4
 800145e:	dd04      	ble.n	800146a <__aeabi_d2iz+0x22>
 8001460:	480f      	ldr	r0, [pc, #60]	; (80014a0 <__aeabi_d2iz+0x58>)
 8001462:	4283      	cmp	r3, r0
 8001464:	dd02      	ble.n	800146c <__aeabi_d2iz+0x24>
 8001466:	4b0f      	ldr	r3, [pc, #60]	; (80014a4 <__aeabi_d2iz+0x5c>)
 8001468:	18d0      	adds	r0, r2, r3
 800146a:	bd30      	pop	{r4, r5, pc}
 800146c:	2080      	movs	r0, #128	; 0x80
 800146e:	0340      	lsls	r0, r0, #13
 8001470:	4301      	orrs	r1, r0
 8001472:	480d      	ldr	r0, [pc, #52]	; (80014a8 <__aeabi_d2iz+0x60>)
 8001474:	1ac0      	subs	r0, r0, r3
 8001476:	281f      	cmp	r0, #31
 8001478:	dd08      	ble.n	800148c <__aeabi_d2iz+0x44>
 800147a:	480c      	ldr	r0, [pc, #48]	; (80014ac <__aeabi_d2iz+0x64>)
 800147c:	1ac3      	subs	r3, r0, r3
 800147e:	40d9      	lsrs	r1, r3
 8001480:	000b      	movs	r3, r1
 8001482:	4258      	negs	r0, r3
 8001484:	2a00      	cmp	r2, #0
 8001486:	d1f0      	bne.n	800146a <__aeabi_d2iz+0x22>
 8001488:	0018      	movs	r0, r3
 800148a:	e7ee      	b.n	800146a <__aeabi_d2iz+0x22>
 800148c:	4c08      	ldr	r4, [pc, #32]	; (80014b0 <__aeabi_d2iz+0x68>)
 800148e:	40c5      	lsrs	r5, r0
 8001490:	46a4      	mov	ip, r4
 8001492:	4463      	add	r3, ip
 8001494:	4099      	lsls	r1, r3
 8001496:	000b      	movs	r3, r1
 8001498:	432b      	orrs	r3, r5
 800149a:	e7f2      	b.n	8001482 <__aeabi_d2iz+0x3a>
 800149c:	000003fe 	.word	0x000003fe
 80014a0:	0000041d 	.word	0x0000041d
 80014a4:	7fffffff 	.word	0x7fffffff
 80014a8:	00000433 	.word	0x00000433
 80014ac:	00000413 	.word	0x00000413
 80014b0:	fffffbed 	.word	0xfffffbed

080014b4 <__aeabi_ui2d>:
 80014b4:	b510      	push	{r4, lr}
 80014b6:	1e04      	subs	r4, r0, #0
 80014b8:	d010      	beq.n	80014dc <__aeabi_ui2d+0x28>
 80014ba:	f000 f85f 	bl	800157c <__clzsi2>
 80014be:	4b0f      	ldr	r3, [pc, #60]	; (80014fc <__aeabi_ui2d+0x48>)
 80014c0:	1a1b      	subs	r3, r3, r0
 80014c2:	280a      	cmp	r0, #10
 80014c4:	dc11      	bgt.n	80014ea <__aeabi_ui2d+0x36>
 80014c6:	220b      	movs	r2, #11
 80014c8:	0021      	movs	r1, r4
 80014ca:	1a12      	subs	r2, r2, r0
 80014cc:	40d1      	lsrs	r1, r2
 80014ce:	3015      	adds	r0, #21
 80014d0:	030a      	lsls	r2, r1, #12
 80014d2:	055b      	lsls	r3, r3, #21
 80014d4:	4084      	lsls	r4, r0
 80014d6:	0b12      	lsrs	r2, r2, #12
 80014d8:	0d5b      	lsrs	r3, r3, #21
 80014da:	e001      	b.n	80014e0 <__aeabi_ui2d+0x2c>
 80014dc:	2300      	movs	r3, #0
 80014de:	2200      	movs	r2, #0
 80014e0:	051b      	lsls	r3, r3, #20
 80014e2:	4313      	orrs	r3, r2
 80014e4:	0020      	movs	r0, r4
 80014e6:	0019      	movs	r1, r3
 80014e8:	bd10      	pop	{r4, pc}
 80014ea:	0022      	movs	r2, r4
 80014ec:	380b      	subs	r0, #11
 80014ee:	4082      	lsls	r2, r0
 80014f0:	055b      	lsls	r3, r3, #21
 80014f2:	0312      	lsls	r2, r2, #12
 80014f4:	2400      	movs	r4, #0
 80014f6:	0b12      	lsrs	r2, r2, #12
 80014f8:	0d5b      	lsrs	r3, r3, #21
 80014fa:	e7f1      	b.n	80014e0 <__aeabi_ui2d+0x2c>
 80014fc:	0000041e 	.word	0x0000041e

08001500 <__aeabi_cdrcmple>:
 8001500:	4684      	mov	ip, r0
 8001502:	0010      	movs	r0, r2
 8001504:	4662      	mov	r2, ip
 8001506:	468c      	mov	ip, r1
 8001508:	0019      	movs	r1, r3
 800150a:	4663      	mov	r3, ip
 800150c:	e000      	b.n	8001510 <__aeabi_cdcmpeq>
 800150e:	46c0      	nop			; (mov r8, r8)

08001510 <__aeabi_cdcmpeq>:
 8001510:	b51f      	push	{r0, r1, r2, r3, r4, lr}
 8001512:	f000 f8f9 	bl	8001708 <__ledf2>
 8001516:	2800      	cmp	r0, #0
 8001518:	d401      	bmi.n	800151e <__aeabi_cdcmpeq+0xe>
 800151a:	2100      	movs	r1, #0
 800151c:	42c8      	cmn	r0, r1
 800151e:	bd1f      	pop	{r0, r1, r2, r3, r4, pc}

08001520 <__aeabi_dcmpeq>:
 8001520:	b510      	push	{r4, lr}
 8001522:	f000 f849 	bl	80015b8 <__eqdf2>
 8001526:	4240      	negs	r0, r0
 8001528:	3001      	adds	r0, #1
 800152a:	bd10      	pop	{r4, pc}

0800152c <__aeabi_dcmplt>:
 800152c:	b510      	push	{r4, lr}
 800152e:	f000 f8eb 	bl	8001708 <__ledf2>
 8001532:	2800      	cmp	r0, #0
 8001534:	db01      	blt.n	800153a <__aeabi_dcmplt+0xe>
 8001536:	2000      	movs	r0, #0
 8001538:	bd10      	pop	{r4, pc}
 800153a:	2001      	movs	r0, #1
 800153c:	bd10      	pop	{r4, pc}
 800153e:	46c0      	nop			; (mov r8, r8)

08001540 <__aeabi_dcmple>:
 8001540:	b510      	push	{r4, lr}
 8001542:	f000 f8e1 	bl	8001708 <__ledf2>
 8001546:	2800      	cmp	r0, #0
 8001548:	dd01      	ble.n	800154e <__aeabi_dcmple+0xe>
 800154a:	2000      	movs	r0, #0
 800154c:	bd10      	pop	{r4, pc}
 800154e:	2001      	movs	r0, #1
 8001550:	bd10      	pop	{r4, pc}
 8001552:	46c0      	nop			; (mov r8, r8)

08001554 <__aeabi_dcmpgt>:
 8001554:	b510      	push	{r4, lr}
 8001556:	f000 f871 	bl	800163c <__gedf2>
 800155a:	2800      	cmp	r0, #0
 800155c:	dc01      	bgt.n	8001562 <__aeabi_dcmpgt+0xe>
 800155e:	2000      	movs	r0, #0
 8001560:	bd10      	pop	{r4, pc}
 8001562:	2001      	movs	r0, #1
 8001564:	bd10      	pop	{r4, pc}
 8001566:	46c0      	nop			; (mov r8, r8)

08001568 <__aeabi_dcmpge>:
 8001568:	b510      	push	{r4, lr}
 800156a:	f000 f867 	bl	800163c <__gedf2>
 800156e:	2800      	cmp	r0, #0
 8001570:	da01      	bge.n	8001576 <__aeabi_dcmpge+0xe>
 8001572:	2000      	movs	r0, #0
 8001574:	bd10      	pop	{r4, pc}
 8001576:	2001      	movs	r0, #1
 8001578:	bd10      	pop	{r4, pc}
 800157a:	46c0      	nop			; (mov r8, r8)

0800157c <__clzsi2>:
 800157c:	211c      	movs	r1, #28
 800157e:	2301      	movs	r3, #1
 8001580:	041b      	lsls	r3, r3, #16
 8001582:	4298      	cmp	r0, r3
 8001584:	d301      	bcc.n	800158a <__clzsi2+0xe>
 8001586:	0c00      	lsrs	r0, r0, #16
 8001588:	3910      	subs	r1, #16
 800158a:	0a1b      	lsrs	r3, r3, #8
 800158c:	4298      	cmp	r0, r3
 800158e:	d301      	bcc.n	8001594 <__clzsi2+0x18>
 8001590:	0a00      	lsrs	r0, r0, #8
 8001592:	3908      	subs	r1, #8
 8001594:	091b      	lsrs	r3, r3, #4
 8001596:	4298      	cmp	r0, r3
 8001598:	d301      	bcc.n	800159e <__clzsi2+0x22>
 800159a:	0900      	lsrs	r0, r0, #4
 800159c:	3904      	subs	r1, #4
 800159e:	a202      	add	r2, pc, #8	; (adr r2, 80015a8 <__clzsi2+0x2c>)
 80015a0:	5c10      	ldrb	r0, [r2, r0]
 80015a2:	1840      	adds	r0, r0, r1
 80015a4:	4770      	bx	lr
 80015a6:	46c0      	nop			; (mov r8, r8)
 80015a8:	02020304 	.word	0x02020304
 80015ac:	01010101 	.word	0x01010101
	...

080015b8 <__eqdf2>:
 80015b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80015ba:	464e      	mov	r6, r9
 80015bc:	4645      	mov	r5, r8
 80015be:	46de      	mov	lr, fp
 80015c0:	4657      	mov	r7, sl
 80015c2:	4690      	mov	r8, r2
 80015c4:	b5e0      	push	{r5, r6, r7, lr}
 80015c6:	0017      	movs	r7, r2
 80015c8:	031a      	lsls	r2, r3, #12
 80015ca:	0b12      	lsrs	r2, r2, #12
 80015cc:	0005      	movs	r5, r0
 80015ce:	4684      	mov	ip, r0
 80015d0:	4819      	ldr	r0, [pc, #100]	; (8001638 <__eqdf2+0x80>)
 80015d2:	030e      	lsls	r6, r1, #12
 80015d4:	004c      	lsls	r4, r1, #1
 80015d6:	4691      	mov	r9, r2
 80015d8:	005a      	lsls	r2, r3, #1
 80015da:	0fdb      	lsrs	r3, r3, #31
 80015dc:	469b      	mov	fp, r3
 80015de:	0b36      	lsrs	r6, r6, #12
 80015e0:	0d64      	lsrs	r4, r4, #21
 80015e2:	0fc9      	lsrs	r1, r1, #31
 80015e4:	0d52      	lsrs	r2, r2, #21
 80015e6:	4284      	cmp	r4, r0
 80015e8:	d019      	beq.n	800161e <__eqdf2+0x66>
 80015ea:	4282      	cmp	r2, r0
 80015ec:	d010      	beq.n	8001610 <__eqdf2+0x58>
 80015ee:	2001      	movs	r0, #1
 80015f0:	4294      	cmp	r4, r2
 80015f2:	d10e      	bne.n	8001612 <__eqdf2+0x5a>
 80015f4:	454e      	cmp	r6, r9
 80015f6:	d10c      	bne.n	8001612 <__eqdf2+0x5a>
 80015f8:	2001      	movs	r0, #1
 80015fa:	45c4      	cmp	ip, r8
 80015fc:	d109      	bne.n	8001612 <__eqdf2+0x5a>
 80015fe:	4559      	cmp	r1, fp
 8001600:	d017      	beq.n	8001632 <__eqdf2+0x7a>
 8001602:	2c00      	cmp	r4, #0
 8001604:	d105      	bne.n	8001612 <__eqdf2+0x5a>
 8001606:	0030      	movs	r0, r6
 8001608:	4328      	orrs	r0, r5
 800160a:	1e43      	subs	r3, r0, #1
 800160c:	4198      	sbcs	r0, r3
 800160e:	e000      	b.n	8001612 <__eqdf2+0x5a>
 8001610:	2001      	movs	r0, #1
 8001612:	bcf0      	pop	{r4, r5, r6, r7}
 8001614:	46bb      	mov	fp, r7
 8001616:	46b2      	mov	sl, r6
 8001618:	46a9      	mov	r9, r5
 800161a:	46a0      	mov	r8, r4
 800161c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800161e:	0033      	movs	r3, r6
 8001620:	2001      	movs	r0, #1
 8001622:	432b      	orrs	r3, r5
 8001624:	d1f5      	bne.n	8001612 <__eqdf2+0x5a>
 8001626:	42a2      	cmp	r2, r4
 8001628:	d1f3      	bne.n	8001612 <__eqdf2+0x5a>
 800162a:	464b      	mov	r3, r9
 800162c:	433b      	orrs	r3, r7
 800162e:	d1f0      	bne.n	8001612 <__eqdf2+0x5a>
 8001630:	e7e2      	b.n	80015f8 <__eqdf2+0x40>
 8001632:	2000      	movs	r0, #0
 8001634:	e7ed      	b.n	8001612 <__eqdf2+0x5a>
 8001636:	46c0      	nop			; (mov r8, r8)
 8001638:	000007ff 	.word	0x000007ff

0800163c <__gedf2>:
 800163c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800163e:	4647      	mov	r7, r8
 8001640:	46ce      	mov	lr, r9
 8001642:	0004      	movs	r4, r0
 8001644:	0018      	movs	r0, r3
 8001646:	0016      	movs	r6, r2
 8001648:	031b      	lsls	r3, r3, #12
 800164a:	0b1b      	lsrs	r3, r3, #12
 800164c:	4d2d      	ldr	r5, [pc, #180]	; (8001704 <__gedf2+0xc8>)
 800164e:	004a      	lsls	r2, r1, #1
 8001650:	4699      	mov	r9, r3
 8001652:	b580      	push	{r7, lr}
 8001654:	0043      	lsls	r3, r0, #1
 8001656:	030f      	lsls	r7, r1, #12
 8001658:	46a4      	mov	ip, r4
 800165a:	46b0      	mov	r8, r6
 800165c:	0b3f      	lsrs	r7, r7, #12
 800165e:	0d52      	lsrs	r2, r2, #21
 8001660:	0fc9      	lsrs	r1, r1, #31
 8001662:	0d5b      	lsrs	r3, r3, #21
 8001664:	0fc0      	lsrs	r0, r0, #31
 8001666:	42aa      	cmp	r2, r5
 8001668:	d021      	beq.n	80016ae <__gedf2+0x72>
 800166a:	42ab      	cmp	r3, r5
 800166c:	d013      	beq.n	8001696 <__gedf2+0x5a>
 800166e:	2a00      	cmp	r2, #0
 8001670:	d122      	bne.n	80016b8 <__gedf2+0x7c>
 8001672:	433c      	orrs	r4, r7
 8001674:	2b00      	cmp	r3, #0
 8001676:	d102      	bne.n	800167e <__gedf2+0x42>
 8001678:	464d      	mov	r5, r9
 800167a:	432e      	orrs	r6, r5
 800167c:	d022      	beq.n	80016c4 <__gedf2+0x88>
 800167e:	2c00      	cmp	r4, #0
 8001680:	d010      	beq.n	80016a4 <__gedf2+0x68>
 8001682:	4281      	cmp	r1, r0
 8001684:	d022      	beq.n	80016cc <__gedf2+0x90>
 8001686:	2002      	movs	r0, #2
 8001688:	3901      	subs	r1, #1
 800168a:	4008      	ands	r0, r1
 800168c:	3801      	subs	r0, #1
 800168e:	bcc0      	pop	{r6, r7}
 8001690:	46b9      	mov	r9, r7
 8001692:	46b0      	mov	r8, r6
 8001694:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001696:	464d      	mov	r5, r9
 8001698:	432e      	orrs	r6, r5
 800169a:	d129      	bne.n	80016f0 <__gedf2+0xb4>
 800169c:	2a00      	cmp	r2, #0
 800169e:	d1f0      	bne.n	8001682 <__gedf2+0x46>
 80016a0:	433c      	orrs	r4, r7
 80016a2:	d1ee      	bne.n	8001682 <__gedf2+0x46>
 80016a4:	2800      	cmp	r0, #0
 80016a6:	d1f2      	bne.n	800168e <__gedf2+0x52>
 80016a8:	2001      	movs	r0, #1
 80016aa:	4240      	negs	r0, r0
 80016ac:	e7ef      	b.n	800168e <__gedf2+0x52>
 80016ae:	003d      	movs	r5, r7
 80016b0:	4325      	orrs	r5, r4
 80016b2:	d11d      	bne.n	80016f0 <__gedf2+0xb4>
 80016b4:	4293      	cmp	r3, r2
 80016b6:	d0ee      	beq.n	8001696 <__gedf2+0x5a>
 80016b8:	2b00      	cmp	r3, #0
 80016ba:	d1e2      	bne.n	8001682 <__gedf2+0x46>
 80016bc:	464c      	mov	r4, r9
 80016be:	4326      	orrs	r6, r4
 80016c0:	d1df      	bne.n	8001682 <__gedf2+0x46>
 80016c2:	e7e0      	b.n	8001686 <__gedf2+0x4a>
 80016c4:	2000      	movs	r0, #0
 80016c6:	2c00      	cmp	r4, #0
 80016c8:	d0e1      	beq.n	800168e <__gedf2+0x52>
 80016ca:	e7dc      	b.n	8001686 <__gedf2+0x4a>
 80016cc:	429a      	cmp	r2, r3
 80016ce:	dc0a      	bgt.n	80016e6 <__gedf2+0xaa>
 80016d0:	dbe8      	blt.n	80016a4 <__gedf2+0x68>
 80016d2:	454f      	cmp	r7, r9
 80016d4:	d8d7      	bhi.n	8001686 <__gedf2+0x4a>
 80016d6:	d00e      	beq.n	80016f6 <__gedf2+0xba>
 80016d8:	2000      	movs	r0, #0
 80016da:	454f      	cmp	r7, r9
 80016dc:	d2d7      	bcs.n	800168e <__gedf2+0x52>
 80016de:	2900      	cmp	r1, #0
 80016e0:	d0e2      	beq.n	80016a8 <__gedf2+0x6c>
 80016e2:	0008      	movs	r0, r1
 80016e4:	e7d3      	b.n	800168e <__gedf2+0x52>
 80016e6:	4243      	negs	r3, r0
 80016e8:	4158      	adcs	r0, r3
 80016ea:	0040      	lsls	r0, r0, #1
 80016ec:	3801      	subs	r0, #1
 80016ee:	e7ce      	b.n	800168e <__gedf2+0x52>
 80016f0:	2002      	movs	r0, #2
 80016f2:	4240      	negs	r0, r0
 80016f4:	e7cb      	b.n	800168e <__gedf2+0x52>
 80016f6:	45c4      	cmp	ip, r8
 80016f8:	d8c5      	bhi.n	8001686 <__gedf2+0x4a>
 80016fa:	2000      	movs	r0, #0
 80016fc:	45c4      	cmp	ip, r8
 80016fe:	d2c6      	bcs.n	800168e <__gedf2+0x52>
 8001700:	e7ed      	b.n	80016de <__gedf2+0xa2>
 8001702:	46c0      	nop			; (mov r8, r8)
 8001704:	000007ff 	.word	0x000007ff

08001708 <__ledf2>:
 8001708:	b5f0      	push	{r4, r5, r6, r7, lr}
 800170a:	4647      	mov	r7, r8
 800170c:	46ce      	mov	lr, r9
 800170e:	0004      	movs	r4, r0
 8001710:	0018      	movs	r0, r3
 8001712:	0016      	movs	r6, r2
 8001714:	031b      	lsls	r3, r3, #12
 8001716:	0b1b      	lsrs	r3, r3, #12
 8001718:	4d2c      	ldr	r5, [pc, #176]	; (80017cc <__ledf2+0xc4>)
 800171a:	004a      	lsls	r2, r1, #1
 800171c:	4699      	mov	r9, r3
 800171e:	b580      	push	{r7, lr}
 8001720:	0043      	lsls	r3, r0, #1
 8001722:	030f      	lsls	r7, r1, #12
 8001724:	46a4      	mov	ip, r4
 8001726:	46b0      	mov	r8, r6
 8001728:	0b3f      	lsrs	r7, r7, #12
 800172a:	0d52      	lsrs	r2, r2, #21
 800172c:	0fc9      	lsrs	r1, r1, #31
 800172e:	0d5b      	lsrs	r3, r3, #21
 8001730:	0fc0      	lsrs	r0, r0, #31
 8001732:	42aa      	cmp	r2, r5
 8001734:	d00d      	beq.n	8001752 <__ledf2+0x4a>
 8001736:	42ab      	cmp	r3, r5
 8001738:	d010      	beq.n	800175c <__ledf2+0x54>
 800173a:	2a00      	cmp	r2, #0
 800173c:	d127      	bne.n	800178e <__ledf2+0x86>
 800173e:	433c      	orrs	r4, r7
 8001740:	2b00      	cmp	r3, #0
 8001742:	d111      	bne.n	8001768 <__ledf2+0x60>
 8001744:	464d      	mov	r5, r9
 8001746:	432e      	orrs	r6, r5
 8001748:	d10e      	bne.n	8001768 <__ledf2+0x60>
 800174a:	2000      	movs	r0, #0
 800174c:	2c00      	cmp	r4, #0
 800174e:	d015      	beq.n	800177c <__ledf2+0x74>
 8001750:	e00e      	b.n	8001770 <__ledf2+0x68>
 8001752:	003d      	movs	r5, r7
 8001754:	4325      	orrs	r5, r4
 8001756:	d110      	bne.n	800177a <__ledf2+0x72>
 8001758:	4293      	cmp	r3, r2
 800175a:	d118      	bne.n	800178e <__ledf2+0x86>
 800175c:	464d      	mov	r5, r9
 800175e:	432e      	orrs	r6, r5
 8001760:	d10b      	bne.n	800177a <__ledf2+0x72>
 8001762:	2a00      	cmp	r2, #0
 8001764:	d102      	bne.n	800176c <__ledf2+0x64>
 8001766:	433c      	orrs	r4, r7
 8001768:	2c00      	cmp	r4, #0
 800176a:	d00b      	beq.n	8001784 <__ledf2+0x7c>
 800176c:	4281      	cmp	r1, r0
 800176e:	d014      	beq.n	800179a <__ledf2+0x92>
 8001770:	2002      	movs	r0, #2
 8001772:	3901      	subs	r1, #1
 8001774:	4008      	ands	r0, r1
 8001776:	3801      	subs	r0, #1
 8001778:	e000      	b.n	800177c <__ledf2+0x74>
 800177a:	2002      	movs	r0, #2
 800177c:	bcc0      	pop	{r6, r7}
 800177e:	46b9      	mov	r9, r7
 8001780:	46b0      	mov	r8, r6
 8001782:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001784:	2800      	cmp	r0, #0
 8001786:	d1f9      	bne.n	800177c <__ledf2+0x74>
 8001788:	2001      	movs	r0, #1
 800178a:	4240      	negs	r0, r0
 800178c:	e7f6      	b.n	800177c <__ledf2+0x74>
 800178e:	2b00      	cmp	r3, #0
 8001790:	d1ec      	bne.n	800176c <__ledf2+0x64>
 8001792:	464c      	mov	r4, r9
 8001794:	4326      	orrs	r6, r4
 8001796:	d1e9      	bne.n	800176c <__ledf2+0x64>
 8001798:	e7ea      	b.n	8001770 <__ledf2+0x68>
 800179a:	429a      	cmp	r2, r3
 800179c:	dd04      	ble.n	80017a8 <__ledf2+0xa0>
 800179e:	4243      	negs	r3, r0
 80017a0:	4158      	adcs	r0, r3
 80017a2:	0040      	lsls	r0, r0, #1
 80017a4:	3801      	subs	r0, #1
 80017a6:	e7e9      	b.n	800177c <__ledf2+0x74>
 80017a8:	429a      	cmp	r2, r3
 80017aa:	dbeb      	blt.n	8001784 <__ledf2+0x7c>
 80017ac:	454f      	cmp	r7, r9
 80017ae:	d8df      	bhi.n	8001770 <__ledf2+0x68>
 80017b0:	d006      	beq.n	80017c0 <__ledf2+0xb8>
 80017b2:	2000      	movs	r0, #0
 80017b4:	454f      	cmp	r7, r9
 80017b6:	d2e1      	bcs.n	800177c <__ledf2+0x74>
 80017b8:	2900      	cmp	r1, #0
 80017ba:	d0e5      	beq.n	8001788 <__ledf2+0x80>
 80017bc:	0008      	movs	r0, r1
 80017be:	e7dd      	b.n	800177c <__ledf2+0x74>
 80017c0:	45c4      	cmp	ip, r8
 80017c2:	d8d5      	bhi.n	8001770 <__ledf2+0x68>
 80017c4:	2000      	movs	r0, #0
 80017c6:	45c4      	cmp	ip, r8
 80017c8:	d2d8      	bcs.n	800177c <__ledf2+0x74>
 80017ca:	e7f5      	b.n	80017b8 <__ledf2+0xb0>
 80017cc:	000007ff 	.word	0x000007ff

080017d0 <Reset_Handler>:
 80017d0:	480d      	ldr	r0, [pc, #52]	; (8001808 <LoopForever+0x2>)
 80017d2:	4685      	mov	sp, r0
 80017d4:	480d      	ldr	r0, [pc, #52]	; (800180c <LoopForever+0x6>)
 80017d6:	490e      	ldr	r1, [pc, #56]	; (8001810 <LoopForever+0xa>)
 80017d8:	4a0e      	ldr	r2, [pc, #56]	; (8001814 <LoopForever+0xe>)
 80017da:	2300      	movs	r3, #0
 80017dc:	e002      	b.n	80017e4 <LoopCopyDataInit>

080017de <CopyDataInit>:
 80017de:	58d4      	ldr	r4, [r2, r3]
 80017e0:	50c4      	str	r4, [r0, r3]
 80017e2:	3304      	adds	r3, #4

080017e4 <LoopCopyDataInit>:
 80017e4:	18c4      	adds	r4, r0, r3
 80017e6:	428c      	cmp	r4, r1
 80017e8:	d3f9      	bcc.n	80017de <CopyDataInit>
 80017ea:	4a0b      	ldr	r2, [pc, #44]	; (8001818 <LoopForever+0x12>)
 80017ec:	4c0b      	ldr	r4, [pc, #44]	; (800181c <LoopForever+0x16>)
 80017ee:	2300      	movs	r3, #0
 80017f0:	e001      	b.n	80017f6 <LoopFillZerobss>

080017f2 <FillZerobss>:
 80017f2:	6013      	str	r3, [r2, #0]
 80017f4:	3204      	adds	r2, #4

080017f6 <LoopFillZerobss>:
 80017f6:	42a2      	cmp	r2, r4
 80017f8:	d3fb      	bcc.n	80017f2 <FillZerobss>
 80017fa:	f000 fcff 	bl	80021fc <SystemInit>
 80017fe:	f000 fd53 	bl	80022a8 <__libc_init_array>
 8001802:	f000 fcef 	bl	80021e4 <main>

08001806 <LoopForever>:
 8001806:	e7fe      	b.n	8001806 <LoopForever>
 8001808:	20002000 	.word	0x20002000
 800180c:	20000000 	.word	0x20000000
 8001810:	20000434 	.word	0x20000434
 8001814:	080024c4 	.word	0x080024c4
 8001818:	20000434 	.word	0x20000434
 800181c:	20000458 	.word	0x20000458

08001820 <ADC1_COMP_IRQHandler>:
 8001820:	e7fe      	b.n	8001820 <ADC1_COMP_IRQHandler>
	...

08001824 <NVIC_SetPriority>:
 8001824:	b590      	push	{r4, r7, lr}
 8001826:	b083      	sub	sp, #12
 8001828:	af00      	add	r7, sp, #0
 800182a:	0002      	movs	r2, r0
 800182c:	6039      	str	r1, [r7, #0]
 800182e:	1dfb      	adds	r3, r7, #7
 8001830:	701a      	strb	r2, [r3, #0]
 8001832:	1dfb      	adds	r3, r7, #7
 8001834:	781b      	ldrb	r3, [r3, #0]
 8001836:	2b7f      	cmp	r3, #127	; 0x7f
 8001838:	d932      	bls.n	80018a0 <NVIC_SetPriority+0x7c>
 800183a:	4a2f      	ldr	r2, [pc, #188]	; (80018f8 <NVIC_SetPriority+0xd4>)
 800183c:	1dfb      	adds	r3, r7, #7
 800183e:	781b      	ldrb	r3, [r3, #0]
 8001840:	0019      	movs	r1, r3
 8001842:	230f      	movs	r3, #15
 8001844:	400b      	ands	r3, r1
 8001846:	3b08      	subs	r3, #8
 8001848:	089b      	lsrs	r3, r3, #2
 800184a:	3306      	adds	r3, #6
 800184c:	009b      	lsls	r3, r3, #2
 800184e:	18d3      	adds	r3, r2, r3
 8001850:	3304      	adds	r3, #4
 8001852:	681b      	ldr	r3, [r3, #0]
 8001854:	1dfa      	adds	r2, r7, #7
 8001856:	7812      	ldrb	r2, [r2, #0]
 8001858:	0011      	movs	r1, r2
 800185a:	2203      	movs	r2, #3
 800185c:	400a      	ands	r2, r1
 800185e:	00d2      	lsls	r2, r2, #3
 8001860:	21ff      	movs	r1, #255	; 0xff
 8001862:	4091      	lsls	r1, r2
 8001864:	000a      	movs	r2, r1
 8001866:	43d2      	mvns	r2, r2
 8001868:	401a      	ands	r2, r3
 800186a:	0011      	movs	r1, r2
 800186c:	683b      	ldr	r3, [r7, #0]
 800186e:	019b      	lsls	r3, r3, #6
 8001870:	22ff      	movs	r2, #255	; 0xff
 8001872:	401a      	ands	r2, r3
 8001874:	1dfb      	adds	r3, r7, #7
 8001876:	781b      	ldrb	r3, [r3, #0]
 8001878:	0018      	movs	r0, r3
 800187a:	2303      	movs	r3, #3
 800187c:	4003      	ands	r3, r0
 800187e:	00db      	lsls	r3, r3, #3
 8001880:	409a      	lsls	r2, r3
 8001882:	481d      	ldr	r0, [pc, #116]	; (80018f8 <NVIC_SetPriority+0xd4>)
 8001884:	1dfb      	adds	r3, r7, #7
 8001886:	781b      	ldrb	r3, [r3, #0]
 8001888:	001c      	movs	r4, r3
 800188a:	230f      	movs	r3, #15
 800188c:	4023      	ands	r3, r4
 800188e:	3b08      	subs	r3, #8
 8001890:	089b      	lsrs	r3, r3, #2
 8001892:	430a      	orrs	r2, r1
 8001894:	3306      	adds	r3, #6
 8001896:	009b      	lsls	r3, r3, #2
 8001898:	18c3      	adds	r3, r0, r3
 800189a:	3304      	adds	r3, #4
 800189c:	601a      	str	r2, [r3, #0]
 800189e:	e027      	b.n	80018f0 <NVIC_SetPriority+0xcc>
 80018a0:	4a16      	ldr	r2, [pc, #88]	; (80018fc <NVIC_SetPriority+0xd8>)
 80018a2:	1dfb      	adds	r3, r7, #7
 80018a4:	781b      	ldrb	r3, [r3, #0]
 80018a6:	b25b      	sxtb	r3, r3
 80018a8:	089b      	lsrs	r3, r3, #2
 80018aa:	33c0      	adds	r3, #192	; 0xc0
 80018ac:	009b      	lsls	r3, r3, #2
 80018ae:	589b      	ldr	r3, [r3, r2]
 80018b0:	1dfa      	adds	r2, r7, #7
 80018b2:	7812      	ldrb	r2, [r2, #0]
 80018b4:	0011      	movs	r1, r2
 80018b6:	2203      	movs	r2, #3
 80018b8:	400a      	ands	r2, r1
 80018ba:	00d2      	lsls	r2, r2, #3
 80018bc:	21ff      	movs	r1, #255	; 0xff
 80018be:	4091      	lsls	r1, r2
 80018c0:	000a      	movs	r2, r1
 80018c2:	43d2      	mvns	r2, r2
 80018c4:	401a      	ands	r2, r3
 80018c6:	0011      	movs	r1, r2
 80018c8:	683b      	ldr	r3, [r7, #0]
 80018ca:	019b      	lsls	r3, r3, #6
 80018cc:	22ff      	movs	r2, #255	; 0xff
 80018ce:	401a      	ands	r2, r3
 80018d0:	1dfb      	adds	r3, r7, #7
 80018d2:	781b      	ldrb	r3, [r3, #0]
 80018d4:	0018      	movs	r0, r3
 80018d6:	2303      	movs	r3, #3
 80018d8:	4003      	ands	r3, r0
 80018da:	00db      	lsls	r3, r3, #3
 80018dc:	409a      	lsls	r2, r3
 80018de:	4807      	ldr	r0, [pc, #28]	; (80018fc <NVIC_SetPriority+0xd8>)
 80018e0:	1dfb      	adds	r3, r7, #7
 80018e2:	781b      	ldrb	r3, [r3, #0]
 80018e4:	b25b      	sxtb	r3, r3
 80018e6:	089b      	lsrs	r3, r3, #2
 80018e8:	430a      	orrs	r2, r1
 80018ea:	33c0      	adds	r3, #192	; 0xc0
 80018ec:	009b      	lsls	r3, r3, #2
 80018ee:	501a      	str	r2, [r3, r0]
 80018f0:	46c0      	nop			; (mov r8, r8)
 80018f2:	46bd      	mov	sp, r7
 80018f4:	b003      	add	sp, #12
 80018f6:	bd90      	pop	{r4, r7, pc}
 80018f8:	e000ed00 	.word	0xe000ed00
 80018fc:	e000e100 	.word	0xe000e100

08001900 <LL_RCC_HSI_Enable>:
 8001900:	b580      	push	{r7, lr}
 8001902:	af00      	add	r7, sp, #0
 8001904:	4b04      	ldr	r3, [pc, #16]	; (8001918 <LL_RCC_HSI_Enable+0x18>)
 8001906:	681a      	ldr	r2, [r3, #0]
 8001908:	4b03      	ldr	r3, [pc, #12]	; (8001918 <LL_RCC_HSI_Enable+0x18>)
 800190a:	2101      	movs	r1, #1
 800190c:	430a      	orrs	r2, r1
 800190e:	601a      	str	r2, [r3, #0]
 8001910:	46c0      	nop			; (mov r8, r8)
 8001912:	46bd      	mov	sp, r7
 8001914:	bd80      	pop	{r7, pc}
 8001916:	46c0      	nop			; (mov r8, r8)
 8001918:	40021000 	.word	0x40021000

0800191c <LL_RCC_HSI_IsReady>:
 800191c:	b580      	push	{r7, lr}
 800191e:	af00      	add	r7, sp, #0
 8001920:	4b05      	ldr	r3, [pc, #20]	; (8001938 <LL_RCC_HSI_IsReady+0x1c>)
 8001922:	681b      	ldr	r3, [r3, #0]
 8001924:	2202      	movs	r2, #2
 8001926:	4013      	ands	r3, r2
 8001928:	3b02      	subs	r3, #2
 800192a:	425a      	negs	r2, r3
 800192c:	4153      	adcs	r3, r2
 800192e:	b2db      	uxtb	r3, r3
 8001930:	0018      	movs	r0, r3
 8001932:	46bd      	mov	sp, r7
 8001934:	bd80      	pop	{r7, pc}
 8001936:	46c0      	nop			; (mov r8, r8)
 8001938:	40021000 	.word	0x40021000

0800193c <LL_RCC_SetSysClkSource>:
 800193c:	b580      	push	{r7, lr}
 800193e:	b082      	sub	sp, #8
 8001940:	af00      	add	r7, sp, #0
 8001942:	6078      	str	r0, [r7, #4]
 8001944:	4b06      	ldr	r3, [pc, #24]	; (8001960 <LL_RCC_SetSysClkSource+0x24>)
 8001946:	685b      	ldr	r3, [r3, #4]
 8001948:	2203      	movs	r2, #3
 800194a:	4393      	bics	r3, r2
 800194c:	0019      	movs	r1, r3
 800194e:	4b04      	ldr	r3, [pc, #16]	; (8001960 <LL_RCC_SetSysClkSource+0x24>)
 8001950:	687a      	ldr	r2, [r7, #4]
 8001952:	430a      	orrs	r2, r1
 8001954:	605a      	str	r2, [r3, #4]
 8001956:	46c0      	nop			; (mov r8, r8)
 8001958:	46bd      	mov	sp, r7
 800195a:	b002      	add	sp, #8
 800195c:	bd80      	pop	{r7, pc}
 800195e:	46c0      	nop			; (mov r8, r8)
 8001960:	40021000 	.word	0x40021000

08001964 <LL_RCC_GetSysClkSource>:
 8001964:	b580      	push	{r7, lr}
 8001966:	af00      	add	r7, sp, #0
 8001968:	4b03      	ldr	r3, [pc, #12]	; (8001978 <LL_RCC_GetSysClkSource+0x14>)
 800196a:	685b      	ldr	r3, [r3, #4]
 800196c:	220c      	movs	r2, #12
 800196e:	4013      	ands	r3, r2
 8001970:	0018      	movs	r0, r3
 8001972:	46bd      	mov	sp, r7
 8001974:	bd80      	pop	{r7, pc}
 8001976:	46c0      	nop			; (mov r8, r8)
 8001978:	40021000 	.word	0x40021000

0800197c <LL_RCC_SetAHBPrescaler>:
 800197c:	b580      	push	{r7, lr}
 800197e:	b082      	sub	sp, #8
 8001980:	af00      	add	r7, sp, #0
 8001982:	6078      	str	r0, [r7, #4]
 8001984:	4b06      	ldr	r3, [pc, #24]	; (80019a0 <LL_RCC_SetAHBPrescaler+0x24>)
 8001986:	685b      	ldr	r3, [r3, #4]
 8001988:	22f0      	movs	r2, #240	; 0xf0
 800198a:	4393      	bics	r3, r2
 800198c:	0019      	movs	r1, r3
 800198e:	4b04      	ldr	r3, [pc, #16]	; (80019a0 <LL_RCC_SetAHBPrescaler+0x24>)
 8001990:	687a      	ldr	r2, [r7, #4]
 8001992:	430a      	orrs	r2, r1
 8001994:	605a      	str	r2, [r3, #4]
 8001996:	46c0      	nop			; (mov r8, r8)
 8001998:	46bd      	mov	sp, r7
 800199a:	b002      	add	sp, #8
 800199c:	bd80      	pop	{r7, pc}
 800199e:	46c0      	nop			; (mov r8, r8)
 80019a0:	40021000 	.word	0x40021000

080019a4 <LL_RCC_SetAPB1Prescaler>:
 80019a4:	b580      	push	{r7, lr}
 80019a6:	b082      	sub	sp, #8
 80019a8:	af00      	add	r7, sp, #0
 80019aa:	6078      	str	r0, [r7, #4]
 80019ac:	4b06      	ldr	r3, [pc, #24]	; (80019c8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80019ae:	685b      	ldr	r3, [r3, #4]
 80019b0:	4a06      	ldr	r2, [pc, #24]	; (80019cc <LL_RCC_SetAPB1Prescaler+0x28>)
 80019b2:	4013      	ands	r3, r2
 80019b4:	0019      	movs	r1, r3
 80019b6:	4b04      	ldr	r3, [pc, #16]	; (80019c8 <LL_RCC_SetAPB1Prescaler+0x24>)
 80019b8:	687a      	ldr	r2, [r7, #4]
 80019ba:	430a      	orrs	r2, r1
 80019bc:	605a      	str	r2, [r3, #4]
 80019be:	46c0      	nop			; (mov r8, r8)
 80019c0:	46bd      	mov	sp, r7
 80019c2:	b002      	add	sp, #8
 80019c4:	bd80      	pop	{r7, pc}
 80019c6:	46c0      	nop			; (mov r8, r8)
 80019c8:	40021000 	.word	0x40021000
 80019cc:	fffff8ff 	.word	0xfffff8ff

080019d0 <LL_RCC_PLL_Enable>:
 80019d0:	b580      	push	{r7, lr}
 80019d2:	af00      	add	r7, sp, #0
 80019d4:	4b04      	ldr	r3, [pc, #16]	; (80019e8 <LL_RCC_PLL_Enable+0x18>)
 80019d6:	681a      	ldr	r2, [r3, #0]
 80019d8:	4b03      	ldr	r3, [pc, #12]	; (80019e8 <LL_RCC_PLL_Enable+0x18>)
 80019da:	2180      	movs	r1, #128	; 0x80
 80019dc:	0449      	lsls	r1, r1, #17
 80019de:	430a      	orrs	r2, r1
 80019e0:	601a      	str	r2, [r3, #0]
 80019e2:	46c0      	nop			; (mov r8, r8)
 80019e4:	46bd      	mov	sp, r7
 80019e6:	bd80      	pop	{r7, pc}
 80019e8:	40021000 	.word	0x40021000

080019ec <LL_RCC_PLL_IsReady>:
 80019ec:	b580      	push	{r7, lr}
 80019ee:	af00      	add	r7, sp, #0
 80019f0:	4b07      	ldr	r3, [pc, #28]	; (8001a10 <LL_RCC_PLL_IsReady+0x24>)
 80019f2:	681a      	ldr	r2, [r3, #0]
 80019f4:	2380      	movs	r3, #128	; 0x80
 80019f6:	049b      	lsls	r3, r3, #18
 80019f8:	4013      	ands	r3, r2
 80019fa:	22fe      	movs	r2, #254	; 0xfe
 80019fc:	0612      	lsls	r2, r2, #24
 80019fe:	4694      	mov	ip, r2
 8001a00:	4463      	add	r3, ip
 8001a02:	425a      	negs	r2, r3
 8001a04:	4153      	adcs	r3, r2
 8001a06:	b2db      	uxtb	r3, r3
 8001a08:	0018      	movs	r0, r3
 8001a0a:	46bd      	mov	sp, r7
 8001a0c:	bd80      	pop	{r7, pc}
 8001a0e:	46c0      	nop			; (mov r8, r8)
 8001a10:	40021000 	.word	0x40021000

08001a14 <LL_RCC_PLL_ConfigDomain_SYS>:
 8001a14:	b580      	push	{r7, lr}
 8001a16:	b082      	sub	sp, #8
 8001a18:	af00      	add	r7, sp, #0
 8001a1a:	6078      	str	r0, [r7, #4]
 8001a1c:	6039      	str	r1, [r7, #0]
 8001a1e:	4b0e      	ldr	r3, [pc, #56]	; (8001a58 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a20:	685b      	ldr	r3, [r3, #4]
 8001a22:	4a0e      	ldr	r2, [pc, #56]	; (8001a5c <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8001a24:	4013      	ands	r3, r2
 8001a26:	0019      	movs	r1, r3
 8001a28:	687a      	ldr	r2, [r7, #4]
 8001a2a:	2380      	movs	r3, #128	; 0x80
 8001a2c:	025b      	lsls	r3, r3, #9
 8001a2e:	401a      	ands	r2, r3
 8001a30:	683b      	ldr	r3, [r7, #0]
 8001a32:	431a      	orrs	r2, r3
 8001a34:	4b08      	ldr	r3, [pc, #32]	; (8001a58 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a36:	430a      	orrs	r2, r1
 8001a38:	605a      	str	r2, [r3, #4]
 8001a3a:	4b07      	ldr	r3, [pc, #28]	; (8001a58 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a3c:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8001a3e:	220f      	movs	r2, #15
 8001a40:	4393      	bics	r3, r2
 8001a42:	0019      	movs	r1, r3
 8001a44:	687b      	ldr	r3, [r7, #4]
 8001a46:	220f      	movs	r2, #15
 8001a48:	401a      	ands	r2, r3
 8001a4a:	4b03      	ldr	r3, [pc, #12]	; (8001a58 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8001a4c:	430a      	orrs	r2, r1
 8001a4e:	62da      	str	r2, [r3, #44]	; 0x2c
 8001a50:	46c0      	nop			; (mov r8, r8)
 8001a52:	46bd      	mov	sp, r7
 8001a54:	b002      	add	sp, #8
 8001a56:	bd80      	pop	{r7, pc}
 8001a58:	40021000 	.word	0x40021000
 8001a5c:	ffc2ffff 	.word	0xffc2ffff

08001a60 <LL_FLASH_SetLatency>:
 8001a60:	b580      	push	{r7, lr}
 8001a62:	b082      	sub	sp, #8
 8001a64:	af00      	add	r7, sp, #0
 8001a66:	6078      	str	r0, [r7, #4]
 8001a68:	4b06      	ldr	r3, [pc, #24]	; (8001a84 <LL_FLASH_SetLatency+0x24>)
 8001a6a:	681b      	ldr	r3, [r3, #0]
 8001a6c:	2201      	movs	r2, #1
 8001a6e:	4393      	bics	r3, r2
 8001a70:	0019      	movs	r1, r3
 8001a72:	4b04      	ldr	r3, [pc, #16]	; (8001a84 <LL_FLASH_SetLatency+0x24>)
 8001a74:	687a      	ldr	r2, [r7, #4]
 8001a76:	430a      	orrs	r2, r1
 8001a78:	601a      	str	r2, [r3, #0]
 8001a7a:	46c0      	nop			; (mov r8, r8)
 8001a7c:	46bd      	mov	sp, r7
 8001a7e:	b002      	add	sp, #8
 8001a80:	bd80      	pop	{r7, pc}
 8001a82:	46c0      	nop			; (mov r8, r8)
 8001a84:	40022000 	.word	0x40022000

08001a88 <LL_AHB1_GRP1_EnableClock>:
 8001a88:	b580      	push	{r7, lr}
 8001a8a:	b084      	sub	sp, #16
 8001a8c:	af00      	add	r7, sp, #0
 8001a8e:	6078      	str	r0, [r7, #4]
 8001a90:	4b07      	ldr	r3, [pc, #28]	; (8001ab0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001a92:	6959      	ldr	r1, [r3, #20]
 8001a94:	4b06      	ldr	r3, [pc, #24]	; (8001ab0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001a96:	687a      	ldr	r2, [r7, #4]
 8001a98:	430a      	orrs	r2, r1
 8001a9a:	615a      	str	r2, [r3, #20]
 8001a9c:	4b04      	ldr	r3, [pc, #16]	; (8001ab0 <LL_AHB1_GRP1_EnableClock+0x28>)
 8001a9e:	695b      	ldr	r3, [r3, #20]
 8001aa0:	687a      	ldr	r2, [r7, #4]
 8001aa2:	4013      	ands	r3, r2
 8001aa4:	60fb      	str	r3, [r7, #12]
 8001aa6:	68fb      	ldr	r3, [r7, #12]
 8001aa8:	46c0      	nop			; (mov r8, r8)
 8001aaa:	46bd      	mov	sp, r7
 8001aac:	b004      	add	sp, #16
 8001aae:	bd80      	pop	{r7, pc}
 8001ab0:	40021000 	.word	0x40021000

08001ab4 <LL_APB1_GRP1_EnableClock>:
 8001ab4:	b580      	push	{r7, lr}
 8001ab6:	b084      	sub	sp, #16
 8001ab8:	af00      	add	r7, sp, #0
 8001aba:	6078      	str	r0, [r7, #4]
 8001abc:	4b07      	ldr	r3, [pc, #28]	; (8001adc <LL_APB1_GRP1_EnableClock+0x28>)
 8001abe:	69d9      	ldr	r1, [r3, #28]
 8001ac0:	4b06      	ldr	r3, [pc, #24]	; (8001adc <LL_APB1_GRP1_EnableClock+0x28>)
 8001ac2:	687a      	ldr	r2, [r7, #4]
 8001ac4:	430a      	orrs	r2, r1
 8001ac6:	61da      	str	r2, [r3, #28]
 8001ac8:	4b04      	ldr	r3, [pc, #16]	; (8001adc <LL_APB1_GRP1_EnableClock+0x28>)
 8001aca:	69db      	ldr	r3, [r3, #28]
 8001acc:	687a      	ldr	r2, [r7, #4]
 8001ace:	4013      	ands	r3, r2
 8001ad0:	60fb      	str	r3, [r7, #12]
 8001ad2:	68fb      	ldr	r3, [r7, #12]
 8001ad4:	46c0      	nop			; (mov r8, r8)
 8001ad6:	46bd      	mov	sp, r7
 8001ad8:	b004      	add	sp, #16
 8001ada:	bd80      	pop	{r7, pc}
 8001adc:	40021000 	.word	0x40021000

08001ae0 <LL_GPIO_SetPinMode>:
 8001ae0:	b580      	push	{r7, lr}
 8001ae2:	b084      	sub	sp, #16
 8001ae4:	af00      	add	r7, sp, #0
 8001ae6:	60f8      	str	r0, [r7, #12]
 8001ae8:	60b9      	str	r1, [r7, #8]
 8001aea:	607a      	str	r2, [r7, #4]
 8001aec:	68fb      	ldr	r3, [r7, #12]
 8001aee:	6819      	ldr	r1, [r3, #0]
 8001af0:	68bb      	ldr	r3, [r7, #8]
 8001af2:	435b      	muls	r3, r3
 8001af4:	001a      	movs	r2, r3
 8001af6:	0013      	movs	r3, r2
 8001af8:	005b      	lsls	r3, r3, #1
 8001afa:	189b      	adds	r3, r3, r2
 8001afc:	43db      	mvns	r3, r3
 8001afe:	400b      	ands	r3, r1
 8001b00:	001a      	movs	r2, r3
 8001b02:	68bb      	ldr	r3, [r7, #8]
 8001b04:	435b      	muls	r3, r3
 8001b06:	6879      	ldr	r1, [r7, #4]
 8001b08:	434b      	muls	r3, r1
 8001b0a:	431a      	orrs	r2, r3
 8001b0c:	68fb      	ldr	r3, [r7, #12]
 8001b0e:	601a      	str	r2, [r3, #0]
 8001b10:	46c0      	nop			; (mov r8, r8)
 8001b12:	46bd      	mov	sp, r7
 8001b14:	b004      	add	sp, #16
 8001b16:	bd80      	pop	{r7, pc}

08001b18 <LL_GPIO_SetPinPull>:
 8001b18:	b580      	push	{r7, lr}
 8001b1a:	b084      	sub	sp, #16
 8001b1c:	af00      	add	r7, sp, #0
 8001b1e:	60f8      	str	r0, [r7, #12]
 8001b20:	60b9      	str	r1, [r7, #8]
 8001b22:	607a      	str	r2, [r7, #4]
 8001b24:	68fb      	ldr	r3, [r7, #12]
 8001b26:	68d9      	ldr	r1, [r3, #12]
 8001b28:	68bb      	ldr	r3, [r7, #8]
 8001b2a:	435b      	muls	r3, r3
 8001b2c:	001a      	movs	r2, r3
 8001b2e:	0013      	movs	r3, r2
 8001b30:	005b      	lsls	r3, r3, #1
 8001b32:	189b      	adds	r3, r3, r2
 8001b34:	43db      	mvns	r3, r3
 8001b36:	400b      	ands	r3, r1
 8001b38:	001a      	movs	r2, r3
 8001b3a:	68bb      	ldr	r3, [r7, #8]
 8001b3c:	435b      	muls	r3, r3
 8001b3e:	6879      	ldr	r1, [r7, #4]
 8001b40:	434b      	muls	r3, r1
 8001b42:	431a      	orrs	r2, r3
 8001b44:	68fb      	ldr	r3, [r7, #12]
 8001b46:	60da      	str	r2, [r3, #12]
 8001b48:	46c0      	nop			; (mov r8, r8)
 8001b4a:	46bd      	mov	sp, r7
 8001b4c:	b004      	add	sp, #16
 8001b4e:	bd80      	pop	{r7, pc}

08001b50 <LL_GPIO_SetAFPin_0_7>:
 8001b50:	b580      	push	{r7, lr}
 8001b52:	b084      	sub	sp, #16
 8001b54:	af00      	add	r7, sp, #0
 8001b56:	60f8      	str	r0, [r7, #12]
 8001b58:	60b9      	str	r1, [r7, #8]
 8001b5a:	607a      	str	r2, [r7, #4]
 8001b5c:	68fb      	ldr	r3, [r7, #12]
 8001b5e:	6a19      	ldr	r1, [r3, #32]
 8001b60:	68bb      	ldr	r3, [r7, #8]
 8001b62:	435b      	muls	r3, r3
 8001b64:	68ba      	ldr	r2, [r7, #8]
 8001b66:	4353      	muls	r3, r2
 8001b68:	68ba      	ldr	r2, [r7, #8]
 8001b6a:	435a      	muls	r2, r3
 8001b6c:	0013      	movs	r3, r2
 8001b6e:	011b      	lsls	r3, r3, #4
 8001b70:	1a9b      	subs	r3, r3, r2
 8001b72:	43db      	mvns	r3, r3
 8001b74:	400b      	ands	r3, r1
 8001b76:	001a      	movs	r2, r3
 8001b78:	68bb      	ldr	r3, [r7, #8]
 8001b7a:	435b      	muls	r3, r3
 8001b7c:	68b9      	ldr	r1, [r7, #8]
 8001b7e:	434b      	muls	r3, r1
 8001b80:	68b9      	ldr	r1, [r7, #8]
 8001b82:	434b      	muls	r3, r1
 8001b84:	6879      	ldr	r1, [r7, #4]
 8001b86:	434b      	muls	r3, r1
 8001b88:	431a      	orrs	r2, r3
 8001b8a:	68fb      	ldr	r3, [r7, #12]
 8001b8c:	621a      	str	r2, [r3, #32]
 8001b8e:	46c0      	nop			; (mov r8, r8)
 8001b90:	46bd      	mov	sp, r7
 8001b92:	b004      	add	sp, #16
 8001b94:	bd80      	pop	{r7, pc}

08001b96 <LL_GPIO_WriteOutputPort>:
 8001b96:	b580      	push	{r7, lr}
 8001b98:	b082      	sub	sp, #8
 8001b9a:	af00      	add	r7, sp, #0
 8001b9c:	6078      	str	r0, [r7, #4]
 8001b9e:	6039      	str	r1, [r7, #0]
 8001ba0:	687b      	ldr	r3, [r7, #4]
 8001ba2:	683a      	ldr	r2, [r7, #0]
 8001ba4:	615a      	str	r2, [r3, #20]
 8001ba6:	46c0      	nop			; (mov r8, r8)
 8001ba8:	46bd      	mov	sp, r7
 8001baa:	b002      	add	sp, #8
 8001bac:	bd80      	pop	{r7, pc}

08001bae <LL_GPIO_ResetOutputPin>:
 8001bae:	b580      	push	{r7, lr}
 8001bb0:	b082      	sub	sp, #8
 8001bb2:	af00      	add	r7, sp, #0
 8001bb4:	6078      	str	r0, [r7, #4]
 8001bb6:	6039      	str	r1, [r7, #0]
 8001bb8:	687b      	ldr	r3, [r7, #4]
 8001bba:	683a      	ldr	r2, [r7, #0]
 8001bbc:	629a      	str	r2, [r3, #40]	; 0x28
 8001bbe:	46c0      	nop			; (mov r8, r8)
 8001bc0:	46bd      	mov	sp, r7
 8001bc2:	b002      	add	sp, #8
 8001bc4:	bd80      	pop	{r7, pc}

08001bc6 <LL_TIM_EnableCounter>:
 8001bc6:	b580      	push	{r7, lr}
 8001bc8:	b082      	sub	sp, #8
 8001bca:	af00      	add	r7, sp, #0
 8001bcc:	6078      	str	r0, [r7, #4]
 8001bce:	687b      	ldr	r3, [r7, #4]
 8001bd0:	681b      	ldr	r3, [r3, #0]
 8001bd2:	2201      	movs	r2, #1
 8001bd4:	431a      	orrs	r2, r3
 8001bd6:	687b      	ldr	r3, [r7, #4]
 8001bd8:	601a      	str	r2, [r3, #0]
 8001bda:	46c0      	nop			; (mov r8, r8)
 8001bdc:	46bd      	mov	sp, r7
 8001bde:	b002      	add	sp, #8
 8001be0:	bd80      	pop	{r7, pc}

08001be2 <LL_TIM_GetCounter>:
 8001be2:	b580      	push	{r7, lr}
 8001be4:	b082      	sub	sp, #8
 8001be6:	af00      	add	r7, sp, #0
 8001be8:	6078      	str	r0, [r7, #4]
 8001bea:	687b      	ldr	r3, [r7, #4]
 8001bec:	6a5b      	ldr	r3, [r3, #36]	; 0x24
 8001bee:	0018      	movs	r0, r3
 8001bf0:	46bd      	mov	sp, r7
 8001bf2:	b002      	add	sp, #8
 8001bf4:	bd80      	pop	{r7, pc}

08001bf6 <LL_TIM_SetAutoReload>:
 8001bf6:	b580      	push	{r7, lr}
 8001bf8:	b082      	sub	sp, #8
 8001bfa:	af00      	add	r7, sp, #0
 8001bfc:	6078      	str	r0, [r7, #4]
 8001bfe:	6039      	str	r1, [r7, #0]
 8001c00:	687b      	ldr	r3, [r7, #4]
 8001c02:	683a      	ldr	r2, [r7, #0]
 8001c04:	62da      	str	r2, [r3, #44]	; 0x2c
 8001c06:	46c0      	nop			; (mov r8, r8)
 8001c08:	46bd      	mov	sp, r7
 8001c0a:	b002      	add	sp, #8
 8001c0c:	bd80      	pop	{r7, pc}
	...

08001c10 <LL_TIM_IC_SetActiveInput>:
 8001c10:	b5b0      	push	{r4, r5, r7, lr}
 8001c12:	b084      	sub	sp, #16
 8001c14:	af00      	add	r7, sp, #0
 8001c16:	60f8      	str	r0, [r7, #12]
 8001c18:	60b9      	str	r1, [r7, #8]
 8001c1a:	607a      	str	r2, [r7, #4]
 8001c1c:	68bb      	ldr	r3, [r7, #8]
 8001c1e:	2b01      	cmp	r3, #1
 8001c20:	d01e      	beq.n	8001c60 <LL_TIM_IC_SetActiveInput+0x50>
 8001c22:	68bb      	ldr	r3, [r7, #8]
 8001c24:	2b04      	cmp	r3, #4
 8001c26:	d019      	beq.n	8001c5c <LL_TIM_IC_SetActiveInput+0x4c>
 8001c28:	68bb      	ldr	r3, [r7, #8]
 8001c2a:	2b10      	cmp	r3, #16
 8001c2c:	d014      	beq.n	8001c58 <LL_TIM_IC_SetActiveInput+0x48>
 8001c2e:	68bb      	ldr	r3, [r7, #8]
 8001c30:	2b40      	cmp	r3, #64	; 0x40
 8001c32:	d00f      	beq.n	8001c54 <LL_TIM_IC_SetActiveInput+0x44>
 8001c34:	68ba      	ldr	r2, [r7, #8]
 8001c36:	2380      	movs	r3, #128	; 0x80
 8001c38:	005b      	lsls	r3, r3, #1
 8001c3a:	429a      	cmp	r2, r3
 8001c3c:	d008      	beq.n	8001c50 <LL_TIM_IC_SetActiveInput+0x40>
 8001c3e:	68ba      	ldr	r2, [r7, #8]
 8001c40:	2380      	movs	r3, #128	; 0x80
 8001c42:	00db      	lsls	r3, r3, #3
 8001c44:	429a      	cmp	r2, r3
 8001c46:	d101      	bne.n	8001c4c <LL_TIM_IC_SetActiveInput+0x3c>
 8001c48:	2305      	movs	r3, #5
 8001c4a:	e00a      	b.n	8001c62 <LL_TIM_IC_SetActiveInput+0x52>
 8001c4c:	2306      	movs	r3, #6
 8001c4e:	e008      	b.n	8001c62 <LL_TIM_IC_SetActiveInput+0x52>
 8001c50:	2304      	movs	r3, #4
 8001c52:	e006      	b.n	8001c62 <LL_TIM_IC_SetActiveInput+0x52>
 8001c54:	2303      	movs	r3, #3
 8001c56:	e004      	b.n	8001c62 <LL_TIM_IC_SetActiveInput+0x52>
 8001c58:	2302      	movs	r3, #2
 8001c5a:	e002      	b.n	8001c62 <LL_TIM_IC_SetActiveInput+0x52>
 8001c5c:	2301      	movs	r3, #1
 8001c5e:	e000      	b.n	8001c62 <LL_TIM_IC_SetActiveInput+0x52>
 8001c60:	2300      	movs	r3, #0
 8001c62:	001d      	movs	r5, r3
 8001c64:	68fb      	ldr	r3, [r7, #12]
 8001c66:	3318      	adds	r3, #24
 8001c68:	001a      	movs	r2, r3
 8001c6a:	0029      	movs	r1, r5
 8001c6c:	4b0c      	ldr	r3, [pc, #48]	; (8001ca0 <LL_TIM_IC_SetActiveInput+0x90>)
 8001c6e:	5c5b      	ldrb	r3, [r3, r1]
 8001c70:	18d3      	adds	r3, r2, r3
 8001c72:	001c      	movs	r4, r3
 8001c74:	6823      	ldr	r3, [r4, #0]
 8001c76:	0029      	movs	r1, r5
 8001c78:	4a0a      	ldr	r2, [pc, #40]	; (8001ca4 <LL_TIM_IC_SetActiveInput+0x94>)
 8001c7a:	5c52      	ldrb	r2, [r2, r1]
 8001c7c:	0011      	movs	r1, r2
 8001c7e:	2203      	movs	r2, #3
 8001c80:	408a      	lsls	r2, r1
 8001c82:	43d2      	mvns	r2, r2
 8001c84:	401a      	ands	r2, r3
 8001c86:	687b      	ldr	r3, [r7, #4]
 8001c88:	0c1b      	lsrs	r3, r3, #16
 8001c8a:	0028      	movs	r0, r5
 8001c8c:	4905      	ldr	r1, [pc, #20]	; (8001ca4 <LL_TIM_IC_SetActiveInput+0x94>)
 8001c8e:	5c09      	ldrb	r1, [r1, r0]
 8001c90:	408b      	lsls	r3, r1
 8001c92:	4313      	orrs	r3, r2
 8001c94:	6023      	str	r3, [r4, #0]
 8001c96:	46c0      	nop			; (mov r8, r8)
 8001c98:	46bd      	mov	sp, r7
 8001c9a:	b004      	add	sp, #16
 8001c9c:	bdb0      	pop	{r4, r5, r7, pc}
 8001c9e:	46c0      	nop			; (mov r8, r8)
 8001ca0:	0800249c 	.word	0x0800249c
 8001ca4:	080024a4 	.word	0x080024a4

08001ca8 <LL_TIM_IC_SetPolarity>:
 8001ca8:	b590      	push	{r4, r7, lr}
 8001caa:	b085      	sub	sp, #20
 8001cac:	af00      	add	r7, sp, #0
 8001cae:	60f8      	str	r0, [r7, #12]
 8001cb0:	60b9      	str	r1, [r7, #8]
 8001cb2:	607a      	str	r2, [r7, #4]
 8001cb4:	68bb      	ldr	r3, [r7, #8]
 8001cb6:	2b01      	cmp	r3, #1
 8001cb8:	d01e      	beq.n	8001cf8 <LL_TIM_IC_SetPolarity+0x50>
 8001cba:	68bb      	ldr	r3, [r7, #8]
 8001cbc:	2b04      	cmp	r3, #4
 8001cbe:	d019      	beq.n	8001cf4 <LL_TIM_IC_SetPolarity+0x4c>
 8001cc0:	68bb      	ldr	r3, [r7, #8]
 8001cc2:	2b10      	cmp	r3, #16
 8001cc4:	d014      	beq.n	8001cf0 <LL_TIM_IC_SetPolarity+0x48>
 8001cc6:	68bb      	ldr	r3, [r7, #8]
 8001cc8:	2b40      	cmp	r3, #64	; 0x40
 8001cca:	d00f      	beq.n	8001cec <LL_TIM_IC_SetPolarity+0x44>
 8001ccc:	68ba      	ldr	r2, [r7, #8]
 8001cce:	2380      	movs	r3, #128	; 0x80
 8001cd0:	005b      	lsls	r3, r3, #1
 8001cd2:	429a      	cmp	r2, r3
 8001cd4:	d008      	beq.n	8001ce8 <LL_TIM_IC_SetPolarity+0x40>
 8001cd6:	68ba      	ldr	r2, [r7, #8]
 8001cd8:	2380      	movs	r3, #128	; 0x80
 8001cda:	00db      	lsls	r3, r3, #3
 8001cdc:	429a      	cmp	r2, r3
 8001cde:	d101      	bne.n	8001ce4 <LL_TIM_IC_SetPolarity+0x3c>
 8001ce0:	2305      	movs	r3, #5
 8001ce2:	e00a      	b.n	8001cfa <LL_TIM_IC_SetPolarity+0x52>
 8001ce4:	2306      	movs	r3, #6
 8001ce6:	e008      	b.n	8001cfa <LL_TIM_IC_SetPolarity+0x52>
 8001ce8:	2304      	movs	r3, #4
 8001cea:	e006      	b.n	8001cfa <LL_TIM_IC_SetPolarity+0x52>
 8001cec:	2303      	movs	r3, #3
 8001cee:	e004      	b.n	8001cfa <LL_TIM_IC_SetPolarity+0x52>
 8001cf0:	2302      	movs	r3, #2
 8001cf2:	e002      	b.n	8001cfa <LL_TIM_IC_SetPolarity+0x52>
 8001cf4:	2301      	movs	r3, #1
 8001cf6:	e000      	b.n	8001cfa <LL_TIM_IC_SetPolarity+0x52>
 8001cf8:	2300      	movs	r3, #0
 8001cfa:	001c      	movs	r4, r3
 8001cfc:	68fb      	ldr	r3, [r7, #12]
 8001cfe:	6a1b      	ldr	r3, [r3, #32]
 8001d00:	0021      	movs	r1, r4
 8001d02:	4a0a      	ldr	r2, [pc, #40]	; (8001d2c <LL_TIM_IC_SetPolarity+0x84>)
 8001d04:	5c52      	ldrb	r2, [r2, r1]
 8001d06:	0011      	movs	r1, r2
 8001d08:	220a      	movs	r2, #10
 8001d0a:	408a      	lsls	r2, r1
 8001d0c:	43d2      	mvns	r2, r2
 8001d0e:	401a      	ands	r2, r3
 8001d10:	0021      	movs	r1, r4
 8001d12:	4b06      	ldr	r3, [pc, #24]	; (8001d2c <LL_TIM_IC_SetPolarity+0x84>)
 8001d14:	5c5b      	ldrb	r3, [r3, r1]
 8001d16:	0019      	movs	r1, r3
 8001d18:	687b      	ldr	r3, [r7, #4]
 8001d1a:	408b      	lsls	r3, r1
 8001d1c:	431a      	orrs	r2, r3
 8001d1e:	68fb      	ldr	r3, [r7, #12]
 8001d20:	621a      	str	r2, [r3, #32]
 8001d22:	46c0      	nop			; (mov r8, r8)
 8001d24:	46bd      	mov	sp, r7
 8001d26:	b005      	add	sp, #20
 8001d28:	bd90      	pop	{r4, r7, pc}
 8001d2a:	46c0      	nop			; (mov r8, r8)
 8001d2c:	080024ac 	.word	0x080024ac

08001d30 <LL_TIM_SetEncoderMode>:
 8001d30:	b580      	push	{r7, lr}
 8001d32:	b082      	sub	sp, #8
 8001d34:	af00      	add	r7, sp, #0
 8001d36:	6078      	str	r0, [r7, #4]
 8001d38:	6039      	str	r1, [r7, #0]
 8001d3a:	687b      	ldr	r3, [r7, #4]
 8001d3c:	689b      	ldr	r3, [r3, #8]
 8001d3e:	2207      	movs	r2, #7
 8001d40:	4393      	bics	r3, r2
 8001d42:	001a      	movs	r2, r3
 8001d44:	683b      	ldr	r3, [r7, #0]
 8001d46:	431a      	orrs	r2, r3
 8001d48:	687b      	ldr	r3, [r7, #4]
 8001d4a:	609a      	str	r2, [r3, #8]
 8001d4c:	46c0      	nop			; (mov r8, r8)
 8001d4e:	46bd      	mov	sp, r7
 8001d50:	b002      	add	sp, #8
 8001d52:	bd80      	pop	{r7, pc}

08001d54 <LL_InitTick>:
 8001d54:	b580      	push	{r7, lr}
 8001d56:	b082      	sub	sp, #8
 8001d58:	af00      	add	r7, sp, #0
 8001d5a:	6078      	str	r0, [r7, #4]
 8001d5c:	6039      	str	r1, [r7, #0]
 8001d5e:	6839      	ldr	r1, [r7, #0]
 8001d60:	6878      	ldr	r0, [r7, #4]
 8001d62:	f7fe f9d1 	bl	8000108 <__udivsi3>
 8001d66:	0003      	movs	r3, r0
 8001d68:	001a      	movs	r2, r3
 8001d6a:	4b06      	ldr	r3, [pc, #24]	; (8001d84 <LL_InitTick+0x30>)
 8001d6c:	3a01      	subs	r2, #1
 8001d6e:	605a      	str	r2, [r3, #4]
 8001d70:	4b04      	ldr	r3, [pc, #16]	; (8001d84 <LL_InitTick+0x30>)
 8001d72:	2200      	movs	r2, #0
 8001d74:	609a      	str	r2, [r3, #8]
 8001d76:	4b03      	ldr	r3, [pc, #12]	; (8001d84 <LL_InitTick+0x30>)
 8001d78:	2205      	movs	r2, #5
 8001d7a:	601a      	str	r2, [r3, #0]
 8001d7c:	46c0      	nop			; (mov r8, r8)
 8001d7e:	46bd      	mov	sp, r7
 8001d80:	b002      	add	sp, #8
 8001d82:	bd80      	pop	{r7, pc}
 8001d84:	e000e010 	.word	0xe000e010

08001d88 <LL_SYSTICK_EnableIT>:
 8001d88:	b580      	push	{r7, lr}
 8001d8a:	af00      	add	r7, sp, #0
 8001d8c:	4b04      	ldr	r3, [pc, #16]	; (8001da0 <LL_SYSTICK_EnableIT+0x18>)
 8001d8e:	681a      	ldr	r2, [r3, #0]
 8001d90:	4b03      	ldr	r3, [pc, #12]	; (8001da0 <LL_SYSTICK_EnableIT+0x18>)
 8001d92:	2102      	movs	r1, #2
 8001d94:	430a      	orrs	r2, r1
 8001d96:	601a      	str	r2, [r3, #0]
 8001d98:	46c0      	nop			; (mov r8, r8)
 8001d9a:	46bd      	mov	sp, r7
 8001d9c:	bd80      	pop	{r7, pc}
 8001d9e:	46c0      	nop			; (mov r8, r8)
 8001da0:	e000e010 	.word	0xe000e010

08001da4 <mask_indicator>:
 8001da4:	b580      	push	{r7, lr}
 8001da6:	b082      	sub	sp, #8
 8001da8:	af00      	add	r7, sp, #0
 8001daa:	6078      	str	r0, [r7, #4]
 8001dac:	687b      	ldr	r3, [r7, #4]
 8001dae:	09db      	lsrs	r3, r3, #7
 8001db0:	2201      	movs	r2, #1
 8001db2:	4013      	ands	r3, r2
 8001db4:	01da      	lsls	r2, r3, #7
 8001db6:	687b      	ldr	r3, [r7, #4]
 8001db8:	099b      	lsrs	r3, r3, #6
 8001dba:	2101      	movs	r1, #1
 8001dbc:	400b      	ands	r3, r1
 8001dbe:	019b      	lsls	r3, r3, #6
 8001dc0:	431a      	orrs	r2, r3
 8001dc2:	687b      	ldr	r3, [r7, #4]
 8001dc4:	095b      	lsrs	r3, r3, #5
 8001dc6:	2101      	movs	r1, #1
 8001dc8:	400b      	ands	r3, r1
 8001dca:	015b      	lsls	r3, r3, #5
 8001dcc:	431a      	orrs	r2, r3
 8001dce:	687b      	ldr	r3, [r7, #4]
 8001dd0:	091b      	lsrs	r3, r3, #4
 8001dd2:	2101      	movs	r1, #1
 8001dd4:	400b      	ands	r3, r1
 8001dd6:	011b      	lsls	r3, r3, #4
 8001dd8:	431a      	orrs	r2, r3
 8001dda:	687b      	ldr	r3, [r7, #4]
 8001ddc:	08db      	lsrs	r3, r3, #3
 8001dde:	2101      	movs	r1, #1
 8001de0:	400b      	ands	r3, r1
 8001de2:	00db      	lsls	r3, r3, #3
 8001de4:	431a      	orrs	r2, r3
 8001de6:	687b      	ldr	r3, [r7, #4]
 8001de8:	089b      	lsrs	r3, r3, #2
 8001dea:	2101      	movs	r1, #1
 8001dec:	400b      	ands	r3, r1
 8001dee:	009b      	lsls	r3, r3, #2
 8001df0:	431a      	orrs	r2, r3
 8001df2:	687b      	ldr	r3, [r7, #4]
 8001df4:	085b      	lsrs	r3, r3, #1
 8001df6:	2101      	movs	r1, #1
 8001df8:	400b      	ands	r3, r1
 8001dfa:	005b      	lsls	r3, r3, #1
 8001dfc:	431a      	orrs	r2, r3
 8001dfe:	687b      	ldr	r3, [r7, #4]
 8001e00:	2101      	movs	r1, #1
 8001e02:	400b      	ands	r3, r1
 8001e04:	4313      	orrs	r3, r2
 8001e06:	0018      	movs	r0, r3
 8001e08:	46bd      	mov	sp, r7
 8001e0a:	b002      	add	sp, #8
 8001e0c:	bd80      	pop	{r7, pc}
	...

08001e10 <rcc_config>:
 8001e10:	b580      	push	{r7, lr}
 8001e12:	af00      	add	r7, sp, #0
 8001e14:	2001      	movs	r0, #1
 8001e16:	f7ff fe23 	bl	8001a60 <LL_FLASH_SetLatency>
 8001e1a:	f7ff fd71 	bl	8001900 <LL_RCC_HSI_Enable>
 8001e1e:	46c0      	nop			; (mov r8, r8)
 8001e20:	f7ff fd7c 	bl	800191c <LL_RCC_HSI_IsReady>
 8001e24:	0003      	movs	r3, r0
 8001e26:	2b01      	cmp	r3, #1
 8001e28:	d1fa      	bne.n	8001e20 <rcc_config+0x10>
 8001e2a:	23a0      	movs	r3, #160	; 0xa0
 8001e2c:	039b      	lsls	r3, r3, #14
 8001e2e:	0019      	movs	r1, r3
 8001e30:	2000      	movs	r0, #0
 8001e32:	f7ff fdef 	bl	8001a14 <LL_RCC_PLL_ConfigDomain_SYS>
 8001e36:	f7ff fdcb 	bl	80019d0 <LL_RCC_PLL_Enable>
 8001e3a:	46c0      	nop			; (mov r8, r8)
 8001e3c:	f7ff fdd6 	bl	80019ec <LL_RCC_PLL_IsReady>
 8001e40:	0003      	movs	r3, r0
 8001e42:	2b01      	cmp	r3, #1
 8001e44:	d1fa      	bne.n	8001e3c <rcc_config+0x2c>
 8001e46:	2000      	movs	r0, #0
 8001e48:	f7ff fd98 	bl	800197c <LL_RCC_SetAHBPrescaler>
 8001e4c:	2002      	movs	r0, #2
 8001e4e:	f7ff fd75 	bl	800193c <LL_RCC_SetSysClkSource>
 8001e52:	46c0      	nop			; (mov r8, r8)
 8001e54:	f7ff fd86 	bl	8001964 <LL_RCC_GetSysClkSource>
 8001e58:	0003      	movs	r3, r0
 8001e5a:	2b08      	cmp	r3, #8
 8001e5c:	d1fa      	bne.n	8001e54 <rcc_config+0x44>
 8001e5e:	2000      	movs	r0, #0
 8001e60:	f7ff fda0 	bl	80019a4 <LL_RCC_SetAPB1Prescaler>
 8001e64:	4b02      	ldr	r3, [pc, #8]	; (8001e70 <rcc_config+0x60>)
 8001e66:	4a03      	ldr	r2, [pc, #12]	; (8001e74 <rcc_config+0x64>)
 8001e68:	601a      	str	r2, [r3, #0]
 8001e6a:	46c0      	nop			; (mov r8, r8)
 8001e6c:	46bd      	mov	sp, r7
 8001e6e:	bd80      	pop	{r7, pc}
 8001e70:	20000000 	.word	0x20000000
 8001e74:	02dc6c00 	.word	0x02dc6c00

08001e78 <gpio_config>:
 8001e78:	b580      	push	{r7, lr}
 8001e7a:	af00      	add	r7, sp, #0
 8001e7c:	2380      	movs	r3, #128	; 0x80
 8001e7e:	031b      	lsls	r3, r3, #12
 8001e80:	0018      	movs	r0, r3
 8001e82:	f7ff fe01 	bl	8001a88 <LL_AHB1_GRP1_EnableClock>
 8001e86:	2380      	movs	r3, #128	; 0x80
 8001e88:	005b      	lsls	r3, r3, #1
 8001e8a:	4834      	ldr	r0, [pc, #208]	; (8001f5c <gpio_config+0xe4>)
 8001e8c:	2201      	movs	r2, #1
 8001e8e:	0019      	movs	r1, r3
 8001e90:	f7ff fe26 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001e94:	2380      	movs	r3, #128	; 0x80
 8001e96:	009b      	lsls	r3, r3, #2
 8001e98:	4830      	ldr	r0, [pc, #192]	; (8001f5c <gpio_config+0xe4>)
 8001e9a:	2201      	movs	r2, #1
 8001e9c:	0019      	movs	r1, r3
 8001e9e:	f7ff fe1f 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001ea2:	4b2e      	ldr	r3, [pc, #184]	; (8001f5c <gpio_config+0xe4>)
 8001ea4:	2201      	movs	r2, #1
 8001ea6:	2101      	movs	r1, #1
 8001ea8:	0018      	movs	r0, r3
 8001eaa:	f7ff fe19 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001eae:	4b2b      	ldr	r3, [pc, #172]	; (8001f5c <gpio_config+0xe4>)
 8001eb0:	2201      	movs	r2, #1
 8001eb2:	2102      	movs	r1, #2
 8001eb4:	0018      	movs	r0, r3
 8001eb6:	f7ff fe13 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001eba:	4b28      	ldr	r3, [pc, #160]	; (8001f5c <gpio_config+0xe4>)
 8001ebc:	2201      	movs	r2, #1
 8001ebe:	2104      	movs	r1, #4
 8001ec0:	0018      	movs	r0, r3
 8001ec2:	f7ff fe0d 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001ec6:	4b25      	ldr	r3, [pc, #148]	; (8001f5c <gpio_config+0xe4>)
 8001ec8:	2201      	movs	r2, #1
 8001eca:	2108      	movs	r1, #8
 8001ecc:	0018      	movs	r0, r3
 8001ece:	f7ff fe07 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001ed2:	2380      	movs	r3, #128	; 0x80
 8001ed4:	029b      	lsls	r3, r3, #10
 8001ed6:	0018      	movs	r0, r3
 8001ed8:	f7ff fdd6 	bl	8001a88 <LL_AHB1_GRP1_EnableClock>
 8001edc:	2390      	movs	r3, #144	; 0x90
 8001ede:	05db      	lsls	r3, r3, #23
 8001ee0:	2200      	movs	r2, #0
 8001ee2:	2101      	movs	r1, #1
 8001ee4:	0018      	movs	r0, r3
 8001ee6:	f7ff fdfb 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001eea:	2380      	movs	r3, #128	; 0x80
 8001eec:	02db      	lsls	r3, r3, #11
 8001eee:	0018      	movs	r0, r3
 8001ef0:	f7ff fdca 	bl	8001a88 <LL_AHB1_GRP1_EnableClock>
 8001ef4:	4b1a      	ldr	r3, [pc, #104]	; (8001f60 <gpio_config+0xe8>)
 8001ef6:	2201      	movs	r2, #1
 8001ef8:	2101      	movs	r1, #1
 8001efa:	0018      	movs	r0, r3
 8001efc:	f7ff fdf0 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f00:	4b17      	ldr	r3, [pc, #92]	; (8001f60 <gpio_config+0xe8>)
 8001f02:	2201      	movs	r2, #1
 8001f04:	2102      	movs	r1, #2
 8001f06:	0018      	movs	r0, r3
 8001f08:	f7ff fdea 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f0c:	4b14      	ldr	r3, [pc, #80]	; (8001f60 <gpio_config+0xe8>)
 8001f0e:	2201      	movs	r2, #1
 8001f10:	2104      	movs	r1, #4
 8001f12:	0018      	movs	r0, r3
 8001f14:	f7ff fde4 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f18:	4b11      	ldr	r3, [pc, #68]	; (8001f60 <gpio_config+0xe8>)
 8001f1a:	2201      	movs	r2, #1
 8001f1c:	2108      	movs	r1, #8
 8001f1e:	0018      	movs	r0, r3
 8001f20:	f7ff fdde 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f24:	4b0e      	ldr	r3, [pc, #56]	; (8001f60 <gpio_config+0xe8>)
 8001f26:	2201      	movs	r2, #1
 8001f28:	2110      	movs	r1, #16
 8001f2a:	0018      	movs	r0, r3
 8001f2c:	f7ff fdd8 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f30:	4b0b      	ldr	r3, [pc, #44]	; (8001f60 <gpio_config+0xe8>)
 8001f32:	2201      	movs	r2, #1
 8001f34:	2120      	movs	r1, #32
 8001f36:	0018      	movs	r0, r3
 8001f38:	f7ff fdd2 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f3c:	4b08      	ldr	r3, [pc, #32]	; (8001f60 <gpio_config+0xe8>)
 8001f3e:	2201      	movs	r2, #1
 8001f40:	2140      	movs	r1, #64	; 0x40
 8001f42:	0018      	movs	r0, r3
 8001f44:	f7ff fdcc 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f48:	4b05      	ldr	r3, [pc, #20]	; (8001f60 <gpio_config+0xe8>)
 8001f4a:	2201      	movs	r2, #1
 8001f4c:	2180      	movs	r1, #128	; 0x80
 8001f4e:	0018      	movs	r0, r3
 8001f50:	f7ff fdc6 	bl	8001ae0 <LL_GPIO_SetPinMode>
 8001f54:	46c0      	nop			; (mov r8, r8)
 8001f56:	46bd      	mov	sp, r7
 8001f58:	bd80      	pop	{r7, pc}
 8001f5a:	46c0      	nop			; (mov r8, r8)
 8001f5c:	48000800 	.word	0x48000800
 8001f60:	48000400 	.word	0x48000400

08001f64 <dec_display>:
 8001f64:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f66:	b089      	sub	sp, #36	; 0x24
 8001f68:	af00      	add	r7, sp, #0
 8001f6a:	6078      	str	r0, [r7, #4]
 8001f6c:	241e      	movs	r4, #30
 8001f6e:	193b      	adds	r3, r7, r4
 8001f70:	2200      	movs	r2, #0
 8001f72:	801a      	strh	r2, [r3, #0]
 8001f74:	2508      	movs	r5, #8
 8001f76:	197b      	adds	r3, r7, r5
 8001f78:	4a44      	ldr	r2, [pc, #272]	; (800208c <dec_display+0x128>)
 8001f7a:	ca43      	ldmia	r2!, {r0, r1, r6}
 8001f7c:	c343      	stmia	r3!, {r0, r1, r6}
 8001f7e:	ca03      	ldmia	r2!, {r0, r1}
 8001f80:	c303      	stmia	r3!, {r0, r1}
 8001f82:	200f      	movs	r0, #15
 8001f84:	f7ff ff0e 	bl	8001da4 <mask_indicator>
 8001f88:	0003      	movs	r3, r0
 8001f8a:	4a41      	ldr	r2, [pc, #260]	; (8002090 <dec_display+0x12c>)
 8001f8c:	0019      	movs	r1, r3
 8001f8e:	0010      	movs	r0, r2
 8001f90:	f7ff fe01 	bl	8001b96 <LL_GPIO_WriteOutputPort>
 8001f94:	4b3f      	ldr	r3, [pc, #252]	; (8002094 <dec_display+0x130>)
 8001f96:	681b      	ldr	r3, [r3, #0]
 8001f98:	2201      	movs	r2, #1
 8001f9a:	409a      	lsls	r2, r3
 8001f9c:	0013      	movs	r3, r2
 8001f9e:	0018      	movs	r0, r3
 8001fa0:	f7ff ff00 	bl	8001da4 <mask_indicator>
 8001fa4:	0003      	movs	r3, r0
 8001fa6:	4a3a      	ldr	r2, [pc, #232]	; (8002090 <dec_display+0x12c>)
 8001fa8:	0019      	movs	r1, r3
 8001faa:	0010      	movs	r0, r2
 8001fac:	f7ff fdff 	bl	8001bae <LL_GPIO_ResetOutputPin>
 8001fb0:	4b38      	ldr	r3, [pc, #224]	; (8002094 <dec_display+0x130>)
 8001fb2:	681b      	ldr	r3, [r3, #0]
 8001fb4:	2b00      	cmp	r3, #0
 8001fb6:	d10b      	bne.n	8001fd0 <dec_display+0x6c>
 8001fb8:	687b      	ldr	r3, [r7, #4]
 8001fba:	210a      	movs	r1, #10
 8001fbc:	0018      	movs	r0, r3
 8001fbe:	f7fe f929 	bl	8000214 <__aeabi_uidivmod>
 8001fc2:	000b      	movs	r3, r1
 8001fc4:	0019      	movs	r1, r3
 8001fc6:	193b      	adds	r3, r7, r4
 8001fc8:	197a      	adds	r2, r7, r5
 8001fca:	0049      	lsls	r1, r1, #1
 8001fcc:	5a8a      	ldrh	r2, [r1, r2]
 8001fce:	801a      	strh	r2, [r3, #0]
 8001fd0:	4b30      	ldr	r3, [pc, #192]	; (8002094 <dec_display+0x130>)
 8001fd2:	681b      	ldr	r3, [r3, #0]
 8001fd4:	2b01      	cmp	r3, #1
 8001fd6:	d112      	bne.n	8001ffe <dec_display+0x9a>
 8001fd8:	687b      	ldr	r3, [r7, #4]
 8001fda:	210a      	movs	r1, #10
 8001fdc:	0018      	movs	r0, r3
 8001fde:	f7fe f893 	bl	8000108 <__udivsi3>
 8001fe2:	0003      	movs	r3, r0
 8001fe4:	210a      	movs	r1, #10
 8001fe6:	0018      	movs	r0, r3
 8001fe8:	f7fe f914 	bl	8000214 <__aeabi_uidivmod>
 8001fec:	000b      	movs	r3, r1
 8001fee:	0019      	movs	r1, r3
 8001ff0:	231e      	movs	r3, #30
 8001ff2:	18fb      	adds	r3, r7, r3
 8001ff4:	2208      	movs	r2, #8
 8001ff6:	18ba      	adds	r2, r7, r2
 8001ff8:	0049      	lsls	r1, r1, #1
 8001ffa:	5a8a      	ldrh	r2, [r1, r2]
 8001ffc:	801a      	strh	r2, [r3, #0]
 8001ffe:	4b25      	ldr	r3, [pc, #148]	; (8002094 <dec_display+0x130>)
 8002000:	681b      	ldr	r3, [r3, #0]
 8002002:	2b02      	cmp	r3, #2
 8002004:	d112      	bne.n	800202c <dec_display+0xc8>
 8002006:	687b      	ldr	r3, [r7, #4]
 8002008:	2164      	movs	r1, #100	; 0x64
 800200a:	0018      	movs	r0, r3
 800200c:	f7fe f87c 	bl	8000108 <__udivsi3>
 8002010:	0003      	movs	r3, r0
 8002012:	210a      	movs	r1, #10
 8002014:	0018      	movs	r0, r3
 8002016:	f7fe f8fd 	bl	8000214 <__aeabi_uidivmod>
 800201a:	000b      	movs	r3, r1
 800201c:	0019      	movs	r1, r3
 800201e:	231e      	movs	r3, #30
 8002020:	18fb      	adds	r3, r7, r3
 8002022:	2208      	movs	r2, #8
 8002024:	18ba      	adds	r2, r7, r2
 8002026:	0049      	lsls	r1, r1, #1
 8002028:	5a8a      	ldrh	r2, [r1, r2]
 800202a:	801a      	strh	r2, [r3, #0]
 800202c:	4b19      	ldr	r3, [pc, #100]	; (8002094 <dec_display+0x130>)
 800202e:	681b      	ldr	r3, [r3, #0]
 8002030:	2b03      	cmp	r3, #3
 8002032:	d113      	bne.n	800205c <dec_display+0xf8>
 8002034:	687b      	ldr	r3, [r7, #4]
 8002036:	22fa      	movs	r2, #250	; 0xfa
 8002038:	0091      	lsls	r1, r2, #2
 800203a:	0018      	movs	r0, r3
 800203c:	f7fe f864 	bl	8000108 <__udivsi3>
 8002040:	0003      	movs	r3, r0
 8002042:	210a      	movs	r1, #10
 8002044:	0018      	movs	r0, r3
 8002046:	f7fe f8e5 	bl	8000214 <__aeabi_uidivmod>
 800204a:	000b      	movs	r3, r1
 800204c:	0019      	movs	r1, r3
 800204e:	231e      	movs	r3, #30
 8002050:	18fb      	adds	r3, r7, r3
 8002052:	2208      	movs	r2, #8
 8002054:	18ba      	adds	r2, r7, r2
 8002056:	0049      	lsls	r1, r1, #1
 8002058:	5a8a      	ldrh	r2, [r1, r2]
 800205a:	801a      	strh	r2, [r3, #0]
 800205c:	231e      	movs	r3, #30
 800205e:	18fb      	adds	r3, r7, r3
 8002060:	881b      	ldrh	r3, [r3, #0]
 8002062:	0018      	movs	r0, r3
 8002064:	f7ff fe9e 	bl	8001da4 <mask_indicator>
 8002068:	0003      	movs	r3, r0
 800206a:	4a0b      	ldr	r2, [pc, #44]	; (8002098 <dec_display+0x134>)
 800206c:	0019      	movs	r1, r3
 800206e:	0010      	movs	r0, r2
 8002070:	f7ff fd91 	bl	8001b96 <LL_GPIO_WriteOutputPort>
 8002074:	4b07      	ldr	r3, [pc, #28]	; (8002094 <dec_display+0x130>)
 8002076:	681b      	ldr	r3, [r3, #0]
 8002078:	3301      	adds	r3, #1
 800207a:	2203      	movs	r2, #3
 800207c:	401a      	ands	r2, r3
 800207e:	4b05      	ldr	r3, [pc, #20]	; (8002094 <dec_display+0x130>)
 8002080:	601a      	str	r2, [r3, #0]
 8002082:	46c0      	nop			; (mov r8, r8)
 8002084:	46bd      	mov	sp, r7
 8002086:	b009      	add	sp, #36	; 0x24
 8002088:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800208a:	46c0      	nop			; (mov r8, r8)
 800208c:	08002408 	.word	0x08002408
 8002090:	48000800 	.word	0x48000800
 8002094:	20000450 	.word	0x20000450
 8002098:	48000400 	.word	0x48000400

0800209c <timers_config>:
 800209c:	b580      	push	{r7, lr}
 800209e:	af00      	add	r7, sp, #0
 80020a0:	2380      	movs	r3, #128	; 0x80
 80020a2:	029b      	lsls	r3, r3, #10
 80020a4:	0018      	movs	r0, r3
 80020a6:	f7ff fcef 	bl	8001a88 <LL_AHB1_GRP1_EnableClock>
 80020aa:	2390      	movs	r3, #144	; 0x90
 80020ac:	05db      	lsls	r3, r3, #23
 80020ae:	2202      	movs	r2, #2
 80020b0:	2102      	movs	r1, #2
 80020b2:	0018      	movs	r0, r3
 80020b4:	f7ff fd14 	bl	8001ae0 <LL_GPIO_SetPinMode>
 80020b8:	2390      	movs	r3, #144	; 0x90
 80020ba:	05db      	lsls	r3, r3, #23
 80020bc:	2202      	movs	r2, #2
 80020be:	2120      	movs	r1, #32
 80020c0:	0018      	movs	r0, r3
 80020c2:	f7ff fd0d 	bl	8001ae0 <LL_GPIO_SetPinMode>
 80020c6:	2390      	movs	r3, #144	; 0x90
 80020c8:	05db      	lsls	r3, r3, #23
 80020ca:	2202      	movs	r2, #2
 80020cc:	2102      	movs	r1, #2
 80020ce:	0018      	movs	r0, r3
 80020d0:	f7ff fd3e 	bl	8001b50 <LL_GPIO_SetAFPin_0_7>
 80020d4:	2390      	movs	r3, #144	; 0x90
 80020d6:	05db      	lsls	r3, r3, #23
 80020d8:	2202      	movs	r2, #2
 80020da:	2120      	movs	r1, #32
 80020dc:	0018      	movs	r0, r3
 80020de:	f7ff fd37 	bl	8001b50 <LL_GPIO_SetAFPin_0_7>
 80020e2:	2390      	movs	r3, #144	; 0x90
 80020e4:	05db      	lsls	r3, r3, #23
 80020e6:	2201      	movs	r2, #1
 80020e8:	2102      	movs	r1, #2
 80020ea:	0018      	movs	r0, r3
 80020ec:	f7ff fd14 	bl	8001b18 <LL_GPIO_SetPinPull>
 80020f0:	2390      	movs	r3, #144	; 0x90
 80020f2:	05db      	lsls	r3, r3, #23
 80020f4:	2201      	movs	r2, #1
 80020f6:	2120      	movs	r1, #32
 80020f8:	0018      	movs	r0, r3
 80020fa:	f7ff fd0d 	bl	8001b18 <LL_GPIO_SetPinPull>
 80020fe:	2001      	movs	r0, #1
 8002100:	f7ff fcd8 	bl	8001ab4 <LL_APB1_GRP1_EnableClock>
 8002104:	2380      	movs	r3, #128	; 0x80
 8002106:	025a      	lsls	r2, r3, #9
 8002108:	2380      	movs	r3, #128	; 0x80
 800210a:	05db      	lsls	r3, r3, #23
 800210c:	2101      	movs	r1, #1
 800210e:	0018      	movs	r0, r3
 8002110:	f7ff fd7e 	bl	8001c10 <LL_TIM_IC_SetActiveInput>
 8002114:	2380      	movs	r3, #128	; 0x80
 8002116:	025a      	lsls	r2, r3, #9
 8002118:	2380      	movs	r3, #128	; 0x80
 800211a:	05db      	lsls	r3, r3, #23
 800211c:	2110      	movs	r1, #16
 800211e:	0018      	movs	r0, r3
 8002120:	f7ff fd76 	bl	8001c10 <LL_TIM_IC_SetActiveInput>
 8002124:	2380      	movs	r3, #128	; 0x80
 8002126:	05db      	lsls	r3, r3, #23
 8002128:	2200      	movs	r2, #0
 800212a:	2101      	movs	r1, #1
 800212c:	0018      	movs	r0, r3
 800212e:	f7ff fdbb 	bl	8001ca8 <LL_TIM_IC_SetPolarity>
 8002132:	2380      	movs	r3, #128	; 0x80
 8002134:	05db      	lsls	r3, r3, #23
 8002136:	2200      	movs	r2, #0
 8002138:	2110      	movs	r1, #16
 800213a:	0018      	movs	r0, r3
 800213c:	f7ff fdb4 	bl	8001ca8 <LL_TIM_IC_SetPolarity>
 8002140:	2380      	movs	r3, #128	; 0x80
 8002142:	05db      	lsls	r3, r3, #23
 8002144:	2103      	movs	r1, #3
 8002146:	0018      	movs	r0, r3
 8002148:	f7ff fdf2 	bl	8001d30 <LL_TIM_SetEncoderMode>
 800214c:	2380      	movs	r3, #128	; 0x80
 800214e:	05db      	lsls	r3, r3, #23
 8002150:	215f      	movs	r1, #95	; 0x5f
 8002152:	0018      	movs	r0, r3
 8002154:	f7ff fd4f 	bl	8001bf6 <LL_TIM_SetAutoReload>
 8002158:	2380      	movs	r3, #128	; 0x80
 800215a:	05db      	lsls	r3, r3, #23
 800215c:	0018      	movs	r0, r3
 800215e:	f7ff fd32 	bl	8001bc6 <LL_TIM_EnableCounter>
 8002162:	46c0      	nop			; (mov r8, r8)
 8002164:	46bd      	mov	sp, r7
 8002166:	bd80      	pop	{r7, pc}

08002168 <systick_config>:
 8002168:	b580      	push	{r7, lr}
 800216a:	af00      	add	r7, sp, #0
 800216c:	23fa      	movs	r3, #250	; 0xfa
 800216e:	009b      	lsls	r3, r3, #2
 8002170:	4a07      	ldr	r2, [pc, #28]	; (8002190 <systick_config+0x28>)
 8002172:	0019      	movs	r1, r3
 8002174:	0010      	movs	r0, r2
 8002176:	f7ff fded 	bl	8001d54 <LL_InitTick>
 800217a:	f7ff fe05 	bl	8001d88 <LL_SYSTICK_EnableIT>
 800217e:	2301      	movs	r3, #1
 8002180:	425b      	negs	r3, r3
 8002182:	2101      	movs	r1, #1
 8002184:	0018      	movs	r0, r3
 8002186:	f7ff fb4d 	bl	8001824 <NVIC_SetPriority>
 800218a:	46c0      	nop			; (mov r8, r8)
 800218c:	46bd      	mov	sp, r7
 800218e:	bd80      	pop	{r7, pc}
 8002190:	02dc6c00 	.word	0x02dc6c00

08002194 <SysTick_Handler>:
 8002194:	b580      	push	{r7, lr}
 8002196:	af00      	add	r7, sp, #0
 8002198:	2380      	movs	r3, #128	; 0x80
 800219a:	05db      	lsls	r3, r3, #23
 800219c:	0018      	movs	r0, r3
 800219e:	f7ff fd20 	bl	8001be2 <LL_TIM_GetCounter>
 80021a2:	0003      	movs	r3, r0
 80021a4:	0018      	movs	r0, r3
 80021a6:	f7ff f985 	bl	80014b4 <__aeabi_ui2d>
 80021aa:	2200      	movs	r2, #0
 80021ac:	4b0b      	ldr	r3, [pc, #44]	; (80021dc <SysTick_Handler+0x48>)
 80021ae:	f7fe f855 	bl	800025c <__aeabi_ddiv>
 80021b2:	0002      	movs	r2, r0
 80021b4:	000b      	movs	r3, r1
 80021b6:	0010      	movs	r0, r2
 80021b8:	0019      	movs	r1, r3
 80021ba:	2200      	movs	r2, #0
 80021bc:	4b08      	ldr	r3, [pc, #32]	; (80021e0 <SysTick_Handler+0x4c>)
 80021be:	f7fe fb43 	bl	8000848 <__aeabi_dmul>
 80021c2:	0002      	movs	r2, r0
 80021c4:	000b      	movs	r3, r1
 80021c6:	0010      	movs	r0, r2
 80021c8:	0019      	movs	r1, r3
 80021ca:	f7fe f829 	bl	8000220 <__aeabi_d2uiz>
 80021ce:	0003      	movs	r3, r0
 80021d0:	0018      	movs	r0, r3
 80021d2:	f7ff fec7 	bl	8001f64 <dec_display>
 80021d6:	46c0      	nop			; (mov r8, r8)
 80021d8:	46bd      	mov	sp, r7
 80021da:	bd80      	pop	{r7, pc}
 80021dc:	4057c000 	.word	0x4057c000
 80021e0:	40768000 	.word	0x40768000

080021e4 <main>:
 80021e4:	b580      	push	{r7, lr}
 80021e6:	af00      	add	r7, sp, #0
 80021e8:	f7ff fe12 	bl	8001e10 <rcc_config>
 80021ec:	f7ff fe44 	bl	8001e78 <gpio_config>
 80021f0:	f7ff ff54 	bl	800209c <timers_config>
 80021f4:	f7ff ffb8 	bl	8002168 <systick_config>
 80021f8:	e7fe      	b.n	80021f8 <main+0x14>
	...

080021fc <SystemInit>:
 80021fc:	b580      	push	{r7, lr}
 80021fe:	af00      	add	r7, sp, #0
 8002200:	4b1a      	ldr	r3, [pc, #104]	; (800226c <SystemInit+0x70>)
 8002202:	681a      	ldr	r2, [r3, #0]
 8002204:	4b19      	ldr	r3, [pc, #100]	; (800226c <SystemInit+0x70>)
 8002206:	2101      	movs	r1, #1
 8002208:	430a      	orrs	r2, r1
 800220a:	601a      	str	r2, [r3, #0]
 800220c:	4b17      	ldr	r3, [pc, #92]	; (800226c <SystemInit+0x70>)
 800220e:	685a      	ldr	r2, [r3, #4]
 8002210:	4b16      	ldr	r3, [pc, #88]	; (800226c <SystemInit+0x70>)
 8002212:	4917      	ldr	r1, [pc, #92]	; (8002270 <SystemInit+0x74>)
 8002214:	400a      	ands	r2, r1
 8002216:	605a      	str	r2, [r3, #4]
 8002218:	4b14      	ldr	r3, [pc, #80]	; (800226c <SystemInit+0x70>)
 800221a:	681a      	ldr	r2, [r3, #0]
 800221c:	4b13      	ldr	r3, [pc, #76]	; (800226c <SystemInit+0x70>)
 800221e:	4915      	ldr	r1, [pc, #84]	; (8002274 <SystemInit+0x78>)
 8002220:	400a      	ands	r2, r1
 8002222:	601a      	str	r2, [r3, #0]
 8002224:	4b11      	ldr	r3, [pc, #68]	; (800226c <SystemInit+0x70>)
 8002226:	681a      	ldr	r2, [r3, #0]
 8002228:	4b10      	ldr	r3, [pc, #64]	; (800226c <SystemInit+0x70>)
 800222a:	4913      	ldr	r1, [pc, #76]	; (8002278 <SystemInit+0x7c>)
 800222c:	400a      	ands	r2, r1
 800222e:	601a      	str	r2, [r3, #0]
 8002230:	4b0e      	ldr	r3, [pc, #56]	; (800226c <SystemInit+0x70>)
 8002232:	685a      	ldr	r2, [r3, #4]
 8002234:	4b0d      	ldr	r3, [pc, #52]	; (800226c <SystemInit+0x70>)
 8002236:	4911      	ldr	r1, [pc, #68]	; (800227c <SystemInit+0x80>)
 8002238:	400a      	ands	r2, r1
 800223a:	605a      	str	r2, [r3, #4]
 800223c:	4b0b      	ldr	r3, [pc, #44]	; (800226c <SystemInit+0x70>)
 800223e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8002240:	4b0a      	ldr	r3, [pc, #40]	; (800226c <SystemInit+0x70>)
 8002242:	210f      	movs	r1, #15
 8002244:	438a      	bics	r2, r1
 8002246:	62da      	str	r2, [r3, #44]	; 0x2c
 8002248:	4b08      	ldr	r3, [pc, #32]	; (800226c <SystemInit+0x70>)
 800224a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800224c:	4b07      	ldr	r3, [pc, #28]	; (800226c <SystemInit+0x70>)
 800224e:	490c      	ldr	r1, [pc, #48]	; (8002280 <SystemInit+0x84>)
 8002250:	400a      	ands	r2, r1
 8002252:	631a      	str	r2, [r3, #48]	; 0x30
 8002254:	4b05      	ldr	r3, [pc, #20]	; (800226c <SystemInit+0x70>)
 8002256:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8002258:	4b04      	ldr	r3, [pc, #16]	; (800226c <SystemInit+0x70>)
 800225a:	2101      	movs	r1, #1
 800225c:	438a      	bics	r2, r1
 800225e:	635a      	str	r2, [r3, #52]	; 0x34
 8002260:	4b02      	ldr	r3, [pc, #8]	; (800226c <SystemInit+0x70>)
 8002262:	2200      	movs	r2, #0
 8002264:	609a      	str	r2, [r3, #8]
 8002266:	46c0      	nop			; (mov r8, r8)
 8002268:	46bd      	mov	sp, r7
 800226a:	bd80      	pop	{r7, pc}
 800226c:	40021000 	.word	0x40021000
 8002270:	f8ffb80c 	.word	0xf8ffb80c
 8002274:	fef6ffff 	.word	0xfef6ffff
 8002278:	fffbffff 	.word	0xfffbffff
 800227c:	ffc0ffff 	.word	0xffc0ffff
 8002280:	fffffeac 	.word	0xfffffeac

08002284 <NMI_Handler>:
 8002284:	b580      	push	{r7, lr}
 8002286:	af00      	add	r7, sp, #0
 8002288:	46c0      	nop			; (mov r8, r8)
 800228a:	46bd      	mov	sp, r7
 800228c:	bd80      	pop	{r7, pc}

0800228e <HardFault_Handler>:
 800228e:	b580      	push	{r7, lr}
 8002290:	af00      	add	r7, sp, #0
 8002292:	e7fe      	b.n	8002292 <HardFault_Handler+0x4>

08002294 <SVC_Handler>:
 8002294:	b580      	push	{r7, lr}
 8002296:	af00      	add	r7, sp, #0
 8002298:	46c0      	nop			; (mov r8, r8)
 800229a:	46bd      	mov	sp, r7
 800229c:	bd80      	pop	{r7, pc}

0800229e <PendSV_Handler>:
 800229e:	b580      	push	{r7, lr}
 80022a0:	af00      	add	r7, sp, #0
 80022a2:	46c0      	nop			; (mov r8, r8)
 80022a4:	46bd      	mov	sp, r7
 80022a6:	bd80      	pop	{r7, pc}

080022a8 <__libc_init_array>:
 80022a8:	b570      	push	{r4, r5, r6, lr}
 80022aa:	4d0c      	ldr	r5, [pc, #48]	; (80022dc <__libc_init_array+0x34>)
 80022ac:	4e0c      	ldr	r6, [pc, #48]	; (80022e0 <__libc_init_array+0x38>)
 80022ae:	1b76      	subs	r6, r6, r5
 80022b0:	10b6      	asrs	r6, r6, #2
 80022b2:	d005      	beq.n	80022c0 <__libc_init_array+0x18>
 80022b4:	2400      	movs	r4, #0
 80022b6:	cd08      	ldmia	r5!, {r3}
 80022b8:	3401      	adds	r4, #1
 80022ba:	4798      	blx	r3
 80022bc:	42a6      	cmp	r6, r4
 80022be:	d1fa      	bne.n	80022b6 <__libc_init_array+0xe>
 80022c0:	f000 f896 	bl	80023f0 <_init>
 80022c4:	4d07      	ldr	r5, [pc, #28]	; (80022e4 <__libc_init_array+0x3c>)
 80022c6:	4e08      	ldr	r6, [pc, #32]	; (80022e8 <__libc_init_array+0x40>)
 80022c8:	1b76      	subs	r6, r6, r5
 80022ca:	10b6      	asrs	r6, r6, #2
 80022cc:	d005      	beq.n	80022da <__libc_init_array+0x32>
 80022ce:	2400      	movs	r4, #0
 80022d0:	cd08      	ldmia	r5!, {r3}
 80022d2:	3401      	adds	r4, #1
 80022d4:	4798      	blx	r3
 80022d6:	42a6      	cmp	r6, r4
 80022d8:	d1fa      	bne.n	80022d0 <__libc_init_array+0x28>
 80022da:	bd70      	pop	{r4, r5, r6, pc}
 80022dc:	080024b8 	.word	0x080024b8
 80022e0:	080024b8 	.word	0x080024b8
 80022e4:	080024b8 	.word	0x080024b8
 80022e8:	080024c0 	.word	0x080024c0

080022ec <register_fini>:
 80022ec:	4b03      	ldr	r3, [pc, #12]	; (80022fc <register_fini+0x10>)
 80022ee:	b510      	push	{r4, lr}
 80022f0:	2b00      	cmp	r3, #0
 80022f2:	d002      	beq.n	80022fa <register_fini+0xe>
 80022f4:	4802      	ldr	r0, [pc, #8]	; (8002300 <register_fini+0x14>)
 80022f6:	f000 f805 	bl	8002304 <atexit>
 80022fa:	bd10      	pop	{r4, pc}
 80022fc:	00000000 	.word	0x00000000
 8002300:	08002315 	.word	0x08002315

08002304 <atexit>:
 8002304:	b510      	push	{r4, lr}
 8002306:	0001      	movs	r1, r0
 8002308:	2300      	movs	r3, #0
 800230a:	2200      	movs	r2, #0
 800230c:	2000      	movs	r0, #0
 800230e:	f000 f819 	bl	8002344 <__register_exitproc>
 8002312:	bd10      	pop	{r4, pc}

08002314 <__libc_fini_array>:
 8002314:	b570      	push	{r4, r5, r6, lr}
 8002316:	4d07      	ldr	r5, [pc, #28]	; (8002334 <__libc_fini_array+0x20>)
 8002318:	4c07      	ldr	r4, [pc, #28]	; (8002338 <__libc_fini_array+0x24>)
 800231a:	1b64      	subs	r4, r4, r5
 800231c:	10a4      	asrs	r4, r4, #2
 800231e:	d005      	beq.n	800232c <__libc_fini_array+0x18>
 8002320:	3c01      	subs	r4, #1
 8002322:	00a3      	lsls	r3, r4, #2
 8002324:	58eb      	ldr	r3, [r5, r3]
 8002326:	4798      	blx	r3
 8002328:	2c00      	cmp	r4, #0
 800232a:	d1f9      	bne.n	8002320 <__libc_fini_array+0xc>
 800232c:	f000 f866 	bl	80023fc <_fini>
 8002330:	bd70      	pop	{r4, r5, r6, pc}
 8002332:	46c0      	nop			; (mov r8, r8)
 8002334:	080024c0 	.word	0x080024c0
 8002338:	080024c4 	.word	0x080024c4

0800233c <__retarget_lock_acquire_recursive>:
 800233c:	4770      	bx	lr
 800233e:	46c0      	nop			; (mov r8, r8)

08002340 <__retarget_lock_release_recursive>:
 8002340:	4770      	bx	lr
 8002342:	46c0      	nop			; (mov r8, r8)

08002344 <__register_exitproc>:
 8002344:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002346:	46d6      	mov	lr, sl
 8002348:	464f      	mov	r7, r9
 800234a:	4646      	mov	r6, r8
 800234c:	b5c0      	push	{r6, r7, lr}
 800234e:	4f26      	ldr	r7, [pc, #152]	; (80023e8 <__register_exitproc+0xa4>)
 8002350:	b082      	sub	sp, #8
 8002352:	0006      	movs	r6, r0
 8002354:	6838      	ldr	r0, [r7, #0]
 8002356:	4692      	mov	sl, r2
 8002358:	4698      	mov	r8, r3
 800235a:	4689      	mov	r9, r1
 800235c:	f7ff ffee 	bl	800233c <__retarget_lock_acquire_recursive>
 8002360:	4b22      	ldr	r3, [pc, #136]	; (80023ec <__register_exitproc+0xa8>)
 8002362:	681b      	ldr	r3, [r3, #0]
 8002364:	9301      	str	r3, [sp, #4]
 8002366:	23a4      	movs	r3, #164	; 0xa4
 8002368:	9a01      	ldr	r2, [sp, #4]
 800236a:	005b      	lsls	r3, r3, #1
 800236c:	58d5      	ldr	r5, [r2, r3]
 800236e:	2d00      	cmp	r5, #0
 8002370:	d02e      	beq.n	80023d0 <__register_exitproc+0x8c>
 8002372:	686c      	ldr	r4, [r5, #4]
 8002374:	2c1f      	cmp	r4, #31
 8002376:	dc30      	bgt.n	80023da <__register_exitproc+0x96>
 8002378:	2e00      	cmp	r6, #0
 800237a:	d10f      	bne.n	800239c <__register_exitproc+0x58>
 800237c:	1c63      	adds	r3, r4, #1
 800237e:	606b      	str	r3, [r5, #4]
 8002380:	464b      	mov	r3, r9
 8002382:	3402      	adds	r4, #2
 8002384:	00a4      	lsls	r4, r4, #2
 8002386:	6838      	ldr	r0, [r7, #0]
 8002388:	5163      	str	r3, [r4, r5]
 800238a:	f7ff ffd9 	bl	8002340 <__retarget_lock_release_recursive>
 800238e:	2000      	movs	r0, #0
 8002390:	b002      	add	sp, #8
 8002392:	bce0      	pop	{r5, r6, r7}
 8002394:	46ba      	mov	sl, r7
 8002396:	46b1      	mov	r9, r6
 8002398:	46a8      	mov	r8, r5
 800239a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800239c:	2288      	movs	r2, #136	; 0x88
 800239e:	4651      	mov	r1, sl
 80023a0:	0028      	movs	r0, r5
 80023a2:	00a3      	lsls	r3, r4, #2
 80023a4:	18eb      	adds	r3, r5, r3
 80023a6:	5099      	str	r1, [r3, r2]
 80023a8:	3a87      	subs	r2, #135	; 0x87
 80023aa:	40a2      	lsls	r2, r4
 80023ac:	3089      	adds	r0, #137	; 0x89
 80023ae:	30ff      	adds	r0, #255	; 0xff
 80023b0:	6801      	ldr	r1, [r0, #0]
 80023b2:	4311      	orrs	r1, r2
 80023b4:	6001      	str	r1, [r0, #0]
 80023b6:	2184      	movs	r1, #132	; 0x84
 80023b8:	4640      	mov	r0, r8
 80023ba:	0049      	lsls	r1, r1, #1
 80023bc:	5058      	str	r0, [r3, r1]
 80023be:	2e02      	cmp	r6, #2
 80023c0:	d1dc      	bne.n	800237c <__register_exitproc+0x38>
 80023c2:	002b      	movs	r3, r5
 80023c4:	338d      	adds	r3, #141	; 0x8d
 80023c6:	33ff      	adds	r3, #255	; 0xff
 80023c8:	6819      	ldr	r1, [r3, #0]
 80023ca:	430a      	orrs	r2, r1
 80023cc:	601a      	str	r2, [r3, #0]
 80023ce:	e7d5      	b.n	800237c <__register_exitproc+0x38>
 80023d0:	0015      	movs	r5, r2
 80023d2:	354d      	adds	r5, #77	; 0x4d
 80023d4:	35ff      	adds	r5, #255	; 0xff
 80023d6:	50d5      	str	r5, [r2, r3]
 80023d8:	e7cb      	b.n	8002372 <__register_exitproc+0x2e>
 80023da:	6838      	ldr	r0, [r7, #0]
 80023dc:	f7ff ffb0 	bl	8002340 <__retarget_lock_release_recursive>
 80023e0:	2001      	movs	r0, #1
 80023e2:	4240      	negs	r0, r0
 80023e4:	e7d4      	b.n	8002390 <__register_exitproc+0x4c>
 80023e6:	46c0      	nop			; (mov r8, r8)
 80023e8:	20000430 	.word	0x20000430
 80023ec:	080024b4 	.word	0x080024b4

080023f0 <_init>:
 80023f0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80023f2:	46c0      	nop			; (mov r8, r8)
 80023f4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80023f6:	bc08      	pop	{r3}
 80023f8:	469e      	mov	lr, r3
 80023fa:	4770      	bx	lr

080023fc <_fini>:
 80023fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80023fe:	46c0      	nop			; (mov r8, r8)
 8002400:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8002402:	bc08      	pop	{r3}
 8002404:	469e      	mov	lr, r3
 8002406:	4770      	bx	lr
