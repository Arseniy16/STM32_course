
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000c8c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000024  08000d4c  08000d4c  00010d4c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000d70  08000d70  00010d70  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000d78  08000d78  00010d78  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000d7c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000002c  20000434  080011b0  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000460  080011b0  00020460  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000d6f  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003d3  00000000  00000000  000211cb  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        000005d2  00000000  00000000  0002159e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000138  00000000  00000000  00021b70  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000108  00000000  00000000  00021ca8  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       000007c3  00000000  00000000  00021db0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000007ad  00000000  00000000  00022573  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00022d20  2**0  CONTENTS, READONLY
 17 .debug_frame      000005b4  00000000  00000000  00022d70  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000d34 	.word	0x08000d34

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
 8000104:	08000d34 	.word	0x08000d34

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
 800020c:	f000 f8f0 	bl	80003f0 <__aeabi_idiv0>
 8000210:	bd02      	pop	{r1, pc}
 8000212:	46c0      	nop			; (mov r8, r8)

08000214 <__aeabi_uidivmod>:
 8000214:	2900      	cmp	r1, #0
 8000216:	d0f7      	beq.n	8000208 <__udivsi3+0x100>
 8000218:	e776      	b.n	8000108 <__udivsi3>
 800021a:	4770      	bx	lr

0800021c <__divsi3>:
 800021c:	4603      	mov	r3, r0
 800021e:	430b      	orrs	r3, r1
 8000220:	d47f      	bmi.n	8000322 <__divsi3+0x106>
 8000222:	2200      	movs	r2, #0
 8000224:	0843      	lsrs	r3, r0, #1
 8000226:	428b      	cmp	r3, r1
 8000228:	d374      	bcc.n	8000314 <__divsi3+0xf8>
 800022a:	0903      	lsrs	r3, r0, #4
 800022c:	428b      	cmp	r3, r1
 800022e:	d35f      	bcc.n	80002f0 <__divsi3+0xd4>
 8000230:	0a03      	lsrs	r3, r0, #8
 8000232:	428b      	cmp	r3, r1
 8000234:	d344      	bcc.n	80002c0 <__divsi3+0xa4>
 8000236:	0b03      	lsrs	r3, r0, #12
 8000238:	428b      	cmp	r3, r1
 800023a:	d328      	bcc.n	800028e <__divsi3+0x72>
 800023c:	0c03      	lsrs	r3, r0, #16
 800023e:	428b      	cmp	r3, r1
 8000240:	d30d      	bcc.n	800025e <__divsi3+0x42>
 8000242:	22ff      	movs	r2, #255	; 0xff
 8000244:	0209      	lsls	r1, r1, #8
 8000246:	ba12      	rev	r2, r2
 8000248:	0c03      	lsrs	r3, r0, #16
 800024a:	428b      	cmp	r3, r1
 800024c:	d302      	bcc.n	8000254 <__divsi3+0x38>
 800024e:	1212      	asrs	r2, r2, #8
 8000250:	0209      	lsls	r1, r1, #8
 8000252:	d065      	beq.n	8000320 <__divsi3+0x104>
 8000254:	0b03      	lsrs	r3, r0, #12
 8000256:	428b      	cmp	r3, r1
 8000258:	d319      	bcc.n	800028e <__divsi3+0x72>
 800025a:	e000      	b.n	800025e <__divsi3+0x42>
 800025c:	0a09      	lsrs	r1, r1, #8
 800025e:	0bc3      	lsrs	r3, r0, #15
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x4c>
 8000264:	03cb      	lsls	r3, r1, #15
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0b83      	lsrs	r3, r0, #14
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x58>
 8000270:	038b      	lsls	r3, r1, #14
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0b43      	lsrs	r3, r0, #13
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x64>
 800027c:	034b      	lsls	r3, r1, #13
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	0b03      	lsrs	r3, r0, #12
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x70>
 8000288:	030b      	lsls	r3, r1, #12
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0ac3      	lsrs	r3, r0, #11
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x7c>
 8000294:	02cb      	lsls	r3, r1, #11
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	0a83      	lsrs	r3, r0, #10
 800029c:	428b      	cmp	r3, r1
 800029e:	d301      	bcc.n	80002a4 <__divsi3+0x88>
 80002a0:	028b      	lsls	r3, r1, #10
 80002a2:	1ac0      	subs	r0, r0, r3
 80002a4:	4152      	adcs	r2, r2
 80002a6:	0a43      	lsrs	r3, r0, #9
 80002a8:	428b      	cmp	r3, r1
 80002aa:	d301      	bcc.n	80002b0 <__divsi3+0x94>
 80002ac:	024b      	lsls	r3, r1, #9
 80002ae:	1ac0      	subs	r0, r0, r3
 80002b0:	4152      	adcs	r2, r2
 80002b2:	0a03      	lsrs	r3, r0, #8
 80002b4:	428b      	cmp	r3, r1
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0xa0>
 80002b8:	020b      	lsls	r3, r1, #8
 80002ba:	1ac0      	subs	r0, r0, r3
 80002bc:	4152      	adcs	r2, r2
 80002be:	d2cd      	bcs.n	800025c <__divsi3+0x40>
 80002c0:	09c3      	lsrs	r3, r0, #7
 80002c2:	428b      	cmp	r3, r1
 80002c4:	d301      	bcc.n	80002ca <__divsi3+0xae>
 80002c6:	01cb      	lsls	r3, r1, #7
 80002c8:	1ac0      	subs	r0, r0, r3
 80002ca:	4152      	adcs	r2, r2
 80002cc:	0983      	lsrs	r3, r0, #6
 80002ce:	428b      	cmp	r3, r1
 80002d0:	d301      	bcc.n	80002d6 <__divsi3+0xba>
 80002d2:	018b      	lsls	r3, r1, #6
 80002d4:	1ac0      	subs	r0, r0, r3
 80002d6:	4152      	adcs	r2, r2
 80002d8:	0943      	lsrs	r3, r0, #5
 80002da:	428b      	cmp	r3, r1
 80002dc:	d301      	bcc.n	80002e2 <__divsi3+0xc6>
 80002de:	014b      	lsls	r3, r1, #5
 80002e0:	1ac0      	subs	r0, r0, r3
 80002e2:	4152      	adcs	r2, r2
 80002e4:	0903      	lsrs	r3, r0, #4
 80002e6:	428b      	cmp	r3, r1
 80002e8:	d301      	bcc.n	80002ee <__divsi3+0xd2>
 80002ea:	010b      	lsls	r3, r1, #4
 80002ec:	1ac0      	subs	r0, r0, r3
 80002ee:	4152      	adcs	r2, r2
 80002f0:	08c3      	lsrs	r3, r0, #3
 80002f2:	428b      	cmp	r3, r1
 80002f4:	d301      	bcc.n	80002fa <__divsi3+0xde>
 80002f6:	00cb      	lsls	r3, r1, #3
 80002f8:	1ac0      	subs	r0, r0, r3
 80002fa:	4152      	adcs	r2, r2
 80002fc:	0883      	lsrs	r3, r0, #2
 80002fe:	428b      	cmp	r3, r1
 8000300:	d301      	bcc.n	8000306 <__divsi3+0xea>
 8000302:	008b      	lsls	r3, r1, #2
 8000304:	1ac0      	subs	r0, r0, r3
 8000306:	4152      	adcs	r2, r2
 8000308:	0843      	lsrs	r3, r0, #1
 800030a:	428b      	cmp	r3, r1
 800030c:	d301      	bcc.n	8000312 <__divsi3+0xf6>
 800030e:	004b      	lsls	r3, r1, #1
 8000310:	1ac0      	subs	r0, r0, r3
 8000312:	4152      	adcs	r2, r2
 8000314:	1a41      	subs	r1, r0, r1
 8000316:	d200      	bcs.n	800031a <__divsi3+0xfe>
 8000318:	4601      	mov	r1, r0
 800031a:	4152      	adcs	r2, r2
 800031c:	4610      	mov	r0, r2
 800031e:	4770      	bx	lr
 8000320:	e05d      	b.n	80003de <__divsi3+0x1c2>
 8000322:	0fca      	lsrs	r2, r1, #31
 8000324:	d000      	beq.n	8000328 <__divsi3+0x10c>
 8000326:	4249      	negs	r1, r1
 8000328:	1003      	asrs	r3, r0, #32
 800032a:	d300      	bcc.n	800032e <__divsi3+0x112>
 800032c:	4240      	negs	r0, r0
 800032e:	4053      	eors	r3, r2
 8000330:	2200      	movs	r2, #0
 8000332:	469c      	mov	ip, r3
 8000334:	0903      	lsrs	r3, r0, #4
 8000336:	428b      	cmp	r3, r1
 8000338:	d32d      	bcc.n	8000396 <__divsi3+0x17a>
 800033a:	0a03      	lsrs	r3, r0, #8
 800033c:	428b      	cmp	r3, r1
 800033e:	d312      	bcc.n	8000366 <__divsi3+0x14a>
 8000340:	22fc      	movs	r2, #252	; 0xfc
 8000342:	0189      	lsls	r1, r1, #6
 8000344:	ba12      	rev	r2, r2
 8000346:	0a03      	lsrs	r3, r0, #8
 8000348:	428b      	cmp	r3, r1
 800034a:	d30c      	bcc.n	8000366 <__divsi3+0x14a>
 800034c:	0189      	lsls	r1, r1, #6
 800034e:	1192      	asrs	r2, r2, #6
 8000350:	428b      	cmp	r3, r1
 8000352:	d308      	bcc.n	8000366 <__divsi3+0x14a>
 8000354:	0189      	lsls	r1, r1, #6
 8000356:	1192      	asrs	r2, r2, #6
 8000358:	428b      	cmp	r3, r1
 800035a:	d304      	bcc.n	8000366 <__divsi3+0x14a>
 800035c:	0189      	lsls	r1, r1, #6
 800035e:	d03a      	beq.n	80003d6 <__divsi3+0x1ba>
 8000360:	1192      	asrs	r2, r2, #6
 8000362:	e000      	b.n	8000366 <__divsi3+0x14a>
 8000364:	0989      	lsrs	r1, r1, #6
 8000366:	09c3      	lsrs	r3, r0, #7
 8000368:	428b      	cmp	r3, r1
 800036a:	d301      	bcc.n	8000370 <__divsi3+0x154>
 800036c:	01cb      	lsls	r3, r1, #7
 800036e:	1ac0      	subs	r0, r0, r3
 8000370:	4152      	adcs	r2, r2
 8000372:	0983      	lsrs	r3, r0, #6
 8000374:	428b      	cmp	r3, r1
 8000376:	d301      	bcc.n	800037c <__divsi3+0x160>
 8000378:	018b      	lsls	r3, r1, #6
 800037a:	1ac0      	subs	r0, r0, r3
 800037c:	4152      	adcs	r2, r2
 800037e:	0943      	lsrs	r3, r0, #5
 8000380:	428b      	cmp	r3, r1
 8000382:	d301      	bcc.n	8000388 <__divsi3+0x16c>
 8000384:	014b      	lsls	r3, r1, #5
 8000386:	1ac0      	subs	r0, r0, r3
 8000388:	4152      	adcs	r2, r2
 800038a:	0903      	lsrs	r3, r0, #4
 800038c:	428b      	cmp	r3, r1
 800038e:	d301      	bcc.n	8000394 <__divsi3+0x178>
 8000390:	010b      	lsls	r3, r1, #4
 8000392:	1ac0      	subs	r0, r0, r3
 8000394:	4152      	adcs	r2, r2
 8000396:	08c3      	lsrs	r3, r0, #3
 8000398:	428b      	cmp	r3, r1
 800039a:	d301      	bcc.n	80003a0 <__divsi3+0x184>
 800039c:	00cb      	lsls	r3, r1, #3
 800039e:	1ac0      	subs	r0, r0, r3
 80003a0:	4152      	adcs	r2, r2
 80003a2:	0883      	lsrs	r3, r0, #2
 80003a4:	428b      	cmp	r3, r1
 80003a6:	d301      	bcc.n	80003ac <__divsi3+0x190>
 80003a8:	008b      	lsls	r3, r1, #2
 80003aa:	1ac0      	subs	r0, r0, r3
 80003ac:	4152      	adcs	r2, r2
 80003ae:	d2d9      	bcs.n	8000364 <__divsi3+0x148>
 80003b0:	0843      	lsrs	r3, r0, #1
 80003b2:	428b      	cmp	r3, r1
 80003b4:	d301      	bcc.n	80003ba <__divsi3+0x19e>
 80003b6:	004b      	lsls	r3, r1, #1
 80003b8:	1ac0      	subs	r0, r0, r3
 80003ba:	4152      	adcs	r2, r2
 80003bc:	1a41      	subs	r1, r0, r1
 80003be:	d200      	bcs.n	80003c2 <__divsi3+0x1a6>
 80003c0:	4601      	mov	r1, r0
 80003c2:	4663      	mov	r3, ip
 80003c4:	4152      	adcs	r2, r2
 80003c6:	105b      	asrs	r3, r3, #1
 80003c8:	4610      	mov	r0, r2
 80003ca:	d301      	bcc.n	80003d0 <__divsi3+0x1b4>
 80003cc:	4240      	negs	r0, r0
 80003ce:	2b00      	cmp	r3, #0
 80003d0:	d500      	bpl.n	80003d4 <__divsi3+0x1b8>
 80003d2:	4249      	negs	r1, r1
 80003d4:	4770      	bx	lr
 80003d6:	4663      	mov	r3, ip
 80003d8:	105b      	asrs	r3, r3, #1
 80003da:	d300      	bcc.n	80003de <__divsi3+0x1c2>
 80003dc:	4240      	negs	r0, r0
 80003de:	b501      	push	{r0, lr}
 80003e0:	2000      	movs	r0, #0
 80003e2:	f000 f805 	bl	80003f0 <__aeabi_idiv0>
 80003e6:	bd02      	pop	{r1, pc}

