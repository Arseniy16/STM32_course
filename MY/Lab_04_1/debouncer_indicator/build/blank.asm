
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             000007c4  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000044  08000884  08000884  00010884  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  080008c8  080008c8  000108c8  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  080008d0  080008d0  000108d0  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  080008d4  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000434  08000d08  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  20000454  08000d08  00020454  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00000a08  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 10 .debug_abbrev     00000348  00000000  00000000  00020e64  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 11 .debug_loc        0000055a  00000000  00000000  000211ac  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 12 .debug_aranges    00000128  00000000  00000000  00021706  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 13 .debug_ranges     000000f8  00000000  00000000  0002182e  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 14 .debug_line       000005c9  00000000  00000000  00021926  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 15 .debug_str        000005d1  00000000  00000000  00021eef  2**0  CONTENTS, READONLY, DEBUGGING, OCTETS
 16 .comment          000000cc  00000000  00000000  000224c0  2**0  CONTENTS, READONLY
 17 .debug_frame      00000564  00000000  00000000  0002258c  2**2  CONTENTS, READONLY, DEBUGGING, OCTETS

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
 80000e4:	0800086c 	.word	0x0800086c

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
 8000104:	0800086c 	.word	0x0800086c

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
 8000132:	f000 fa4f 	bl	80005d4 <SystemInit>
 8000136:	f000 faa3 	bl	8000680 <__libc_init_array>
 800013a:	f000 fa09 	bl	8000550 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000434 	.word	0x20000434
 800014c:	080008d4 	.word	0x080008d4
 8000150:	20000434 	.word	0x20000434
 8000154:	20000454 	.word	0x20000454

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

