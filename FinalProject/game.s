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
	push	{r4, lr}
	mov	r0, #20
	mov	r4, #16
	mov	lr, #60
	mov	r1, #1
	mov	ip, #4
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r4, [r3, #24]
	str	lr, [r3, #8]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #48]
	str	r0, [r3, #28]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
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
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #16
	mov	lr, #60
	mov	r0, #20
	mov	r1, #1
	mov	ip, #4
	ldr	r3, .L8
	str	r4, [r3, #24]
	str	lr, [r3, #8]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #48]
	str	r0, [r3, #28]
	str	r0, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
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
	ldr	r3, .L89
	ldrh	r3, [r3, #48]
	lsr	r3, r3, #6
	eor	r3, r3, #1
	cmp	r0, #0
	moveq	r3, #0
	andne	r3, r3, #1
	ldr	r8, .L89+4
	cmp	r3, #0
	ldr	r6, .L89+8
	str	r0, [r8, #4]
	bne	.L81
	ldr	r9, .L89+12
	ldr	r4, [r6, #8]
	ldr	r7, [r9]
.L25:
	ldr	r5, .L89+16
	ldr	r2, [r5, #8]
	cmp	r2, #0
	bge	.L27
	ldr	lr, [r8]
	ldr	r1, [r6, #12]
	ldr	ip, [r6, #24]
.L26:
	add	ip, ip, r1
	add	ip, ip, r4, lsl #8
	add	r1, r1, r4, lsl #8
	add	ip, lr, ip
	mov	r3, #0
	add	lr, lr, r1
	b	.L31
.L82:
	ldrb	r1, [ip, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L28
	sub	r3, r3, #1
	cmp	r3, r2
	ble	.L30
.L31:
	ldrb	r1, [lr, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L82
.L28:
	mov	r1, #1
	mov	r2, #0
	add	r3, r3, r1
	add	r4, r4, r3
	add	r7, r7, r3
	str	r4, [r6, #8]
	str	r7, [r9]
	str	r2, [r5, #8]
	str	r2, [r5, #12]
	str	r2, [r5, #16]
	str	r1, [r5, #4]
.L30:
	ldr	r3, .L89
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L36
.L55:
	ldr	r3, .L89
	ldrh	r3, [r3, #48]
	tst	r3, #16
	ldr	r2, [r5, #8]
	beq	.L83
.L32:
	cmp	r2, #0
	ble	.L36
	ldr	ip, [r6, #12]
	ldr	r1, [r6, #24]
	ldr	lr, [r8]
	add	r1, ip, r1
.L35:
	ldr	r10, [r6, #28]
	add	r10, r4, r10
	add	ip, ip, r10, lsl #8
	add	r1, r1, r10, lsl #8
	add	ip, lr, ip
	mov	r3, #0
	add	lr, lr, r1
	b	.L39
.L84:
	ldrb	r1, [lr, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L37
	add	r3, r3, #1
	cmp	r3, r2
	bge	.L36
.L39:
	ldrb	r1, [ip, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L84
.L37:
	sub	r3, r3, #2
	add	r4, r4, r3
	add	r7, r7, r3
	str	r4, [r6, #8]
	str	r7, [r9]
.L36:
	cmp	r0, #0
	bne	.L40
	ldr	r3, .L89
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r5, #16]
	ldr	r3, [r5, #4]
	beq	.L85
.L41:
	cmp	r3, #0
	bne	.L42
	ldr	r3, .L89+20
	ldrh	r3, [r3]
	tst	r3, #64
	bne	.L86
.L42:
	mov	r3, #0
	str	r3, [r5, #12]
.L43:
	ldr	r3, .L89+24
	mov	lr, pc
	bx	r3
	ldr	r10, .L89+28
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L89+32
	mov	lr, pc
	bx	r10
	ldr	r3, .L89+36
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	tst	r3, #3
	ldreq	r2, [r5, #16]
	addeq	r2, r2, #1
	streq	r2, [r5, #16]
	add	r4, r4, r0
	cmp	r7, #255
	str	r0, [r5, #8]
	str	r4, [r6, #8]
	sub	r2, r4, r7
	ble	.L45
.L46:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L47
.L80:
	ldr	r2, .L89
	ldrh	r2, [r2, #48]
	add	r0, r0, r7
	tst	r2, #32
	str	r0, [r9]
	beq	.L87
.L50:
	ldr	r2, .L89
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L53
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #24]
	ldr	r1, [r8]
	add	r2, r0, r2
	add	r2, r2, #1
	add	ip, r1, r4, lsl #8
	ldrb	ip, [ip, r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L53
	ldr	ip, [r6, #28]
	add	r4, r4, ip
	sub	r4, r4, #1
	add	r1, r1, r4, lsl #8
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r2, .L89+40
	cmp	r0, r2
	cmple	r1, #0
	beq	.L88
.L53:
	add	r3, r3, #1
	str	r3, [r5]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	animatePlayer
.L40:
	mov	r3, #0
	str	r3, [r5, #8]
	str	r3, [r5, #16]
	str	r3, [r5, #12]
	ldr	r3, [r5]
.L47:
	ldr	r2, .L89
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L50
.L87:
	ldr	r2, [r8]
	ldr	ip, [r6, #12]
	add	r1, r2, r4, lsl #8
	sub	r0, ip, #1
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L50
	ldr	r1, [r6, #28]
	add	r1, r4, r1
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #8
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	cmpge	r2, #0
	bne	.L50
	ldr	r1, .L89+44
	ldr	r2, [r1]
	cmp	r2, #0
	str	r0, [r6, #12]
	blt	.L50
	sub	r0, r0, r2
	cmp	r0, #119
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L50
.L85:
	ldr	r2, [r5, #12]
	cmp	r2, #0
	beq	.L41
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L43
	b	.L42
.L83:
	cmp	r2, #0
	ble	.L36
	ldr	lr, [r8]
	ldr	ip, [r6, #12]
	add	r3, lr, r4, lsl #8
	ldrb	r10, [r3, ip]	@ zero_extendqisi2
	ldr	r1, [r6, #24]
	cmp	r10, #0
	add	r1, ip, r1
	bne	.L34
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L34
	sub	r3, r4, #1
	add	r3, lr, r3, lsl #8
	add	r10, r3, ip
	ldrb	r10, [r10, #1]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L34
	add	r3, r3, r1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L35
.L34:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #12]
	str	r3, [r5, #4]
	b	.L36
.L45:
	cmp	r2, #79
	cmpgt	r0, #0
	bgt	.L80
	cmp	r7, #0
	ble	.L47
	b	.L46
.L81:
	ldr	r4, [r6, #8]
	ldr	lr, [r8]
	ldr	r1, [r6, #12]
	sub	r3, r4, #1
	add	r3, lr, r3, lsl #8
	ldrb	r2, [r3, r1]	@ zero_extendqisi2
	ldr	r9, .L89+12
	cmp	r2, #0
	ldr	r7, [r9]
	add	r3, r3, r1
	bne	.L25
	ldr	ip, [r6, #24]
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L25
	mvn	r2, #4
	mov	r10, #1
	ldr	r5, .L89+16
	mov	r0, r3
	str	r3, [r8, #4]
	str	r2, [r5, #8]
	str	r10, [r5, #12]
	b	.L26
.L86:
	ldr	r3, .L89+48
	ldrh	r3, [r3]
	tst	r3, #64
	subeq	r0, r0, #3
	b	.L42
.L88:
	ldr	r1, .L89+44
	ldr	r2, [r1]
	add	r0, r0, #1
	cmp	r2, #240
	str	r0, [r6, #12]
	bgt	.L53
	sub	r0, r0, r2
	cmp	r0, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L53
.L27:
	ldr	r3, .L89
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L32
	b	.L55
.L90:
	.align	2
.L89:
	.word	67109120
	.word	.LANCHOR1
	.word	player
	.word	vOff
	.word	.LANCHOR0
	.word	oldButtons
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	466
	.word	hOff
	.word	buttons
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
	ldr	r3, .L102
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	beq	.L92
	ldr	r2, .L102+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L92
	mov	r2, #1
	ldr	r3, .L102+8
	str	r2, [r3, #20]
.L94:
	b	updatePlayer
.L92:
	cmp	r3, #0
	beq	.L94
	ldr	r3, .L102+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L102+8
	streq	r2, [r3, #20]
	b	.L94
.L103:
	.align	2
.L102:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
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
	ldr	r3, .L115
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L105
	ldr	r2, .L115+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L105:
	ldr	r1, .L115+8
	ldr	r2, .L115+12
	ldr	ip, [r1]
	ldr	r1, [r3, #12]
	ldr	r0, [r2]
	sub	r1, r1, ip
	ldr	r2, [r3, #8]
	ldr	ip, .L115+16
	lsl	r1, r1, #23
	sub	r2, r2, r0
	lsr	r1, r1, #23
	and	r0, ip, #32768
	str	lr, [sp, #-4]!
	orr	r1, r0, r1
	ldr	lr, [r3, #56]
	ldr	r0, .L115+4
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
.L116:
	.align	2
.L115:
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
	ldr	r3, .L119
	mov	lr, pc
	bx	r3
	ldr	r4, .L119+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L119+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L119+12
	ldrh	r1, [r2]
	ldr	r2, .L119+16
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L120:
	.align	2
.L119:
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
	ldr	r3, .L126
	ldr	r0, .L126+4
	ldr	r3, [r3, #8]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, r2, lsl #2
	ldr	lr, .L126+8
	eor	ip, r3, r3, asr #31
	sub	r2, r3, r2, lsl #2
	sub	ip, ip, r3, asr #31
	smull	r3, lr, r2, lr
	ldr	r3, .L126+12
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
.L127:
	.align	2
.L126:
	.word	.LANCHOR0
	.word	1374389535
	.word	1717986919
	.word	shadowOAM
	.size	drawFont, .-drawFont
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
