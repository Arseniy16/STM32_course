
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000c50  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  08000d10  08000d10  00010d10  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000d54  08000d54  00010d54  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000d5c  08000d5c  00010d5c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000d60  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              0000002c  20000434  08001194  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000460  08001194  00020460  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000d1a  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003b3  00000000  00000000  00021176  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000562  00000000  00000000  00021529  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000128  00000000  00000000  00021a8b  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000f8  00000000  00000000  00021bb3  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000075f  00000000  00000000  00021cab  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000777  00000000  00000000  0002240a  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          0000004d  00000000  00000000  00022b81  2**0  CONTENTS, READONLY
 17 .debug_frame      000005a4  00000000  00000000  00022bd0  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000cf8 	.word	0x08000cf8

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
 8000104:	08000cf8 	.word	0x08000cf8

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
 800041e:	f000 fb1f 	bl	8000a60 <SystemInit>
 8000422:	f000 fb73 	bl	8000b0c <__libc_init_array>
 8000426:	f000 fb11 	bl	8000a4c <main>

0800042a <LoopForever>:
 800042a:	e7fe      	b.n	800042a <LoopForever>
 800042c:	20002000 	.word	0x20002000
 8000430:	20000000 	.word	0x20000000
 8000434:	20000434 	.word	0x20000434
 8000438:	08000d60 	.word	0x08000d60
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