08000348 <LL_GPIO_IsInputPinSet>:
 8000348:	b580      	push	{r7, lr}
 800034a:	b082      	sub	sp, #8
 800034c:	af00      	add	r7, sp, #0
 800034e:	6078      	str	r0, [r7, #4]
 8000350:	6039      	str	r1, [r7, #0]
 8000352:	687b      	ldr	r3, [r7, #4]
 8000354:	691b      	ldr	r3, [r3, #16]
 8000356:	683a      	ldr	r2, [r7, #0]
 8000358:	4013      	ands	r3, r2
 800035a:	683a      	ldr	r2, [r7, #0]
 800035c:	1ad3      	subs	r3, r2, r3
 800035e:	425a      	negs	r2, r3
 8000360:	4153      	adcs	r3, r2
 8000362:	b2db      	uxtb	r3, r3
 8000364:	0018      	movs	r0, r3
 8000366:	46bd      	mov	sp, r7
 8000368:	b002      	add	sp, #8
 800036a:	bd80      	pop	{r7, pc}

0800036c <LL_GPIO_WriteOutputPort>:
 800036c:	b580      	push	{r7, lr}
 800036e:	b082      	sub	sp, #8
 8000370:	af00      	add	r7, sp, #0
 8000372:	6078      	str	r0, [r7, #4]
 8000374:	6039      	str	r1, [r7, #0]
 8000376:	687b      	ldr	r3, [r7, #4]
 8000378:	683a      	ldr	r2, [r7, #0]
 800037a:	615a      	str	r2, [r3, #20]
 800037c:	46c0      	nop			; (mov r8, r8)
 800037e:	46bd      	mov	sp, r7
 8000380:	b002      	add	sp, #8
 8000382:	bd80      	pop	{r7, pc}

08000384 <LL_GPIO_ResetOutputPin>:
 8000384:	b580      	push	{r7, lr}
 8000386:	b082      	sub	sp, #8
 8000388:	af00      	add	r7, sp, #0
 800038a:	6078      	str	r0, [r7, #4]
 800038c:	6039      	str	r1, [r7, #0]
 800038e:	687b      	ldr	r3, [r7, #4]
 8000390:	683a      	ldr	r2, [r7, #0]
 8000392:	629a      	str	r2, [r3, #40]	; 0x28
 8000394:	46c0      	nop			; (mov r8, r8)
 8000396:	46bd      	mov	sp, r7
 8000398:	b002      	add	sp, #8
 800039a:	bd80      	pop	{r7, pc}

0800039c <LL_GPIO_TogglePin>:
 800039c:	b580      	push	{r7, lr}
 800039e:	b082      	sub	sp, #8
 80003a0:	af00      	add	r7, sp, #0
 80003a2:	6078      	str	r0, [r7, #4]
 80003a4:	6039      	str	r1, [r7, #0]
 80003a6:	687b      	ldr	r3, [r7, #4]
 80003a8:	695a      	ldr	r2, [r3, #20]
 80003aa:	683b      	ldr	r3, [r7, #0]
 80003ac:	405a      	eors	r2, r3
 80003ae:	687b      	ldr	r3, [r7, #4]
 80003b0:	615a      	str	r2, [r3, #20]
 80003b2:	46c0      	nop			; (mov r8, r8)
 80003b4:	46bd      	mov	sp, r7
 80003b6:	b002      	add	sp, #8
 80003b8:	bd80      	pop	{r7, pc}
	...

080003bc <rcc_config>:
 80003bc:	b580      	push	{r7, lr}
 80003be:	af00      	add	r7, sp, #0
 80003c0:	2001      	movs	r0, #1
 80003c2:	f7ff ff7b 	bl	80002bc <LL_FLASH_SetLatency>
 80003c6:	f7ff fec9 	bl	800015c <LL_RCC_HSI_Enable>
 80003ca:	46c0      	nop			; (mov r8, r8)
 80003cc:	f7ff fed4 	bl	8000178 <LL_RCC_HSI_IsReady>
 80003d0:	0003      	movs	r3, r0
 80003d2:	2b01      	cmp	r3, #1
 80003d4:	d1fa      	bne.n	80003cc <rcc_config+0x10>
 80003d6:	23a0      	movs	r3, #160	; 0xa0
 80003d8:	039b      	lsls	r3, r3, #14
 80003da:	0019      	movs	r1, r3
 80003dc:	2000      	movs	r0, #0
 80003de:	f7ff ff47 	bl	8000270 <LL_RCC_PLL_ConfigDomain_SYS>
 80003e2:	f7ff ff23 	bl	800022c <LL_RCC_PLL_Enable>
 80003e6:	46c0      	nop			; (mov r8, r8)
 80003e8:	f7ff ff2e 	bl	8000248 <LL_RCC_PLL_IsReady>
 80003ec:	0003      	movs	r3, r0
 80003ee:	2b01      	cmp	r3, #1
 80003f0:	d1fa      	bne.n	80003e8 <rcc_config+0x2c>
 80003f2:	2000      	movs	r0, #0
 80003f4:	f7ff fef0 	bl	80001d8 <LL_RCC_SetAHBPrescaler>
 80003f8:	2002      	movs	r0, #2
 80003fa:	f7ff fecd 	bl	8000198 <LL_RCC_SetSysClkSource>
 80003fe:	46c0      	nop			; (mov r8, r8)
 8000400:	f7ff fede 	bl	80001c0 <LL_RCC_GetSysClkSource>
 8000404:	0003      	movs	r3, r0
 8000406:	2b08      	cmp	r3, #8
 8000408:	d1fa      	bne.n	8000400 <rcc_config+0x44>
 800040a:	2000      	movs	r0, #0
 800040c:	f7ff fef8 	bl	8000200 <LL_RCC_SetAPB1Prescaler>
 8000410:	4b02      	ldr	r3, [pc, #8]	; (800041c <rcc_config+0x60>)
 8000412:	4a03      	ldr	r2, [pc, #12]	; (8000420 <rcc_config+0x64>)
 8000414:	601a      	str	r2, [r3, #0]
 8000416:	46c0      	nop			; (mov r8, r8)
 8000418:	46bd      	mov	sp, r7
 800041a:	bd80      	pop	{r7, pc}
 800041c:	20000000 	.word	0x20000000
 8000420:	02dc6c00 	.word	0x02dc6c00

08000424 <gpio_config>:
 8000424:	b580      	push	{r7, lr}
 8000426:	af00      	add	r7, sp, #0
 8000428:	2380      	movs	r3, #128	; 0x80
 800042a:	031b      	lsls	r3, r3, #12
 800042c:	0018      	movs	r0, r3
 800042e:	f7ff ff59 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000432:	2380      	movs	r3, #128	; 0x80
 8000434:	005b      	lsls	r3, r3, #1
 8000436:	482b      	ldr	r0, [pc, #172]	; (80004e4 <gpio_config+0xc0>)
 8000438:	2201      	movs	r2, #1
 800043a:	0019      	movs	r1, r3
 800043c:	f7ff ff68 	bl	8000310 <LL_GPIO_SetPinMode>
 8000440:	2380      	movs	r3, #128	; 0x80
 8000442:	009b      	lsls	r3, r3, #2
 8000444:	4827      	ldr	r0, [pc, #156]	; (80004e4 <gpio_config+0xc0>)
 8000446:	2201      	movs	r2, #1
 8000448:	0019      	movs	r1, r3
 800044a:	f7ff ff61 	bl	8000310 <LL_GPIO_SetPinMode>
 800044e:	4b25      	ldr	r3, [pc, #148]	; (80004e4 <gpio_config+0xc0>)
 8000450:	2201      	movs	r2, #1
 8000452:	2101      	movs	r1, #1
 8000454:	0018      	movs	r0, r3
 8000456:	f7ff ff5b 	bl	8000310 <LL_GPIO_SetPinMode>
 800045a:	2380      	movs	r3, #128	; 0x80
 800045c:	029b      	lsls	r3, r3, #10
 800045e:	0018      	movs	r0, r3
 8000460:	f7ff ff40 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 8000464:	2390      	movs	r3, #144	; 0x90
 8000466:	05db      	lsls	r3, r3, #23
 8000468:	2200      	movs	r2, #0
 800046a:	2101      	movs	r1, #1
 800046c:	0018      	movs	r0, r3
 800046e:	f7ff ff4f 	bl	8000310 <LL_GPIO_SetPinMode>
 8000472:	2380      	movs	r3, #128	; 0x80
 8000474:	02db      	lsls	r3, r3, #11
 8000476:	0018      	movs	r0, r3
 8000478:	f7ff ff34 	bl	80002e4 <LL_AHB1_GRP1_EnableClock>
 800047c:	4b1a      	ldr	r3, [pc, #104]	; (80004e8 <gpio_config+0xc4>)
 800047e:	2201      	movs	r2, #1
 8000480:	2101      	movs	r1, #1
 8000482:	0018      	movs	r0, r3
 8000484:	f7ff ff44 	bl	8000310 <LL_GPIO_SetPinMode>
 8000488:	4b17      	ldr	r3, [pc, #92]	; (80004e8 <gpio_config+0xc4>)
 800048a:	2201      	movs	r2, #1
 800048c:	2102      	movs	r1, #2
 800048e:	0018      	movs	r0, r3
 8000490:	f7ff ff3e 	bl	8000310 <LL_GPIO_SetPinMode>
 8000494:	4b14      	ldr	r3, [pc, #80]	; (80004e8 <gpio_config+0xc4>)
 8000496:	2201      	movs	r2, #1
 8000498:	2104      	movs	r1, #4
 800049a:	0018      	movs	r0, r3
 800049c:	f7ff ff38 	bl	8000310 <LL_GPIO_SetPinMode>
 80004a0:	4b11      	ldr	r3, [pc, #68]	; (80004e8 <gpio_config+0xc4>)
 80004a2:	2201      	movs	r2, #1
 80004a4:	2108      	movs	r1, #8
 80004a6:	0018      	movs	r0, r3
 80004a8:	f7ff ff32 	bl	8000310 <LL_GPIO_SetPinMode>
 80004ac:	4b0e      	ldr	r3, [pc, #56]	; (80004e8 <gpio_config+0xc4>)
 80004ae:	2201      	movs	r2, #1
 80004b0:	2110      	movs	r1, #16
 80004b2:	0018      	movs	r0, r3
 80004b4:	f7ff ff2c 	bl	8000310 <LL_GPIO_SetPinMode>
 80004b8:	4b0b      	ldr	r3, [pc, #44]	; (80004e8 <gpio_config+0xc4>)
 80004ba:	2201      	movs	r2, #1
 80004bc:	2120      	movs	r1, #32
 80004be:	0018      	movs	r0, r3
 80004c0:	f7ff ff26 	bl	8000310 <LL_GPIO_SetPinMode>
 80004c4:	4b08      	ldr	r3, [pc, #32]	; (80004e8 <gpio_config+0xc4>)
 80004c6:	2201      	movs	r2, #1
 80004c8:	2140      	movs	r1, #64	; 0x40
 80004ca:	0018      	movs	r0, r3
 80004cc:	f7ff ff20 	bl	8000310 <LL_GPIO_SetPinMode>
 80004d0:	4b05      	ldr	r3, [pc, #20]	; (80004e8 <gpio_config+0xc4>)
 80004d2:	2201      	movs	r2, #1
 80004d4:	2180      	movs	r1, #128	; 0x80
 80004d6:	0018      	movs	r0, r3
 80004d8:	f7ff ff1a 	bl	8000310 <LL_GPIO_SetPinMode>
 80004dc:	46c0      	nop			; (mov r8, r8)
 80004de:	46bd      	mov	sp, r7
 80004e0:	bd80      	pop	{r7, pc}
 80004e2:	46c0      	nop			; (mov r8, r8)
 80004e4:	48000800 	.word	0x48000800
 80004e8:	48000400 	.word	0x48000400

080004ec <delay_10ms>:
 80004ec:	b580      	push	{r7, lr}
 80004ee:	4e02      	ldr	r6, [pc, #8]	; (80004f8 <delay_10ms+0xc>)
 80004f0:	3e01      	subs	r6, #1
 80004f2:	2e00      	cmp	r6, #0
 80004f4:	d1fc      	bne.n	80004f0 <delay_10ms+0x4>
 80004f6:	bd80      	pop	{r7, pc}
 80004f8:	0000ea60 	.word	0x0000ea60
 80004fc:	46c0      	nop			; (mov r8, r8)
	...

08000500 <show_digit>:
 8000500:	b590      	push	{r4, r7, lr}
 8000502:	b093      	sub	sp, #76	; 0x4c
 8000504:	af00      	add	r7, sp, #0
 8000506:	0002      	movs	r2, r0
 8000508:	1dbb      	adds	r3, r7, #6
 800050a:	801a      	strh	r2, [r3, #0]
 800050c:	2408      	movs	r4, #8
 800050e:	193a      	adds	r2, r7, r4
 8000510:	4b0c      	ldr	r3, [pc, #48]	; (8000544 <show_digit+0x44>)
 8000512:	0010      	movs	r0, r2
 8000514:	0019      	movs	r1, r3
 8000516:	2340      	movs	r3, #64	; 0x40
 8000518:	001a      	movs	r2, r3
 800051a:	f000 f8d3 	bl	80006c4 <memcpy>
 800051e:	4b0a      	ldr	r3, [pc, #40]	; (8000548 <show_digit+0x48>)
 8000520:	2101      	movs	r1, #1
 8000522:	0018      	movs	r0, r3
 8000524:	f7ff ff2e 	bl	8000384 <LL_GPIO_ResetOutputPin>
 8000528:	1dbb      	adds	r3, r7, #6
 800052a:	881a      	ldrh	r2, [r3, #0]
 800052c:	193b      	adds	r3, r7, r4
 800052e:	0092      	lsls	r2, r2, #2
 8000530:	58d3      	ldr	r3, [r2, r3]
 8000532:	4a06      	ldr	r2, [pc, #24]	; (800054c <show_digit+0x4c>)
 8000534:	0019      	movs	r1, r3
 8000536:	0010      	movs	r0, r2
 8000538:	f7ff ff18 	bl	800036c <LL_GPIO_WriteOutputPort>
 800053c:	46c0      	nop			; (mov r8, r8)
 800053e:	46bd      	mov	sp, r7
 8000540:	b013      	add	sp, #76	; 0x4c
 8000542:	bd90      	pop	{r4, r7, pc}
 8000544:	08000884 	.word	0x08000884
 8000548:	48000800 	.word	0x48000800
 800054c:	48000400 	.word	0x48000400

08000550 <main>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b084      	sub	sp, #16
 8000554:	af00      	add	r7, sp, #0
 8000556:	f7ff ff31 	bl	80003bc <rcc_config>
 800055a:	f7ff ff63 	bl	8000424 <gpio_config>
 800055e:	2300      	movs	r3, #0
 8000560:	60fb      	str	r3, [r7, #12]
 8000562:	2300      	movs	r3, #0
 8000564:	60bb      	str	r3, [r7, #8]
 8000566:	2300      	movs	r3, #0
 8000568:	607b      	str	r3, [r7, #4]
 800056a:	68bb      	ldr	r3, [r7, #8]
 800056c:	2b0f      	cmp	r3, #15
 800056e:	d901      	bls.n	8000574 <main+0x24>
 8000570:	2300      	movs	r3, #0
 8000572:	60bb      	str	r3, [r7, #8]
 8000574:	2300      	movs	r3, #0
 8000576:	60fb      	str	r3, [r7, #12]
 8000578:	e004      	b.n	8000584 <main+0x34>
 800057a:	f7ff ffb7 	bl	80004ec <delay_10ms>
 800057e:	68fb      	ldr	r3, [r7, #12]
 8000580:	3301      	adds	r3, #1
 8000582:	60fb      	str	r3, [r7, #12]
 8000584:	68fb      	ldr	r3, [r7, #12]
 8000586:	2b04      	cmp	r3, #4
 8000588:	d807      	bhi.n	800059a <main+0x4a>
 800058a:	2390      	movs	r3, #144	; 0x90
 800058c:	05db      	lsls	r3, r3, #23
 800058e:	2101      	movs	r1, #1
 8000590:	0018      	movs	r0, r3
 8000592:	f7ff fed9 	bl	8000348 <LL_GPIO_IsInputPinSet>
 8000596:	1e03      	subs	r3, r0, #0
 8000598:	d1ef      	bne.n	800057a <main+0x2a>
 800059a:	68fb      	ldr	r3, [r7, #12]
 800059c:	2b04      	cmp	r3, #4
 800059e:	d913      	bls.n	80005c8 <main+0x78>
 80005a0:	687b      	ldr	r3, [r7, #4]
 80005a2:	2b00      	cmp	r3, #0
 80005a4:	d1e1      	bne.n	800056a <main+0x1a>
 80005a6:	68bb      	ldr	r3, [r7, #8]
 80005a8:	1c5a      	adds	r2, r3, #1
 80005aa:	60ba      	str	r2, [r7, #8]
 80005ac:	b29b      	uxth	r3, r3
 80005ae:	0018      	movs	r0, r3
 80005b0:	f7ff ffa6 	bl	8000500 <show_digit>
 80005b4:	2380      	movs	r3, #128	; 0x80
 80005b6:	009b      	lsls	r3, r3, #2
 80005b8:	4a05      	ldr	r2, [pc, #20]	; (80005d0 <main+0x80>)
 80005ba:	0019      	movs	r1, r3
 80005bc:	0010      	movs	r0, r2
 80005be:	f7ff feed 	bl	800039c <LL_GPIO_TogglePin>
 80005c2:	2301      	movs	r3, #1
 80005c4:	607b      	str	r3, [r7, #4]
 80005c6:	e7d0      	b.n	800056a <main+0x1a>
 80005c8:	2300      	movs	r3, #0
 80005ca:	607b      	str	r3, [r7, #4]
 80005cc:	e7cd      	b.n	800056a <main+0x1a>
 80005ce:	46c0      	nop			; (mov r8, r8)
 80005d0:	48000800 	.word	0x48000800

080005d4 <SystemInit>:
 80005d4:	b580      	push	{r7, lr}
 80005d6:	af00      	add	r7, sp, #0
 80005d8:	4b1a      	ldr	r3, [pc, #104]	; (8000644 <SystemInit+0x70>)
 80005da:	681a      	ldr	r2, [r3, #0]
 80005dc:	4b19      	ldr	r3, [pc, #100]	; (8000644 <SystemInit+0x70>)
 80005de:	2101      	movs	r1, #1
 80005e0:	430a      	orrs	r2, r1
 80005e2:	601a      	str	r2, [r3, #0]
 80005e4:	4b17      	ldr	r3, [pc, #92]	; (8000644 <SystemInit+0x70>)
 80005e6:	685a      	ldr	r2, [r3, #4]
 80005e8:	4b16      	ldr	r3, [pc, #88]	; (8000644 <SystemInit+0x70>)
 80005ea:	4917      	ldr	r1, [pc, #92]	; (8000648 <SystemInit+0x74>)
 80005ec:	400a      	ands	r2, r1
 80005ee:	605a      	str	r2, [r3, #4]
 80005f0:	4b14      	ldr	r3, [pc, #80]	; (8000644 <SystemInit+0x70>)
 80005f2:	681a      	ldr	r2, [r3, #0]
 80005f4:	4b13      	ldr	r3, [pc, #76]	; (8000644 <SystemInit+0x70>)
 80005f6:	4915      	ldr	r1, [pc, #84]	; (800064c <SystemInit+0x78>)
 80005f8:	400a      	ands	r2, r1
 80005fa:	601a      	str	r2, [r3, #0]
 80005fc:	4b11      	ldr	r3, [pc, #68]	; (8000644 <SystemInit+0x70>)
 80005fe:	681a      	ldr	r2, [r3, #0]
 8000600:	4b10      	ldr	r3, [pc, #64]	; (8000644 <SystemInit+0x70>)
 8000602:	4913      	ldr	r1, [pc, #76]	; (8000650 <SystemInit+0x7c>)
 8000604:	400a      	ands	r2, r1
 8000606:	601a      	str	r2, [r3, #0]
 8000608:	4b0e      	ldr	r3, [pc, #56]	; (8000644 <SystemInit+0x70>)
 800060a:	685a      	ldr	r2, [r3, #4]
 800060c:	4b0d      	ldr	r3, [pc, #52]	; (8000644 <SystemInit+0x70>)
 800060e:	4911      	ldr	r1, [pc, #68]	; (8000654 <SystemInit+0x80>)
 8000610:	400a      	ands	r2, r1
 8000612:	605a      	str	r2, [r3, #4]
 8000614:	4b0b      	ldr	r3, [pc, #44]	; (8000644 <SystemInit+0x70>)
 8000616:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000618:	4b0a      	ldr	r3, [pc, #40]	; (8000644 <SystemInit+0x70>)
 800061a:	210f      	movs	r1, #15
 800061c:	438a      	bics	r2, r1
 800061e:	62da      	str	r2, [r3, #44]	; 0x2c
 8000620:	4b08      	ldr	r3, [pc, #32]	; (8000644 <SystemInit+0x70>)
 8000622:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000624:	4b07      	ldr	r3, [pc, #28]	; (8000644 <SystemInit+0x70>)
 8000626:	490c      	ldr	r1, [pc, #48]	; (8000658 <SystemInit+0x84>)
 8000628:	400a      	ands	r2, r1
 800062a:	631a      	str	r2, [r3, #48]	; 0x30
 800062c:	4b05      	ldr	r3, [pc, #20]	; (8000644 <SystemInit+0x70>)
 800062e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000630:	4b04      	ldr	r3, [pc, #16]	; (8000644 <SystemInit+0x70>)
 8000632:	2101      	movs	r1, #1
 8000634:	438a      	bics	r2, r1
 8000636:	635a      	str	r2, [r3, #52]	; 0x34
 8000638:	4b02      	ldr	r3, [pc, #8]	; (8000644 <SystemInit+0x70>)
 800063a:	2200      	movs	r2, #0
 800063c:	609a      	str	r2, [r3, #8]
 800063e:	46c0      	nop			; (mov r8, r8)
 8000640:	46bd      	mov	sp, r7
 8000642:	bd80      	pop	{r7, pc}
 8000644:	40021000 	.word	0x40021000
 8000648:	f8ffb80c 	.word	0xf8ffb80c
 800064c:	fef6ffff 	.word	0xfef6ffff
 8000650:	fffbffff 	.word	0xfffbffff
 8000654:	ffc0ffff 	.word	0xffc0ffff
 8000658:	fffffeac 	.word	0xfffffeac

0800065c <NMI_Handler>:
 800065c:	b580      	push	{r7, lr}
 800065e:	af00      	add	r7, sp, #0
 8000660:	46c0      	nop			; (mov r8, r8)
 8000662:	46bd      	mov	sp, r7
 8000664:	bd80      	pop	{r7, pc}

08000666 <HardFault_Handler>:
 8000666:	b580      	push	{r7, lr}
 8000668:	af00      	add	r7, sp, #0
 800066a:	e7fe      	b.n	800066a <HardFault_Handler+0x4>

0800066c <SVC_Handler>:
 800066c:	b580      	push	{r7, lr}
 800066e:	af00      	add	r7, sp, #0
 8000670:	46c0      	nop			; (mov r8, r8)
 8000672:	46bd      	mov	sp, r7
 8000674:	bd80      	pop	{r7, pc}

08000676 <PendSV_Handler>:
 8000676:	b580      	push	{r7, lr}
 8000678:	af00      	add	r7, sp, #0
 800067a:	46c0      	nop			; (mov r8, r8)
 800067c:	46bd      	mov	sp, r7
 800067e:	bd80      	pop	{r7, pc}

08000680 <__libc_init_array>:
 8000680:	b570      	push	{r4, r5, r6, lr}
 8000682:	4d0c      	ldr	r5, [pc, #48]	; (80006b4 <__libc_init_array+0x34>)
 8000684:	4e0c      	ldr	r6, [pc, #48]	; (80006b8 <__libc_init_array+0x38>)
 8000686:	1b76      	subs	r6, r6, r5
 8000688:	10b6      	asrs	r6, r6, #2
 800068a:	d005      	beq.n	8000698 <__libc_init_array+0x18>
 800068c:	2400      	movs	r4, #0
 800068e:	cd08      	ldmia	r5!, {r3}
 8000690:	3401      	adds	r4, #1
 8000692:	4798      	blx	r3
 8000694:	42a6      	cmp	r6, r4
 8000696:	d1fa      	bne.n	800068e <__libc_init_array+0xe>
 8000698:	f000 f8e8 	bl	800086c <_init>
 800069c:	4d07      	ldr	r5, [pc, #28]	; (80006bc <__libc_init_array+0x3c>)
 800069e:	4e08      	ldr	r6, [pc, #32]	; (80006c0 <__libc_init_array+0x40>)
 80006a0:	1b76      	subs	r6, r6, r5
 80006a2:	10b6      	asrs	r6, r6, #2
 80006a4:	d005      	beq.n	80006b2 <__libc_init_array+0x32>
 80006a6:	2400      	movs	r4, #0
 80006a8:	cd08      	ldmia	r5!, {r3}
 80006aa:	3401      	adds	r4, #1
 80006ac:	4798      	blx	r3
 80006ae:	42a6      	cmp	r6, r4
 80006b0:	d1fa      	bne.n	80006a8 <__libc_init_array+0x28>
 80006b2:	bd70      	pop	{r4, r5, r6, pc}
 80006b4:	080008c8 	.word	0x080008c8
 80006b8:	080008c8 	.word	0x080008c8
 80006bc:	080008c8 	.word	0x080008c8
 80006c0:	080008d0 	.word	0x080008d0

080006c4 <memcpy>:
 80006c4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80006c6:	46c6      	mov	lr, r8
 80006c8:	b500      	push	{lr}
 80006ca:	2a0f      	cmp	r2, #15
 80006cc:	d941      	bls.n	8000752 <memcpy+0x8e>
 80006ce:	2703      	movs	r7, #3
 80006d0:	000d      	movs	r5, r1
 80006d2:	003e      	movs	r6, r7
 80006d4:	4305      	orrs	r5, r0
 80006d6:	000c      	movs	r4, r1
 80006d8:	0003      	movs	r3, r0
 80006da:	402e      	ands	r6, r5
 80006dc:	422f      	tst	r7, r5
 80006de:	d13d      	bne.n	800075c <memcpy+0x98>
 80006e0:	0015      	movs	r5, r2
 80006e2:	3d10      	subs	r5, #16
 80006e4:	092d      	lsrs	r5, r5, #4
 80006e6:	46a8      	mov	r8, r5
 80006e8:	012d      	lsls	r5, r5, #4
 80006ea:	46ac      	mov	ip, r5
 80006ec:	4484      	add	ip, r0
 80006ee:	6827      	ldr	r7, [r4, #0]
 80006f0:	001d      	movs	r5, r3
 80006f2:	601f      	str	r7, [r3, #0]
 80006f4:	6867      	ldr	r7, [r4, #4]
 80006f6:	605f      	str	r7, [r3, #4]
 80006f8:	68a7      	ldr	r7, [r4, #8]
 80006fa:	609f      	str	r7, [r3, #8]
 80006fc:	68e7      	ldr	r7, [r4, #12]
 80006fe:	3410      	adds	r4, #16
 8000700:	60df      	str	r7, [r3, #12]
 8000702:	3310      	adds	r3, #16
 8000704:	4565      	cmp	r5, ip
 8000706:	d1f2      	bne.n	80006ee <memcpy+0x2a>
 8000708:	4645      	mov	r5, r8
 800070a:	230f      	movs	r3, #15
 800070c:	240c      	movs	r4, #12
 800070e:	3501      	adds	r5, #1
 8000710:	012d      	lsls	r5, r5, #4
 8000712:	1949      	adds	r1, r1, r5
 8000714:	4013      	ands	r3, r2
 8000716:	1945      	adds	r5, r0, r5
 8000718:	4214      	tst	r4, r2
 800071a:	d022      	beq.n	8000762 <memcpy+0x9e>
 800071c:	598c      	ldr	r4, [r1, r6]
 800071e:	51ac      	str	r4, [r5, r6]
 8000720:	3604      	adds	r6, #4
 8000722:	1b9c      	subs	r4, r3, r6
 8000724:	2c03      	cmp	r4, #3
 8000726:	d8f9      	bhi.n	800071c <memcpy+0x58>
 8000728:	3b04      	subs	r3, #4
 800072a:	089b      	lsrs	r3, r3, #2
 800072c:	3301      	adds	r3, #1
 800072e:	009b      	lsls	r3, r3, #2
 8000730:	18ed      	adds	r5, r5, r3
 8000732:	18c9      	adds	r1, r1, r3
 8000734:	2303      	movs	r3, #3
 8000736:	401a      	ands	r2, r3
 8000738:	1e56      	subs	r6, r2, #1
 800073a:	2a00      	cmp	r2, #0
 800073c:	d006      	beq.n	800074c <memcpy+0x88>
 800073e:	2300      	movs	r3, #0
 8000740:	5ccc      	ldrb	r4, [r1, r3]
 8000742:	001a      	movs	r2, r3
 8000744:	54ec      	strb	r4, [r5, r3]
 8000746:	3301      	adds	r3, #1
 8000748:	4296      	cmp	r6, r2
 800074a:	d1f9      	bne.n	8000740 <memcpy+0x7c>
 800074c:	bc80      	pop	{r7}
 800074e:	46b8      	mov	r8, r7
 8000750:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000752:	0005      	movs	r5, r0
 8000754:	1e56      	subs	r6, r2, #1
 8000756:	2a00      	cmp	r2, #0
 8000758:	d1f1      	bne.n	800073e <memcpy+0x7a>
 800075a:	e7f7      	b.n	800074c <memcpy+0x88>
 800075c:	0005      	movs	r5, r0
 800075e:	1e56      	subs	r6, r2, #1
 8000760:	e7ed      	b.n	800073e <memcpy+0x7a>
 8000762:	001a      	movs	r2, r3
 8000764:	e7f6      	b.n	8000754 <memcpy+0x90>
 8000766:	46c0      	nop			; (mov r8, r8)

08000768 <register_fini>:
 8000768:	4b03      	ldr	r3, [pc, #12]	; (8000778 <register_fini+0x10>)
 800076a:	b510      	push	{r4, lr}
 800076c:	2b00      	cmp	r3, #0
 800076e:	d002      	beq.n	8000776 <register_fini+0xe>
 8000770:	4802      	ldr	r0, [pc, #8]	; (800077c <register_fini+0x14>)
 8000772:	f000 f805 	bl	8000780 <atexit>
 8000776:	bd10      	pop	{r4, pc}
 8000778:	00000000 	.word	0x00000000
 800077c:	08000791 	.word	0x08000791

08000780 <atexit>:
 8000780:	b510      	push	{r4, lr}
 8000782:	0001      	movs	r1, r0
 8000784:	2300      	movs	r3, #0
 8000786:	2200      	movs	r2, #0
 8000788:	2000      	movs	r0, #0
 800078a:	f000 f819 	bl	80007c0 <__register_exitproc>
 800078e:	bd10      	pop	{r4, pc}

08000790 <__libc_fini_array>:
 8000790:	b570      	push	{r4, r5, r6, lr}
 8000792:	4d07      	ldr	r5, [pc, #28]	; (80007b0 <__libc_fini_array+0x20>)
 8000794:	4c07      	ldr	r4, [pc, #28]	; (80007b4 <__libc_fini_array+0x24>)
 8000796:	1b64      	subs	r4, r4, r5
 8000798:	10a4      	asrs	r4, r4, #2
 800079a:	d005      	beq.n	80007a8 <__libc_fini_array+0x18>
 800079c:	3c01      	subs	r4, #1
 800079e:	00a3      	lsls	r3, r4, #2
 80007a0:	58eb      	ldr	r3, [r5, r3]
 80007a2:	4798      	blx	r3
 80007a4:	2c00      	cmp	r4, #0
 80007a6:	d1f9      	bne.n	800079c <__libc_fini_array+0xc>
 80007a8:	f000 f866 	bl	8000878 <_fini>
 80007ac:	bd70      	pop	{r4, r5, r6, pc}
 80007ae:	46c0      	nop			; (mov r8, r8)
 80007b0:	080008d0 	.word	0x080008d0
 80007b4:	080008d4 	.word	0x080008d4

080007b8 <__retarget_lock_acquire_recursive>:
 80007b8:	4770      	bx	lr
 80007ba:	46c0      	nop			; (mov r8, r8)

080007bc <__retarget_lock_release_recursive>:
 80007bc:	4770      	bx	lr
 80007be:	46c0      	nop			; (mov r8, r8)

080007c0 <__register_exitproc>:
 80007c0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80007c2:	46d6      	mov	lr, sl
 80007c4:	464f      	mov	r7, r9
 80007c6:	4646      	mov	r6, r8
 80007c8:	b5c0      	push	{r6, r7, lr}
 80007ca:	4f26      	ldr	r7, [pc, #152]	; (8000864 <__register_exitproc+0xa4>)
 80007cc:	b082      	sub	sp, #8
 80007ce:	0006      	movs	r6, r0
 80007d0:	6838      	ldr	r0, [r7, #0]
 80007d2:	4692      	mov	sl, r2
 80007d4:	4698      	mov	r8, r3
 80007d6:	4689      	mov	r9, r1
 80007d8:	f7ff ffee 	bl	80007b8 <__retarget_lock_acquire_recursive>
 80007dc:	4b22      	ldr	r3, [pc, #136]	; (8000868 <__register_exitproc+0xa8>)
 80007de:	681b      	ldr	r3, [r3, #0]
 80007e0:	9301      	str	r3, [sp, #4]
 80007e2:	23a4      	movs	r3, #164	; 0xa4
 80007e4:	9a01      	ldr	r2, [sp, #4]
 80007e6:	005b      	lsls	r3, r3, #1
 80007e8:	58d5      	ldr	r5, [r2, r3]
 80007ea:	2d00      	cmp	r5, #0
 80007ec:	d02e      	beq.n	800084c <__register_exitproc+0x8c>
 80007ee:	686c      	ldr	r4, [r5, #4]
 80007f0:	2c1f      	cmp	r4, #31
 80007f2:	dc30      	bgt.n	8000856 <__register_exitproc+0x96>
 80007f4:	2e00      	cmp	r6, #0
 80007f6:	d10f      	bne.n	8000818 <__register_exitproc+0x58>
 80007f8:	1c63      	adds	r3, r4, #1
 80007fa:	606b      	str	r3, [r5, #4]
 80007fc:	464b      	mov	r3, r9
 80007fe:	3402      	adds	r4, #2
 8000800:	00a4      	lsls	r4, r4, #2
 8000802:	6838      	ldr	r0, [r7, #0]
 8000804:	5163      	str	r3, [r4, r5]
 8000806:	f7ff ffd9 	bl	80007bc <__retarget_lock_release_recursive>
 800080a:	2000      	movs	r0, #0
 800080c:	b002      	add	sp, #8
 800080e:	bce0      	pop	{r5, r6, r7}
 8000810:	46ba      	mov	sl, r7
 8000812:	46b1      	mov	r9, r6
 8000814:	46a8      	mov	r8, r5
 8000816:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000818:	2288      	movs	r2, #136	; 0x88
 800081a:	4651      	mov	r1, sl
 800081c:	0028      	movs	r0, r5
 800081e:	00a3      	lsls	r3, r4, #2
 8000820:	18eb      	adds	r3, r5, r3
 8000822:	5099      	str	r1, [r3, r2]
 8000824:	3a87      	subs	r2, #135	; 0x87
 8000826:	40a2      	lsls	r2, r4
 8000828:	3089      	adds	r0, #137	; 0x89
 800082a:	30ff      	adds	r0, #255	; 0xff
 800082c:	6801      	ldr	r1, [r0, #0]
 800082e:	4311      	orrs	r1, r2
 8000830:	6001      	str	r1, [r0, #0]
 8000832:	2184      	movs	r1, #132	; 0x84
 8000834:	4640      	mov	r0, r8
 8000836:	0049      	lsls	r1, r1, #1
 8000838:	5058      	str	r0, [r3, r1]
 800083a:	2e02      	cmp	r6, #2
 800083c:	d1dc      	bne.n	80007f8 <__register_exitproc+0x38>
 800083e:	002b      	movs	r3, r5
 8000840:	338d      	adds	r3, #141	; 0x8d
 8000842:	33ff      	adds	r3, #255	; 0xff
 8000844:	6819      	ldr	r1, [r3, #0]
 8000846:	430a      	orrs	r2, r1
 8000848:	601a      	str	r2, [r3, #0]
 800084a:	e7d5      	b.n	80007f8 <__register_exitproc+0x38>
 800084c:	0015      	movs	r5, r2
 800084e:	354d      	adds	r5, #77	; 0x4d
 8000850:	35ff      	adds	r5, #255	; 0xff
 8000852:	50d5      	str	r5, [r2, r3]
 8000854:	e7cb      	b.n	80007ee <__register_exitproc+0x2e>
 8000856:	6838      	ldr	r0, [r7, #0]
 8000858:	f7ff ffb0 	bl	80007bc <__retarget_lock_release_recursive>
 800085c:	2001      	movs	r0, #1
 800085e:	4240      	negs	r0, r0
 8000860:	e7d4      	b.n	800080c <__register_exitproc+0x4c>
 8000862:	46c0      	nop			; (mov r8, r8)
 8000864:	20000430 	.word	0x20000430
 8000868:	080008c4 	.word	0x080008c4

0800086c <_init>:
 800086c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800086e:	46c0      	nop			; (mov r8, r8)
 8000870:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000872:	bc08      	pop	{r3}
 8000874:	469e      	mov	lr, r3
 8000876:	4770      	bx	lr

08000878 <_fini>:
 8000878:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800087a:	46c0      	nop			; (mov r8, r8)
 800087c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800087e:	bc08      	pop	{r3}
 8000880:	469e      	mov	lr, r3
 8000882:	4770      	bx	lr