080003e8 <__aeabi_idivmod>:
 80003e8:	2900      	cmp	r1, #0
 80003ea:	d0f8      	beq.n	80003de <__divsi3+0x1c2>
 80003ec:	e716      	b.n	800021c <__divsi3>
 80003ee:	4770      	bx	lr

080003f0 <__aeabi_idiv0>:
 80003f0:	4770      	bx	lr
 80003f2:	46c0      	nop			; (mov r8, r8)

080003f4 <Reset_Handler>:
 80003f4:	480d      	ldr	r0, [pc, #52]	; (800042c <LoopForever+0x2>)
 80003f6:	4685      	mov	sp, r0
 80003f8:	480d      	ldr	r0, [pc, #52]	; (8000430 <LoopForever+0x6>)
 80003fa:	490e      	ldr	r1, [pc, #56]	; (8000434 <LoopForever+0xa>)
 80003fc:	4a0e      	ldr	r2, [pc, #56]	; (8000438 <LoopForever+0xe>)
 80003fe:	2300      	movs	r3, #0
 8000400:	e002      	b.n	8000408 <LoopCopyDataInit>

08000402 <CopyDataInit>:
 8000402:	58d4      	ldr	r4, [r2, r3]
 8000404:	50c4      	str	r4, [r0, r3]
 8000406:	3304      	adds	r3, #4

08000408 <LoopCopyDataInit>:
 8000408:	18c4      	adds	r4, r0, r3
 800040a:	428c      	cmp	r4, r1
 800040c:	d3f9      	bcc.n	8000402 <CopyDataInit>
 800040e:	4a0b      	ldr	r2, [pc, #44]	; (800043c <LoopForever+0x12>)
 8000410:	4c0b      	ldr	r4, [pc, #44]	; (8000440 <LoopForever+0x16>)
 8000412:	2300      	movs	r3, #0
 8000414:	e001      	b.n	800041a <LoopFillZerobss>

08000416 <FillZerobss>:
 8000416:	6013      	str	r3, [r2, #0]
 8000418:	3204      	adds	r2, #4

0800041a <LoopFillZerobss>:
 800041a:	42a2      	cmp	r2, r4
 800041c:	d3fb      	bcc.n	8000416 <FillZerobss>
 800041e:	f000 fb8f 	bl	8000b40 <SystemInit>
 8000422:	f000 fbe3 	bl	8000bec <__libc_init_array>
 8000426:	f000 fb81 	bl	8000b2c <main>

0800042a <LoopForever>:
 800042a:	e7fe      	b.n	800042a <LoopForever>
 800042c:	20002000 	.word	0x20002000
 8000430:	20000000 	.word	0x20000000
 8000434:	20000434 	.word	0x20000434
 8000438:	08000d7c 	.word	0x08000d7c
 800043c:	20000434 	.word	0x20000434
 8000440:	20000460 	.word	0x20000460

08000444 <ADC1_COMP_IRQHandler>:
 8000444:	e7fe      	b.n	8000444 <ADC1_COMP_IRQHandler>
	...

08000448 <NVIC_SetPriority>:
 8000448:	b590      	push	{r4, r7, lr}
 800044a:	b083      	sub	sp, #12
 800044c:	af00      	add	r7, sp, #0
 800044e:	0002      	movs	r2, r0
 8000450:	6039      	str	r1, [r7, #0]
 8000452:	1dfb      	adds	r3, r7, #7
 8000454:	701a      	strb	r2, [r3, #0]
 8000456:	1dfb      	adds	r3, r7, #7
 8000458:	781b      	ldrb	r3, [r3, #0]
 800045a:	2b7f      	cmp	r3, #127	; 0x7f
 800045c:	d932      	bls.n	80004c4 <NVIC_SetPriority+0x7c>
 800045e:	4a2f      	ldr	r2, [pc, #188]	; (800051c <NVIC_SetPriority+0xd4>)
 8000460:	1dfb      	adds	r3, r7, #7
 8000462:	781b      	ldrb	r3, [r3, #0]
 8000464:	0019      	movs	r1, r3
 8000466:	230f      	movs	r3, #15
 8000468:	400b      	ands	r3, r1
 800046a:	3b08      	subs	r3, #8
 800046c:	089b      	lsrs	r3, r3, #2
 800046e:	3306      	adds	r3, #6
 8000470:	009b      	lsls	r3, r3, #2
 8000472:	18d3      	adds	r3, r2, r3
 8000474:	3304      	adds	r3, #4
 8000476:	681b      	ldr	r3, [r3, #0]
 8000478:	1dfa      	adds	r2, r7, #7
 800047a:	7812      	ldrb	r2, [r2, #0]
 800047c:	0011      	movs	r1, r2
 800047e:	2203      	movs	r2, #3
 8000480:	400a      	ands	r2, r1
 8000482:	00d2      	lsls	r2, r2, #3
 8000484:	21ff      	movs	r1, #255	; 0xff
 8000486:	4091      	lsls	r1, r2
 8000488:	000a      	movs	r2, r1
 800048a:	43d2      	mvns	r2, r2
 800048c:	401a      	ands	r2, r3
 800048e:	0011      	movs	r1, r2
 8000490:	683b      	ldr	r3, [r7, #0]
 8000492:	019b      	lsls	r3, r3, #6
 8000494:	22ff      	movs	r2, #255	; 0xff
 8000496:	401a      	ands	r2, r3
 8000498:	1dfb      	adds	r3, r7, #7
 800049a:	781b      	ldrb	r3, [r3, #0]
 800049c:	0018      	movs	r0, r3
 800049e:	2303      	movs	r3, #3
 80004a0:	4003      	ands	r3, r0
 80004a2:	00db      	lsls	r3, r3, #3
 80004a4:	409a      	lsls	r2, r3
 80004a6:	481d      	ldr	r0, [pc, #116]	; (800051c <NVIC_SetPriority+0xd4>)
 80004a8:	1dfb      	adds	r3, r7, #7
 80004aa:	781b      	ldrb	r3, [r3, #0]
 80004ac:	001c      	movs	r4, r3
 80004ae:	230f      	movs	r3, #15
 80004b0:	4023      	ands	r3, r4
 80004b2:	3b08      	subs	r3, #8
 80004b4:	089b      	lsrs	r3, r3, #2
 80004b6:	430a      	orrs	r2, r1
 80004b8:	3306      	adds	r3, #6
 80004ba:	009b      	lsls	r3, r3, #2
 80004bc:	18c3      	adds	r3, r0, r3
 80004be:	3304      	adds	r3, #4
 80004c0:	601a      	str	r2, [r3, #0]
 80004c2:	e027      	b.n	8000514 <NVIC_SetPriority+0xcc>
 80004c4:	4a16      	ldr	r2, [pc, #88]	; (8000520 <NVIC_SetPriority+0xd8>)
 80004c6:	1dfb      	adds	r3, r7, #7
 80004c8:	781b      	ldrb	r3, [r3, #0]
 80004ca:	b25b      	sxtb	r3, r3
 80004cc:	089b      	lsrs	r3, r3, #2
 80004ce:	33c0      	adds	r3, #192	; 0xc0
 80004d0:	009b      	lsls	r3, r3, #2
 80004d2:	589b      	ldr	r3, [r3, r2]
 80004d4:	1dfa      	adds	r2, r7, #7
 80004d6:	7812      	ldrb	r2, [r2, #0]
 80004d8:	0011      	movs	r1, r2
 80004da:	2203      	movs	r2, #3
 80004dc:	400a      	ands	r2, r1
 80004de:	00d2      	lsls	r2, r2, #3
 80004e0:	21ff      	movs	r1, #255	; 0xff
 80004e2:	4091      	lsls	r1, r2
 80004e4:	000a      	movs	r2, r1
 80004e6:	43d2      	mvns	r2, r2
 80004e8:	401a      	ands	r2, r3
 80004ea:	0011      	movs	r1, r2
 80004ec:	683b      	ldr	r3, [r7, #0]
 80004ee:	019b      	lsls	r3, r3, #6
 80004f0:	22ff      	movs	r2, #255	; 0xff
 80004f2:	401a      	ands	r2, r3
 80004f4:	1dfb      	adds	r3, r7, #7
 80004f6:	781b      	ldrb	r3, [r3, #0]
 80004f8:	0018      	movs	r0, r3
 80004fa:	2303      	movs	r3, #3
 80004fc:	4003      	ands	r3, r0
 80004fe:	00db      	lsls	r3, r3, #3
 8000500:	409a      	lsls	r2, r3
 8000502:	4807      	ldr	r0, [pc, #28]	; (8000520 <NVIC_SetPriority+0xd8>)
 8000504:	1dfb      	adds	r3, r7, #7
 8000506:	781b      	ldrb	r3, [r3, #0]
 8000508:	b25b      	sxtb	r3, r3
 800050a:	089b      	lsrs	r3, r3, #2
 800050c:	430a      	orrs	r2, r1
 800050e:	33c0      	adds	r3, #192	; 0xc0
 8000510:	009b      	lsls	r3, r3, #2
 8000512:	501a      	str	r2, [r3, r0]
 8000514:	46c0      	nop			; (mov r8, r8)
 8000516:	46bd      	mov	sp, r7
 8000518:	b003      	add	sp, #12
 800051a:	bd90      	pop	{r4, r7, pc}
 800051c:	e000ed00 	.word	0xe000ed00
 8000520:	e000e100 	.word	0xe000e100

08000524 <LL_RCC_HSI_Enable>:
 8000524:	b580      	push	{r7, lr}
 8000526:	af00      	add	r7, sp, #0
 8000528:	4b04      	ldr	r3, [pc, #16]	; (800053c <LL_RCC_HSI_Enable+0x18>)
 800052a:	681a      	ldr	r2, [r3, #0]
 800052c:	4b03      	ldr	r3, [pc, #12]	; (800053c <LL_RCC_HSI_Enable+0x18>)
 800052e:	2101      	movs	r1, #1
 8000530:	430a      	orrs	r2, r1
 8000532:	601a      	str	r2, [r3, #0]
 8000534:	46c0      	nop			; (mov r8, r8)
 8000536:	46bd      	mov	sp, r7
 8000538:	bd80      	pop	{r7, pc}
 800053a:	46c0      	nop			; (mov r8, r8)
 800053c:	40021000 	.word	0x40021000

08000540 <LL_RCC_HSI_IsReady>:
 8000540:	b580      	push	{r7, lr}
 8000542:	af00      	add	r7, sp, #0
 8000544:	4b05      	ldr	r3, [pc, #20]	; (800055c <LL_RCC_HSI_IsReady+0x1c>)
 8000546:	681b      	ldr	r3, [r3, #0]
 8000548:	2202      	movs	r2, #2
 800054a:	4013      	ands	r3, r2
 800054c:	3b02      	subs	r3, #2
 800054e:	425a      	negs	r2, r3
 8000550:	4153      	adcs	r3, r2
 8000552:	b2db      	uxtb	r3, r3
 8000554:	0018      	movs	r0, r3
 8000556:	46bd      	mov	sp, r7
 8000558:	bd80      	pop	{r7, pc}
 800055a:	46c0      	nop			; (mov r8, r8)
 800055c:	40021000 	.word	0x40021000

08000560 <LL_RCC_SetSysClkSource>:
 8000560:	b580      	push	{r7, lr}
 8000562:	b082      	sub	sp, #8
 8000564:	af00      	add	r7, sp, #0
 8000566:	6078      	str	r0, [r7, #4]
 8000568:	4b06      	ldr	r3, [pc, #24]	; (8000584 <LL_RCC_SetSysClkSource+0x24>)
 800056a:	685b      	ldr	r3, [r3, #4]
 800056c:	2203      	movs	r2, #3
 800056e:	4393      	bics	r3, r2
 8000570:	0019      	movs	r1, r3
 8000572:	4b04      	ldr	r3, [pc, #16]	; (8000584 <LL_RCC_SetSysClkSource+0x24>)
 8000574:	687a      	ldr	r2, [r7, #4]
 8000576:	430a      	orrs	r2, r1
 8000578:	605a      	str	r2, [r3, #4]
 800057a:	46c0      	nop			; (mov r8, r8)
 800057c:	46bd      	mov	sp, r7
 800057e:	b002      	add	sp, #8
 8000580:	bd80      	pop	{r7, pc}
 8000582:	46c0      	nop			; (mov r8, r8)
 8000584:	40021000 	.word	0x40021000

08000588 <LL_RCC_GetSysClkSource>:
 8000588:	b580      	push	{r7, lr}
 800058a:	af00      	add	r7, sp, #0
 800058c:	4b03      	ldr	r3, [pc, #12]	; (800059c <LL_RCC_GetSysClkSource+0x14>)
 800058e:	685b      	ldr	r3, [r3, #4]
 8000590:	220c      	movs	r2, #12
 8000592:	4013      	ands	r3, r2
 8000594:	0018      	movs	r0, r3
 8000596:	46bd      	mov	sp, r7
 8000598:	bd80      	pop	{r7, pc}
 800059a:	46c0      	nop			; (mov r8, r8)
 800059c:	40021000 	.word	0x40021000

080005a0 <LL_RCC_SetAHBPrescaler>:
 80005a0:	b580      	push	{r7, lr}
 80005a2:	b082      	sub	sp, #8
 80005a4:	af00      	add	r7, sp, #0
 80005a6:	6078      	str	r0, [r7, #4]
 80005a8:	4b06      	ldr	r3, [pc, #24]	; (80005c4 <LL_RCC_SetAHBPrescaler+0x24>)
 80005aa:	685b      	ldr	r3, [r3, #4]
 80005ac:	22f0      	movs	r2, #240	; 0xf0
 80005ae:	4393      	bics	r3, r2
 80005b0:	0019      	movs	r1, r3
 80005b2:	4b04      	ldr	r3, [pc, #16]	; (80005c4 <LL_RCC_SetAHBPrescaler+0x24>)
 80005b4:	687a      	ldr	r2, [r7, #4]
 80005b6:	430a      	orrs	r2, r1
 80005b8:	605a      	str	r2, [r3, #4]
 80005ba:	46c0      	nop			; (mov r8, r8)
 80005bc:	46bd      	mov	sp, r7
 80005be:	b002      	add	sp, #8
 80005c0:	bd80      	pop	{r7, pc}
 80005c2:	46c0      	nop			; (mov r8, r8)
 80005c4:	40021000 	.word	0x40021000

080005c8 <LL_RCC_SetAPB1Prescaler>:
 80005c8:	b580      	push	{r7, lr}
 80005ca:	b082      	sub	sp, #8
 80005cc:	af00      	add	r7, sp, #0
 80005ce:	6078      	str	r0, [r7, #4]
 80005d0:	4b06      	ldr	r3, [pc, #24]	; (80005ec <LL_RCC_SetAPB1Prescaler+0x24>)
 80005d2:	685b      	ldr	r3, [r3, #4]
 80005d4:	4a06      	ldr	r2, [pc, #24]	; (80005f0 <LL_RCC_SetAPB1Prescaler+0x28>)
 80005d6:	4013      	ands	r3, r2
 80005d8:	0019      	movs	r1, r3
 80005da:	4b04      	ldr	r3, [pc, #16]	; (80005ec <LL_RCC_SetAPB1Prescaler+0x24>)
 80005dc:	687a      	ldr	r2, [r7, #4]
 80005de:	430a      	orrs	r2, r1
 80005e0:	605a      	str	r2, [r3, #4]
 80005e2:	46c0      	nop			; (mov r8, r8)
 80005e4:	46bd      	mov	sp, r7
 80005e6:	b002      	add	sp, #8
 80005e8:	bd80      	pop	{r7, pc}
 80005ea:	46c0      	nop			; (mov r8, r8)
 80005ec:	40021000 	.word	0x40021000
 80005f0:	fffff8ff 	.word	0xfffff8ff

080005f4 <LL_RCC_PLL_Enable>:
 80005f4:	b580      	push	{r7, lr}
 80005f6:	af00      	add	r7, sp, #0
 80005f8:	4b04      	ldr	r3, [pc, #16]	; (800060c <LL_RCC_PLL_Enable+0x18>)
 80005fa:	681a      	ldr	r2, [r3, #0]
 80005fc:	4b03      	ldr	r3, [pc, #12]	; (800060c <LL_RCC_PLL_Enable+0x18>)
 80005fe:	2180      	movs	r1, #128	; 0x80
 8000600:	0449      	lsls	r1, r1, #17
 8000602:	430a      	orrs	r2, r1
 8000604:	601a      	str	r2, [r3, #0]
 8000606:	46c0      	nop			; (mov r8, r8)
 8000608:	46bd      	mov	sp, r7
 800060a:	bd80      	pop	{r7, pc}
 800060c:	40021000 	.word	0x40021000

08000610 <LL_RCC_PLL_IsReady>:
 8000610:	b580      	push	{r7, lr}
 8000612:	af00      	add	r7, sp, #0
 8000614:	4b07      	ldr	r3, [pc, #28]	; (8000634 <LL_RCC_PLL_IsReady+0x24>)
 8000616:	681a      	ldr	r2, [r3, #0]
 8000618:	2380      	movs	r3, #128	; 0x80
 800061a:	049b      	lsls	r3, r3, #18
 800061c:	4013      	ands	r3, r2
 800061e:	22fe      	movs	r2, #254	; 0xfe
 8000620:	0612      	lsls	r2, r2, #24
 8000622:	4694      	mov	ip, r2
 8000624:	4463      	add	r3, ip
 8000626:	425a      	negs	r2, r3
 8000628:	4153      	adcs	r3, r2
 800062a:	b2db      	uxtb	r3, r3
 800062c:	0018      	movs	r0, r3
 800062e:	46bd      	mov	sp, r7
 8000630:	bd80      	pop	{r7, pc}
 8000632:	46c0      	nop			; (mov r8, r8)
 8000634:	40021000 	.word	0x40021000

08000638 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000638:	b580      	push	{r7, lr}
 800063a:	b082      	sub	sp, #8
 800063c:	af00      	add	r7, sp, #0
 800063e:	6078      	str	r0, [r7, #4]
 8000640:	6039      	str	r1, [r7, #0]
 8000642:	4b0e      	ldr	r3, [pc, #56]	; (800067c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000644:	685b      	ldr	r3, [r3, #4]
 8000646:	4a0e      	ldr	r2, [pc, #56]	; (8000680 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000648:	4013      	ands	r3, r2
 800064a:	0019      	movs	r1, r3
 800064c:	687a      	ldr	r2, [r7, #4]
 800064e:	2380      	movs	r3, #128	; 0x80
 8000650:	025b      	lsls	r3, r3, #9
 8000652:	401a      	ands	r2, r3
 8000654:	683b      	ldr	r3, [r7, #0]
 8000656:	431a      	orrs	r2, r3
 8000658:	4b08      	ldr	r3, [pc, #32]	; (800067c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800065a:	430a      	orrs	r2, r1
 800065c:	605a      	str	r2, [r3, #4]
 800065e:	4b07      	ldr	r3, [pc, #28]	; (800067c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000660:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000662:	220f      	movs	r2, #15
 8000664:	4393      	bics	r3, r2
 8000666:	0019      	movs	r1, r3
 8000668:	687b      	ldr	r3, [r7, #4]
 800066a:	220f      	movs	r2, #15
 800066c:	401a      	ands	r2, r3
 800066e:	4b03      	ldr	r3, [pc, #12]	; (800067c <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000670:	430a      	orrs	r2, r1
 8000672:	62da      	str	r2, [r3, #44]	; 0x2c
 8000674:	46c0      	nop			; (mov r8, r8)
 8000676:	46bd      	mov	sp, r7
 8000678:	b002      	add	sp, #8
 800067a:	bd80      	pop	{r7, pc}
 800067c:	40021000 	.word	0x40021000
 8000680:	ffc2ffff 	.word	0xffc2ffff

08000684 <LL_FLASH_SetLatency>:
 8000684:	b580      	push	{r7, lr}
 8000686:	b082      	sub	sp, #8
 8000688:	af00      	add	r7, sp, #0
 800068a:	6078      	str	r0, [r7, #4]
 800068c:	4b06      	ldr	r3, [pc, #24]	; (80006a8 <LL_FLASH_SetLatency+0x24>)
 800068e:	681b      	ldr	r3, [r3, #0]
 8000690:	2201      	movs	r2, #1
 8000692:	4393      	bics	r3, r2
 8000694:	0019      	movs	r1, r3
 8000696:	4b04      	ldr	r3, [pc, #16]	; (80006a8 <LL_FLASH_SetLatency+0x24>)
 8000698:	687a      	ldr	r2, [r7, #4]
 800069a:	430a      	orrs	r2, r1
 800069c:	601a      	str	r2, [r3, #0]
 800069e:	46c0      	nop			; (mov r8, r8)
 80006a0:	46bd      	mov	sp, r7
 80006a2:	b002      	add	sp, #8
 80006a4:	bd80      	pop	{r7, pc}
 80006a6:	46c0      	nop			; (mov r8, r8)
 80006a8:	40022000 	.word	0x40022000

080006ac <LL_AHB1_GRP1_EnableClock>:
 80006ac:	b580      	push	{r7, lr}
 80006ae:	b084      	sub	sp, #16
 80006b0:	af00      	add	r7, sp, #0
 80006b2:	6078      	str	r0, [r7, #4]
 80006b4:	4b07      	ldr	r3, [pc, #28]	; (80006d4 <LL_AHB1_GRP1_EnableClock+0x28>)
 80006b6:	6959      	ldr	r1, [r3, #20]
 80006b8:	4b06      	ldr	r3, [pc, #24]	; (80006d4 <LL_AHB1_GRP1_EnableClock+0x28>)
 80006ba:	687a      	ldr	r2, [r7, #4]
 80006bc:	430a      	orrs	r2, r1
 80006be:	615a      	str	r2, [r3, #20]
 80006c0:	4b04      	ldr	r3, [pc, #16]	; (80006d4 <LL_AHB1_GRP1_EnableClock+0x28>)
 80006c2:	695b      	ldr	r3, [r3, #20]
 80006c4:	687a      	ldr	r2, [r7, #4]
 80006c6:	4013      	ands	r3, r2
 80006c8:	60fb      	str	r3, [r7, #12]
 80006ca:	68fb      	ldr	r3, [r7, #12]
 80006cc:	46c0      	nop			; (mov r8, r8)
 80006ce:	46bd      	mov	sp, r7
 80006d0:	b004      	add	sp, #16
 80006d2:	bd80      	pop	{r7, pc}
 80006d4:	40021000 	.word	0x40021000

080006d8 <LL_GPIO_SetPinMode>:
 80006d8:	b580      	push	{r7, lr}
 80006da:	b084      	sub	sp, #16
 80006dc:	af00      	add	r7, sp, #0
 80006de:	60f8      	str	r0, [r7, #12]
 80006e0:	60b9      	str	r1, [r7, #8]
 80006e2:	607a      	str	r2, [r7, #4]
 80006e4:	68fb      	ldr	r3, [r7, #12]
 80006e6:	6819      	ldr	r1, [r3, #0]
 80006e8:	68bb      	ldr	r3, [r7, #8]
 80006ea:	435b      	muls	r3, r3
 80006ec:	001a      	movs	r2, r3
 80006ee:	0013      	movs	r3, r2
 80006f0:	005b      	lsls	r3, r3, #1
 80006f2:	189b      	adds	r3, r3, r2
 80006f4:	43db      	mvns	r3, r3
 80006f6:	400b      	ands	r3, r1
 80006f8:	001a      	movs	r2, r3
 80006fa:	68bb      	ldr	r3, [r7, #8]
 80006fc:	435b      	muls	r3, r3
 80006fe:	6879      	ldr	r1, [r7, #4]
 8000700:	434b      	muls	r3, r1
 8000702:	431a      	orrs	r2, r3
 8000704:	68fb      	ldr	r3, [r7, #12]
 8000706:	601a      	str	r2, [r3, #0]
 8000708:	46c0      	nop			; (mov r8, r8)
 800070a:	46bd      	mov	sp, r7
 800070c:	b004      	add	sp, #16
 800070e:	bd80      	pop	{r7, pc}

08000710 <LL_GPIO_WriteOutputPort>:
 8000710:	b580      	push	{r7, lr}
 8000712:	b082      	sub	sp, #8
 8000714:	af00      	add	r7, sp, #0
 8000716:	6078      	str	r0, [r7, #4]
 8000718:	6039      	str	r1, [r7, #0]
 800071a:	687b      	ldr	r3, [r7, #4]
 800071c:	683a      	ldr	r2, [r7, #0]
 800071e:	615a      	str	r2, [r3, #20]
 8000720:	46c0      	nop			; (mov r8, r8)
 8000722:	46bd      	mov	sp, r7
 8000724:	b002      	add	sp, #8
 8000726:	bd80      	pop	{r7, pc}

08000728 <LL_GPIO_ResetOutputPin>:
 8000728:	b580      	push	{r7, lr}
 800072a:	b082      	sub	sp, #8
 800072c:	af00      	add	r7, sp, #0
 800072e:	6078      	str	r0, [r7, #4]
 8000730:	6039      	str	r1, [r7, #0]
 8000732:	687b      	ldr	r3, [r7, #4]
 8000734:	683a      	ldr	r2, [r7, #0]
 8000736:	629a      	str	r2, [r3, #40]	; 0x28
 8000738:	46c0      	nop			; (mov r8, r8)
 800073a:	46bd      	mov	sp, r7
 800073c:	b002      	add	sp, #8
 800073e:	bd80      	pop	{r7, pc}

08000740 <LL_InitTick>:
 8000740:	b580      	push	{r7, lr}
 8000742:	b082      	sub	sp, #8
 8000744:	af00      	add	r7, sp, #0
 8000746:	6078      	str	r0, [r7, #4]
 8000748:	6039      	str	r1, [r7, #0]
 800074a:	6839      	ldr	r1, [r7, #0]
 800074c:	6878      	ldr	r0, [r7, #4]
 800074e:	f7ff fcdb 	bl	8000108 <__udivsi3>
 8000752:	0003      	movs	r3, r0
 8000754:	001a      	movs	r2, r3
 8000756:	4b06      	ldr	r3, [pc, #24]	; (8000770 <LL_InitTick+0x30>)
 8000758:	3a01      	subs	r2, #1
 800075a:	605a      	str	r2, [r3, #4]
 800075c:	4b04      	ldr	r3, [pc, #16]	; (8000770 <LL_InitTick+0x30>)
 800075e:	2200      	movs	r2, #0
 8000760:	609a      	str	r2, [r3, #8]
 8000762:	4b03      	ldr	r3, [pc, #12]	; (8000770 <LL_InitTick+0x30>)
 8000764:	2205      	movs	r2, #5
 8000766:	601a      	str	r2, [r3, #0]
 8000768:	46c0      	nop			; (mov r8, r8)
 800076a:	46bd      	mov	sp, r7
 800076c:	b002      	add	sp, #8
 800076e:	bd80      	pop	{r7, pc}
 8000770:	e000e010 	.word	0xe000e010

08000774 <LL_SYSTICK_EnableIT>:
 8000774:	b580      	push	{r7, lr}
 8000776:	af00      	add	r7, sp, #0
 8000778:	4b04      	ldr	r3, [pc, #16]	; (800078c <LL_SYSTICK_EnableIT+0x18>)
 800077a:	681a      	ldr	r2, [r3, #0]
 800077c:	4b03      	ldr	r3, [pc, #12]	; (800078c <LL_SYSTICK_EnableIT+0x18>)
 800077e:	2102      	movs	r1, #2
 8000780:	430a      	orrs	r2, r1
 8000782:	601a      	str	r2, [r3, #0]
 8000784:	46c0      	nop			; (mov r8, r8)
 8000786:	46bd      	mov	sp, r7
 8000788:	bd80      	pop	{r7, pc}
 800078a:	46c0      	nop			; (mov r8, r8)
 800078c:	e000e010 	.word	0xe000e010

08000790 <mask_indicator>:
 8000790:	b580      	push	{r7, lr}
 8000792:	b082      	sub	sp, #8
 8000794:	af00      	add	r7, sp, #0
 8000796:	6078      	str	r0, [r7, #4]
 8000798:	687b      	ldr	r3, [r7, #4]
 800079a:	09db      	lsrs	r3, r3, #7
 800079c:	2201      	movs	r2, #1
 800079e:	4013      	ands	r3, r2
 80007a0:	01da      	lsls	r2, r3, #7
 80007a2:	687b      	ldr	r3, [r7, #4]
 80007a4:	099b      	lsrs	r3, r3, #6
 80007a6:	2101      	movs	r1, #1
 80007a8:	400b      	ands	r3, r1
 80007aa:	019b      	lsls	r3, r3, #6
 80007ac:	431a      	orrs	r2, r3
 80007ae:	687b      	ldr	r3, [r7, #4]
 80007b0:	095b      	lsrs	r3, r3, #5
 80007b2:	2101      	movs	r1, #1
 80007b4:	400b      	ands	r3, r1
 80007b6:	015b      	lsls	r3, r3, #5
 80007b8:	431a      	orrs	r2, r3
 80007ba:	687b      	ldr	r3, [r7, #4]
 80007bc:	091b      	lsrs	r3, r3, #4
 80007be:	2101      	movs	r1, #1
 80007c0:	400b      	ands	r3, r1
 80007c2:	011b      	lsls	r3, r3, #4
 80007c4:	431a      	orrs	r2, r3
 80007c6:	687b      	ldr	r3, [r7, #4]
 80007c8:	08db      	lsrs	r3, r3, #3
 80007ca:	2101      	movs	r1, #1
 80007cc:	400b      	ands	r3, r1
 80007ce:	00db      	lsls	r3, r3, #3
 80007d0:	431a      	orrs	r2, r3
 80007d2:	687b      	ldr	r3, [r7, #4]
 80007d4:	089b      	lsrs	r3, r3, #2
 80007d6:	2101      	movs	r1, #1
 80007d8:	400b      	ands	r3, r1
 80007da:	009b      	lsls	r3, r3, #2
 80007dc:	431a      	orrs	r2, r3
 80007de:	687b      	ldr	r3, [r7, #4]
 80007e0:	085b      	lsrs	r3, r3, #1
 80007e2:	2101      	movs	r1, #1
 80007e4:	400b      	ands	r3, r1
 80007e6:	005b      	lsls	r3, r3, #1
 80007e8:	431a      	orrs	r2, r3
 80007ea:	687b      	ldr	r3, [r7, #4]
 80007ec:	2101      	movs	r1, #1
 80007ee:	400b      	ands	r3, r1
 80007f0:	4313      	orrs	r3, r2
 80007f2:	0018      	movs	r0, r3
 80007f4:	46bd      	mov	sp, r7
 80007f6:	b002      	add	sp, #8
 80007f8:	bd80      	pop	{r7, pc}
	...

080007fc <rcc_config>:
 80007fc:	b580      	push	{r7, lr}
 80007fe:	af00      	add	r7, sp, #0
 8000800:	2001      	movs	r0, #1
 8000802:	f7ff ff3f 	bl	8000684 <LL_FLASH_SetLatency>
 8000806:	f7ff fe8d 	bl	8000524 <LL_RCC_HSI_Enable>
 800080a:	46c0      	nop			; (mov r8, r8)
 800080c:	f7ff fe98 	bl	8000540 <LL_RCC_HSI_IsReady>
 8000810:	0003      	movs	r3, r0
 8000812:	2b01      	cmp	r3, #1
 8000814:	d1fa      	bne.n	800080c <rcc_config+0x10>
 8000816:	23a0      	movs	r3, #160	; 0xa0
 8000818:	039b      	lsls	r3, r3, #14
 800081a:	0019      	movs	r1, r3
 800081c:	2000      	movs	r0, #0
 800081e:	f7ff ff0b 	bl	8000638 <LL_RCC_PLL_ConfigDomain_SYS>
 8000822:	f7ff fee7 	bl	80005f4 <LL_RCC_PLL_Enable>
 8000826:	46c0      	nop			; (mov r8, r8)
 8000828:	f7ff fef2 	bl	8000610 <LL_RCC_PLL_IsReady>
 800082c:	0003      	movs	r3, r0
 800082e:	2b01      	cmp	r3, #1
 8000830:	d1fa      	bne.n	8000828 <rcc_config+0x2c>
 8000832:	2000      	movs	r0, #0
 8000834:	f7ff feb4 	bl	80005a0 <LL_RCC_SetAHBPrescaler>
 8000838:	2002      	movs	r0, #2
 800083a:	f7ff fe91 	bl	8000560 <LL_RCC_SetSysClkSource>
 800083e:	46c0      	nop			; (mov r8, r8)
 8000840:	f7ff fea2 	bl	8000588 <LL_RCC_GetSysClkSource>
 8000844:	0003      	movs	r3, r0
 8000846:	2b08      	cmp	r3, #8
 8000848:	d1fa      	bne.n	8000840 <rcc_config+0x44>
 800084a:	2000      	movs	r0, #0
 800084c:	f7ff febc 	bl	80005c8 <LL_RCC_SetAPB1Prescaler>
 8000850:	4b02      	ldr	r3, [pc, #8]	; (800085c <rcc_config+0x60>)
 8000852:	4a03      	ldr	r2, [pc, #12]	; (8000860 <rcc_config+0x64>)
 8000854:	601a      	str	r2, [r3, #0]
 8000856:	46c0      	nop			; (mov r8, r8)
 8000858:	46bd      	mov	sp, r7
 800085a:	bd80      	pop	{r7, pc}
 800085c:	20000000 	.word	0x20000000
 8000860:	02dc6c00 	.word	0x02dc6c00

08000864 <gpio_config>:
 8000864:	b580      	push	{r7, lr}
 8000866:	af00      	add	r7, sp, #0
 8000868:	2380      	movs	r3, #128	; 0x80
 800086a:	031b      	lsls	r3, r3, #12
 800086c:	0018      	movs	r0, r3
 800086e:	f7ff ff1d 	bl	80006ac <LL_AHB1_GRP1_EnableClock>
 8000872:	2380      	movs	r3, #128	; 0x80
 8000874:	005b      	lsls	r3, r3, #1
 8000876:	4834      	ldr	r0, [pc, #208]	; (8000948 <gpio_config+0xe4>)
 8000878:	2201      	movs	r2, #1
 800087a:	0019      	movs	r1, r3
 800087c:	f7ff ff2c 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000880:	2380      	movs	r3, #128	; 0x80
 8000882:	009b      	lsls	r3, r3, #2
 8000884:	4830      	ldr	r0, [pc, #192]	; (8000948 <gpio_config+0xe4>)
 8000886:	2201      	movs	r2, #1
 8000888:	0019      	movs	r1, r3
 800088a:	f7ff ff25 	bl	80006d8 <LL_GPIO_SetPinMode>
 800088e:	4b2e      	ldr	r3, [pc, #184]	; (8000948 <gpio_config+0xe4>)
 8000890:	2201      	movs	r2, #1
 8000892:	2101      	movs	r1, #1
 8000894:	0018      	movs	r0, r3
 8000896:	f7ff ff1f 	bl	80006d8 <LL_GPIO_SetPinMode>
 800089a:	4b2b      	ldr	r3, [pc, #172]	; (8000948 <gpio_config+0xe4>)
 800089c:	2201      	movs	r2, #1
 800089e:	2102      	movs	r1, #2
 80008a0:	0018      	movs	r0, r3
 80008a2:	f7ff ff19 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008a6:	4b28      	ldr	r3, [pc, #160]	; (8000948 <gpio_config+0xe4>)
 80008a8:	2201      	movs	r2, #1
 80008aa:	2104      	movs	r1, #4
 80008ac:	0018      	movs	r0, r3
 80008ae:	f7ff ff13 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008b2:	4b25      	ldr	r3, [pc, #148]	; (8000948 <gpio_config+0xe4>)
 80008b4:	2201      	movs	r2, #1
 80008b6:	2108      	movs	r1, #8
 80008b8:	0018      	movs	r0, r3
 80008ba:	f7ff ff0d 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008be:	2380      	movs	r3, #128	; 0x80
 80008c0:	029b      	lsls	r3, r3, #10
 80008c2:	0018      	movs	r0, r3
 80008c4:	f7ff fef2 	bl	80006ac <LL_AHB1_GRP1_EnableClock>
 80008c8:	2390      	movs	r3, #144	; 0x90
 80008ca:	05db      	lsls	r3, r3, #23
 80008cc:	2200      	movs	r2, #0
 80008ce:	2101      	movs	r1, #1
 80008d0:	0018      	movs	r0, r3
 80008d2:	f7ff ff01 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008d6:	2380      	movs	r3, #128	; 0x80
 80008d8:	02db      	lsls	r3, r3, #11
 80008da:	0018      	movs	r0, r3
 80008dc:	f7ff fee6 	bl	80006ac <LL_AHB1_GRP1_EnableClock>
 80008e0:	4b1a      	ldr	r3, [pc, #104]	; (800094c <gpio_config+0xe8>)
 80008e2:	2201      	movs	r2, #1
 80008e4:	2101      	movs	r1, #1
 80008e6:	0018      	movs	r0, r3
 80008e8:	f7ff fef6 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008ec:	4b17      	ldr	r3, [pc, #92]	; (800094c <gpio_config+0xe8>)
 80008ee:	2201      	movs	r2, #1
 80008f0:	2102      	movs	r1, #2
 80008f2:	0018      	movs	r0, r3
 80008f4:	f7ff fef0 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008f8:	4b14      	ldr	r3, [pc, #80]	; (800094c <gpio_config+0xe8>)
 80008fa:	2201      	movs	r2, #1
 80008fc:	2104      	movs	r1, #4
 80008fe:	0018      	movs	r0, r3
 8000900:	f7ff feea 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000904:	4b11      	ldr	r3, [pc, #68]	; (800094c <gpio_config+0xe8>)
 8000906:	2201      	movs	r2, #1
 8000908:	2108      	movs	r1, #8
 800090a:	0018      	movs	r0, r3
 800090c:	f7ff fee4 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000910:	4b0e      	ldr	r3, [pc, #56]	; (800094c <gpio_config+0xe8>)
 8000912:	2201      	movs	r2, #1
 8000914:	2110      	movs	r1, #16
 8000916:	0018      	movs	r0, r3
 8000918:	f7ff fede 	bl	80006d8 <LL_GPIO_SetPinMode>
 800091c:	4b0b      	ldr	r3, [pc, #44]	; (800094c <gpio_config+0xe8>)
 800091e:	2201      	movs	r2, #1
 8000920:	2120      	movs	r1, #32
 8000922:	0018      	movs	r0, r3
 8000924:	f7ff fed8 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000928:	4b08      	ldr	r3, [pc, #32]	; (800094c <gpio_config+0xe8>)
 800092a:	2201      	movs	r2, #1
 800092c:	2140      	movs	r1, #64	; 0x40
 800092e:	0018      	movs	r0, r3
 8000930:	f7ff fed2 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000934:	4b05      	ldr	r3, [pc, #20]	; (800094c <gpio_config+0xe8>)
 8000936:	2201      	movs	r2, #1
 8000938:	2180      	movs	r1, #128	; 0x80
 800093a:	0018      	movs	r0, r3
 800093c:	f7ff fecc 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000940:	46c0      	nop			; (mov r8, r8)
 8000942:	46bd      	mov	sp, r7
 8000944:	bd80      	pop	{r7, pc}
 8000946:	46c0      	nop			; (mov r8, r8)
 8000948:	48000800 	.word	0x48000800
 800094c:	48000400 	.word	0x48000400

08000950 <dec_display>:
 8000950:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000952:	b08d      	sub	sp, #52	; 0x34
 8000954:	af00      	add	r7, sp, #0
 8000956:	0002      	movs	r2, r0
 8000958:	1dbb      	adds	r3, r7, #6
 800095a:	801a      	strh	r2, [r3, #0]
 800095c:	242e      	movs	r4, #46	; 0x2e
 800095e:	193b      	adds	r3, r7, r4
 8000960:	2200      	movs	r2, #0
 8000962:	801a      	strh	r2, [r3, #0]
 8000964:	250c      	movs	r5, #12
 8000966:	197b      	adds	r3, r7, r5
 8000968:	4a4e      	ldr	r2, [pc, #312]	; (8000aa4 <dec_display+0x154>)
 800096a:	ca43      	ldmia	r2!, {r0, r1, r6}
 800096c:	c343      	stmia	r3!, {r0, r1, r6}
 800096e:	ca43      	ldmia	r2!, {r0, r1, r6}
 8000970:	c343      	stmia	r3!, {r0, r1, r6}
 8000972:	ca03      	ldmia	r2!, {r0, r1}
 8000974:	c303      	stmia	r3!, {r0, r1}
 8000976:	200f      	movs	r0, #15
 8000978:	f7ff ff0a 	bl	8000790 <mask_indicator>
 800097c:	0003      	movs	r3, r0
 800097e:	4a4a      	ldr	r2, [pc, #296]	; (8000aa8 <dec_display+0x158>)
 8000980:	0019      	movs	r1, r3
 8000982:	0010      	movs	r0, r2
 8000984:	f7ff fec4 	bl	8000710 <LL_GPIO_WriteOutputPort>
 8000988:	4b48      	ldr	r3, [pc, #288]	; (8000aac <dec_display+0x15c>)
 800098a:	881b      	ldrh	r3, [r3, #0]
 800098c:	001a      	movs	r2, r3
 800098e:	2301      	movs	r3, #1
 8000990:	4093      	lsls	r3, r2
 8000992:	0018      	movs	r0, r3
 8000994:	f7ff fefc 	bl	8000790 <mask_indicator>
 8000998:	0003      	movs	r3, r0
 800099a:	4a43      	ldr	r2, [pc, #268]	; (8000aa8 <dec_display+0x158>)
 800099c:	0019      	movs	r1, r3
 800099e:	0010      	movs	r0, r2
 80009a0:	f7ff fec2 	bl	8000728 <LL_GPIO_ResetOutputPin>
 80009a4:	4b41      	ldr	r3, [pc, #260]	; (8000aac <dec_display+0x15c>)
 80009a6:	881b      	ldrh	r3, [r3, #0]
 80009a8:	2b00      	cmp	r3, #0
 80009aa:	d10d      	bne.n	80009c8 <dec_display+0x78>
 80009ac:	1dbb      	adds	r3, r7, #6
 80009ae:	881b      	ldrh	r3, [r3, #0]
 80009b0:	210a      	movs	r1, #10
 80009b2:	0018      	movs	r0, r3
 80009b4:	f7ff fc2e 	bl	8000214 <__aeabi_uidivmod>
 80009b8:	000b      	movs	r3, r1
 80009ba:	b29b      	uxth	r3, r3
 80009bc:	0019      	movs	r1, r3
 80009be:	193b      	adds	r3, r7, r4
 80009c0:	197a      	adds	r2, r7, r5
 80009c2:	0049      	lsls	r1, r1, #1
 80009c4:	5a8a      	ldrh	r2, [r1, r2]
 80009c6:	801a      	strh	r2, [r3, #0]
 80009c8:	4b38      	ldr	r3, [pc, #224]	; (8000aac <dec_display+0x15c>)
 80009ca:	881b      	ldrh	r3, [r3, #0]
 80009cc:	2b01      	cmp	r3, #1
 80009ce:	d115      	bne.n	80009fc <dec_display+0xac>
 80009d0:	1dbb      	adds	r3, r7, #6
 80009d2:	881b      	ldrh	r3, [r3, #0]
 80009d4:	210a      	movs	r1, #10
 80009d6:	0018      	movs	r0, r3
 80009d8:	f7ff fb96 	bl	8000108 <__udivsi3>
 80009dc:	0003      	movs	r3, r0
 80009de:	b29b      	uxth	r3, r3
 80009e0:	210a      	movs	r1, #10
 80009e2:	0018      	movs	r0, r3
 80009e4:	f7ff fc16 	bl	8000214 <__aeabi_uidivmod>
 80009e8:	000b      	movs	r3, r1
 80009ea:	b29b      	uxth	r3, r3
 80009ec:	0019      	movs	r1, r3
 80009ee:	232e      	movs	r3, #46	; 0x2e
 80009f0:	18fb      	adds	r3, r7, r3
 80009f2:	220c      	movs	r2, #12
 80009f4:	18ba      	adds	r2, r7, r2
 80009f6:	0049      	lsls	r1, r1, #1
 80009f8:	5a8a      	ldrh	r2, [r1, r2]
 80009fa:	801a      	strh	r2, [r3, #0]
 80009fc:	4b2b      	ldr	r3, [pc, #172]	; (8000aac <dec_display+0x15c>)
 80009fe:	881b      	ldrh	r3, [r3, #0]
 8000a00:	2b02      	cmp	r3, #2
 8000a02:	d115      	bne.n	8000a30 <dec_display+0xe0>
 8000a04:	1dbb      	adds	r3, r7, #6
 8000a06:	881b      	ldrh	r3, [r3, #0]
 8000a08:	2164      	movs	r1, #100	; 0x64
 8000a0a:	0018      	movs	r0, r3
 8000a0c:	f7ff fb7c 	bl	8000108 <__udivsi3>
 8000a10:	0003      	movs	r3, r0
 8000a12:	b29b      	uxth	r3, r3
 8000a14:	210a      	movs	r1, #10
 8000a16:	0018      	movs	r0, r3
 8000a18:	f7ff fbfc 	bl	8000214 <__aeabi_uidivmod>
 8000a1c:	000b      	movs	r3, r1
 8000a1e:	b29b      	uxth	r3, r3
 8000a20:	0019      	movs	r1, r3
 8000a22:	232e      	movs	r3, #46	; 0x2e
 8000a24:	18fb      	adds	r3, r7, r3
 8000a26:	220c      	movs	r2, #12
 8000a28:	18ba      	adds	r2, r7, r2
 8000a2a:	0049      	lsls	r1, r1, #1
 8000a2c:	5a8a      	ldrh	r2, [r1, r2]
 8000a2e:	801a      	strh	r2, [r3, #0]
 8000a30:	4b1e      	ldr	r3, [pc, #120]	; (8000aac <dec_display+0x15c>)
 8000a32:	881b      	ldrh	r3, [r3, #0]
 8000a34:	2b03      	cmp	r3, #3
 8000a36:	d116      	bne.n	8000a66 <dec_display+0x116>
 8000a38:	1dbb      	adds	r3, r7, #6
 8000a3a:	881b      	ldrh	r3, [r3, #0]
 8000a3c:	22fa      	movs	r2, #250	; 0xfa
 8000a3e:	0091      	lsls	r1, r2, #2
 8000a40:	0018      	movs	r0, r3
 8000a42:	f7ff fb61 	bl	8000108 <__udivsi3>
 8000a46:	0003      	movs	r3, r0
 8000a48:	b29b      	uxth	r3, r3
 8000a4a:	210a      	movs	r1, #10
 8000a4c:	0018      	movs	r0, r3
 8000a4e:	f7ff fbe1 	bl	8000214 <__aeabi_uidivmod>
 8000a52:	000b      	movs	r3, r1
 8000a54:	b29b      	uxth	r3, r3
 8000a56:	0019      	movs	r1, r3
 8000a58:	232e      	movs	r3, #46	; 0x2e
 8000a5a:	18fb      	adds	r3, r7, r3
 8000a5c:	220c      	movs	r2, #12
 8000a5e:	18ba      	adds	r2, r7, r2
 8000a60:	0049      	lsls	r1, r1, #1
 8000a62:	5a8a      	ldrh	r2, [r1, r2]
 8000a64:	801a      	strh	r2, [r3, #0]
 8000a66:	232e      	movs	r3, #46	; 0x2e
 8000a68:	18fb      	adds	r3, r7, r3
 8000a6a:	881b      	ldrh	r3, [r3, #0]
 8000a6c:	0018      	movs	r0, r3
 8000a6e:	f7ff fe8f 	bl	8000790 <mask_indicator>
 8000a72:	0003      	movs	r3, r0
 8000a74:	4a0e      	ldr	r2, [pc, #56]	; (8000ab0 <dec_display+0x160>)
 8000a76:	0019      	movs	r1, r3
 8000a78:	0010      	movs	r0, r2
 8000a7a:	f7ff fe49 	bl	8000710 <LL_GPIO_WriteOutputPort>
 8000a7e:	4b0b      	ldr	r3, [pc, #44]	; (8000aac <dec_display+0x15c>)
 8000a80:	881b      	ldrh	r3, [r3, #0]
 8000a82:	3301      	adds	r3, #1
 8000a84:	4a0b      	ldr	r2, [pc, #44]	; (8000ab4 <dec_display+0x164>)
 8000a86:	4013      	ands	r3, r2
 8000a88:	d504      	bpl.n	8000a94 <dec_display+0x144>
 8000a8a:	3b01      	subs	r3, #1
 8000a8c:	2204      	movs	r2, #4
 8000a8e:	4252      	negs	r2, r2
 8000a90:	4313      	orrs	r3, r2
 8000a92:	3301      	adds	r3, #1
 8000a94:	b29a      	uxth	r2, r3
 8000a96:	4b05      	ldr	r3, [pc, #20]	; (8000aac <dec_display+0x15c>)
 8000a98:	801a      	strh	r2, [r3, #0]
 8000a9a:	46c0      	nop			; (mov r8, r8)
 8000a9c:	46bd      	mov	sp, r7
 8000a9e:	b00d      	add	sp, #52	; 0x34
 8000aa0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000aa2:	46c0      	nop			; (mov r8, r8)
 8000aa4:	08000d4c 	.word	0x08000d4c
 8000aa8:	48000800 	.word	0x48000800
 8000aac:	20000458 	.word	0x20000458
 8000ab0:	48000400 	.word	0x48000400
 8000ab4:	80000003 	.word	0x80000003

08000ab8 <systick_config>:
 8000ab8:	b580      	push	{r7, lr}
 8000aba:	af00      	add	r7, sp, #0
 8000abc:	23fa      	movs	r3, #250	; 0xfa
 8000abe:	009b      	lsls	r3, r3, #2
 8000ac0:	4a07      	ldr	r2, [pc, #28]	; (8000ae0 <systick_config+0x28>)
 8000ac2:	0019      	movs	r1, r3
 8000ac4:	0010      	movs	r0, r2
 8000ac6:	f7ff fe3b 	bl	8000740 <LL_InitTick>
 8000aca:	f7ff fe53 	bl	8000774 <LL_SYSTICK_EnableIT>
 8000ace:	2301      	movs	r3, #1
 8000ad0:	425b      	negs	r3, r3
 8000ad2:	2100      	movs	r1, #0
 8000ad4:	0018      	movs	r0, r3
 8000ad6:	f7ff fcb7 	bl	8000448 <NVIC_SetPriority>
 8000ada:	46c0      	nop			; (mov r8, r8)
 8000adc:	46bd      	mov	sp, r7
 8000ade:	bd80      	pop	{r7, pc}
 8000ae0:	02dc6c00 	.word	0x02dc6c00

08000ae4 <SysTick_Handler>:
 8000ae4:	b580      	push	{r7, lr}
 8000ae6:	af00      	add	r7, sp, #0
 8000ae8:	4b0e      	ldr	r3, [pc, #56]	; (8000b24 <SysTick_Handler+0x40>)
 8000aea:	681b      	ldr	r3, [r3, #0]
 8000aec:	1c5a      	adds	r2, r3, #1
 8000aee:	4b0d      	ldr	r3, [pc, #52]	; (8000b24 <SysTick_Handler+0x40>)
 8000af0:	601a      	str	r2, [r3, #0]
 8000af2:	4b0d      	ldr	r3, [pc, #52]	; (8000b28 <SysTick_Handler+0x44>)
 8000af4:	681b      	ldr	r3, [r3, #0]
 8000af6:	b29b      	uxth	r3, r3
 8000af8:	0018      	movs	r0, r3
 8000afa:	f7ff ff29 	bl	8000950 <dec_display>
 8000afe:	4b09      	ldr	r3, [pc, #36]	; (8000b24 <SysTick_Handler+0x40>)
 8000b00:	681b      	ldr	r3, [r3, #0]
 8000b02:	22fa      	movs	r2, #250	; 0xfa
 8000b04:	0091      	lsls	r1, r2, #2
 8000b06:	0018      	movs	r0, r3
 8000b08:	f7ff fc6e 	bl	80003e8 <__aeabi_idivmod>
 8000b0c:	1e0b      	subs	r3, r1, #0
 8000b0e:	d105      	bne.n	8000b1c <SysTick_Handler+0x38>
 8000b10:	4b05      	ldr	r3, [pc, #20]	; (8000b28 <SysTick_Handler+0x44>)
 8000b12:	681b      	ldr	r3, [r3, #0]
 8000b14:	1c5a      	adds	r2, r3, #1
 8000b16:	4b04      	ldr	r3, [pc, #16]	; (8000b28 <SysTick_Handler+0x44>)
 8000b18:	601a      	str	r2, [r3, #0]
 8000b1a:	46c0      	nop			; (mov r8, r8)
 8000b1c:	46c0      	nop			; (mov r8, r8)
 8000b1e:	46bd      	mov	sp, r7
 8000b20:	bd80      	pop	{r7, pc}
 8000b22:	46c0      	nop			; (mov r8, r8)
 8000b24:	20000450 	.word	0x20000450
 8000b28:	20000454 	.word	0x20000454

08000b2c <main>:
 8000b2c:	b580      	push	{r7, lr}
 8000b2e:	af00      	add	r7, sp, #0
 8000b30:	f7ff fe64 	bl	80007fc <rcc_config>
 8000b34:	f7ff fe96 	bl	8000864 <gpio_config>
 8000b38:	f7ff ffbe 	bl	8000ab8 <systick_config>
 8000b3c:	e7fe      	b.n	8000b3c <main+0x10>
	...

08000b40 <SystemInit>:
 8000b40:	b580      	push	{r7, lr}
 8000b42:	af00      	add	r7, sp, #0
 8000b44:	4b1a      	ldr	r3, [pc, #104]	; (8000bb0 <SystemInit+0x70>)
 8000b46:	681a      	ldr	r2, [r3, #0]
 8000b48:	4b19      	ldr	r3, [pc, #100]	; (8000bb0 <SystemInit+0x70>)
 8000b4a:	2101      	movs	r1, #1
 8000b4c:	430a      	orrs	r2, r1
 8000b4e:	601a      	str	r2, [r3, #0]
 8000b50:	4b17      	ldr	r3, [pc, #92]	; (8000bb0 <SystemInit+0x70>)
 8000b52:	685a      	ldr	r2, [r3, #4]
 8000b54:	4b16      	ldr	r3, [pc, #88]	; (8000bb0 <SystemInit+0x70>)
 8000b56:	4917      	ldr	r1, [pc, #92]	; (8000bb4 <SystemInit+0x74>)
 8000b58:	400a      	ands	r2, r1
 8000b5a:	605a      	str	r2, [r3, #4]
 8000b5c:	4b14      	ldr	r3, [pc, #80]	; (8000bb0 <SystemInit+0x70>)
 8000b5e:	681a      	ldr	r2, [r3, #0]
 8000b60:	4b13      	ldr	r3, [pc, #76]	; (8000bb0 <SystemInit+0x70>)
 8000b62:	4915      	ldr	r1, [pc, #84]	; (8000bb8 <SystemInit+0x78>)
 8000b64:	400a      	ands	r2, r1
 8000b66:	601a      	str	r2, [r3, #0]
 8000b68:	4b11      	ldr	r3, [pc, #68]	; (8000bb0 <SystemInit+0x70>)
 8000b6a:	681a      	ldr	r2, [r3, #0]
 8000b6c:	4b10      	ldr	r3, [pc, #64]	; (8000bb0 <SystemInit+0x70>)
 8000b6e:	4913      	ldr	r1, [pc, #76]	; (8000bbc <SystemInit+0x7c>)
 8000b70:	400a      	ands	r2, r1
 8000b72:	601a      	str	r2, [r3, #0]
 8000b74:	4b0e      	ldr	r3, [pc, #56]	; (8000bb0 <SystemInit+0x70>)
 8000b76:	685a      	ldr	r2, [r3, #4]
 8000b78:	4b0d      	ldr	r3, [pc, #52]	; (8000bb0 <SystemInit+0x70>)
 8000b7a:	4911      	ldr	r1, [pc, #68]	; (8000bc0 <SystemInit+0x80>)
 8000b7c:	400a      	ands	r2, r1
 8000b7e:	605a      	str	r2, [r3, #4]
 8000b80:	4b0b      	ldr	r3, [pc, #44]	; (8000bb0 <SystemInit+0x70>)
 8000b82:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000b84:	4b0a      	ldr	r3, [pc, #40]	; (8000bb0 <SystemInit+0x70>)
 8000b86:	210f      	movs	r1, #15
 8000b88:	438a      	bics	r2, r1
 8000b8a:	62da      	str	r2, [r3, #44]	; 0x2c
 8000b8c:	4b08      	ldr	r3, [pc, #32]	; (8000bb0 <SystemInit+0x70>)
 8000b8e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000b90:	4b07      	ldr	r3, [pc, #28]	; (8000bb0 <SystemInit+0x70>)
 8000b92:	490c      	ldr	r1, [pc, #48]	; (8000bc4 <SystemInit+0x84>)
 8000b94:	400a      	ands	r2, r1
 8000b96:	631a      	str	r2, [r3, #48]	; 0x30
 8000b98:	4b05      	ldr	r3, [pc, #20]	; (8000bb0 <SystemInit+0x70>)
 8000b9a:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000b9c:	4b04      	ldr	r3, [pc, #16]	; (8000bb0 <SystemInit+0x70>)
 8000b9e:	2101      	movs	r1, #1
 8000ba0:	438a      	bics	r2, r1
 8000ba2:	635a      	str	r2, [r3, #52]	; 0x34
 8000ba4:	4b02      	ldr	r3, [pc, #8]	; (8000bb0 <SystemInit+0x70>)
 8000ba6:	2200      	movs	r2, #0
 8000ba8:	609a      	str	r2, [r3, #8]
 8000baa:	46c0      	nop			; (mov r8, r8)
 8000bac:	46bd      	mov	sp, r7
 8000bae:	bd80      	pop	{r7, pc}
 8000bb0:	40021000 	.word	0x40021000
 8000bb4:	f8ffb80c 	.word	0xf8ffb80c
 8000bb8:	fef6ffff 	.word	0xfef6ffff
 8000bbc:	fffbffff 	.word	0xfffbffff
 8000bc0:	ffc0ffff 	.word	0xffc0ffff
 8000bc4:	fffffeac 	.word	0xfffffeac

08000bc8 <NMI_Handler>:
 8000bc8:	b580      	push	{r7, lr}
 8000bca:	af00      	add	r7, sp, #0
 8000bcc:	46c0      	nop			; (mov r8, r8)
 8000bce:	46bd      	mov	sp, r7
 8000bd0:	bd80      	pop	{r7, pc}

08000bd2 <HardFault_Handler>:
 8000bd2:	b580      	push	{r7, lr}
 8000bd4:	af00      	add	r7, sp, #0
 8000bd6:	e7fe      	b.n	8000bd6 <HardFault_Handler+0x4>

08000bd8 <SVC_Handler>:
 8000bd8:	b580      	push	{r7, lr}
 8000bda:	af00      	add	r7, sp, #0
 8000bdc:	46c0      	nop			; (mov r8, r8)
 8000bde:	46bd      	mov	sp, r7
 8000be0:	bd80      	pop	{r7, pc}

08000be2 <PendSV_Handler>:
 8000be2:	b580      	push	{r7, lr}
 8000be4:	af00      	add	r7, sp, #0
 8000be6:	46c0      	nop			; (mov r8, r8)
 8000be8:	46bd      	mov	sp, r7
 8000bea:	bd80      	pop	{r7, pc}

08000bec <__libc_init_array>:
 8000bec:	b570      	push	{r4, r5, r6, lr}
 8000bee:	4d0c      	ldr	r5, [pc, #48]	; (8000c20 <__libc_init_array+0x34>)
 8000bf0:	4e0c      	ldr	r6, [pc, #48]	; (8000c24 <__libc_init_array+0x38>)
 8000bf2:	1b76      	subs	r6, r6, r5
 8000bf4:	10b6      	asrs	r6, r6, #2
 8000bf6:	d005      	beq.n	8000c04 <__libc_init_array+0x18>
 8000bf8:	2400      	movs	r4, #0
 8000bfa:	cd08      	ldmia	r5!, {r3}
 8000bfc:	3401      	adds	r4, #1
 8000bfe:	4798      	blx	r3
 8000c00:	42a6      	cmp	r6, r4
 8000c02:	d1fa      	bne.n	8000bfa <__libc_init_array+0xe>
 8000c04:	f000 f896 	bl	8000d34 <_init>
 8000c08:	4d07      	ldr	r5, [pc, #28]	; (8000c28 <__libc_init_array+0x3c>)
 8000c0a:	4e08      	ldr	r6, [pc, #32]	; (8000c2c <__libc_init_array+0x40>)
 8000c0c:	1b76      	subs	r6, r6, r5
 8000c0e:	10b6      	asrs	r6, r6, #2
 8000c10:	d005      	beq.n	8000c1e <__libc_init_array+0x32>
 8000c12:	2400      	movs	r4, #0
 8000c14:	cd08      	ldmia	r5!, {r3}
 8000c16:	3401      	adds	r4, #1
 8000c18:	4798      	blx	r3
 8000c1a:	42a6      	cmp	r6, r4
 8000c1c:	d1fa      	bne.n	8000c14 <__libc_init_array+0x28>
 8000c1e:	bd70      	pop	{r4, r5, r6, pc}
 8000c20:	08000d70 	.word	0x08000d70
 8000c24:	08000d70 	.word	0x08000d70
 8000c28:	08000d70 	.word	0x08000d70
 8000c2c:	08000d78 	.word	0x08000d78

08000c30 <register_fini>:
 8000c30:	4b03      	ldr	r3, [pc, #12]	; (8000c40 <register_fini+0x10>)
 8000c32:	b510      	push	{r4, lr}
 8000c34:	2b00      	cmp	r3, #0
 8000c36:	d002      	beq.n	8000c3e <register_fini+0xe>
 8000c38:	4802      	ldr	r0, [pc, #8]	; (8000c44 <register_fini+0x14>)
 8000c3a:	f000 f805 	bl	8000c48 <atexit>
 8000c3e:	bd10      	pop	{r4, pc}
 8000c40:	00000000 	.word	0x00000000
 8000c44:	08000c59 	.word	0x08000c59

08000c48 <atexit>:
 8000c48:	b510      	push	{r4, lr}
 8000c4a:	0001      	movs	r1, r0
 8000c4c:	2300      	movs	r3, #0
 8000c4e:	2200      	movs	r2, #0
 8000c50:	2000      	movs	r0, #0
 8000c52:	f000 f819 	bl	8000c88 <__register_exitproc>
 8000c56:	bd10      	pop	{r4, pc}

08000c58 <__libc_fini_array>:
 8000c58:	b570      	push	{r4, r5, r6, lr}
 8000c5a:	4d07      	ldr	r5, [pc, #28]	; (8000c78 <__libc_fini_array+0x20>)
 8000c5c:	4c07      	ldr	r4, [pc, #28]	; (8000c7c <__libc_fini_array+0x24>)
 8000c5e:	1b64      	subs	r4, r4, r5
 8000c60:	10a4      	asrs	r4, r4, #2
 8000c62:	d005      	beq.n	8000c70 <__libc_fini_array+0x18>
 8000c64:	3c01      	subs	r4, #1
 8000c66:	00a3      	lsls	r3, r4, #2
 8000c68:	58eb      	ldr	r3, [r5, r3]
 8000c6a:	4798      	blx	r3
 8000c6c:	2c00      	cmp	r4, #0
 8000c6e:	d1f9      	bne.n	8000c64 <__libc_fini_array+0xc>
 8000c70:	f000 f866 	bl	8000d40 <_fini>
 8000c74:	bd70      	pop	{r4, r5, r6, pc}
 8000c76:	46c0      	nop			; (mov r8, r8)
 8000c78:	08000d78 	.word	0x08000d78
 8000c7c:	08000d7c 	.word	0x08000d7c

08000c80 <__retarget_lock_acquire_recursive>:
 8000c80:	4770      	bx	lr
 8000c82:	46c0      	nop			; (mov r8, r8)

08000c84 <__retarget_lock_release_recursive>:
 8000c84:	4770      	bx	lr
 8000c86:	46c0      	nop			; (mov r8, r8)

08000c88 <__register_exitproc>:
 8000c88:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c8a:	46d6      	mov	lr, sl
 8000c8c:	464f      	mov	r7, r9
 8000c8e:	4646      	mov	r6, r8
 8000c90:	b5c0      	push	{r6, r7, lr}
 8000c92:	4f26      	ldr	r7, [pc, #152]	; (8000d2c <__register_exitproc+0xa4>)
 8000c94:	b082      	sub	sp, #8
 8000c96:	0006      	movs	r6, r0
 8000c98:	6838      	ldr	r0, [r7, #0]
 8000c9a:	4692      	mov	sl, r2
 8000c9c:	4698      	mov	r8, r3
 8000c9e:	4689      	mov	r9, r1
 8000ca0:	f7ff ffee 	bl	8000c80 <__retarget_lock_acquire_recursive>
 8000ca4:	4b22      	ldr	r3, [pc, #136]	; (8000d30 <__register_exitproc+0xa8>)
 8000ca6:	681b      	ldr	r3, [r3, #0]
 8000ca8:	9301      	str	r3, [sp, #4]
 8000caa:	23a4      	movs	r3, #164	; 0xa4
 8000cac:	9a01      	ldr	r2, [sp, #4]
 8000cae:	005b      	lsls	r3, r3, #1
 8000cb0:	58d5      	ldr	r5, [r2, r3]
 8000cb2:	2d00      	cmp	r5, #0
 8000cb4:	d02e      	beq.n	8000d14 <__register_exitproc+0x8c>
 8000cb6:	686c      	ldr	r4, [r5, #4]
 8000cb8:	2c1f      	cmp	r4, #31
 8000cba:	dc30      	bgt.n	8000d1e <__register_exitproc+0x96>
 8000cbc:	2e00      	cmp	r6, #0
 8000cbe:	d10f      	bne.n	8000ce0 <__register_exitproc+0x58>
 8000cc0:	1c63      	adds	r3, r4, #1
 8000cc2:	606b      	str	r3, [r5, #4]
 8000cc4:	464b      	mov	r3, r9
 8000cc6:	3402      	adds	r4, #2
 8000cc8:	00a4      	lsls	r4, r4, #2
 8000cca:	6838      	ldr	r0, [r7, #0]
 8000ccc:	5163      	str	r3, [r4, r5]
 8000cce:	f7ff ffd9 	bl	8000c84 <__retarget_lock_release_recursive>
 8000cd2:	2000      	movs	r0, #0
 8000cd4:	b002      	add	sp, #8
 8000cd6:	bce0      	pop	{r5, r6, r7}
 8000cd8:	46ba      	mov	sl, r7
 8000cda:	46b1      	mov	r9, r6
 8000cdc:	46a8      	mov	r8, r5
 8000cde:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ce0:	2288      	movs	r2, #136	; 0x88
 8000ce2:	4651      	mov	r1, sl
 8000ce4:	0028      	movs	r0, r5
 8000ce6:	00a3      	lsls	r3, r4, #2
 8000ce8:	18eb      	adds	r3, r5, r3
 8000cea:	5099      	str	r1, [r3, r2]
 8000cec:	3a87      	subs	r2, #135	; 0x87
 8000cee:	40a2      	lsls	r2, r4
 8000cf0:	3089      	adds	r0, #137	; 0x89
 8000cf2:	30ff      	adds	r0, #255	; 0xff
 8000cf4:	6801      	ldr	r1, [r0, #0]
 8000cf6:	4311      	orrs	r1, r2
 8000cf8:	6001      	str	r1, [r0, #0]
 8000cfa:	2184      	movs	r1, #132	; 0x84
 8000cfc:	4640      	mov	r0, r8
 8000cfe:	0049      	lsls	r1, r1, #1
 8000d00:	5058      	str	r0, [r3, r1]
 8000d02:	2e02      	cmp	r6, #2
 8000d04:	d1dc      	bne.n	8000cc0 <__register_exitproc+0x38>
 8000d06:	002b      	movs	r3, r5
 8000d08:	338d      	adds	r3, #141	; 0x8d
 8000d0a:	33ff      	adds	r3, #255	; 0xff
 8000d0c:	6819      	ldr	r1, [r3, #0]
 8000d0e:	430a      	orrs	r2, r1
 8000d10:	601a      	str	r2, [r3, #0]
 8000d12:	e7d5      	b.n	8000cc0 <__register_exitproc+0x38>
 8000d14:	0015      	movs	r5, r2
 8000d16:	354d      	adds	r5, #77	; 0x4d
 8000d18:	35ff      	adds	r5, #255	; 0xff
 8000d1a:	50d5      	str	r5, [r2, r3]
 8000d1c:	e7cb      	b.n	8000cb6 <__register_exitproc+0x2e>
 8000d1e:	6838      	ldr	r0, [r7, #0]
 8000d20:	f7ff ffb0 	bl	8000c84 <__retarget_lock_release_recursive>
 8000d24:	2001      	movs	r0, #1
 8000d26:	4240      	negs	r0, r0
 8000d28:	e7d4      	b.n	8000cd4 <__register_exitproc+0x4c>
 8000d2a:	46c0      	nop			; (mov r8, r8)
 8000d2c:	20000430 	.word	0x20000430
 8000d30:	08000d6c 	.word	0x08000d6c

08000d34 <_init>:
 8000d34:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d36:	46c0      	nop			; (mov r8, r8)
 8000d38:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d3a:	bc08      	pop	{r3}
 8000d3c:	469e      	mov	lr, r3
 8000d3e:	4770      	bx	lr

08000d40 <_fini>:
 8000d40:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d42:	46c0      	nop			; (mov r8, r8)
 8000d44:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d46:	bc08      	pop	{r3}
 8000d48:	469e      	mov	lr, r3
 8000d4a:	4770      	bx	lr