08000728 <LL_InitTick>:
 8000728:	b580      	push	{r7, lr}
 800072a:	b082      	sub	sp, #8
 800072c:	af00      	add	r7, sp, #0
 800072e:	6078      	str	r0, [r7, #4]
 8000730:	6039      	str	r1, [r7, #0]
 8000732:	6839      	ldr	r1, [r7, #0]
 8000734:	6878      	ldr	r0, [r7, #4]
 8000736:	f7ff fce7 	bl	8000108 <__udivsi3>
 800073a:	0003      	movs	r3, r0
 800073c:	001a      	movs	r2, r3
 800073e:	4b06      	ldr	r3, [pc, #24]	; (8000758 <LL_InitTick+0x30>)
 8000740:	3a01      	subs	r2, #1
 8000742:	605a      	str	r2, [r3, #4]
 8000744:	4b04      	ldr	r3, [pc, #16]	; (8000758 <LL_InitTick+0x30>)
 8000746:	2200      	movs	r2, #0
 8000748:	609a      	str	r2, [r3, #8]
 800074a:	4b03      	ldr	r3, [pc, #12]	; (8000758 <LL_InitTick+0x30>)
 800074c:	2205      	movs	r2, #5
 800074e:	601a      	str	r2, [r3, #0]
 8000750:	46c0      	nop			; (mov r8, r8)
 8000752:	46bd      	mov	sp, r7
 8000754:	b002      	add	sp, #8
 8000756:	bd80      	pop	{r7, pc}
 8000758:	e000e010 	.word	0xe000e010

0800075c <LL_SYSTICK_EnableIT>:
 800075c:	b580      	push	{r7, lr}
 800075e:	af00      	add	r7, sp, #0
 8000760:	4b04      	ldr	r3, [pc, #16]	; (8000774 <LL_SYSTICK_EnableIT+0x18>)
 8000762:	681a      	ldr	r2, [r3, #0]
 8000764:	4b03      	ldr	r3, [pc, #12]	; (8000774 <LL_SYSTICK_EnableIT+0x18>)
 8000766:	2102      	movs	r1, #2
 8000768:	430a      	orrs	r2, r1
 800076a:	601a      	str	r2, [r3, #0]
 800076c:	46c0      	nop			; (mov r8, r8)
 800076e:	46bd      	mov	sp, r7
 8000770:	bd80      	pop	{r7, pc}
 8000772:	46c0      	nop			; (mov r8, r8)
 8000774:	e000e010 	.word	0xe000e010

08000778 <rcc_config>:
 8000778:	b580      	push	{r7, lr}
 800077a:	af00      	add	r7, sp, #0
 800077c:	2001      	movs	r0, #1
 800077e:	f7ff ff81 	bl	8000684 <LL_FLASH_SetLatency>
 8000782:	f7ff fecf 	bl	8000524 <LL_RCC_HSI_Enable>
 8000786:	46c0      	nop			; (mov r8, r8)
 8000788:	f7ff feda 	bl	8000540 <LL_RCC_HSI_IsReady>
 800078c:	0003      	movs	r3, r0
 800078e:	2b01      	cmp	r3, #1
 8000790:	d1fa      	bne.n	8000788 <rcc_config+0x10>
 8000792:	23a0      	movs	r3, #160	; 0xa0
 8000794:	039b      	lsls	r3, r3, #14
 8000796:	0019      	movs	r1, r3
 8000798:	2000      	movs	r0, #0
 800079a:	f7ff ff4d 	bl	8000638 <LL_RCC_PLL_ConfigDomain_SYS>
 800079e:	f7ff ff29 	bl	80005f4 <LL_RCC_PLL_Enable>
 80007a2:	46c0      	nop			; (mov r8, r8)
 80007a4:	f7ff ff34 	bl	8000610 <LL_RCC_PLL_IsReady>
 80007a8:	0003      	movs	r3, r0
 80007aa:	2b01      	cmp	r3, #1
 80007ac:	d1fa      	bne.n	80007a4 <rcc_config+0x2c>
 80007ae:	2000      	movs	r0, #0
 80007b0:	f7ff fef6 	bl	80005a0 <LL_RCC_SetAHBPrescaler>
 80007b4:	2002      	movs	r0, #2
 80007b6:	f7ff fed3 	bl	8000560 <LL_RCC_SetSysClkSource>
 80007ba:	46c0      	nop			; (mov r8, r8)
 80007bc:	f7ff fee4 	bl	8000588 <LL_RCC_GetSysClkSource>
 80007c0:	0003      	movs	r3, r0
 80007c2:	2b08      	cmp	r3, #8
 80007c4:	d1fa      	bne.n	80007bc <rcc_config+0x44>
 80007c6:	2000      	movs	r0, #0
 80007c8:	f7ff fefe 	bl	80005c8 <LL_RCC_SetAPB1Prescaler>
 80007cc:	4b02      	ldr	r3, [pc, #8]	; (80007d8 <rcc_config+0x60>)
 80007ce:	4a03      	ldr	r2, [pc, #12]	; (80007dc <rcc_config+0x64>)
 80007d0:	601a      	str	r2, [r3, #0]
 80007d2:	46c0      	nop			; (mov r8, r8)
 80007d4:	46bd      	mov	sp, r7
 80007d6:	bd80      	pop	{r7, pc}
 80007d8:	20000000 	.word	0x20000000
 80007dc:	02dc6c00 	.word	0x02dc6c00

080007e0 <gpio_config>:
 80007e0:	b580      	push	{r7, lr}
 80007e2:	af00      	add	r7, sp, #0
 80007e4:	2380      	movs	r3, #128	; 0x80
 80007e6:	031b      	lsls	r3, r3, #12
 80007e8:	0018      	movs	r0, r3
 80007ea:	f7ff ff5f 	bl	80006ac <LL_AHB1_GRP1_EnableClock>
 80007ee:	2380      	movs	r3, #128	; 0x80
 80007f0:	005b      	lsls	r3, r3, #1
 80007f2:	4834      	ldr	r0, [pc, #208]	; (80008c4 <gpio_config+0xe4>)
 80007f4:	2201      	movs	r2, #1
 80007f6:	0019      	movs	r1, r3
 80007f8:	f7ff ff6e 	bl	80006d8 <LL_GPIO_SetPinMode>
 80007fc:	2380      	movs	r3, #128	; 0x80
 80007fe:	009b      	lsls	r3, r3, #2
 8000800:	4830      	ldr	r0, [pc, #192]	; (80008c4 <gpio_config+0xe4>)
 8000802:	2201      	movs	r2, #1
 8000804:	0019      	movs	r1, r3
 8000806:	f7ff ff67 	bl	80006d8 <LL_GPIO_SetPinMode>
 800080a:	4b2e      	ldr	r3, [pc, #184]	; (80008c4 <gpio_config+0xe4>)
 800080c:	2201      	movs	r2, #1
 800080e:	2101      	movs	r1, #1
 8000810:	0018      	movs	r0, r3
 8000812:	f7ff ff61 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000816:	4b2b      	ldr	r3, [pc, #172]	; (80008c4 <gpio_config+0xe4>)
 8000818:	2201      	movs	r2, #1
 800081a:	2102      	movs	r1, #2
 800081c:	0018      	movs	r0, r3
 800081e:	f7ff ff5b 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000822:	4b28      	ldr	r3, [pc, #160]	; (80008c4 <gpio_config+0xe4>)
 8000824:	2201      	movs	r2, #1
 8000826:	2104      	movs	r1, #4
 8000828:	0018      	movs	r0, r3
 800082a:	f7ff ff55 	bl	80006d8 <LL_GPIO_SetPinMode>
 800082e:	4b25      	ldr	r3, [pc, #148]	; (80008c4 <gpio_config+0xe4>)
 8000830:	2201      	movs	r2, #1
 8000832:	2108      	movs	r1, #8
 8000834:	0018      	movs	r0, r3
 8000836:	f7ff ff4f 	bl	80006d8 <LL_GPIO_SetPinMode>
 800083a:	2380      	movs	r3, #128	; 0x80
 800083c:	029b      	lsls	r3, r3, #10
 800083e:	0018      	movs	r0, r3
 8000840:	f7ff ff34 	bl	80006ac <LL_AHB1_GRP1_EnableClock>
 8000844:	2390      	movs	r3, #144	; 0x90
 8000846:	05db      	lsls	r3, r3, #23
 8000848:	2200      	movs	r2, #0
 800084a:	2101      	movs	r1, #1
 800084c:	0018      	movs	r0, r3
 800084e:	f7ff ff43 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000852:	2380      	movs	r3, #128	; 0x80
 8000854:	02db      	lsls	r3, r3, #11
 8000856:	0018      	movs	r0, r3
 8000858:	f7ff ff28 	bl	80006ac <LL_AHB1_GRP1_EnableClock>
 800085c:	4b1a      	ldr	r3, [pc, #104]	; (80008c8 <gpio_config+0xe8>)
 800085e:	2201      	movs	r2, #1
 8000860:	2101      	movs	r1, #1
 8000862:	0018      	movs	r0, r3
 8000864:	f7ff ff38 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000868:	4b17      	ldr	r3, [pc, #92]	; (80008c8 <gpio_config+0xe8>)
 800086a:	2201      	movs	r2, #1
 800086c:	2102      	movs	r1, #2
 800086e:	0018      	movs	r0, r3
 8000870:	f7ff ff32 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000874:	4b14      	ldr	r3, [pc, #80]	; (80008c8 <gpio_config+0xe8>)
 8000876:	2201      	movs	r2, #1
 8000878:	2104      	movs	r1, #4
 800087a:	0018      	movs	r0, r3
 800087c:	f7ff ff2c 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000880:	4b11      	ldr	r3, [pc, #68]	; (80008c8 <gpio_config+0xe8>)
 8000882:	2201      	movs	r2, #1
 8000884:	2108      	movs	r1, #8
 8000886:	0018      	movs	r0, r3
 8000888:	f7ff ff26 	bl	80006d8 <LL_GPIO_SetPinMode>
 800088c:	4b0e      	ldr	r3, [pc, #56]	; (80008c8 <gpio_config+0xe8>)
 800088e:	2201      	movs	r2, #1
 8000890:	2110      	movs	r1, #16
 8000892:	0018      	movs	r0, r3
 8000894:	f7ff ff20 	bl	80006d8 <LL_GPIO_SetPinMode>
 8000898:	4b0b      	ldr	r3, [pc, #44]	; (80008c8 <gpio_config+0xe8>)
 800089a:	2201      	movs	r2, #1
 800089c:	2120      	movs	r1, #32
 800089e:	0018      	movs	r0, r3
 80008a0:	f7ff ff1a 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008a4:	4b08      	ldr	r3, [pc, #32]	; (80008c8 <gpio_config+0xe8>)
 80008a6:	2201      	movs	r2, #1
 80008a8:	2140      	movs	r1, #64	; 0x40
 80008aa:	0018      	movs	r0, r3
 80008ac:	f7ff ff14 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008b0:	4b05      	ldr	r3, [pc, #20]	; (80008c8 <gpio_config+0xe8>)
 80008b2:	2201      	movs	r2, #1
 80008b4:	2180      	movs	r1, #128	; 0x80
 80008b6:	0018      	movs	r0, r3
 80008b8:	f7ff ff0e 	bl	80006d8 <LL_GPIO_SetPinMode>
 80008bc:	46c0      	nop			; (mov r8, r8)
 80008be:	46bd      	mov	sp, r7
 80008c0:	bd80      	pop	{r7, pc}
 80008c2:	46c0      	nop			; (mov r8, r8)
 80008c4:	48000800 	.word	0x48000800
 80008c8:	48000400 	.word	0x48000400

080008cc <systick_config>:
 80008cc:	b580      	push	{r7, lr}
 80008ce:	af00      	add	r7, sp, #0
 80008d0:	23fa      	movs	r3, #250	; 0xfa
 80008d2:	009b      	lsls	r3, r3, #2
 80008d4:	4a07      	ldr	r2, [pc, #28]	; (80008f4 <systick_config+0x28>)
 80008d6:	0019      	movs	r1, r3
 80008d8:	0010      	movs	r0, r2
 80008da:	f7ff ff25 	bl	8000728 <LL_InitTick>
 80008de:	f7ff ff3d 	bl	800075c <LL_SYSTICK_EnableIT>
 80008e2:	2301      	movs	r3, #1
 80008e4:	425b      	negs	r3, r3
 80008e6:	2100      	movs	r1, #0
 80008e8:	0018      	movs	r0, r3
 80008ea:	f7ff fdad 	bl	8000448 <NVIC_SetPriority>
 80008ee:	46c0      	nop			; (mov r8, r8)
 80008f0:	46bd      	mov	sp, r7
 80008f2:	bd80      	pop	{r7, pc}
 80008f4:	02dc6c00 	.word	0x02dc6c00

080008f8 <SysTick_Handler>:
 80008f8:	b580      	push	{r7, lr}
 80008fa:	af00      	add	r7, sp, #0
 80008fc:	4b0d      	ldr	r3, [pc, #52]	; (8000934 <SysTick_Handler+0x3c>)
 80008fe:	681b      	ldr	r3, [r3, #0]
 8000900:	1c5a      	adds	r2, r3, #1
 8000902:	4b0c      	ldr	r3, [pc, #48]	; (8000934 <SysTick_Handler+0x3c>)
 8000904:	601a      	str	r2, [r3, #0]
 8000906:	4b0c      	ldr	r3, [pc, #48]	; (8000938 <SysTick_Handler+0x40>)
 8000908:	681b      	ldr	r3, [r3, #0]
 800090a:	0018      	movs	r0, r3
 800090c:	f000 f816 	bl	800093c <dyn_display>
 8000910:	4b08      	ldr	r3, [pc, #32]	; (8000934 <SysTick_Handler+0x3c>)
 8000912:	681b      	ldr	r3, [r3, #0]
 8000914:	22fa      	movs	r2, #250	; 0xfa
 8000916:	0091      	lsls	r1, r2, #2
 8000918:	0018      	movs	r0, r3
 800091a:	f7ff fd65 	bl	80003e8 <__aeabi_idivmod>
 800091e:	1e0b      	subs	r3, r1, #0
 8000920:	d105      	bne.n	800092e <SysTick_Handler+0x36>
 8000922:	4b05      	ldr	r3, [pc, #20]	; (8000938 <SysTick_Handler+0x40>)
 8000924:	681b      	ldr	r3, [r3, #0]
 8000926:	1c5a      	adds	r2, r3, #1
 8000928:	4b03      	ldr	r3, [pc, #12]	; (8000938 <SysTick_Handler+0x40>)
 800092a:	601a      	str	r2, [r3, #0]
 800092c:	46c0      	nop			; (mov r8, r8)
 800092e:	46c0      	nop			; (mov r8, r8)
 8000930:	46bd      	mov	sp, r7
 8000932:	bd80      	pop	{r7, pc}
 8000934:	20000450 	.word	0x20000450
 8000938:	20000454 	.word	0x20000454

0800093c <dyn_display>:
 800093c:	b580      	push	{r7, lr}
 800093e:	b094      	sub	sp, #80	; 0x50
 8000940:	af00      	add	r7, sp, #0
 8000942:	6078      	str	r0, [r7, #4]
 8000944:	2300      	movs	r3, #0
 8000946:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000948:	230c      	movs	r3, #12
 800094a:	18fa      	adds	r2, r7, r3
 800094c:	4b3a      	ldr	r3, [pc, #232]	; (8000a38 <dyn_display+0xfc>)
 800094e:	0010      	movs	r0, r2
 8000950:	0019      	movs	r1, r3
 8000952:	2340      	movs	r3, #64	; 0x40
 8000954:	001a      	movs	r2, r3
 8000956:	f000 f8fb 	bl	8000b50 <memcpy>
 800095a:	4b38      	ldr	r3, [pc, #224]	; (8000a3c <dyn_display+0x100>)
 800095c:	210f      	movs	r1, #15
 800095e:	0018      	movs	r0, r3
 8000960:	f7ff fed6 	bl	8000710 <LL_GPIO_WriteOutputPort>
 8000964:	4b36      	ldr	r3, [pc, #216]	; (8000a40 <dyn_display+0x104>)
 8000966:	881b      	ldrh	r3, [r3, #0]
 8000968:	2b03      	cmp	r3, #3
 800096a:	d03a      	beq.n	80009e2 <dyn_display+0xa6>
 800096c:	dc4a      	bgt.n	8000a04 <dyn_display+0xc8>
 800096e:	2b02      	cmp	r3, #2
 8000970:	d026      	beq.n	80009c0 <dyn_display+0x84>
 8000972:	dc47      	bgt.n	8000a04 <dyn_display+0xc8>
 8000974:	2b00      	cmp	r3, #0
 8000976:	d002      	beq.n	800097e <dyn_display+0x42>
 8000978:	2b01      	cmp	r3, #1
 800097a:	d010      	beq.n	800099e <dyn_display+0x62>
 800097c:	e042      	b.n	8000a04 <dyn_display+0xc8>
 800097e:	2302      	movs	r3, #2
 8000980:	425b      	negs	r3, r3
 8000982:	4a2e      	ldr	r2, [pc, #184]	; (8000a3c <dyn_display+0x100>)
 8000984:	0019      	movs	r1, r3
 8000986:	0010      	movs	r0, r2
 8000988:	f7ff fec2 	bl	8000710 <LL_GPIO_WriteOutputPort>
 800098c:	687b      	ldr	r3, [r7, #4]
 800098e:	220f      	movs	r2, #15
 8000990:	401a      	ands	r2, r3
 8000992:	230c      	movs	r3, #12
 8000994:	18fb      	adds	r3, r7, r3
 8000996:	0092      	lsls	r2, r2, #2
 8000998:	58d3      	ldr	r3, [r2, r3]
 800099a:	64fb      	str	r3, [r7, #76]	; 0x4c
 800099c:	e033      	b.n	8000a06 <dyn_display+0xca>
 800099e:	2303      	movs	r3, #3
 80009a0:	425b      	negs	r3, r3
 80009a2:	4a26      	ldr	r2, [pc, #152]	; (8000a3c <dyn_display+0x100>)
 80009a4:	0019      	movs	r1, r3
 80009a6:	0010      	movs	r0, r2
 80009a8:	f7ff feb2 	bl	8000710 <LL_GPIO_WriteOutputPort>
 80009ac:	687b      	ldr	r3, [r7, #4]
 80009ae:	091b      	lsrs	r3, r3, #4
 80009b0:	220f      	movs	r2, #15
 80009b2:	401a      	ands	r2, r3
 80009b4:	230c      	movs	r3, #12
 80009b6:	18fb      	adds	r3, r7, r3
 80009b8:	0092      	lsls	r2, r2, #2
 80009ba:	58d3      	ldr	r3, [r2, r3]
 80009bc:	64fb      	str	r3, [r7, #76]	; 0x4c
 80009be:	e022      	b.n	8000a06 <dyn_display+0xca>
 80009c0:	2305      	movs	r3, #5
 80009c2:	425b      	negs	r3, r3
 80009c4:	4a1d      	ldr	r2, [pc, #116]	; (8000a3c <dyn_display+0x100>)
 80009c6:	0019      	movs	r1, r3
 80009c8:	0010      	movs	r0, r2
 80009ca:	f7ff fea1 	bl	8000710 <LL_GPIO_WriteOutputPort>
 80009ce:	687b      	ldr	r3, [r7, #4]
 80009d0:	0a1b      	lsrs	r3, r3, #8
 80009d2:	220f      	movs	r2, #15
 80009d4:	401a      	ands	r2, r3
 80009d6:	230c      	movs	r3, #12
 80009d8:	18fb      	adds	r3, r7, r3
 80009da:	0092      	lsls	r2, r2, #2
 80009dc:	58d3      	ldr	r3, [r2, r3]
 80009de:	64fb      	str	r3, [r7, #76]	; 0x4c
 80009e0:	e011      	b.n	8000a06 <dyn_display+0xca>
 80009e2:	2309      	movs	r3, #9
 80009e4:	425b      	negs	r3, r3
 80009e6:	4a15      	ldr	r2, [pc, #84]	; (8000a3c <dyn_display+0x100>)
 80009e8:	0019      	movs	r1, r3
 80009ea:	0010      	movs	r0, r2
 80009ec:	f7ff fe90 	bl	8000710 <LL_GPIO_WriteOutputPort>
 80009f0:	687b      	ldr	r3, [r7, #4]
 80009f2:	0b1b      	lsrs	r3, r3, #12
 80009f4:	220f      	movs	r2, #15
 80009f6:	401a      	ands	r2, r3
 80009f8:	230c      	movs	r3, #12
 80009fa:	18fb      	adds	r3, r7, r3
 80009fc:	0092      	lsls	r2, r2, #2
 80009fe:	58d3      	ldr	r3, [r2, r3]
 8000a00:	64fb      	str	r3, [r7, #76]	; 0x4c
 8000a02:	e000      	b.n	8000a06 <dyn_display+0xca>
 8000a04:	46c0      	nop			; (mov r8, r8)
 8000a06:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000a08:	4a0e      	ldr	r2, [pc, #56]	; (8000a44 <dyn_display+0x108>)
 8000a0a:	0019      	movs	r1, r3
 8000a0c:	0010      	movs	r0, r2
 8000a0e:	f7ff fe7f 	bl	8000710 <LL_GPIO_WriteOutputPort>
 8000a12:	4b0b      	ldr	r3, [pc, #44]	; (8000a40 <dyn_display+0x104>)
 8000a14:	881b      	ldrh	r3, [r3, #0]
 8000a16:	3301      	adds	r3, #1
 8000a18:	4a0b      	ldr	r2, [pc, #44]	; (8000a48 <dyn_display+0x10c>)
 8000a1a:	4013      	ands	r3, r2
 8000a1c:	d504      	bpl.n	8000a28 <dyn_display+0xec>
 8000a1e:	3b01      	subs	r3, #1
 8000a20:	2204      	movs	r2, #4
 8000a22:	4252      	negs	r2, r2
 8000a24:	4313      	orrs	r3, r2
 8000a26:	3301      	adds	r3, #1
 8000a28:	b29a      	uxth	r2, r3
 8000a2a:	4b05      	ldr	r3, [pc, #20]	; (8000a40 <dyn_display+0x104>)
 8000a2c:	801a      	strh	r2, [r3, #0]
 8000a2e:	46c0      	nop			; (mov r8, r8)
 8000a30:	46bd      	mov	sp, r7
 8000a32:	b014      	add	sp, #80	; 0x50
 8000a34:	bd80      	pop	{r7, pc}
 8000a36:	46c0      	nop			; (mov r8, r8)
 8000a38:	08000d10 	.word	0x08000d10
 8000a3c:	48000800 	.word	0x48000800
 8000a40:	20000458 	.word	0x20000458
 8000a44:	48000400 	.word	0x48000400
 8000a48:	80000003 	.word	0x80000003

08000a4c <main>:
 8000a4c:	b580      	push	{r7, lr}
 8000a4e:	af00      	add	r7, sp, #0
 8000a50:	f7ff fe92 	bl	8000778 <rcc_config>
 8000a54:	f7ff fec4 	bl	80007e0 <gpio_config>
 8000a58:	f7ff ff38 	bl	80008cc <systick_config>
 8000a5c:	e7fe      	b.n	8000a5c <main+0x10>
	...

08000a60 <SystemInit>:
 8000a60:	b580      	push	{r7, lr}
 8000a62:	af00      	add	r7, sp, #0
 8000a64:	4b1a      	ldr	r3, [pc, #104]	; (8000ad0 <SystemInit+0x70>)
 8000a66:	681a      	ldr	r2, [r3, #0]
 8000a68:	4b19      	ldr	r3, [pc, #100]	; (8000ad0 <SystemInit+0x70>)
 8000a6a:	2101      	movs	r1, #1
 8000a6c:	430a      	orrs	r2, r1
 8000a6e:	601a      	str	r2, [r3, #0]
 8000a70:	4b17      	ldr	r3, [pc, #92]	; (8000ad0 <SystemInit+0x70>)
 8000a72:	685a      	ldr	r2, [r3, #4]
 8000a74:	4b16      	ldr	r3, [pc, #88]	; (8000ad0 <SystemInit+0x70>)
 8000a76:	4917      	ldr	r1, [pc, #92]	; (8000ad4 <SystemInit+0x74>)
 8000a78:	400a      	ands	r2, r1
 8000a7a:	605a      	str	r2, [r3, #4]
 8000a7c:	4b14      	ldr	r3, [pc, #80]	; (8000ad0 <SystemInit+0x70>)
 8000a7e:	681a      	ldr	r2, [r3, #0]
 8000a80:	4b13      	ldr	r3, [pc, #76]	; (8000ad0 <SystemInit+0x70>)
 8000a82:	4915      	ldr	r1, [pc, #84]	; (8000ad8 <SystemInit+0x78>)
 8000a84:	400a      	ands	r2, r1
 8000a86:	601a      	str	r2, [r3, #0]
 8000a88:	4b11      	ldr	r3, [pc, #68]	; (8000ad0 <SystemInit+0x70>)
 8000a8a:	681a      	ldr	r2, [r3, #0]
 8000a8c:	4b10      	ldr	r3, [pc, #64]	; (8000ad0 <SystemInit+0x70>)
 8000a8e:	4913      	ldr	r1, [pc, #76]	; (8000adc <SystemInit+0x7c>)
 8000a90:	400a      	ands	r2, r1
 8000a92:	601a      	str	r2, [r3, #0]
 8000a94:	4b0e      	ldr	r3, [pc, #56]	; (8000ad0 <SystemInit+0x70>)
 8000a96:	685a      	ldr	r2, [r3, #4]
 8000a98:	4b0d      	ldr	r3, [pc, #52]	; (8000ad0 <SystemInit+0x70>)
 8000a9a:	4911      	ldr	r1, [pc, #68]	; (8000ae0 <SystemInit+0x80>)
 8000a9c:	400a      	ands	r2, r1
 8000a9e:	605a      	str	r2, [r3, #4]
 8000aa0:	4b0b      	ldr	r3, [pc, #44]	; (8000ad0 <SystemInit+0x70>)
 8000aa2:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000aa4:	4b0a      	ldr	r3, [pc, #40]	; (8000ad0 <SystemInit+0x70>)
 8000aa6:	210f      	movs	r1, #15
 8000aa8:	438a      	bics	r2, r1
 8000aaa:	62da      	str	r2, [r3, #44]	; 0x2c
 8000aac:	4b08      	ldr	r3, [pc, #32]	; (8000ad0 <SystemInit+0x70>)
 8000aae:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000ab0:	4b07      	ldr	r3, [pc, #28]	; (8000ad0 <SystemInit+0x70>)
 8000ab2:	490c      	ldr	r1, [pc, #48]	; (8000ae4 <SystemInit+0x84>)
 8000ab4:	400a      	ands	r2, r1
 8000ab6:	631a      	str	r2, [r3, #48]	; 0x30
 8000ab8:	4b05      	ldr	r3, [pc, #20]	; (8000ad0 <SystemInit+0x70>)
 8000aba:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000abc:	4b04      	ldr	r3, [pc, #16]	; (8000ad0 <SystemInit+0x70>)
 8000abe:	2101      	movs	r1, #1
 8000ac0:	438a      	bics	r2, r1
 8000ac2:	635a      	str	r2, [r3, #52]	; 0x34
 8000ac4:	4b02      	ldr	r3, [pc, #8]	; (8000ad0 <SystemInit+0x70>)
 8000ac6:	2200      	movs	r2, #0
 8000ac8:	609a      	str	r2, [r3, #8]
 8000aca:	46c0      	nop			; (mov r8, r8)
 8000acc:	46bd      	mov	sp, r7
 8000ace:	bd80      	pop	{r7, pc}
 8000ad0:	40021000 	.word	0x40021000
 8000ad4:	f8ffb80c 	.word	0xf8ffb80c
 8000ad8:	fef6ffff 	.word	0xfef6ffff
 8000adc:	fffbffff 	.word	0xfffbffff
 8000ae0:	ffc0ffff 	.word	0xffc0ffff
 8000ae4:	fffffeac 	.word	0xfffffeac

08000ae8 <NMI_Handler>:
 8000ae8:	b580      	push	{r7, lr}
 8000aea:	af00      	add	r7, sp, #0
 8000aec:	46c0      	nop			; (mov r8, r8)
 8000aee:	46bd      	mov	sp, r7
 8000af0:	bd80      	pop	{r7, pc}

08000af2 <HardFault_Handler>:
 8000af2:	b580      	push	{r7, lr}
 8000af4:	af00      	add	r7, sp, #0
 8000af6:	e7fe      	b.n	8000af6 <HardFault_Handler+0x4>

08000af8 <SVC_Handler>:
 8000af8:	b580      	push	{r7, lr}
 8000afa:	af00      	add	r7, sp, #0
 8000afc:	46c0      	nop			; (mov r8, r8)
 8000afe:	46bd      	mov	sp, r7
 8000b00:	bd80      	pop	{r7, pc}

08000b02 <PendSV_Handler>:
 8000b02:	b580      	push	{r7, lr}
 8000b04:	af00      	add	r7, sp, #0
 8000b06:	46c0      	nop			; (mov r8, r8)
 8000b08:	46bd      	mov	sp, r7
 8000b0a:	bd80      	pop	{r7, pc}

08000b0c <__libc_init_array>:
 8000b0c:	b570      	push	{r4, r5, r6, lr}
 8000b0e:	4d0c      	ldr	r5, [pc, #48]	; (8000b40 <__libc_init_array+0x34>)
 8000b10:	4e0c      	ldr	r6, [pc, #48]	; (8000b44 <__libc_init_array+0x38>)
 8000b12:	1b76      	subs	r6, r6, r5
 8000b14:	10b6      	asrs	r6, r6, #2
 8000b16:	d005      	beq.n	8000b24 <__libc_init_array+0x18>
 8000b18:	2400      	movs	r4, #0
 8000b1a:	cd08      	ldmia	r5!, {r3}
 8000b1c:	3401      	adds	r4, #1
 8000b1e:	4798      	blx	r3
 8000b20:	42a6      	cmp	r6, r4
 8000b22:	d1fa      	bne.n	8000b1a <__libc_init_array+0xe>
 8000b24:	f000 f8e8 	bl	8000cf8 <_init>
 8000b28:	4d07      	ldr	r5, [pc, #28]	; (8000b48 <__libc_init_array+0x3c>)
 8000b2a:	4e08      	ldr	r6, [pc, #32]	; (8000b4c <__libc_init_array+0x40>)
 8000b2c:	1b76      	subs	r6, r6, r5
 8000b2e:	10b6      	asrs	r6, r6, #2
 8000b30:	d005      	beq.n	8000b3e <__libc_init_array+0x32>
 8000b32:	2400      	movs	r4, #0
 8000b34:	cd08      	ldmia	r5!, {r3}
 8000b36:	3401      	adds	r4, #1
 8000b38:	4798      	blx	r3
 8000b3a:	42a6      	cmp	r6, r4
 8000b3c:	d1fa      	bne.n	8000b34 <__libc_init_array+0x28>
 8000b3e:	bd70      	pop	{r4, r5, r6, pc}
 8000b40:	08000d54 	.word	0x08000d54
 8000b44:	08000d54 	.word	0x08000d54
 8000b48:	08000d54 	.word	0x08000d54
 8000b4c:	08000d5c 	.word	0x08000d5c

08000b50 <memcpy>:
 8000b50:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000b52:	46c6      	mov	lr, r8
 8000b54:	b500      	push	{lr}
 8000b56:	2a0f      	cmp	r2, #15
 8000b58:	d941      	bls.n	8000bde <memcpy+0x8e>
 8000b5a:	2703      	movs	r7, #3
 8000b5c:	000d      	movs	r5, r1
 8000b5e:	003e      	movs	r6, r7
 8000b60:	4305      	orrs	r5, r0
 8000b62:	000c      	movs	r4, r1
 8000b64:	0003      	movs	r3, r0
 8000b66:	402e      	ands	r6, r5
 8000b68:	422f      	tst	r7, r5
 8000b6a:	d13d      	bne.n	8000be8 <memcpy+0x98>
 8000b6c:	0015      	movs	r5, r2
 8000b6e:	3d10      	subs	r5, #16
 8000b70:	092d      	lsrs	r5, r5, #4
 8000b72:	46a8      	mov	r8, r5
 8000b74:	012d      	lsls	r5, r5, #4
 8000b76:	46ac      	mov	ip, r5
 8000b78:	4484      	add	ip, r0
 8000b7a:	6827      	ldr	r7, [r4, #0]
 8000b7c:	001d      	movs	r5, r3
 8000b7e:	601f      	str	r7, [r3, #0]
 8000b80:	6867      	ldr	r7, [r4, #4]
 8000b82:	605f      	str	r7, [r3, #4]
 8000b84:	68a7      	ldr	r7, [r4, #8]
 8000b86:	609f      	str	r7, [r3, #8]
 8000b88:	68e7      	ldr	r7, [r4, #12]
 8000b8a:	3410      	adds	r4, #16
 8000b8c:	60df      	str	r7, [r3, #12]
 8000b8e:	3310      	adds	r3, #16
 8000b90:	4565      	cmp	r5, ip
 8000b92:	d1f2      	bne.n	8000b7a <memcpy+0x2a>
 8000b94:	4645      	mov	r5, r8
 8000b96:	230f      	movs	r3, #15
 8000b98:	240c      	movs	r4, #12
 8000b9a:	3501      	adds	r5, #1
 8000b9c:	012d      	lsls	r5, r5, #4
 8000b9e:	1949      	adds	r1, r1, r5
 8000ba0:	4013      	ands	r3, r2
 8000ba2:	1945      	adds	r5, r0, r5
 8000ba4:	4214      	tst	r4, r2
 8000ba6:	d022      	beq.n	8000bee <memcpy+0x9e>
 8000ba8:	598c      	ldr	r4, [r1, r6]
 8000baa:	51ac      	str	r4, [r5, r6]
 8000bac:	3604      	adds	r6, #4
 8000bae:	1b9c      	subs	r4, r3, r6
 8000bb0:	2c03      	cmp	r4, #3
 8000bb2:	d8f9      	bhi.n	8000ba8 <memcpy+0x58>
 8000bb4:	3b04      	subs	r3, #4
 8000bb6:	089b      	lsrs	r3, r3, #2
 8000bb8:	3301      	adds	r3, #1
 8000bba:	009b      	lsls	r3, r3, #2
 8000bbc:	18ed      	adds	r5, r5, r3
 8000bbe:	18c9      	adds	r1, r1, r3
 8000bc0:	2303      	movs	r3, #3
 8000bc2:	401a      	ands	r2, r3
 8000bc4:	1e56      	subs	r6, r2, #1
 8000bc6:	2a00      	cmp	r2, #0
 8000bc8:	d006      	beq.n	8000bd8 <memcpy+0x88>
 8000bca:	2300      	movs	r3, #0
 8000bcc:	5ccc      	ldrb	r4, [r1, r3]
 8000bce:	001a      	movs	r2, r3
 8000bd0:	54ec      	strb	r4, [r5, r3]
 8000bd2:	3301      	adds	r3, #1
 8000bd4:	4296      	cmp	r6, r2
 8000bd6:	d1f9      	bne.n	8000bcc <memcpy+0x7c>
 8000bd8:	bc80      	pop	{r7}
 8000bda:	46b8      	mov	r8, r7
 8000bdc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000bde:	0005      	movs	r5, r0
 8000be0:	1e56      	subs	r6, r2, #1
 8000be2:	2a00      	cmp	r2, #0
 8000be4:	d1f1      	bne.n	8000bca <memcpy+0x7a>
 8000be6:	e7f7      	b.n	8000bd8 <memcpy+0x88>
 8000be8:	0005      	movs	r5, r0
 8000bea:	1e56      	subs	r6, r2, #1
 8000bec:	e7ed      	b.n	8000bca <memcpy+0x7a>
 8000bee:	001a      	movs	r2, r3
 8000bf0:	e7f6      	b.n	8000be0 <memcpy+0x90>
 8000bf2:	46c0      	nop			; (mov r8, r8)

08000bf4 <register_fini>:
 8000bf4:	4b03      	ldr	r3, [pc, #12]	; (8000c04 <register_fini+0x10>)
 8000bf6:	b510      	push	{r4, lr}
 8000bf8:	2b00      	cmp	r3, #0
 8000bfa:	d002      	beq.n	8000c02 <register_fini+0xe>
 8000bfc:	4802      	ldr	r0, [pc, #8]	; (8000c08 <register_fini+0x14>)
 8000bfe:	f000 f805 	bl	8000c0c <atexit>
 8000c02:	bd10      	pop	{r4, pc}
 8000c04:	00000000 	.word	0x00000000
 8000c08:	08000c1d 	.word	0x08000c1d

08000c0c <atexit>:
 8000c0c:	b510      	push	{r4, lr}
 8000c0e:	0001      	movs	r1, r0
 8000c10:	2300      	movs	r3, #0
 8000c12:	2200      	movs	r2, #0
 8000c14:	2000      	movs	r0, #0
 8000c16:	f000 f819 	bl	8000c4c <__register_exitproc>
 8000c1a:	bd10      	pop	{r4, pc}

08000c1c <__libc_fini_array>:
 8000c1c:	b570      	push	{r4, r5, r6, lr}
 8000c1e:	4d07      	ldr	r5, [pc, #28]	; (8000c3c <__libc_fini_array+0x20>)
 8000c20:	4c07      	ldr	r4, [pc, #28]	; (8000c40 <__libc_fini_array+0x24>)
 8000c22:	1b64      	subs	r4, r4, r5
 8000c24:	10a4      	asrs	r4, r4, #2
 8000c26:	d005      	beq.n	8000c34 <__libc_fini_array+0x18>
 8000c28:	3c01      	subs	r4, #1
 8000c2a:	00a3      	lsls	r3, r4, #2
 8000c2c:	58eb      	ldr	r3, [r5, r3]
 8000c2e:	4798      	blx	r3
 8000c30:	2c00      	cmp	r4, #0
 8000c32:	d1f9      	bne.n	8000c28 <__libc_fini_array+0xc>
 8000c34:	f000 f866 	bl	8000d04 <_fini>
 8000c38:	bd70      	pop	{r4, r5, r6, pc}
 8000c3a:	46c0      	nop			; (mov r8, r8)
 8000c3c:	08000d5c 	.word	0x08000d5c
 8000c40:	08000d60 	.word	0x08000d60

08000c44 <__retarget_lock_acquire_recursive>:
 8000c44:	4770      	bx	lr
 8000c46:	46c0      	nop			; (mov r8, r8)

08000c48 <__retarget_lock_release_recursive>:
 8000c48:	4770      	bx	lr
 8000c4a:	46c0      	nop			; (mov r8, r8)

08000c4c <__register_exitproc>:
 8000c4c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c4e:	46d6      	mov	lr, sl
 8000c50:	464f      	mov	r7, r9
 8000c52:	4646      	mov	r6, r8
 8000c54:	b5c0      	push	{r6, r7, lr}
 8000c56:	4f26      	ldr	r7, [pc, #152]	; (8000cf0 <__register_exitproc+0xa4>)
 8000c58:	b082      	sub	sp, #8
 8000c5a:	0006      	movs	r6, r0
 8000c5c:	6838      	ldr	r0, [r7, #0]
 8000c5e:	4692      	mov	sl, r2
 8000c60:	4698      	mov	r8, r3
 8000c62:	4689      	mov	r9, r1
 8000c64:	f7ff ffee 	bl	8000c44 <__retarget_lock_acquire_recursive>
 8000c68:	4b22      	ldr	r3, [pc, #136]	; (8000cf4 <__register_exitproc+0xa8>)
 8000c6a:	681b      	ldr	r3, [r3, #0]
 8000c6c:	9301      	str	r3, [sp, #4]
 8000c6e:	23a4      	movs	r3, #164	; 0xa4
 8000c70:	9a01      	ldr	r2, [sp, #4]
 8000c72:	005b      	lsls	r3, r3, #1
 8000c74:	58d5      	ldr	r5, [r2, r3]
 8000c76:	2d00      	cmp	r5, #0
 8000c78:	d02e      	beq.n	8000cd8 <__register_exitproc+0x8c>
 8000c7a:	686c      	ldr	r4, [r5, #4]
 8000c7c:	2c1f      	cmp	r4, #31
 8000c7e:	dc30      	bgt.n	8000ce2 <__register_exitproc+0x96>
 8000c80:	2e00      	cmp	r6, #0
 8000c82:	d10f      	bne.n	8000ca4 <__register_exitproc+0x58>
 8000c84:	1c63      	adds	r3, r4, #1
 8000c86:	606b      	str	r3, [r5, #4]
 8000c88:	464b      	mov	r3, r9
 8000c8a:	3402      	adds	r4, #2
 8000c8c:	00a4      	lsls	r4, r4, #2
 8000c8e:	6838      	ldr	r0, [r7, #0]
 8000c90:	5163      	str	r3, [r4, r5]
 8000c92:	f7ff ffd9 	bl	8000c48 <__retarget_lock_release_recursive>
 8000c96:	2000      	movs	r0, #0
 8000c98:	b002      	add	sp, #8
 8000c9a:	bce0      	pop	{r5, r6, r7}
 8000c9c:	46ba      	mov	sl, r7
 8000c9e:	46b1      	mov	r9, r6
 8000ca0:	46a8      	mov	r8, r5
 8000ca2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000ca4:	2288      	movs	r2, #136	; 0x88
 8000ca6:	4651      	mov	r1, sl
 8000ca8:	0028      	movs	r0, r5
 8000caa:	00a3      	lsls	r3, r4, #2
 8000cac:	18eb      	adds	r3, r5, r3
 8000cae:	5099      	str	r1, [r3, r2]
 8000cb0:	3a87      	subs	r2, #135	; 0x87
 8000cb2:	40a2      	lsls	r2, r4
 8000cb4:	3089      	adds	r0, #137	; 0x89
 8000cb6:	30ff      	adds	r0, #255	; 0xff
 8000cb8:	6801      	ldr	r1, [r0, #0]
 8000cba:	4311      	orrs	r1, r2
 8000cbc:	6001      	str	r1, [r0, #0]
 8000cbe:	2184      	movs	r1, #132	; 0x84
 8000cc0:	4640      	mov	r0, r8
 8000cc2:	0049      	lsls	r1, r1, #1
 8000cc4:	5058      	str	r0, [r3, r1]
 8000cc6:	2e02      	cmp	r6, #2
 8000cc8:	d1dc      	bne.n	8000c84 <__register_exitproc+0x38>
 8000cca:	002b      	movs	r3, r5
 8000ccc:	338d      	adds	r3, #141	; 0x8d
 8000cce:	33ff      	adds	r3, #255	; 0xff
 8000cd0:	6819      	ldr	r1, [r3, #0]
 8000cd2:	430a      	orrs	r2, r1
 8000cd4:	601a      	str	r2, [r3, #0]
 8000cd6:	e7d5      	b.n	8000c84 <__register_exitproc+0x38>
 8000cd8:	0015      	movs	r5, r2
 8000cda:	354d      	adds	r5, #77	; 0x4d
 8000cdc:	35ff      	adds	r5, #255	; 0xff
 8000cde:	50d5      	str	r5, [r2, r3]
 8000ce0:	e7cb      	b.n	8000c7a <__register_exitproc+0x2e>
 8000ce2:	6838      	ldr	r0, [r7, #0]
 8000ce4:	f7ff ffb0 	bl	8000c48 <__retarget_lock_release_recursive>
 8000ce8:	2001      	movs	r0, #1
 8000cea:	4240      	negs	r0, r0
 8000cec:	e7d4      	b.n	8000c98 <__register_exitproc+0x4c>
 8000cee:	46c0      	nop			; (mov r8, r8)
 8000cf0:	20000430 	.word	0x20000430
 8000cf4:	08000d50 	.word	0x08000d50

08000cf8 <_init>:
 8000cf8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000cfa:	46c0      	nop			; (mov r8, r8)
 8000cfc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000cfe:	bc08      	pop	{r3}
 8000d00:	469e      	mov	lr, r3
 8000d02:	4770      	bx	lr

08000d04 <_fini>:
 8000d04:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000d06:	46c0      	nop			; (mov r8, r8)
 8000d08:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000d0a:	bc08      	pop	{r3}
 8000d0c:	469e      	mov	lr, r3
 8000d0e:	4770      	bx	lr
