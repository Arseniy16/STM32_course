
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000a00  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           000001d8  08000ac0  08000ac0  00010ac0  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000c98  08000c98  00010c98  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000ca0  08000ca0  00010ca0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08000ca4  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000024  20000434  080010d8  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000458  080010d8  00020458  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000c64  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     000003eb  00000000  00000000  000210c0  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        00000674  00000000  00000000  000214ab  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000150  00000000  00000000  00021b1f  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     00000120  00000000  00000000  00021c6f  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       0000085d  00000000  00000000  00021d8f  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        00000627  00000000  00000000  000225ec  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  00022c13  2**0  CONTENTS, READONLY
 17 .debug_frame      0000060c  00000000  00000000  00022ce0  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	08000aa8 	.word	0x08000aa8

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
 8000104:	08000aa8 	.word	0x08000aa8

08000108 <Reset_Handler>:
 8000108:	480d      	ldr	r0, [pc, #52]	; (8000140 <LoopForever+0x2>)
 800010a:	4685      	mov	sp, r0
 800010c:	480d      	ldr	r0, [pc, #52]	; (8000144 <LoopForever+0x6>)
 800010e:	490e      	ldr	r1, [pc, #56]	; (8000148 <LoopForever+0xa>)
 8000110:	4a0e      	ldr	r2, [pc, #56]	; (800014c <LoopForever+0xe>)
 8000112:	2300      	movs	r3, #0
 8000114:	e002      	b.n	800011c <LoopCopyDataInit>

08000116 <CopyDataInit>:
 8000116:	58d4      	ldr	r4, [r2, r3]
 8000118:	50c4      	str	r4, [r0, r3]
 800011a:	3304      	adds	r3, #4

0800011c <LoopCopyDataInit>:
 800011c:	18c4      	adds	r4, r0, r3
 800011e:	428c      	cmp	r4, r1
 8000120:	d3f9      	bcc.n	8000116 <CopyDataInit>
 8000122:	4a0b      	ldr	r2, [pc, #44]	; (8000150 <LoopForever+0x12>)
 8000124:	4c0b      	ldr	r4, [pc, #44]	; (8000154 <LoopForever+0x16>)
 8000126:	2300      	movs	r3, #0
 8000128:	e001      	b.n	800012e <LoopFillZerobss>

0800012a <FillZerobss>:
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	3204      	adds	r2, #4

0800012e <LoopFillZerobss>:
 800012e:	42a2      	cmp	r2, r4
 8000130:	d3fb      	bcc.n	800012a <FillZerobss>
 8000132:	f000 fb6d 	bl	8000810 <SystemInit>
 8000136:	f000 fbc1 	bl	80008bc <__libc_init_array>
 800013a:	f000 fb47 	bl	80007cc <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	08000ca4 	.word	0x08000ca4
 8000150:	20000434 	.word	0x20000434
 8000154:	20000458 	.word	0x20000458

08000158 <ADC1_COMP_IRQHandler>:
 8000158:	e7fe      	b.n	8000158 <ADC1_COMP_IRQHandler>
	...

0800015c <LL_RCC_HSI_Enable>:
 800015c:	b580      	push	{r7, lr}
 800015e:	af00      	add	r7, sp, #0
 8000160:	4b04      	ldr	r3, [pc, #16]	; (8000174 <LL_RCC_HSI_Enable+0x18>)
 8000162:	681a      	ldr	r2, [r3, #0]
 8000164:	4b03      	ldr	r3, [pc, #12]	; (8000174 <LL_RCC_HSI_Enable+0x18>)
 8000166:	2101      	movs	r1, #1
 8000168:	430a      	orrs	r2, r1
 800016a:	601a      	str	r2, [r3, #0]
 800016c:	46c0      	nop			; (mov r8, r8)
 800016e:	46bd      	mov	sp, r7
 8000170:	bd80      	pop	{r7, pc}
 8000172:	46c0      	nop			; (mov r8, r8)
 8000174:	40021000 	.word	0x40021000

08000178 <LL_RCC_HSI_IsReady>:
 8000178:	b580      	push	{r7, lr}
 800017a:	af00      	add	r7, sp, #0
 800017c:	4b05      	ldr	r3, [pc, #20]	; (8000194 <LL_RCC_HSI_IsReady+0x1c>)
 800017e:	681b      	ldr	r3, [r3, #0]
 8000180:	2202      	movs	r2, #2
 8000182:	4013      	ands	r3, r2
 8000184:	3b02      	subs	r3, #2
 8000186:	425a      	negs	r2, r3
 8000188:	4153      	adcs	r3, r2
 800018a:	b2db      	uxtb	r3, r3
 800018c:	0018      	movs	r0, r3
 800018e:	46bd      	mov	sp, r7
 8000190:	bd80      	pop	{r7, pc}
 8000192:	46c0      	nop			; (mov r8, r8)
 8000194:	40021000 	.word	0x40021000

08000198 <LL_RCC_SetSysClkSource>:
 8000198:	b580      	push	{r7, lr}
 800019a:	b082      	sub	sp, #8
 800019c:	af00      	add	r7, sp, #0
 800019e:	6078      	str	r0, [r7, #4]
 80001a0:	4b06      	ldr	r3, [pc, #24]	; (80001bc <LL_RCC_SetSysClkSource+0x24>)
 80001a2:	685b      	ldr	r3, [r3, #4]
 80001a4:	2203      	movs	r2, #3
 80001a6:	4393      	bics	r3, r2
 80001a8:	0019      	movs	r1, r3
 80001aa:	4b04      	ldr	r3, [pc, #16]	; (80001bc <LL_RCC_SetSysClkSource+0x24>)
 80001ac:	687a      	ldr	r2, [r7, #4]
 80001ae:	430a      	orrs	r2, r1
 80001b0:	605a      	str	r2, [r3, #4]
 80001b2:	46c0      	nop			; (mov r8, r8)
 80001b4:	46bd      	mov	sp, r7
 80001b6:	b002      	add	sp, #8
 80001b8:	bd80      	pop	{r7, pc}
 80001ba:	46c0      	nop			; (mov r8, r8)
 80001bc:	40021000 	.word	0x40021000

080001c0 <LL_RCC_GetSysClkSource>:
 80001c0:	b580      	push	{r7, lr}
 80001c2:	af00      	add	r7, sp, #0
 80001c4:	4b03      	ldr	r3, [pc, #12]	; (80001d4 <LL_RCC_GetSysClkSource+0x14>)
 80001c6:	685b      	ldr	r3, [r3, #4]
 80001c8:	220c      	movs	r2, #12
 80001ca:	4013      	ands	r3, r2
 80001cc:	0018      	movs	r0, r3
 80001ce:	46bd      	mov	sp, r7
 80001d0:	bd80      	pop	{r7, pc}
 80001d2:	46c0      	nop			; (mov r8, r8)
 80001d4:	40021000 	.word	0x40021000

080001d8 <LL_RCC_SetAHBPrescaler>:
 80001d8:	b580      	push	{r7, lr}
 80001da:	b082      	sub	sp, #8
 80001dc:	af00      	add	r7, sp, #0
 80001de:	6078      	str	r0, [r7, #4]
 80001e0:	4b06      	ldr	r3, [pc, #24]	; (80001fc <LL_RCC_SetAHBPrescaler+0x24>)
 80001e2:	685b      	ldr	r3, [r3, #4]
 80001e4:	22f0      	movs	r2, #240	; 0xf0
 80001e6:	4393      	bics	r3, r2
 80001e8:	0019      	movs	r1, r3
 80001ea:	4b04      	ldr	r3, [pc, #16]	; (80001fc <LL_RCC_SetAHBPrescaler+0x24>)
 80001ec:	687a      	ldr	r2, [r7, #4]
 80001ee:	430a      	orrs	r2, r1
 80001f0:	605a      	str	r2, [r3, #4]
 80001f2:	46c0      	nop			; (mov r8, r8)
 80001f4:	46bd      	mov	sp, r7
 80001f6:	b002      	add	sp, #8
 80001f8:	bd80      	pop	{r7, pc}
 80001fa:	46c0      	nop			; (mov r8, r8)
 80001fc:	40021000 	.word	0x40021000

08000200 <LL_RCC_SetAPB1Prescaler>:
 8000200:	b580      	push	{r7, lr}
 8000202:	b082      	sub	sp, #8
 8000204:	af00      	add	r7, sp, #0
 8000206:	6078      	str	r0, [r7, #4]
 8000208:	4b06      	ldr	r3, [pc, #24]	; (8000224 <LL_RCC_SetAPB1Prescaler+0x24>)
 800020a:	685b      	ldr	r3, [r3, #4]
 800020c:	4a06      	ldr	r2, [pc, #24]	; (8000228 <LL_RCC_SetAPB1Prescaler+0x28>)
 800020e:	4013      	ands	r3, r2
 8000210:	0019      	movs	r1, r3
 8000212:	4b04      	ldr	r3, [pc, #16]	; (8000224 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000214:	687a      	ldr	r2, [r7, #4]
 8000216:	430a      	orrs	r2, r1
 8000218:	605a      	str	r2, [r3, #4]
 800021a:	46c0      	nop			; (mov r8, r8)
 800021c:	46bd      	mov	sp, r7
 800021e:	b002      	add	sp, #8
 8000220:	bd80      	pop	{r7, pc}
 8000222:	46c0      	nop			; (mov r8, r8)
 8000224:	40021000 	.word	0x40021000
 8000228:	fffff8ff 	.word	0xfffff8ff

0800022c <LL_RCC_PLL_Enable>:
 800022c:	b580      	push	{r7, lr}
 800022e:	af00      	add	r7, sp, #0
 8000230:	4b04      	ldr	r3, [pc, #16]	; (8000244 <LL_RCC_PLL_Enable+0x18>)
 8000232:	681a      	ldr	r2, [r3, #0]
 8000234:	4b03      	ldr	r3, [pc, #12]	; (8000244 <LL_RCC_PLL_Enable+0x18>)
 8000236:	2180      	movs	r1, #128	; 0x80
 8000238:	0449      	lsls	r1, r1, #17
 800023a:	430a      	orrs	r2, r1
 800023c:	601a      	str	r2, [r3, #0]
 800023e:	46c0      	nop			; (mov r8, r8)
 8000240:	46bd      	mov	sp, r7
 8000242:	bd80      	pop	{r7, pc}
 8000244:	40021000 	.word	0x40021000

08000248 <LL_RCC_PLL_IsReady>:
 8000248:	b580      	push	{r7, lr}
 800024a:	af00      	add	r7, sp, #0
 800024c:	4b07      	ldr	r3, [pc, #28]	; (800026c <LL_RCC_PLL_IsReady+0x24>)
 800024e:	681a      	ldr	r2, [r3, #0]
 8000250:	2380      	movs	r3, #128	; 0x80
 8000252:	049b      	lsls	r3, r3, #18
 8000254:	4013      	ands	r3, r2
 8000256:	22fe      	movs	r2, #254	; 0xfe
 8000258:	0612      	lsls	r2, r2, #24
 800025a:	4694      	mov	ip, r2
 800025c:	4463      	add	r3, ip
 800025e:	425a      	negs	r2, r3
 8000260:	4153      	adcs	r3, r2
 8000262:	b2db      	uxtb	r3, r3
 8000264:	0018      	movs	r0, r3
 8000266:	46bd      	mov	sp, r7
 8000268:	bd80      	pop	{r7, pc}
 800026a:	46c0      	nop			; (mov r8, r8)
 800026c:	40021000 	.word	0x40021000

08000270 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000270:	b580      	push	{r7, lr}
 8000272:	b082      	sub	sp, #8
 8000274:	af00      	add	r7, sp, #0
 8000276:	6078      	str	r0, [r7, #4]
 8000278:	6039      	str	r1, [r7, #0]
 800027a:	4b0e      	ldr	r3, [pc, #56]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800027c:	685b      	ldr	r3, [r3, #4]
 800027e:	4a0e      	ldr	r2, [pc, #56]	; (80002b8 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000280:	4013      	ands	r3, r2
 8000282:	0019      	movs	r1, r3
 8000284:	687a      	ldr	r2, [r7, #4]
 8000286:	2380      	movs	r3, #128	; 0x80
 8000288:	025b      	lsls	r3, r3, #9
 800028a:	401a      	ands	r2, r3
 800028c:	683b      	ldr	r3, [r7, #0]
 800028e:	431a      	orrs	r2, r3
 8000290:	4b08      	ldr	r3, [pc, #32]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000292:	430a      	orrs	r2, r1
 8000294:	605a      	str	r2, [r3, #4]
 8000296:	4b07      	ldr	r3, [pc, #28]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000298:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800029a:	220f      	movs	r2, #15
 800029c:	4393      	bics	r3, r2
 800029e:	0019      	movs	r1, r3
 80002a0:	687b      	ldr	r3, [r7, #4]
 80002a2:	220f      	movs	r2, #15
 80002a4:	401a      	ands	r2, r3
 80002a6:	4b03      	ldr	r3, [pc, #12]	; (80002b4 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80002a8:	430a      	orrs	r2, r1
 80002aa:	62da      	str	r2, [r3, #44]	; 0x2c
 80002ac:	46c0      	nop			; (mov r8, r8)
 80002ae:	46bd      	mov	sp, r7
 80002b0:	b002      	add	sp, #8
 80002b2:	bd80      	pop	{r7, pc}
 80002b4:	40021000 	.word	0x40021000
 80002b8:	ffc2ffff 	.word	0xffc2ffff

080002bc <LL_FLASH_SetLatency>:
 80002bc:	b580      	push	{r7, lr}
 80002be:	b082      	sub	sp, #8
 80002c0:	af00      	add	r7, sp, #0
 80002c2:	6078      	str	r0, [r7, #4]
 80002c4:	4b06      	ldr	r3, [pc, #24]	; (80002e0 <LL_FLASH_SetLatency+0x24>)
 80002c6:	681b      	ldr	r3, [r3, #0]
 80002c8:	2201      	movs	r2, #1
 80002ca:	4393      	bics	r3, r2
 80002cc:	0019      	movs	r1, r3
 80002ce:	4b04      	ldr	r3, [pc, #16]	; (80002e0 <LL_FLASH_SetLatency+0x24>)
 80002d0:	687a      	ldr	r2, [r7, #4]
 80002d2:	430a      	orrs	r2, r1
 80002d4:	601a      	str	r2, [r3, #0]
 80002d6:	46c0      	nop			; (mov r8, r8)
 80002d8:	46bd      	mov	sp, r7
 80002da:	b002      	add	sp, #8
 80002dc:	bd80      	pop	{r7, pc}
 80002de:	46c0      	nop			; (mov r8, r8)
 80002e0:	40022000 	.word	0x40022000

080002e4 <LL_AHB1_GRP1_EnableClock>:
 80002e4:	b580      	push	{r7, lr}
 80002e6:	b084      	sub	sp, #16
 80002e8:	af00      	add	r7, sp, #0
 80002ea:	6078      	str	r0, [r7, #4]
 80002ec:	4b07      	ldr	r3, [pc, #28]	; (800030c <LL_AHB1_GRP1_EnableClock+0x28>)
 80002ee:	6959      	ldr	r1, [r3, #20]
 80002f0:	4b06      	ldr	r3, [pc, #24]	; (800030c <LL_AHB1_GRP1_EnableClock+0x28>)
 80002f2:	687a      	ldr	r2, [r7, #4]
 80002f4:	430a      	orrs	r2, r1
 80002f6:	615a      	str	r2, [r3, #20]
 80002f8:	4b04      	ldr	r3, [pc, #16]	; (800030c <LL_AHB1_GRP1_EnableClock+0x28>)
 80002fa:	695b      	ldr	r3, [r3, #20]
 80002fc:	687a      	ldr	r2, [r7, #4]
 80002fe:	4013      	ands	r3, r2
 8000300:	60fb      	str	r3, [r7, #12]
 8000302:	68fb      	ldr	r3, [r7, #12]
 8000304:	46c0      	nop			; (mov r8, r8)
 8000306:	46bd      	mov	sp, r7
 8000308:	b004      	add	sp, #16
 800030a:	bd80      	pop	{r7, pc}
 800030c:	40021000 	.word	0x40021000

08000310 <LL_GPIO_SetPinMode>:
 8000310:	b580      	push	{r7, lr}
 8000312:	b084      	sub	sp, #16
 8000314:	af00      	add	r7, sp, #0
 8000316:	60f8      	str	r0, [r7, #12]
 8000318:	60b9      	str	r1, [r7, #8]
 800031a:	607a      	str	r2, [r7, #4]
 800031c:	68fb      	ldr	r3, [r7, #12]
 800031e:	6819      	ldr	r1, [r3, #0]
 8000320:	68bb      	ldr	r3, [r7, #8]
 8000322:	435b      	muls	r3, r3
 8000324:	001a      	movs	r2, r3
 8000326:	0013      	movs	r3, r2
 8000328:	005b      	lsls	r3, r3, #1
 800032a:	189b      	adds	r3, r3, r2
 800032c:	43db      	mvns	r3, r3
 800032e:	400b      	ands	r3, r1
 8000330:	001a      	movs	r2, r3
 8000332:	68bb      	ldr	r3, [r7, #8]
 8000334:	435b      	muls	r3, r3
 8000336:	6879      	ldr	r1, [r7, #4]
 8000338:	434b      	muls	r3, r1
 800033a:	431a      	orrs	r2, r3
 800033c:	68fb      	ldr	r3, [r7, #12]
 800033e:	601a      	str	r2, [r3, #0]
 8000340:	46c0      	nop			; (mov r8, r8)
 8000342:	46bd      	mov	sp, r7
 8000344:	b004      	add	sp, #16
 8000346:	bd80      	pop	{r7, pc}

08000348 <LL_GPIO_WriteOutputPort>:
 8000348:	b580      	push	{r7, lr}
 800034a:	b082      	sub	sp, #8
 800034c:	af00      	add	r7, sp, #0
 800034e:	6078      	str	r0, [r7, #4]
 8000350:	6039      	str	r1, [r7, #0]
 8000352:	687b      	ldr	r3, [r7, #4]
 8000354:	683a      	ldr	r2, [r7, #0]
 8000356:	615a      	str	r2, [r3, #20]
 8000358:	46c0      	nop			; (mov r8, r8)
 800035a:	46bd      	mov	sp, r7
 800035c:	b002      	add	sp, #8
 800035e:	bd80      	pop	{r7, pc}

08000360 <LL_GPIO_ResetOutputPin>:
 8000360:	b580      	push	{r7, lr}
 8000362:	b082      	sub	sp, #8
 8000364:	af00      	add	r7, sp, #0
 8000366:	6078      	str	r0, [r7, #4]
 8000368:	6039      	str	r1, [r7, #0]
 800036a:	687b      	ldr	r3, [r7, #4]
 800036c:	683a      	ldr	r2, [r7, #0]
 800036e:	629a      	str	r2, [r3, #40]	; 0x28
 8000370:	46c0      	nop			; (mov r8, r8)
 8000372:	46bd      	mov	sp, r7
 8000374:	b002      	add	sp, #8
 8000376:	bd80      	pop	{r7, pc}

08000378 <rcc_config>:
 8000378:	b580      	push	{r7, lr}
 800037a:	af00      	add	r7, sp, #0
 800037c:	2001      	movs	r0, #1
 800037e:	f7ff ff9d 	bl	80002bc <LL_FLASH_SetLatency>
 8000382:	f7ff feeb 	bl	800015c <LL_RCC_HSI_Enable>
 8000386:	46c0      	nop			; (mov r8, r8)
 8000388:	f7ff fef6 	bl	8000178 <LL_RCC_HSI_IsReady>
 800038c:	0003      	movs	r3, r0
 800038e:	2b01      	cmp	r3, #1
 8000390:	d1fa      	bne.n	8000388 <rcc_config+0x10>
 8000392:	23a0      	movs	r3, #160	; 0xa0
 8000394:	039b      	lsls	r3, r3, #14
 8000396:	0019      	movs	r1, r3
 8000398:	2000      	movs	r0, #0
 800039a:	f7ff ff69 	bl	8000270 <LL_RCC_PLL_ConfigDomain_SYS>
 800039e:	f7ff ff45 	bl	800022c <LL_RCC_PLL_Enable>
 80003a2:	46c0      	nop			; (mov r8, r8)
 80003a4:	f7ff ff50 	bl	8000248 <LL_RCC_PLL_IsReady>
 80003a8:	0003      	movs	r3, r0
 80003aa:	2b01      	cmp	r3, #1
 80003ac:	d1fa      	bne.n	80003a4 <rcc_config+0x2c>
 80003ae:	2000      	movs	r0, #0
 80003b0:	f7ff ff12 	bl	80001d8 <LL_RCC_SetAHBPrescaler>
 80003b4:	2002      	movs	r0, #2
 80003b6:	f7ff feef 	bl	8000198 <LL_RCC_SetSysClkSource>
 80003ba:	46c0      	nop			; (mov r8, r8)
 80003bc:	f7ff ff00 	bl	80001c0 <LL_RCC_GetSysClkSource>
 80003c0:	0003      	movs	r3, r0
 80003c2:	2b08      	cmp	r3, #8
 80003c4:	d1fa      	bne.n	80003bc <rcc_config+0x44>
 80003c6:	2000      	movs	r0, #0
 80003c8:	f7ff ff1a 	bl	8000200 <LL_RCC_SetAPB1Prescaler>
 80003cc:	4b02      	ldr	r3, [pc, #8]	; (80003d8 <rcc_config+0x60>)
 80003ce:	4a03      	ldr	r2, [pc, #12]	; (80003dc <rcc_config+0x64>)
 80003d0:	601a      	str	r2, [r3, #0]
 80003d2:	46c0      	nop			; (mov r8, r8)
 80003d4:	46bd      	mov	sp, r7
 80003d6:	bd80      	pop	{r7, pc}
 80003d8:	20000000 	.word	0x20000000
 80003dc:	02dc6c00 	.word	0x02dc6c00

080003e0 <gpio_config>:
 80003e0:	b580      	push	{r7, lr}
 80003e2:	af00      	add	r7, sp, #0
 80003e4:	2380      	movs	r3, #128	; 0x80
 80003e6:	031b      	lsls	r3, r3, #12
 80003e8:	0018      	movs	r0, r3
 80003ea:	f7ff ff7b 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 80003ee:	2380      	movs	r3, #128	; 0x80
 80003f0:	005b      	lsls	r3, r3, #1
 80003f2:	4834      	ldr	r0, [pc, #208]	; (80004c4 <gpio_config+0xe4>)
 80003f4:	2201      	movs	r2, #1
 80003f6:	0019      	movs	r1, r3
 80003f8:	f7ff ff8a 	bl	8000310 <LL_GPIO_SetPinMode>
 80003fc:	2380      	movs	r3, #128	; 0x80
 80003fe:	009b      	lsls	r3, r3, #2
 8000400:	4830      	ldr	r0, [pc, #192]	; (80004c4 <gpio_config+0xe4>)
 8000402:	2201      	movs	r2, #1
 8000404:	0019      	movs	r1, r3
 8000406:	f7ff ff83 	bl	8000310 <LL_GPIO_SetPinMode>
 800040a:	4b2e      	ldr	r3, [pc, #184]	; (80004c4 <gpio_config+0xe4>)
 800040c:	2201      	movs	r2, #1
 800040e:	2101      	movs	r1, #1
 8000410:	0018      	movs	r0, r3
 8000412:	f7ff ff7d 	bl	8000310 <LL_GPIO_SetPinMode>
 8000416:	4b2b      	ldr	r3, [pc, #172]	; (80004c4 <gpio_config+0xe4>)
 8000418:	2201      	movs	r2, #1
 800041a:	2102      	movs	r1, #2
 800041c:	0018      	movs	r0, r3
 800041e:	f7ff ff77 	bl	8000310 <LL_GPIO_SetPinMode>
 8000422:	4b28      	ldr	r3, [pc, #160]	; (80004c4 <gpio_config+0xe4>)
 8000424:	2201      	movs	r2, #1
 8000426:	2104      	movs	r1, #4
 8000428:	0018      	movs	r0, r3
 800042a:	f7ff ff71 	bl	8000310 <LL_GPIO_SetPinMode>
 800042e:	4b25      	ldr	r3, [pc, #148]	; (80004c4 <gpio_config+0xe4>)
 8000430:	2201      	movs	r2, #1
 8000432:	2108      	movs	r1, #8
 8000434:	0018      	movs	r0, r3
 8000436:	f7ff ff6b 	bl	8000310 <LL_GPIO_SetPinMode>
 800043a:	2380      	movs	r3, #128	; 0x80
 800043c:	029b      	lsls	r3, r3, #10
 800043e:	0018      	movs	r0, r3
 8000440:	f7ff ff50 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000444:	2390      	movs	r3, #144	; 0x90
 8000446:	05db      	lsls	r3, r3, #23
 8000448:	2200      	movs	r2, #0
 800044a:	2101      	movs	r1, #1
 800044c:	0018      	movs	r0, r3
 800044e:	f7ff ff5f 	bl	8000310 <LL_GPIO_SetPinMode>
 8000452:	2380      	movs	r3, #128	; 0x80
 8000454:	02db      	lsls	r3, r3, #11
 8000456:	0018      	movs	r0, r3
 8000458:	f7ff ff44 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 800045c:	4b1a      	ldr	r3, [pc, #104]	; (80004c8 <gpio_config+0xe8>)
 800045e:	2201      	movs	r2, #1
 8000460:	2101      	movs	r1, #1
 8000462:	0018      	movs	r0, r3
 8000464:	f7ff ff54 	bl	8000310 <LL_GPIO_SetPinMode>
 8000468:	4b17      	ldr	r3, [pc, #92]	; (80004c8 <gpio_config+0xe8>)
 800046a:	2201      	movs	r2, #1
 800046c:	2102      	movs	r1, #2
 800046e:	0018      	movs	r0, r3
 8000470:	f7ff ff4e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000474:	4b14      	ldr	r3, [pc, #80]	; (80004c8 <gpio_config+0xe8>)
 8000476:	2201      	movs	r2, #1
 8000478:	2104      	movs	r1, #4
 800047a:	0018      	movs	r0, r3
 800047c:	f7ff ff48 	bl	8000310 <LL_GPIO_SetPinMode>
 8000480:	4b11      	ldr	r3, [pc, #68]	; (80004c8 <gpio_config+0xe8>)
 8000482:	2201      	movs	r2, #1
 8000484:	2108      	movs	r1, #8
 8000486:	0018      	movs	r0, r3
 8000488:	f7ff ff42 	bl	8000310 <LL_GPIO_SetPinMode>
 800048c:	4b0e      	ldr	r3, [pc, #56]	; (80004c8 <gpio_config+0xe8>)
 800048e:	2201      	movs	r2, #1
 8000490:	2110      	movs	r1, #16
 8000492:	0018      	movs	r0, r3
 8000494:	f7ff ff3c 	bl	8000310 <LL_GPIO_SetPinMode>
 8000498:	4b0b      	ldr	r3, [pc, #44]	; (80004c8 <gpio_config+0xe8>)
 800049a:	2201      	movs	r2, #1
 800049c:	2120      	movs	r1, #32
 800049e:	0018      	movs	r0, r3
 80004a0:	f7ff ff36 	bl	8000310 <LL_GPIO_SetPinMode>
 80004a4:	4b08      	ldr	r3, [pc, #32]	; (80004c8 <gpio_config+0xe8>)
 80004a6:	2201      	movs	r2, #1
 80004a8:	2140      	movs	r1, #64	; 0x40
 80004aa:	0018      	movs	r0, r3
 80004ac:	f7ff ff30 	bl	8000310 <LL_GPIO_SetPinMode>
 80004b0:	4b05      	ldr	r3, [pc, #20]	; (80004c8 <gpio_config+0xe8>)
 80004b2:	2201      	movs	r2, #1
 80004b4:	2180      	movs	r1, #128	; 0x80
 80004b6:	0018      	movs	r0, r3
 80004b8:	f7ff ff2a 	bl	8000310 <LL_GPIO_SetPinMode>
 80004bc:	46c0      	nop			; (mov r8, r8)
 80004be:	46bd      	mov	sp, r7
 80004c0:	bd80      	pop	{r7, pc}
 80004c2:	46c0      	nop			; (mov r8, r8)
 80004c4:	48000800 	.word	0x48000800
 80004c8:	48000400 	.word	0x48000400

080004cc <delay>:
 80004cc:	b580      	push	{r7, lr}
 80004ce:	4e02      	ldr	r6, [pc, #8]	; (80004d8 <delay+0xc>)
 80004d0:	3e01      	subs	r6, #1
 80004d2:	2e00      	cmp	r6, #0
 80004d4:	d1fc      	bne.n	80004d0 <delay+0x4>
 80004d6:	bd80      	pop	{r7, pc}
 80004d8:	00002ee0 	.word	0x00002ee0
 80004dc:	46c0      	nop			; (mov r8, r8)
	...

080004e0 <symbols>:
 80004e0:	b580      	push	{r7, lr}
 80004e2:	b084      	sub	sp, #16
 80004e4:	af00      	add	r7, sp, #0
 80004e6:	0002      	movs	r2, r0
 80004e8:	1dfb      	adds	r3, r7, #7
 80004ea:	701a      	strb	r2, [r3, #0]
 80004ec:	2300      	movs	r3, #0
 80004ee:	60fb      	str	r3, [r7, #12]
 80004f0:	1dfb      	adds	r3, r7, #7
 80004f2:	781b      	ldrb	r3, [r3, #0]
 80004f4:	3b21      	subs	r3, #33	; 0x21
 80004f6:	2b59      	cmp	r3, #89	; 0x59
 80004f8:	d852      	bhi.n	80005a0 <symbols+0xc0>
 80004fa:	009a      	lsls	r2, r3, #2
 80004fc:	4b2c      	ldr	r3, [pc, #176]	; (80005b0 <symbols+0xd0>)
 80004fe:	18d3      	adds	r3, r2, r3
 8000500:	681b      	ldr	r3, [r3, #0]
 8000502:	469f      	mov	pc, r3
 8000504:	2377      	movs	r3, #119	; 0x77
 8000506:	60fb      	str	r3, [r7, #12]
 8000508:	e04d      	b.n	80005a6 <symbols+0xc6>
 800050a:	237c      	movs	r3, #124	; 0x7c
 800050c:	60fb      	str	r3, [r7, #12]
 800050e:	e04a      	b.n	80005a6 <symbols+0xc6>
 8000510:	2339      	movs	r3, #57	; 0x39
 8000512:	60fb      	str	r3, [r7, #12]
 8000514:	e047      	b.n	80005a6 <symbols+0xc6>
 8000516:	235e      	movs	r3, #94	; 0x5e
 8000518:	60fb      	str	r3, [r7, #12]
 800051a:	e044      	b.n	80005a6 <symbols+0xc6>
 800051c:	2379      	movs	r3, #121	; 0x79
 800051e:	60fb      	str	r3, [r7, #12]
 8000520:	e041      	b.n	80005a6 <symbols+0xc6>
 8000522:	2371      	movs	r3, #113	; 0x71
 8000524:	60fb      	str	r3, [r7, #12]
 8000526:	e03e      	b.n	80005a6 <symbols+0xc6>
 8000528:	237d      	movs	r3, #125	; 0x7d
 800052a:	60fb      	str	r3, [r7, #12]
 800052c:	e03b      	b.n	80005a6 <symbols+0xc6>
 800052e:	2376      	movs	r3, #118	; 0x76
 8000530:	60fb      	str	r3, [r7, #12]
 8000532:	e038      	b.n	80005a6 <symbols+0xc6>
 8000534:	2306      	movs	r3, #6
 8000536:	60fb      	str	r3, [r7, #12]
 8000538:	e035      	b.n	80005a6 <symbols+0xc6>
 800053a:	230e      	movs	r3, #14
 800053c:	60fb      	str	r3, [r7, #12]
 800053e:	e032      	b.n	80005a6 <symbols+0xc6>
 8000540:	2338      	movs	r3, #56	; 0x38
 8000542:	60fb      	str	r3, [r7, #12]
 8000544:	e02f      	b.n	80005a6 <symbols+0xc6>
 8000546:	2354      	movs	r3, #84	; 0x54
 8000548:	60fb      	str	r3, [r7, #12]
 800054a:	e02c      	b.n	80005a6 <symbols+0xc6>
 800054c:	233f      	movs	r3, #63	; 0x3f
 800054e:	60fb      	str	r3, [r7, #12]
 8000550:	e029      	b.n	80005a6 <symbols+0xc6>
 8000552:	2373      	movs	r3, #115	; 0x73
 8000554:	60fb      	str	r3, [r7, #12]
 8000556:	e026      	b.n	80005a6 <symbols+0xc6>
 8000558:	236d      	movs	r3, #109	; 0x6d
 800055a:	60fb      	str	r3, [r7, #12]
 800055c:	e023      	b.n	80005a6 <symbols+0xc6>
 800055e:	233e      	movs	r3, #62	; 0x3e
 8000560:	60fb      	str	r3, [r7, #12]
 8000562:	e020      	b.n	80005a6 <symbols+0xc6>
 8000564:	235b      	movs	r3, #91	; 0x5b
 8000566:	60fb      	str	r3, [r7, #12]
 8000568:	e01d      	b.n	80005a6 <symbols+0xc6>
 800056a:	2367      	movs	r3, #103	; 0x67
 800056c:	60fb      	str	r3, [r7, #12]
 800056e:	e01a      	b.n	80005a6 <symbols+0xc6>
 8000570:	2350      	movs	r3, #80	; 0x50
 8000572:	60fb      	str	r3, [r7, #12]
 8000574:	e017      	b.n	80005a6 <symbols+0xc6>
 8000576:	2378      	movs	r3, #120	; 0x78
 8000578:	60fb      	str	r3, [r7, #12]
 800057a:	e014      	b.n	80005a6 <symbols+0xc6>
 800057c:	236e      	movs	r3, #110	; 0x6e
 800057e:	60fb      	str	r3, [r7, #12]
 8000580:	e011      	b.n	80005a6 <symbols+0xc6>
 8000582:	2380      	movs	r3, #128	; 0x80
 8000584:	60fb      	str	r3, [r7, #12]
 8000586:	e00e      	b.n	80005a6 <symbols+0xc6>
 8000588:	2386      	movs	r3, #134	; 0x86
 800058a:	60fb      	str	r3, [r7, #12]
 800058c:	e00b      	b.n	80005a6 <symbols+0xc6>
 800058e:	23a7      	movs	r3, #167	; 0xa7
 8000590:	60fb      	str	r3, [r7, #12]
 8000592:	e008      	b.n	80005a6 <symbols+0xc6>
 8000594:	2308      	movs	r3, #8
 8000596:	60fb      	str	r3, [r7, #12]
 8000598:	e005      	b.n	80005a6 <symbols+0xc6>
 800059a:	2340      	movs	r3, #64	; 0x40
 800059c:	60fb      	str	r3, [r7, #12]
 800059e:	e002      	b.n	80005a6 <symbols+0xc6>
 80005a0:	2300      	movs	r3, #0
 80005a2:	60fb      	str	r3, [r7, #12]
 80005a4:	46c0      	nop			; (mov r8, r8)
 80005a6:	68fb      	ldr	r3, [r7, #12]
 80005a8:	0018      	movs	r0, r3
 80005aa:	46bd      	mov	sp, r7
 80005ac:	b004      	add	sp, #16
 80005ae:	bd80      	pop	{r7, pc}
 80005b0:	08000b2c 	.word	0x08000b2c

080005b4 <mask_indicator>:
 80005b4:	b580      	push	{r7, lr}
 80005b6:	b082      	sub	sp, #8
 80005b8:	af00      	add	r7, sp, #0
 80005ba:	6078      	str	r0, [r7, #4]
 80005bc:	687b      	ldr	r3, [r7, #4]
 80005be:	09db      	lsrs	r3, r3, #7
 80005c0:	2201      	movs	r2, #1
 80005c2:	4013      	ands	r3, r2
 80005c4:	01da      	lsls	r2, r3, #7
 80005c6:	687b      	ldr	r3, [r7, #4]
 80005c8:	099b      	lsrs	r3, r3, #6
 80005ca:	2101      	movs	r1, #1
 80005cc:	400b      	ands	r3, r1
 80005ce:	019b      	lsls	r3, r3, #6
 80005d0:	431a      	orrs	r2, r3
 80005d2:	687b      	ldr	r3, [r7, #4]
 80005d4:	095b      	lsrs	r3, r3, #5
 80005d6:	2101      	movs	r1, #1
 80005d8:	400b      	ands	r3, r1
 80005da:	015b      	lsls	r3, r3, #5
 80005dc:	431a      	orrs	r2, r3
 80005de:	687b      	ldr	r3, [r7, #4]
 80005e0:	091b      	lsrs	r3, r3, #4
 80005e2:	2101      	movs	r1, #1
 80005e4:	400b      	ands	r3, r1
 80005e6:	011b      	lsls	r3, r3, #4
 80005e8:	431a      	orrs	r2, r3
 80005ea:	687b      	ldr	r3, [r7, #4]
 80005ec:	08db      	lsrs	r3, r3, #3
 80005ee:	2101      	movs	r1, #1
 80005f0:	400b      	ands	r3, r1
 80005f2:	00db      	lsls	r3, r3, #3
 80005f4:	431a      	orrs	r2, r3
 80005f6:	687b      	ldr	r3, [r7, #4]
 80005f8:	089b      	lsrs	r3, r3, #2
 80005fa:	2101      	movs	r1, #1
 80005fc:	400b      	ands	r3, r1
 80005fe:	009b      	lsls	r3, r3, #2
 8000600:	431a      	orrs	r2, r3
 8000602:	687b      	ldr	r3, [r7, #4]
 8000604:	085b      	lsrs	r3, r3, #1
 8000606:	2101      	movs	r1, #1
 8000608:	400b      	ands	r3, r1
 800060a:	005b      	lsls	r3, r3, #1
 800060c:	431a      	orrs	r2, r3
 800060e:	687b      	ldr	r3, [r7, #4]
 8000610:	2101      	movs	r1, #1
 8000612:	400b      	ands	r3, r1
 8000614:	4313      	orrs	r3, r2
 8000616:	0018      	movs	r0, r3
 8000618:	46bd      	mov	sp, r7
 800061a:	b002      	add	sp, #8
 800061c:	bd80      	pop	{r7, pc}
	...

08000620 <dynamic_text>:
 8000620:	b590      	push	{r4, r7, lr}
 8000622:	b089      	sub	sp, #36	; 0x24
 8000624:	af00      	add	r7, sp, #0
 8000626:	6078      	str	r0, [r7, #4]
 8000628:	231f      	movs	r3, #31
 800062a:	18fb      	adds	r3, r7, r3
 800062c:	687a      	ldr	r2, [r7, #4]
 800062e:	7812      	ldrb	r2, [r2, #0]
 8000630:	701a      	strb	r2, [r3, #0]
 8000632:	2300      	movs	r3, #0
 8000634:	61bb      	str	r3, [r7, #24]
 8000636:	2300      	movs	r3, #0
 8000638:	617b      	str	r3, [r7, #20]
 800063a:	e05c      	b.n	80006f6 <dynamic_text+0xd6>
 800063c:	2300      	movs	r3, #0
 800063e:	613b      	str	r3, [r7, #16]
 8000640:	e037      	b.n	80006b2 <dynamic_text+0x92>
 8000642:	69bb      	ldr	r3, [r7, #24]
 8000644:	60fb      	str	r3, [r7, #12]
 8000646:	2300      	movs	r3, #0
 8000648:	60bb      	str	r3, [r7, #8]
 800064a:	e02c      	b.n	80006a6 <dynamic_text+0x86>
 800064c:	687a      	ldr	r2, [r7, #4]
 800064e:	68fb      	ldr	r3, [r7, #12]
 8000650:	18d2      	adds	r2, r2, r3
 8000652:	241f      	movs	r4, #31
 8000654:	193b      	adds	r3, r7, r4
 8000656:	7812      	ldrb	r2, [r2, #0]
 8000658:	701a      	strb	r2, [r3, #0]
 800065a:	4b2b      	ldr	r3, [pc, #172]	; (8000708 <dynamic_text+0xe8>)
 800065c:	210f      	movs	r1, #15
 800065e:	0018      	movs	r0, r3
 8000660:	f7ff fe72 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000664:	2201      	movs	r2, #1
 8000666:	68bb      	ldr	r3, [r7, #8]
 8000668:	409a      	lsls	r2, r3
 800066a:	0013      	movs	r3, r2
 800066c:	0018      	movs	r0, r3
 800066e:	f7ff ffa1 	bl	80005b4 <mask_indicator>
 8000672:	0003      	movs	r3, r0
 8000674:	4a24      	ldr	r2, [pc, #144]	; (8000708 <dynamic_text+0xe8>)
 8000676:	0019      	movs	r1, r3
 8000678:	0010      	movs	r0, r2
 800067a:	f7ff fe71 	bl	8000360 <LL_GPIO_ResetOutputPin>
 800067e:	193b      	adds	r3, r7, r4
 8000680:	781b      	ldrb	r3, [r3, #0]
 8000682:	0018      	movs	r0, r3
 8000684:	f7ff ff2c 	bl	80004e0 <symbols>
 8000688:	0003      	movs	r3, r0
 800068a:	001a      	movs	r2, r3
 800068c:	4b1f      	ldr	r3, [pc, #124]	; (800070c <dynamic_text+0xec>)
 800068e:	0011      	movs	r1, r2
 8000690:	0018      	movs	r0, r3
 8000692:	f7ff fe59 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000696:	f7ff ff19 	bl	80004cc <delay>
 800069a:	68fb      	ldr	r3, [r7, #12]
 800069c:	3b01      	subs	r3, #1
 800069e:	60fb      	str	r3, [r7, #12]
 80006a0:	68bb      	ldr	r3, [r7, #8]
 80006a2:	3301      	adds	r3, #1
 80006a4:	60bb      	str	r3, [r7, #8]
 80006a6:	68bb      	ldr	r3, [r7, #8]
 80006a8:	2b03      	cmp	r3, #3
 80006aa:	d9cf      	bls.n	800064c <dynamic_text+0x2c>
 80006ac:	693b      	ldr	r3, [r7, #16]
 80006ae:	3301      	adds	r3, #1
 80006b0:	613b      	str	r3, [r7, #16]
 80006b2:	693b      	ldr	r3, [r7, #16]
 80006b4:	2b31      	cmp	r3, #49	; 0x31
 80006b6:	ddc4      	ble.n	8000642 <dynamic_text+0x22>
 80006b8:	69bb      	ldr	r3, [r7, #24]
 80006ba:	1c5a      	adds	r2, r3, #1
 80006bc:	61ba      	str	r2, [r7, #24]
 80006be:	687a      	ldr	r2, [r7, #4]
 80006c0:	18d2      	adds	r2, r2, r3
 80006c2:	211f      	movs	r1, #31
 80006c4:	187b      	adds	r3, r7, r1
 80006c6:	7812      	ldrb	r2, [r2, #0]
 80006c8:	701a      	strb	r2, [r3, #0]
 80006ca:	187b      	adds	r3, r7, r1
 80006cc:	781b      	ldrb	r3, [r3, #0]
 80006ce:	2b00      	cmp	r3, #0
 80006d0:	d002      	beq.n	80006d8 <dynamic_text+0xb8>
 80006d2:	697b      	ldr	r3, [r7, #20]
 80006d4:	2b00      	cmp	r3, #0
 80006d6:	d00e      	beq.n	80006f6 <dynamic_text+0xd6>
 80006d8:	697b      	ldr	r3, [r7, #20]
 80006da:	2b01      	cmp	r3, #1
 80006dc:	d807      	bhi.n	80006ee <dynamic_text+0xce>
 80006de:	231f      	movs	r3, #31
 80006e0:	18fb      	adds	r3, r7, r3
 80006e2:	2220      	movs	r2, #32
 80006e4:	701a      	strb	r2, [r3, #0]
 80006e6:	697b      	ldr	r3, [r7, #20]
 80006e8:	3301      	adds	r3, #1
 80006ea:	617b      	str	r3, [r7, #20]
 80006ec:	e003      	b.n	80006f6 <dynamic_text+0xd6>
 80006ee:	231f      	movs	r3, #31
 80006f0:	18fb      	adds	r3, r7, r3
 80006f2:	2200      	movs	r2, #0
 80006f4:	701a      	strb	r2, [r3, #0]
 80006f6:	231f      	movs	r3, #31
 80006f8:	18fb      	adds	r3, r7, r3
 80006fa:	781b      	ldrb	r3, [r3, #0]
 80006fc:	2b00      	cmp	r3, #0
 80006fe:	d19d      	bne.n	800063c <dynamic_text+0x1c>
 8000700:	46c0      	nop			; (mov r8, r8)
 8000702:	46bd      	mov	sp, r7
 8000704:	b009      	add	sp, #36	; 0x24
 8000706:	bd90      	pop	{r4, r7, pc}
 8000708:	48000800 	.word	0x48000800
 800070c:	48000400 	.word	0x48000400

08000710 <dyn_display>:
 8000710:	b590      	push	{r4, r7, lr}
 8000712:	b095      	sub	sp, #84	; 0x54
 8000714:	af00      	add	r7, sp, #0
 8000716:	6078      	str	r0, [r7, #4]
 8000718:	2300      	movs	r3, #0
 800071a:	64fb      	str	r3, [r7, #76]	; 0x4c
 800071c:	240c      	movs	r4, #12
 800071e:	193a      	adds	r2, r7, r4
 8000720:	4b25      	ldr	r3, [pc, #148]	; (80007b8 <dyn_display+0xa8>)
 8000722:	0010      	movs	r0, r2
 8000724:	0019      	movs	r1, r3
 8000726:	2340      	movs	r3, #64	; 0x40
 8000728:	001a      	movs	r2, r3
 800072a:	f000 f8e9 	bl	8000900 <memcpy>
 800072e:	200f      	movs	r0, #15
 8000730:	f7ff ff40 	bl	80005b4 <mask_indicator>
 8000734:	0003      	movs	r3, r0
 8000736:	4a21      	ldr	r2, [pc, #132]	; (80007bc <dyn_display+0xac>)
 8000738:	0019      	movs	r1, r3
 800073a:	0010      	movs	r0, r2
 800073c:	f7ff fe04 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000740:	4b1f      	ldr	r3, [pc, #124]	; (80007c0 <dyn_display+0xb0>)
 8000742:	881b      	ldrh	r3, [r3, #0]
 8000744:	001a      	movs	r2, r3
 8000746:	2301      	movs	r3, #1
 8000748:	4093      	lsls	r3, r2
 800074a:	0018      	movs	r0, r3
 800074c:	f7ff ff32 	bl	80005b4 <mask_indicator>
 8000750:	0003      	movs	r3, r0
 8000752:	4a1a      	ldr	r2, [pc, #104]	; (80007bc <dyn_display+0xac>)
 8000754:	0019      	movs	r1, r3
 8000756:	0010      	movs	r0, r2
 8000758:	f7ff fe02 	bl	8000360 <LL_GPIO_ResetOutputPin>
 800075c:	4b18      	ldr	r3, [pc, #96]	; (80007c0 <dyn_display+0xb0>)
 800075e:	881b      	ldrh	r3, [r3, #0]
 8000760:	009b      	lsls	r3, r3, #2
 8000762:	220f      	movs	r2, #15
 8000764:	409a      	lsls	r2, r3
 8000766:	0013      	movs	r3, r2
 8000768:	001a      	movs	r2, r3
 800076a:	687b      	ldr	r3, [r7, #4]
 800076c:	401a      	ands	r2, r3
 800076e:	4b14      	ldr	r3, [pc, #80]	; (80007c0 <dyn_display+0xb0>)
 8000770:	881b      	ldrh	r3, [r3, #0]
 8000772:	009b      	lsls	r3, r3, #2
 8000774:	40da      	lsrs	r2, r3
 8000776:	193b      	adds	r3, r7, r4
 8000778:	0092      	lsls	r2, r2, #2
 800077a:	58d3      	ldr	r3, [r2, r3]
 800077c:	64fb      	str	r3, [r7, #76]	; 0x4c
 800077e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8000780:	0018      	movs	r0, r3
 8000782:	f7ff ff17 	bl	80005b4 <mask_indicator>
 8000786:	0003      	movs	r3, r0
 8000788:	4a0e      	ldr	r2, [pc, #56]	; (80007c4 <dyn_display+0xb4>)
 800078a:	0019      	movs	r1, r3
 800078c:	0010      	movs	r0, r2
 800078e:	f7ff fddb 	bl	8000348 <LL_GPIO_WriteOutputPort>
 8000792:	4b0b      	ldr	r3, [pc, #44]	; (80007c0 <dyn_display+0xb0>)
 8000794:	881b      	ldrh	r3, [r3, #0]
 8000796:	3301      	adds	r3, #1
 8000798:	4a0b      	ldr	r2, [pc, #44]	; (80007c8 <dyn_display+0xb8>)
 800079a:	4013      	ands	r3, r2
 800079c:	d504      	bpl.n	80007a8 <dyn_display+0x98>
 800079e:	3b01      	subs	r3, #1
 80007a0:	2204      	movs	r2, #4
 80007a2:	4252      	negs	r2, r2
 80007a4:	4313      	orrs	r3, r2
 80007a6:	3301      	adds	r3, #1
 80007a8:	b29a      	uxth	r2, r3
 80007aa:	4b05      	ldr	r3, [pc, #20]	; (80007c0 <dyn_display+0xb0>)
 80007ac:	801a      	strh	r2, [r3, #0]
 80007ae:	46c0      	nop			; (mov r8, r8)
 80007b0:	46bd      	mov	sp, r7
 80007b2:	b015      	add	sp, #84	; 0x54
 80007b4:	bd90      	pop	{r4, r7, pc}
 80007b6:	46c0      	nop			; (mov r8, r8)
 80007b8:	08000ae0 	.word	0x08000ae0
 80007bc:	48000800 	.word	0x48000800
 80007c0:	20000450 	.word	0x20000450
 80007c4:	48000400 	.word	0x48000400
 80007c8:	80000003 	.word	0x80000003

080007cc <main>:
 80007cc:	b580      	push	{r7, lr}
 80007ce:	b082      	sub	sp, #8
 80007d0:	af00      	add	r7, sp, #0
 80007d2:	f7ff fdd1 	bl	8000378 <rcc_config>
 80007d6:	f7ff fe03 	bl	80003e0 <gpio_config>
 80007da:	2300      	movs	r3, #0
 80007dc:	607b      	str	r3, [r7, #4]
 80007de:	e008      	b.n	80007f2 <main+0x26>
 80007e0:	4b08      	ldr	r3, [pc, #32]	; (8000804 <main+0x38>)
 80007e2:	0018      	movs	r0, r3
 80007e4:	f7ff ff94 	bl	8000710 <dyn_display>
 80007e8:	f7ff fe70 	bl	80004cc <delay>
 80007ec:	687b      	ldr	r3, [r7, #4]
 80007ee:	3301      	adds	r3, #1
 80007f0:	607b      	str	r3, [r7, #4]
 80007f2:	687b      	ldr	r3, [r7, #4]
 80007f4:	4a04      	ldr	r2, [pc, #16]	; (8000808 <main+0x3c>)
 80007f6:	4293      	cmp	r3, r2
 80007f8:	ddf2      	ble.n	80007e0 <main+0x14>
 80007fa:	4b04      	ldr	r3, [pc, #16]	; (800080c <main+0x40>)
 80007fc:	0018      	movs	r0, r3
 80007fe:	f7ff ff0f 	bl	8000620 <dynamic_text>
 8000802:	e7ea      	b.n	80007da <main+0xe>
 8000804:	00009af2 	.word	0x00009af2
 8000808:	00000bb7 	.word	0x00000bb7
 800080c:	08000b20 	.word	0x08000b20

08000810 <SystemInit>:
 8000810:	b580      	push	{r7, lr}
 8000812:	af00      	add	r7, sp, #0
 8000814:	4b1a      	ldr	r3, [pc, #104]	; (8000880 <SystemInit+0x70>)
 8000816:	681a      	ldr	r2, [r3, #0]
 8000818:	4b19      	ldr	r3, [pc, #100]	; (8000880 <SystemInit+0x70>)
 800081a:	2101      	movs	r1, #1
 800081c:	430a      	orrs	r2, r1
 800081e:	601a      	str	r2, [r3, #0]
 8000820:	4b17      	ldr	r3, [pc, #92]	; (8000880 <SystemInit+0x70>)
 8000822:	685a      	ldr	r2, [r3, #4]
 8000824:	4b16      	ldr	r3, [pc, #88]	; (8000880 <SystemInit+0x70>)
 8000826:	4917      	ldr	r1, [pc, #92]	; (8000884 <SystemInit+0x74>)
 8000828:	400a      	ands	r2, r1
 800082a:	605a      	str	r2, [r3, #4]
 800082c:	4b14      	ldr	r3, [pc, #80]	; (8000880 <SystemInit+0x70>)
 800082e:	681a      	ldr	r2, [r3, #0]
 8000830:	4b13      	ldr	r3, [pc, #76]	; (8000880 <SystemInit+0x70>)
 8000832:	4915      	ldr	r1, [pc, #84]	; (8000888 <SystemInit+0x78>)
 8000834:	400a      	ands	r2, r1
 8000836:	601a      	str	r2, [r3, #0]
 8000838:	4b11      	ldr	r3, [pc, #68]	; (8000880 <SystemInit+0x70>)
 800083a:	681a      	ldr	r2, [r3, #0]
 800083c:	4b10      	ldr	r3, [pc, #64]	; (8000880 <SystemInit+0x70>)
 800083e:	4913      	ldr	r1, [pc, #76]	; (800088c <SystemInit+0x7c>)
 8000840:	400a      	ands	r2, r1
 8000842:	601a      	str	r2, [r3, #0]
 8000844:	4b0e      	ldr	r3, [pc, #56]	; (8000880 <SystemInit+0x70>)
 8000846:	685a      	ldr	r2, [r3, #4]
 8000848:	4b0d      	ldr	r3, [pc, #52]	; (8000880 <SystemInit+0x70>)
 800084a:	4911      	ldr	r1, [pc, #68]	; (8000890 <SystemInit+0x80>)
 800084c:	400a      	ands	r2, r1
 800084e:	605a      	str	r2, [r3, #4]
 8000850:	4b0b      	ldr	r3, [pc, #44]	; (8000880 <SystemInit+0x70>)
 8000852:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000854:	4b0a      	ldr	r3, [pc, #40]	; (8000880 <SystemInit+0x70>)
 8000856:	210f      	movs	r1, #15
 8000858:	438a      	bics	r2, r1
 800085a:	62da      	str	r2, [r3, #44]	; 0x2c
 800085c:	4b08      	ldr	r3, [pc, #32]	; (8000880 <SystemInit+0x70>)
 800085e:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000860:	4b07      	ldr	r3, [pc, #28]	; (8000880 <SystemInit+0x70>)
 8000862:	490c      	ldr	r1, [pc, #48]	; (8000894 <SystemInit+0x84>)
 8000864:	400a      	ands	r2, r1
 8000866:	631a      	str	r2, [r3, #48]	; 0x30
 8000868:	4b05      	ldr	r3, [pc, #20]	; (8000880 <SystemInit+0x70>)
 800086a:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 800086c:	4b04      	ldr	r3, [pc, #16]	; (8000880 <SystemInit+0x70>)
 800086e:	2101      	movs	r1, #1
 8000870:	438a      	bics	r2, r1
 8000872:	635a      	str	r2, [r3, #52]	; 0x34
 8000874:	4b02      	ldr	r3, [pc, #8]	; (8000880 <SystemInit+0x70>)
 8000876:	2200      	movs	r2, #0
 8000878:	609a      	str	r2, [r3, #8]
 800087a:	46c0      	nop			; (mov r8, r8)
 800087c:	46bd      	mov	sp, r7
 800087e:	bd80      	pop	{r7, pc}
 8000880:	40021000 	.word	0x40021000
 8000884:	f8ffb80c 	.word	0xf8ffb80c
 8000888:	fef6ffff 	.word	0xfef6ffff
 800088c:	fffbffff 	.word	0xfffbffff
 8000890:	ffc0ffff 	.word	0xffc0ffff
 8000894:	fffffeac 	.word	0xfffffeac

08000898 <NMI_Handler>:
 8000898:	b580      	push	{r7, lr}
 800089a:	af00      	add	r7, sp, #0
 800089c:	46c0      	nop			; (mov r8, r8)
 800089e:	46bd      	mov	sp, r7
 80008a0:	bd80      	pop	{r7, pc}

080008a2 <HardFault_Handler>:
 80008a2:	b580      	push	{r7, lr}
 80008a4:	af00      	add	r7, sp, #0
 80008a6:	e7fe      	b.n	80008a6 <HardFault_Handler+0x4>

080008a8 <SVC_Handler>:
 80008a8:	b580      	push	{r7, lr}
 80008aa:	af00      	add	r7, sp, #0
 80008ac:	46c0      	nop			; (mov r8, r8)
 80008ae:	46bd      	mov	sp, r7
 80008b0:	bd80      	pop	{r7, pc}

080008b2 <PendSV_Handler>:
 80008b2:	b580      	push	{r7, lr}
 80008b4:	af00      	add	r7, sp, #0
 80008b6:	46c0      	nop			; (mov r8, r8)
 80008b8:	46bd      	mov	sp, r7
 80008ba:	bd80      	pop	{r7, pc}

080008bc <__libc_init_array>:
 80008bc:	b570      	push	{r4, r5, r6, lr}
 80008be:	4d0c      	ldr	r5, [pc, #48]	; (80008f0 <__libc_init_array+0x34>)
 80008c0:	4e0c      	ldr	r6, [pc, #48]	; (80008f4 <__libc_init_array+0x38>)
 80008c2:	1b76      	subs	r6, r6, r5
 80008c4:	10b6      	asrs	r6, r6, #2
 80008c6:	d005      	beq.n	80008d4 <__libc_init_array+0x18>
 80008c8:	2400      	movs	r4, #0
 80008ca:	cd08      	ldmia	r5!, {r3}
 80008cc:	3401      	adds	r4, #1
 80008ce:	4798      	blx	r3
 80008d0:	42a6      	cmp	r6, r4
 80008d2:	d1fa      	bne.n	80008ca <__libc_init_array+0xe>
 80008d4:	f000 f8e8 	bl	8000aa8 <_init>
 80008d8:	4d07      	ldr	r5, [pc, #28]	; (80008f8 <__libc_init_array+0x3c>)
 80008da:	4e08      	ldr	r6, [pc, #32]	; (80008fc <__libc_init_array+0x40>)
 80008dc:	1b76      	subs	r6, r6, r5
 80008de:	10b6      	asrs	r6, r6, #2
 80008e0:	d005      	beq.n	80008ee <__libc_init_array+0x32>
 80008e2:	2400      	movs	r4, #0
 80008e4:	cd08      	ldmia	r5!, {r3}
 80008e6:	3401      	adds	r4, #1
 80008e8:	4798      	blx	r3
 80008ea:	42a6      	cmp	r6, r4
 80008ec:	d1fa      	bne.n	80008e4 <__libc_init_array+0x28>
 80008ee:	bd70      	pop	{r4, r5, r6, pc}
 80008f0:	08000c98 	.word	0x08000c98
 80008f4:	08000c98 	.word	0x08000c98
 80008f8:	08000c98 	.word	0x08000c98
 80008fc:	08000ca0 	.word	0x08000ca0

08000900 <memcpy>:
 8000900:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000902:	46c6      	mov	lr, r8
 8000904:	b500      	push	{lr}
 8000906:	2a0f      	cmp	r2, #15
 8000908:	d941      	bls.n	800098e <memcpy+0x8e>
 800090a:	2703      	movs	r7, #3
 800090c:	000d      	movs	r5, r1
 800090e:	003e      	movs	r6, r7
 8000910:	4305      	orrs	r5, r0
 8000912:	000c      	movs	r4, r1
 8000914:	0003      	movs	r3, r0
 8000916:	402e      	ands	r6, r5
 8000918:	422f      	tst	r7, r5
 800091a:	d13d      	bne.n	8000998 <memcpy+0x98>
 800091c:	0015      	movs	r5, r2
 800091e:	3d10      	subs	r5, #16
 8000920:	092d      	lsrs	r5, r5, #4
 8000922:	46a8      	mov	r8, r5
 8000924:	012d      	lsls	r5, r5, #4
 8000926:	46ac      	mov	ip, r5
 8000928:	4484      	add	ip, r0
 800092a:	6827      	ldr	r7, [r4, #0]
 800092c:	001d      	movs	r5, r3
 800092e:	601f      	str	r7, [r3, #0]
 8000930:	6867      	ldr	r7, [r4, #4]
 8000932:	605f      	str	r7, [r3, #4]
 8000934:	68a7      	ldr	r7, [r4, #8]
 8000936:	609f      	str	r7, [r3, #8]
 8000938:	68e7      	ldr	r7, [r4, #12]
 800093a:	3410      	adds	r4, #16
 800093c:	60df      	str	r7, [r3, #12]
 800093e:	3310      	adds	r3, #16
 8000940:	4565      	cmp	r5, ip
 8000942:	d1f2      	bne.n	800092a <memcpy+0x2a>
 8000944:	4645      	mov	r5, r8
 8000946:	230f      	movs	r3, #15
 8000948:	240c      	movs	r4, #12
 800094a:	3501      	adds	r5, #1
 800094c:	012d      	lsls	r5, r5, #4
 800094e:	1949      	adds	r1, r1, r5
 8000950:	4013      	ands	r3, r2
 8000952:	1945      	adds	r5, r0, r5
 8000954:	4214      	tst	r4, r2
 8000956:	d022      	beq.n	800099e <memcpy+0x9e>
 8000958:	598c      	ldr	r4, [r1, r6]
 800095a:	51ac      	str	r4, [r5, r6]
 800095c:	3604      	adds	r6, #4
 800095e:	1b9c      	subs	r4, r3, r6
 8000960:	2c03      	cmp	r4, #3
 8000962:	d8f9      	bhi.n	8000958 <memcpy+0x58>
 8000964:	3b04      	subs	r3, #4
 8000966:	089b      	lsrs	r3, r3, #2
 8000968:	3301      	adds	r3, #1
 800096a:	009b      	lsls	r3, r3, #2
 800096c:	18ed      	adds	r5, r5, r3
 800096e:	18c9      	adds	r1, r1, r3
 8000970:	2303      	movs	r3, #3
 8000972:	401a      	ands	r2, r3
 8000974:	1e56      	subs	r6, r2, #1
 8000976:	2a00      	cmp	r2, #0
 8000978:	d006      	beq.n	8000988 <memcpy+0x88>
 800097a:	2300      	movs	r3, #0
 800097c:	5ccc      	ldrb	r4, [r1, r3]
 800097e:	001a      	movs	r2, r3
 8000980:	54ec      	strb	r4, [r5, r3]
 8000982:	3301      	adds	r3, #1
 8000984:	4296      	cmp	r6, r2
 8000986:	d1f9      	bne.n	800097c <memcpy+0x7c>
 8000988:	bc80      	pop	{r7}
 800098a:	46b8      	mov	r8, r7
 800098c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800098e:	0005      	movs	r5, r0
 8000990:	1e56      	subs	r6, r2, #1
 8000992:	2a00      	cmp	r2, #0
 8000994:	d1f1      	bne.n	800097a <memcpy+0x7a>
 8000996:	e7f7      	b.n	8000988 <memcpy+0x88>
 8000998:	0005      	movs	r5, r0
 800099a:	1e56      	subs	r6, r2, #1
 800099c:	e7ed      	b.n	800097a <memcpy+0x7a>
 800099e:	001a      	movs	r2, r3
 80009a0:	e7f6      	b.n	8000990 <memcpy+0x90>
 80009a2:	46c0      	nop			; (mov r8, r8)

080009a4 <register_fini>:
 80009a4:	4b03      	ldr	r3, [pc, #12]	; (80009b4 <register_fini+0x10>)
 80009a6:	b510      	push	{r4, lr}
 80009a8:	2b00      	cmp	r3, #0
 80009aa:	d002      	beq.n	80009b2 <register_fini+0xe>
 80009ac:	4802      	ldr	r0, [pc, #8]	; (80009b8 <register_fini+0x14>)
 80009ae:	f000 f805 	bl	80009bc <atexit>
 80009b2:	bd10      	pop	{r4, pc}
 80009b4:	00000000 	.word	0x00000000
 80009b8:	080009cd 	.word	0x080009cd

080009bc <atexit>:
 80009bc:	b510      	push	{r4, lr}
 80009be:	0001      	movs	r1, r0
 80009c0:	2300      	movs	r3, #0
 80009c2:	2200      	movs	r2, #0
 80009c4:	2000      	movs	r0, #0
 80009c6:	f000 f819 	bl	80009fc <__register_exitproc>
 80009ca:	bd10      	pop	{r4, pc}

080009cc <__libc_fini_array>:
 80009cc:	b570      	push	{r4, r5, r6, lr}
 80009ce:	4d07      	ldr	r5, [pc, #28]	; (80009ec <__libc_fini_array+0x20>)
 80009d0:	4c07      	ldr	r4, [pc, #28]	; (80009f0 <__libc_fini_array+0x24>)
 80009d2:	1b64      	subs	r4, r4, r5
 80009d4:	10a4      	asrs	r4, r4, #2
 80009d6:	d005      	beq.n	80009e4 <__libc_fini_array+0x18>
 80009d8:	3c01      	subs	r4, #1
 80009da:	00a3      	lsls	r3, r4, #2
 80009dc:	58eb      	ldr	r3, [r5, r3]
 80009de:	4798      	blx	r3
 80009e0:	2c00      	cmp	r4, #0
 80009e2:	d1f9      	bne.n	80009d8 <__libc_fini_array+0xc>
 80009e4:	f000 f866 	bl	8000ab4 <_fini>
 80009e8:	bd70      	pop	{r4, r5, r6, pc}
 80009ea:	46c0      	nop			; (mov r8, r8)
 80009ec:	08000ca0 	.word	0x08000ca0
 80009f0:	08000ca4 	.word	0x08000ca4

080009f4 <__retarget_lock_acquire_recursive>:
 80009f4:	4770      	bx	lr
 80009f6:	46c0      	nop			; (mov r8, r8)

080009f8 <__retarget_lock_release_recursive>:
 80009f8:	4770      	bx	lr
 80009fa:	46c0      	nop			; (mov r8, r8)

080009fc <__register_exitproc>:
 80009fc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80009fe:	46d6      	mov	lr, sl
 8000a00:	464f      	mov	r7, r9
 8000a02:	4646      	mov	r6, r8
 8000a04:	b5c0      	push	{r6, r7, lr}
 8000a06:	4f26      	ldr	r7, [pc, #152]	; (8000aa0 <__register_exitproc+0xa4>)
 8000a08:	b082      	sub	sp, #8
 8000a0a:	0006      	movs	r6, r0
 8000a0c:	6838      	ldr	r0, [r7, #0]
 8000a0e:	4692      	mov	sl, r2
 8000a10:	4698      	mov	r8, r3
 8000a12:	4689      	mov	r9, r1
 8000a14:	f7ff ffee 	bl	80009f4 <__retarget_lock_acquire_recursive>
 8000a18:	4b22      	ldr	r3, [pc, #136]	; (8000aa4 <__register_exitproc+0xa8>)
 8000a1a:	681b      	ldr	r3, [r3, #0]
 8000a1c:	9301      	str	r3, [sp, #4]
 8000a1e:	23a4      	movs	r3, #164	; 0xa4
 8000a20:	9a01      	ldr	r2, [sp, #4]
 8000a22:	005b      	lsls	r3, r3, #1
 8000a24:	58d5      	ldr	r5, [r2, r3]
 8000a26:	2d00      	cmp	r5, #0
 8000a28:	d02e      	beq.n	8000a88 <__register_exitproc+0x8c>
 8000a2a:	686c      	ldr	r4, [r5, #4]
 8000a2c:	2c1f      	cmp	r4, #31
 8000a2e:	dc30      	bgt.n	8000a92 <__register_exitproc+0x96>
 8000a30:	2e00      	cmp	r6, #0
 8000a32:	d10f      	bne.n	8000a54 <__register_exitproc+0x58>
 8000a34:	1c63      	adds	r3, r4, #1
 8000a36:	606b      	str	r3, [r5, #4]
 8000a38:	464b      	mov	r3, r9
 8000a3a:	3402      	adds	r4, #2
 8000a3c:	00a4      	lsls	r4, r4, #2
 8000a3e:	6838      	ldr	r0, [r7, #0]
 8000a40:	5163      	str	r3, [r4, r5]
 8000a42:	f7ff ffd9 	bl	80009f8 <__retarget_lock_release_recursive>
 8000a46:	2000      	movs	r0, #0
 8000a48:	b002      	add	sp, #8
 8000a4a:	bce0      	pop	{r5, r6, r7}
 8000a4c:	46ba      	mov	sl, r7
 8000a4e:	46b1      	mov	r9, r6
 8000a50:	46a8      	mov	r8, r5
 8000a52:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000a54:	2288      	movs	r2, #136	; 0x88
 8000a56:	4651      	mov	r1, sl
 8000a58:	0028      	movs	r0, r5
 8000a5a:	00a3      	lsls	r3, r4, #2
 8000a5c:	18eb      	adds	r3, r5, r3
 8000a5e:	5099      	str	r1, [r3, r2]
 8000a60:	3a87      	subs	r2, #135	; 0x87
 8000a62:	40a2      	lsls	r2, r4
 8000a64:	3089      	adds	r0, #137	; 0x89
 8000a66:	30ff      	adds	r0, #255	; 0xff
 8000a68:	6801      	ldr	r1, [r0, #0]
 8000a6a:	4311      	orrs	r1, r2
 8000a6c:	6001      	str	r1, [r0, #0]
 8000a6e:	2184      	movs	r1, #132	; 0x84
 8000a70:	4640      	mov	r0, r8
 8000a72:	0049      	lsls	r1, r1, #1
 8000a74:	5058      	str	r0, [r3, r1]
 8000a76:	2e02      	cmp	r6, #2
 8000a78:	d1dc      	bne.n	8000a34 <__register_exitproc+0x38>
 8000a7a:	002b      	movs	r3, r5
 8000a7c:	338d      	adds	r3, #141	; 0x8d
 8000a7e:	33ff      	adds	r3, #255	; 0xff
 8000a80:	6819      	ldr	r1, [r3, #0]
 8000a82:	430a      	orrs	r2, r1
 8000a84:	601a      	str	r2, [r3, #0]
 8000a86:	e7d5      	b.n	8000a34 <__register_exitproc+0x38>
 8000a88:	0015      	movs	r5, r2
 8000a8a:	354d      	adds	r5, #77	; 0x4d
 8000a8c:	35ff      	adds	r5, #255	; 0xff
 8000a8e:	50d5      	str	r5, [r2, r3]
 8000a90:	e7cb      	b.n	8000a2a <__register_exitproc+0x2e>
 8000a92:	6838      	ldr	r0, [r7, #0]
 8000a94:	f7ff ffb0 	bl	80009f8 <__retarget_lock_release_recursive>
 8000a98:	2001      	movs	r0, #1
 8000a9a:	4240      	negs	r0, r0
 8000a9c:	e7d4      	b.n	8000a48 <__register_exitproc+0x4c>
 8000a9e:	46c0      	nop			; (mov r8, r8)
 8000aa0:	20000430 	.word	0x20000430
 8000aa4:	08000c94 	.word	0x08000c94

08000aa8 <_init>:
 8000aa8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000aaa:	46c0      	nop			; (mov r8, r8)
 8000aac:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000aae:	bc08      	pop	{r3}
 8000ab0:	469e      	mov	lr, r3
 8000ab2:	4770      	bx	lr

08000ab4 <_fini>:
 8000ab4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ab6:	46c0      	nop			; (mov r8, r8)
 8000ab8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000aba:	bc08      	pop	{r3}
 8000abc:	469e      	mov	lr, r3
 8000abe:	4770      	bx	lr
