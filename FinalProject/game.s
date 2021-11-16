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
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawPlayer.part.0, %function
drawPlayer.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, #0
	ldr	r2, .L3
	ldr	r1, .L3+4
	ldr	ip, .L3+8
	ldr	r1, [r1]
	ldr	r3, [r2, #12]
	ldr	ip, [ip]
	ldr	r2, [r2, #8]
	sub	r3, r3, r1
	lsl	r3, r3, #23
	ldr	r1, .L3+12
	sub	r2, r2, ip
	lsr	r3, r3, #23
	and	r2, r2, #255
	strh	r3, [r1, #2]	@ movhi
	strh	r2, [r1]	@ movhi
	strh	r0, [r1, #4]	@ movhi
	bx	lr
.L4:
	.align	2
.L3:
	.word	pacman
	.word	hOff
	.word	vOff
	.word	shadowOAM
	.size	drawPlayer.part.0, .-drawPlayer.part.0
	.align	2
	.global	initGame
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
	mov	ip, #8
	mov	lr, #3
	mov	r0, #1
	mov	r1, #20
	ldr	r3, .L7
	str	r2, [r3]
	ldr	r3, .L7+4
	str	lr, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	pacman
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
	mov	lr, #3
	mov	ip, #8
	mov	r0, #1
	mov	r1, #20
	ldr	r3, .L11
	str	lr, [r3, #48]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #24]
	str	ip, [r3, #28]
	str	r0, [r3, #16]
	str	r0, [r3, #20]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	ldr	lr, [sp], #4
	bx	lr
.L12:
	.align	2
.L11:
	.word	pacman
	.size	initPlayer, .-initPlayer
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
	ldr	r3, .L17
	ldr	r3, [r3, #52]
	cmp	r3, #0
	push	{r4, lr}
	beq	.L14
	ldr	r2, .L17+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
.L15:
	ldr	r3, .L17+8
	mov	lr, pc
	bx	r3
	ldr	r4, .L17+12
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L17+4
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L17+16
	ldrh	r1, [r2]
	ldr	r2, .L17+20
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L14:
	bl	drawPlayer.part.0
	b	.L15
.L18:
	.align	2
.L17:
	.word	pacman
	.word	shadowOAM
	.word	waitForVBlank
	.word	DMANow
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
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
	ldr	r1, .L23
	ldr	r3, .L23+4
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
	ldrne	r3, .L23+8
	movne	r0, #1
	strne	r2, [r3, #4]
	bx	lr
.L24:
	.align	2
.L23:
	.word	pacman
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
	mov	r1, #4
	push	{r4, r5, r6, lr}
	ldr	r4, .L38
	ldr	r3, .L38+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L26
	ldr	r0, [r4, #44]
	ldr	r3, .L38+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L26:
	ldr	r3, .L38+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L38+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L38+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L29
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	bne	.L31
.L32:
	mov	r3, #2
	str	r3, [r4, #36]
.L31:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L32
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L31
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L39:
	.align	2
.L38:
	.word	pacman
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
	@ link register save eliminated.
	ldr	r3, .L44
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L41
	ldr	r2, .L44+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L41:
	b	drawPlayer.part.0
.L45:
	.align	2
.L44:
	.word	pacman
	.word	shadowOAM
	.size	drawPlayer, .-drawPlayer
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
	ldr	r3, .L48
	ldr	r0, .L48+4
	ldr	r3, [r3, #8]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, r2, lsl #2
	ldr	lr, .L48+8
	eor	ip, r3, r3, asr #31
	sub	r2, r3, r2, lsl #2
	sub	ip, ip, r3, asr #31
	smull	r3, lr, r2, lr
	ldr	r3, .L48+12
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
.L49:
	.align	2
.L48:
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
	push	{r4, r5, r6, r7, r8, lr}
	bl	groundCheck
	ldr	r3, .L129
	ldrh	r3, [r3]
	ldr	r6, .L129+4
	tst	r3, #64
	str	r0, [r6, #4]
	bne	.L112
	ldr	r4, .L129+8
	ldr	r5, .L129+12
.L51:
	cmp	r0, #0
	bne	.L121
.L53:
	ldr	r3, .L129+16
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r5, #16]
	ldr	r3, [r5, #4]
	beq	.L122
.L54:
	cmp	r3, #0
	subeq	r0, r0, #3
.L55:
	mov	r3, #0
	str	r3, [r5, #12]
.L56:
	ldr	r3, .L129+20
	mov	lr, pc
	bx	r3
	ldr	r7, .L129+24
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L129+28
	mov	lr, pc
	bx	r7
	ldr	r3, .L129+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	tst	r3, #3
	str	r0, [r5, #8]
	beq	.L123
.L57:
	ldr	r2, [r6, #4]
	ldr	ip, .L129+36
	cmp	r2, #0
	ldr	r0, [ip]
	ldr	r1, [r4, #8]
	bne	.L80
	ldr	r3, [r5, #8]
	cmp	r0, #255
	add	r7, r3, r1
	str	r7, [r4, #8]
	sub	lr, r7, r0
	ble	.L116
.L61:
	cmp	lr, #80
	ble	.L124
.L65:
	cmp	r3, #0
	bge	.L120
.L68:
	add	r1, r4, #24
	ldr	r0, [r4, #12]
	ldm	r1, {r1, r8}
	ldr	lr, [r6]
	add	r1, r0, r1
	add	r8, r7, r8
	add	r1, r1, r8, lsl #8
	add	r0, r0, r8, lsl #8
	add	r0, lr, r0
	add	lr, lr, r1
.L71:
	ldrb	r1, [r0, r2, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L69
	ldrb	r1, [lr, r2, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L125
.L69:
	sub	r2, r2, #1
	cmp	r3, r2
	blt	.L71
.L120:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	ble	.L70
.L64:
	ldr	r1, [r4, #12]
	ldr	lr, [r4, #8]
	ldr	r7, [r4, #28]
	ldr	r2, [r4, #24]
	ldr	r0, [r6]
	add	r7, lr, r7
	add	r2, r1, r2
	add	r2, r2, r7, lsl #8
	add	r1, r1, r7, lsl #8
	add	r1, r0, r1
	add	r0, r0, r2
.L73:
	ldrb	r2, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L72
	ldrb	r2, [r0, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L126
.L72:
	subs	r3, r3, #1
	bne	.L73
.L70:
	ldr	r3, .L129+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L75
	ldr	r2, [r6]
	ldr	r3, [r4, #8]
	ldr	r0, [r4, #12]
	add	ip, r2, r3, lsl #8
	sub	r1, r0, #1
	ldrb	ip, [ip, r1]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L75
	ldr	ip, [r4, #28]
	add	r3, r3, ip
	sub	r3, r3, #1
	add	r3, r2, r3, lsl #8
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	r0, #0
	cmpge	r3, #0
	beq	.L127
.L75:
	ldr	r3, .L129+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L78
	ldr	r0, [r4, #12]
	ldr	r3, [r4, #24]
	ldr	r1, [r6]
	ldr	r2, [r4, #8]
	add	r3, r0, r3
	add	r3, r3, #1
	add	ip, r1, r2, lsl #8
	ldrb	ip, [ip, r3]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L78
	ldr	ip, [r4, #28]
	add	r2, r2, ip
	sub	r2, r2, #1
	add	r2, r1, r2, lsl #8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L129+40
	cmp	r0, r3
	cmple	r2, #0
	beq	.L128
.L78:
	ldr	r3, [r5]
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L112:
	ldr	r3, .L129+44
	ldrh	r3, [r3]
	lsr	r3, r3, #6
	eor	r3, r3, #1
	cmp	r0, #0
	moveq	r3, #0
	andne	r3, r3, #1
	cmp	r3, #0
	ldr	r4, .L129+8
	bne	.L113
	cmp	r0, #0
	ldr	r5, .L129+12
	beq	.L53
.L121:
	ldr	ip, .L129+36
.L80:
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #16]
	str	r3, [r5, #12]
	b	.L120
.L122:
	ldr	r2, [r5, #12]
	cmp	r2, #0
	beq	.L54
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L56
	b	.L55
.L126:
	mov	r1, #0
	ldr	r2, [ip]
	sub	r3, r3, #2
	add	lr, lr, r3
	add	r3, r2, r3
	str	lr, [r4, #8]
	str	r3, [ip]
	str	r1, [r5, #8]
	b	.L70
.L116:
	cmp	lr, #79
	cmpgt	r3, #0
	ble	.L62
	add	r2, r3, r0
	cmp	r2, #0
	str	r2, [ip]
	bgt	.L120
	b	.L64
.L113:
	ldr	r1, [r4, #8]
	ldr	r3, [r6]
	ldr	r2, [r4, #12]
	sub	r0, r1, #1
	add	r3, r3, r0, lsl #8
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, r2
	bne	.L119
	ldr	r2, [r4, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L115
.L119:
	mov	r3, #0
	ldr	r5, .L129+12
	ldr	ip, .L129+36
	str	r3, [r5, #8]
	str	r3, [r5, #16]
	str	r3, [r5, #12]
	b	.L120
.L62:
	cmp	r0, #0
	ble	.L65
	b	.L61
.L127:
	ldr	r2, .L129+48
	ldr	r3, [r2]
	cmp	r3, #0
	str	r1, [r4, #12]
	blt	.L75
	sub	r1, r1, r3
	cmp	r1, #119
	suble	r3, r3, #1
	strle	r3, [r2]
	b	.L75
.L128:
	ldr	r2, .L129+48
	ldr	r3, [r2]
	add	r0, r0, #1
	cmp	r3, #240
	str	r0, [r4, #12]
	bgt	.L78
	sub	r0, r0, r3
	cmp	r0, #120
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L78
.L123:
	ldr	r3, [r5, #16]
	add	r3, r3, #1
	str	r3, [r5, #16]
	bl	drawFont
	b	.L57
.L125:
	mov	r0, #1
	mov	r1, #0
	ldr	r3, [ip]
	add	r2, r2, r0
	add	r7, r7, r2
	add	r2, r3, r2
	str	r7, [r4, #8]
	str	r2, [ip]
	str	r1, [r5, #8]
	str	r1, [r5, #12]
	str	r0, [r5, #4]
	b	.L70
.L124:
	cmp	r3, #0
	addlt	r1, r3, r0
	strlt	r1, [ip]
	blt	.L68
	b	.L120
.L115:
	mvn	r1, #4
	mov	r2, #1
	ldr	r5, .L129+12
	str	r3, [r6, #4]
	str	r1, [r5, #8]
	str	r2, [r5, #12]
	bl	drawFont
	ldr	r0, [r6, #4]
	b	.L51
.L130:
	.align	2
.L129:
	.word	oldButtons
	.word	.LANCHOR1
	.word	pacman
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
	ldr	r3, .L142
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	beq	.L132
	ldr	r2, .L142+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L132
	mov	r2, #1
	ldr	r3, .L142+8
	str	r2, [r3, #20]
.L134:
	b	updatePlayer
.L132:
	cmp	r3, #0
	beq	.L134
	ldr	r3, .L142+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L142+8
	streq	r2, [r3, #20]
	b	.L134
.L143:
	.align	2
.L142:
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
	.comm	pacman,56,4
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
