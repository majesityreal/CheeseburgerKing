	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"interrupts.c"
	.text
	.align	2
	.global	setupSounds
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupSounds, %function
setupSounds:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #67108864
	mov	r0, #128
	mov	r1, #0
	ldr	r2, .L3
	strh	r0, [r3, #132]	@ movhi
	strh	r1, [r3, #128]	@ movhi
	strh	r2, [r3, #130]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	-1266
	.size	setupSounds, .-setupSounds
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
	.global	playSoundA
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundA, %function
playSoundA:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, #0
	ldr	r3, .L7+8
	ldr	r3, [r3]
	mov	r5, r1
	mov	r6, r0
	mov	r8, r2
	mov	r1, r0
	str	r7, [r3, #20]
	mov	r0, #1
	mov	r3, #910163968
	ldr	r2, .L7+12
	ldr	r4, .L7+16
	mov	lr, pc
	bx	r4
	mov	r2, #1
	mvn	r0, #1520
	mov	r1, #128
	ldr	r4, .L7+20
	ldr	r3, .L7+24
	strh	r7, [r3, #2]	@ movhi
	strh	r0, [r3]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	mov	r0, r5
	str	r5, [r4, #4]
	str	r2, [r4, #12]
	ldr	r3, .L7+28
	str	r6, [r4]
	str	r8, [r4, #16]
	mov	lr, pc
	bx	r3
	ldr	r5, .L7+32
	adr	r3, .L7
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r5
	mov	r2, #0
	ldr	r5, .L7+36
	ldr	r3, .L7+40
	mov	lr, pc
	bx	r5
	ldr	r3, .L7+44
	mov	lr, pc
	bx	r3
	str	r7, [r4, #28]
	str	r0, [r4, #20]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L8:
	.align	3
.L7:
	.word	1443109011
	.word	1078844686
	.word	dma
	.word	67109024
	.word	DMANow
	.word	soundA
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.size	playSoundA, .-playSoundA
	.align	2
	.global	playSoundB
	.syntax unified
	.arm
	.fpu softvfp
	.type	playSoundB, %function
playSoundB:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	ip, #128
	mvn	lr, #1520
	mov	r5, r0
	mov	r6, #0
	mov	r0, r1
	mov	r1, #1
	ldr	r4, .L11+8
	ldr	r3, .L11+12
	strh	r6, [r3, #6]	@ movhi
	strh	lr, [r3, #4]	@ movhi
	strh	ip, [r3, #6]	@ movhi
	str	r5, [r4]
	str	r2, [r4, #16]
	ldr	r3, .L11+16
	str	r0, [r4, #4]
	str	r1, [r4, #12]
	mov	lr, pc
	bx	r3
	ldr	r7, .L11+20
	adr	r3, .L11
	ldmia	r3, {r2-r3}
	mov	lr, pc
	bx	r7
	mov	r2, #0
	ldr	r7, .L11+24
	ldr	r3, .L11+28
	mov	lr, pc
	bx	r7
	ldr	r3, .L11+32
	mov	lr, pc
	bx	r3
	mov	ip, r0
	mov	r1, r5
	mov	r3, #910163968
	ldr	r5, .L11+36
	mov	r0, #2
	ldr	r2, .L11+40
	str	ip, [r4, #20]
	str	r6, [r4, #28]
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L12:
	.align	3
.L11:
	.word	1443109011
	.word	1078844686
	.word	soundB
	.word	67109120
	.word	__aeabi_i2d
	.word	__aeabi_dmul
	.word	__aeabi_ddiv
	.word	1086687360
	.word	__aeabi_d2iz
	.word	DMANow
	.word	67109028
	.size	playSoundB, .-playSoundB
	.align	2
	.global	interruptHandler
	.syntax unified
	.arm
	.fpu softvfp
	.type	interruptHandler, %function
interruptHandler:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	ldr	r3, .L34
	ldrh	r1, [r3, #2]
	tst	r1, #32
	push	{r4, lr}
	strh	r2, [r3, #8]	@ movhi
	beq	.L15
	ldr	r2, .L34+4
	ldr	r3, [r2]
	add	r1, r3, #1
	cmp	r1, #59
	ldrgt	r0, .L34+8
	ldrgt	r1, [r0]
	subgt	r3, r3, #59
	addgt	r1, r1, #1
	strle	r1, [r2]
	strgt	r3, [r2]
	strgt	r1, [r0]
.L15:
	ldr	r3, .L34
	ldrh	r3, [r3, #2]
	tst	r3, #1
	beq	.L18
	ldr	r3, .L34+12
	ldr	r2, [r3, #12]
	cmp	r2, #0
	beq	.L20
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L20
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L31
	ldr	r0, .L34+16
	ldr	r1, .L34+20
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #20]
	strh	r2, [r1, #2]	@ movhi
.L20:
	ldr	r3, .L34+24
	ldr	r2, [r3, #12]
	cmp	r2, #0
	bne	.L32
.L24:
	mov	r2, #1
	ldr	r3, .L34
	strh	r2, [r3, #2]	@ movhi
.L18:
	mov	r1, #1
	ldr	r3, .L34
	ldrh	r2, [r3, #2]
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	pop	{r4, lr}
	bx	lr
.L32:
	ldr	r2, [r3, #28]
	ldr	r1, [r3, #20]
	add	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #28]
	ble	.L24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L33
	ldr	r0, .L34+16
	ldr	r1, .L34+20
	ldr	r0, [r0]
	str	r2, [r3, #12]
	str	r2, [r0, #32]
	strh	r2, [r1, #6]	@ movhi
	b	.L24
.L31:
	ldm	r3, {r0, r1}
	bl	playSoundA
	b	.L20
.L33:
	ldm	r3, {r0, r1}
	bl	playSoundB
	b	.L24
.L35:
	.align	2
.L34:
	.word	67109376
	.word	time_s
	.word	time_m
	.word	soundA
	.word	dma
	.word	67109120
	.word	soundB
	.size	interruptHandler, .-interruptHandler
	.align	2
	.global	setupInterrupts
	.syntax unified
	.arm
	.fpu softvfp
	.type	setupInterrupts, %function
setupInterrupts:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #67108864
	str	lr, [sp, #-4]!
	mov	lr, #1
	ldrh	r1, [r0, #4]
	ldr	r3, .L38
	orr	r1, r1, #8
	ldrh	r2, [r3]
	ldr	ip, .L38+4
	strh	r1, [r0, #4]	@ movhi
	ldr	r1, .L38+8
	orr	r2, r2, #33
	strh	lr, [r3, #8]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	lr, [sp], #4
	str	r1, [ip, #4092]
	bx	lr
.L39:
	.align	2
.L38:
	.word	67109376
	.word	50360320
	.word	interruptHandler
	.size	setupInterrupts, .-setupInterrupts
	.align	2
	.global	startTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	startTimer, %function
startTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #49152
	mov	r2, #195
	ldr	r3, .L41
	strh	r1, [r3, #8]	@ movhi
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L42:
	.align	2
.L41:
	.word	67109120
	.size	startTimer, .-startTimer
	.align	2
	.global	pauseTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseTimer, %function
pauseTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, #0
	ldr	r3, .L44
	strh	r2, [r3, #10]	@ movhi
	bx	lr
.L45:
	.align	2
.L44:
	.word	67109120
	.size	pauseTimer, .-pauseTimer
	.align	2
	.global	pauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	pauseSound, %function
pauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L47
	ldr	r0, .L47+4
	ldr	r1, .L47+8
	str	r3, [r0, #12]
	str	r3, [r1, #12]
	strh	r3, [r2, #2]	@ movhi
	strh	r3, [r2, #6]	@ movhi
	bx	lr
.L48:
	.align	2
.L47:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	pauseSound, .-pauseSound
	.align	2
	.global	unpauseSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	unpauseSound, %function
unpauseSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #128
	mov	r3, #1
	ldr	r2, .L50
	ldr	ip, .L50+4
	ldr	r0, .L50+8
	strh	r1, [r2, #2]	@ movhi
	str	r3, [ip, #12]
	strh	r1, [r2, #6]	@ movhi
	str	r3, [r0, #12]
	bx	lr
.L51:
	.align	2
.L50:
	.word	67109120
	.word	soundA
	.word	soundB
	.size	unpauseSound, .-unpauseSound
	.align	2
	.global	stopSound
	.syntax unified
	.arm
	.fpu softvfp
	.type	stopSound, %function
stopSound:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #0
	ldr	r2, .L53
	ldr	ip, .L53+4
	strh	r3, [r2, #2]	@ movhi
	ldr	r0, .L53+8
	strh	r3, [r2, #6]	@ movhi
	ldr	r1, .L53+12
	ldr	r2, [ip]
	str	r3, [r0, #12]
	str	r3, [r2, #20]
	str	r3, [r1, #12]
	str	r3, [r2, #32]
	bx	lr
.L54:
	.align	2
.L53:
	.word	67109120
	.word	dma
	.word	soundA
	.word	soundB
	.size	stopSound, .-stopSound
	.comm	time_s,4,4
	.comm	time_m,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
