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
	.file	"game.c"
	.text
	.align	2
	.global	initGame
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initGame, %function
initGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	str	lr, [sp, #-4]!
	mov	r1, #20
	mov	lr, #16
	mov	r0, #1
	mov	ip, #4
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	lr, [r3, #24]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #48]
	str	r1, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	player
	.size	initGame, .-initGame
	.align	2
	.global	initPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	initPlayer, %function
initPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r2, #0
	mov	r1, #20
	mov	lr, #16
	mov	r0, #1
	mov	ip, #4
	ldr	r3, .L8
	str	lr, [r3, #24]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #48]
	str	r1, [r3, #28]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	ldr	lr, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	groundCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	groundCheck, %function
groundCheck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L14
	ldr	r3, .L14+4
	ldr	r0, [r1, #28]
	ldr	r2, [r1, #8]
	ldr	r3, [r3]
	add	r2, r2, r0
	ldr	ip, [r1, #12]
	add	r2, r2, #1
	add	r3, r3, r2, lsl #8
	ldrb	r0, [r3, ip]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, ip
	bxeq	lr
	ldr	r2, [r1, #24]
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	cmp	r0, #0
	movne	r2, #0
	ldrne	r3, .L14+8
	movne	r0, #1
	strne	r2, [r3, #4]
	bx	lr
.L15:
	.align	2
.L14:
	.word	player
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	groundCheck, .-groundCheck
	.global	__aeabi_idivmod
	.align	2
	.global	animatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	animatePlayer, %function
animatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L21
	ldr	r3, .L21+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #36]
	cmp	r5, r3, lsl #1
	str	r2, [r4, #40]
	str	r1, [r4, #36]
	bne	.L17
	ldr	r0, [r4, #44]
	ldr	r3, .L21+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L17:
	ldr	r3, .L21+12
	ldrh	r3, [r3, #48]
	tst	r3, #32
	moveq	r3, #1
	streq	r3, [r4, #36]
	streq	r3, [r4, #56]
	ldr	r3, .L21+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	moveq	r2, #1
	add	r5, r5, #1
	streq	r3, [r4, #56]
	streq	r2, [r4, #36]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	player
	.word	1717986919
	.word	__aeabi_idivmod
	.word	67109120
	.size	animatePlayer, .-animatePlayer
	.align	2
	.global	drawPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer, %function
drawPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L34
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L24
	ldr	r2, .L34+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L24:
	ldr	r1, .L34+8
	ldr	r2, .L34+12
	ldr	ip, [r1]
	ldr	r1, [r3, #12]
	ldr	r0, [r2]
	sub	r1, r1, ip
	ldr	r2, [r3, #8]
	ldr	ip, .L34+16
	lsl	r1, r1, #23
	sub	r2, r2, r0
	lsr	r1, r1, #23
	and	r0, ip, #32768
	str	lr, [sp, #-4]!
	orr	r1, r0, r1
	ldr	lr, [r3, #56]
	ldr	r0, .L34+4
	and	r2, r2, #255
	orr	r2, r2, ip
	cmp	lr, #0
	strh	r2, [r0]	@ movhi
	ldr	r2, [r3, #36]
	strh	r1, [r0, #2]	@ movhi
	ldr	r3, [r3, #44]
	orrne	r1, r1, #4096
	strhne	r1, [r0, #2]	@ movhi
	cmp	r2, #0
	addne	r2, r2, r3, lsl #6
	lsleq	r2, r3, #7
	lslne	r2, r2, #1
	strh	r2, [r0, #4]	@ movhi
	ldr	lr, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	player
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	-32768
	.size	drawPlayer, .-drawPlayer
	.align	2
	.global	drawGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawGame, %function
drawGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	drawPlayer
	ldr	r3, .L38
	mov	lr, pc
	bx	r3
	ldr	r4, .L38+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L38+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L38+12
	ldrh	r1, [r2]
	ldr	r2, .L38+16
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L39:
	.align	2
.L38:
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	animateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateEnemies, %function
animateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	animateEnemies, .-animateEnemies
	.align	2
	.global	drawEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawEnemies, %function
drawEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	drawFont
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawFont, %function
drawFont:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L45
	ldr	r0, .L45+4
	ldr	r3, [r3, #8]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, r2, lsl #2
	ldr	lr, .L45+8
	eor	ip, r3, r3, asr #31
	sub	r2, r3, r2, lsl #2
	sub	ip, ip, r3, asr #31
	smull	r3, lr, r2, lr
	ldr	r3, .L45+12
	add	r0, r0, #10
	strh	r0, [r3, #60]	@ movhi
	mov	r0, #46	@ movhi
	strh	r0, [r3, #52]	@ movhi
	mov	r0, #40	@ movhi
	asr	r2, r2, #31
	rsb	r2, r2, lr, asr #2
	add	r2, r2, #10
	mov	r1, #0
	mov	fp, #42
	mov	r10, #8
	mov	r9, #43
	mov	r8, #16
	mov	r7, #44
	mov	r6, #24
	mov	r5, #45
	mov	r4, #32
	strh	r0, [r3, #58]	@ movhi
	strh	r2, [r3, #68]	@ movhi
	mov	r0, #48	@ movhi
	mov	r2, #56	@ movhi
	add	ip, ip, #10
	strh	ip, [r3, #76]	@ movhi
	strh	fp, [r3, #20]	@ movhi
	strh	r10, [r3, #26]	@ movhi
	strh	r9, [r3, #28]	@ movhi
	strh	r8, [r3, #34]	@ movhi
	strh	r7, [r3, #36]	@ movhi
	strh	r6, [r3, #42]	@ movhi
	strh	r5, [r3, #44]	@ movhi
	strh	r4, [r3, #50]	@ movhi
	strh	r0, [r3, #66]	@ movhi
	strh	r2, [r3, #74]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #18]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r1, [r3, #32]	@ movhi
	strh	r1, [r3, #40]	@ movhi
	strh	r1, [r3, #48]	@ movhi
	strh	r1, [r3, #56]	@ movhi
	strh	r1, [r3, #64]	@ movhi
	strh	r1, [r3, #72]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
	.word	1374389535
	.word	1717986919
	.word	shadowOAM
	.size	drawFont, .-drawFont
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.align	2
	.global	updatePlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	updatePlayer, %function
updatePlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	groundCheck
	ldr	r3, .L120
	ldrh	r3, [r3]
	ldr	r6, .L120+4
	tst	r3, #64
	str	r0, [r6, #4]
	bne	.L106
	ldr	r4, .L120+8
	ldr	r5, .L120+12
.L48:
	cmp	r0, #0
	bne	.L113
.L50:
	ldr	r3, .L120+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r5, #16]
	ldr	r3, [r5, #4]
	beq	.L114
.L51:
	cmp	r3, #0
	subeq	r0, r0, #3
.L52:
	mov	r3, #0
	str	r3, [r5, #12]
.L53:
	ldr	r3, .L120+20
	mov	lr, pc
	bx	r3
	ldr	r7, .L120+24
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L120+28
	mov	lr, pc
	bx	r7
	ldr	r3, .L120+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	tst	r3, #3
	str	r0, [r5, #8]
	beq	.L115
.L54:
	ldr	r3, [r6, #4]
	cmp	r3, #0
	ldr	r0, [r4, #8]
	bne	.L73
	ldr	lr, [r5, #8]
	cmp	lr, #0
	bge	.L57
	add	r2, r4, #24
	ldr	r1, [r4, #12]
	ldm	r2, {r2, r7}
	ldr	ip, [r6]
	add	r2, r1, r2
	add	r7, r0, r7
	add	r2, r2, r7, lsl #8
	add	r1, r1, r7, lsl #8
	add	r1, ip, r1
	add	ip, ip, r2
.L60:
	ldrb	r2, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L58
	ldrb	r2, [ip, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L116
.L58:
	sub	r3, r3, #1
	cmp	lr, r3
	bne	.L60
	ldr	ip, .L120+36
	ldr	r2, [ip]
	add	r0, r0, lr
.L59:
	cmp	r2, #0
	str	r0, [r4, #8]
	ble	.L65
	sub	r3, r0, r2
	lsr	r1, lr, #31
	cmp	r3, #80
	movgt	r3, #0
	andle	r3, r1, #1
	cmp	r3, #0
	addne	r2, lr, r2
	strne	r2, [ip]
.L65:
	ldr	r3, .L120+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L67
	ldr	r3, [r6]
	ldr	ip, [r4, #12]
	add	r2, r3, r0, lsl #8
	sub	r1, ip, #1
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L67
	ldr	r2, [r4, #28]
	add	r2, r0, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	ip, #0
	cmpge	r3, #0
	beq	.L117
.L67:
	ldr	r3, .L120+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L70
	ldr	r1, [r4, #12]
	ldr	r3, [r4, #24]
	ldr	r2, [r6]
	add	r3, r1, r3
	add	r3, r3, #1
	add	ip, r2, r0, lsl #8
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L70
	ldr	ip, [r4, #28]
	add	r0, r0, ip
	sub	r0, r0, #1
	add	r2, r2, r0, lsl #8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L120+40
	cmp	r1, r3
	cmple	r2, #0
	beq	.L118
.L70:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	animatePlayer
.L106:
	ldr	r3, .L120+44
	ldrh	r3, [r3]
	lsr	r3, r3, #6
	eor	r3, r3, #1
	cmp	r0, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	ldr	r4, .L120+8
	bne	.L107
	cmp	r0, #0
	ldr	r5, .L120+12
	beq	.L50
.L113:
	ldr	r0, [r4, #8]
.L73:
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #16]
	str	r3, [r5, #12]
.L63:
	str	r0, [r4, #8]
	b	.L65
.L114:
	ldr	r2, [r5, #12]
	cmp	r2, #0
	beq	.L51
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L53
	b	.L52
.L57:
	ldr	ip, .L120+36
	ldr	r7, [ip]
	beq	.L63
	mov	r3, lr
	add	r8, r4, #24
	ldr	r1, [r4, #12]
	ldm	r8, {r8, r9}
	add	r8, r1, r8
	add	r9, r0, r9
	add	r2, r8, r9, lsl #8
	ldr	r8, [r6]
	add	r1, r1, r9, lsl #8
	add	r1, r8, r1
	add	r8, r8, r2
.L64:
	ldrb	r2, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L62
	ldrb	r2, [r8, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L119
.L62:
	subs	r3, r3, #1
	bne	.L64
	add	r0, r0, lr
	cmp	r7, #255
	str	r0, [r4, #8]
	bgt	.L65
	sub	r3, r0, r7
	cmp	r3, #79
	addgt	lr, lr, r7
	strgt	lr, [ip]
	b	.L65
.L119:
	mov	r2, #0
	sub	r3, r3, #2
	add	r7, r3, r7
	str	r7, [ip]
	str	r2, [r5, #8]
	add	r0, r0, r3
	b	.L63
.L107:
	ldr	r0, [r4, #8]
	ldr	r3, [r6]
	ldr	r2, [r4, #12]
	sub	r1, r0, #1
	add	r3, r3, r1, lsl #8
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r2
	bne	.L112
	ldr	r2, [r4, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L109
.L112:
	ldr	r5, .L120+12
	b	.L73
.L117:
	ldr	r2, .L120+48
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r4, #12]
	blt	.L67
	sub	r1, r1, r3
	cmp	r1, #119
	suble	r3, r3, #1
	strle	r3, [r2]
	b	.L67
.L118:
	ldr	r2, .L120+48
	ldr	r3, [r2]
	add	r1, r1, #1
	cmp	r3, #240
	str	r1, [r4, #12]
	bgt	.L70
	sub	r1, r1, r3
	cmp	r1, #120
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L70
.L115:
	ldr	r3, [r5, #16]
	add	r3, r3, #1
	str	r3, [r5, #16]
	bl	drawFont
	b	.L54
.L116:
	mov	r1, #1
	mov	lr, #0
	ldr	ip, .L120+36
	ldr	r2, [ip]
	add	r3, r3, r1
	add	r2, r3, r2
	str	r2, [ip]
	str	lr, [r5, #8]
	str	lr, [r5, #12]
	str	lr, [r5, #16]
	str	r1, [r5, #4]
	add	r0, r0, r3
	b	.L59
.L109:
	mvn	r1, #4
	mov	r2, #1
	ldr	r5, .L120+12
	str	r3, [r6, #4]
	str	r1, [r5, #8]
	str	r2, [r5, #12]
	bl	drawFont
	ldr	r0, [r6, #4]
	b	.L48
.L121:
	.align	2
.L120:
	.word	oldButtons
	.word	.LANCHOR1
	.word	player
	.word	.LANCHOR0
	.word	67109120
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	vOff
	.word	466
	.word	buttons
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateGame
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateGame, %function
updateGame:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L133
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	beq	.L123
	ldr	r2, .L133+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L123
	mov	r2, #1
	ldr	r3, .L133+8
	str	r2, [r3, #20]
.L125:
	b	updatePlayer
.L123:
	cmp	r3, #0
	beq	.L125
	ldr	r3, .L133+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L133+8
	streq	r2, [r3, #20]
	b	.L125
.L134:
	.align	2
.L133:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.global	gTimer
	.global	framesInAir
	.global	yVel
	.global	jumpThud
	.global	jumping
	.global	grounded
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	pauseVar
	.global	score
	.global	collisionMap
	.comm	pellets,2048,4
	.comm	goblin1,56,4
	.comm	player,60,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	marioMapCollisionMapBitmap
	.type	grounded, %object
	.size	grounded, 4
grounded:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gTimer, %object
	.size	gTimer, 4
gTimer:
	.space	4
	.type	jumpThud, %object
	.size	jumpThud, 4
jumpThud:
	.space	4
	.type	yVel, %object
	.size	yVel, 4
yVel:
	.space	4
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	framesInAir, %object
	.size	framesInAir, 4
framesInAir:
	.space	4
	.type	pauseVar, %object
	.size	pauseVar, 4
pauseVar:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
