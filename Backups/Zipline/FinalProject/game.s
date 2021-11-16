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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bl	groundCheck
	ldr	r3, .L91
	ldrh	ip, [r3]
	ldr	r8, .L91+4
	ands	ip, ip, #64
	str	r0, [r8, #4]
	beq	.L24
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	lsr	r3, r3, #6
	eor	r3, r3, #1
	cmp	r0, #0
	moveq	r3, #0
	andne	r3, r3, #1
	ldr	r5, .L91+12
	ldr	r9, .L91+16
	cmp	r3, #0
	ldr	r4, [r5, #8]
	ldr	r7, [r9]
	bne	.L84
.L25:
	ldr	r6, .L91+20
	ldr	r2, [r6, #8]
	cmp	r2, #0
	bge	.L27
	ldr	r1, [r8]
	ldr	lr, [r5, #12]
	ldr	r10, [r5, #24]
.L26:
	add	r0, r10, lr
	add	r0, r0, r4, lsl #8
	add	r10, lr, r4, lsl #8
	mov	r3, #0
	add	r0, r1, r0
	add	r10, r1, r10
	b	.L31
.L85:
	ldrb	r1, [r0, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L28
	sub	r3, r3, #1
	cmp	r3, r2
	ble	.L30
.L31:
	ldrb	r1, [r10, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L85
.L28:
	mov	r1, #1
	mov	r2, #0
	add	r3, r3, r1
	add	r4, r4, r3
	add	r7, r7, r3
	add	lr, lr, r1
	str	r4, [r5, #8]
	str	r7, [r9]
	str	lr, [r5, #12]
	str	r2, [r6, #8]
	str	r2, [r6, #12]
	str	r2, [r6, #16]
	str	r1, [r6, #4]
.L30:
	ldr	r3, .L91+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldrne	r0, [r8, #4]
	bne	.L39
.L58:
	ldr	r3, .L91+24
	ldrh	r3, [r3, #48]
	ands	r2, r3, #16
	beq	.L33
.L38:
	ldr	r2, [r6, #8]
	ldr	r0, [r8, #4]
.L32:
	cmp	r2, #0
	ble	.L39
	add	r10, r5, #24
	ldr	lr, [r5, #12]
	ldm	r10, {r10, fp}
	add	r10, lr, r10
	add	fp, r4, fp
	add	r1, r10, fp, lsl #8
	ldr	r10, [r8]
	add	lr, lr, fp, lsl #8
	add	lr, r10, lr
	mov	r3, #0
	add	r10, r10, r1
	b	.L42
.L86:
	ldrb	r1, [r10, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L40
	add	r3, r3, #1
	cmp	r3, r2
	beq	.L39
.L42:
	ldrb	r1, [lr, r3, lsl #8]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L86
.L40:
	sub	r3, r3, #2
	add	r4, r4, r3
	add	r7, r7, r3
	str	r4, [r5, #8]
	str	r7, [r9]
.L39:
	cmp	r0, #0
	bne	.L43
	ldr	r3, .L91+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r6, #16]
	ldr	r3, [r6, #4]
	beq	.L87
.L44:
	rsbs	ip, ip, #1
	movcc	ip, #0
	cmp	r3, #0
	movne	ip, #1
	cmp	ip, #0
	beq	.L88
.L45:
	mov	r3, #0
	str	r3, [r6, #12]
.L46:
	ldr	r3, .L91+28
	mov	lr, pc
	bx	r3
	ldr	r10, .L91+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L91+36
	mov	lr, pc
	bx	r10
	ldr	r3, .L91+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r6]
	tst	r3, #3
	ldreq	r2, [r6, #16]
	addeq	r2, r2, #1
	streq	r2, [r6, #16]
	add	r4, r4, r0
	cmp	r7, #255
	str	r0, [r6, #8]
	str	r4, [r5, #8]
	sub	r2, r4, r7
	ble	.L48
.L49:
	lsr	r1, r0, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L50
.L83:
	ldr	r2, .L91+24
	ldrh	r2, [r2, #48]
	add	r0, r0, r7
	tst	r2, #32
	str	r0, [r9]
	beq	.L89
.L53:
	ldr	r2, .L91+24
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L56
	ldr	r0, [r5, #12]
	ldr	r2, [r5, #24]
	ldr	r1, [r8]
	add	r2, r0, r2
	add	r2, r2, #1
	add	ip, r1, r4, lsl #8
	ldrb	ip, [ip, r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L56
	ldr	ip, [r5, #28]
	add	r4, r4, ip
	sub	r4, r4, #1
	add	r1, r1, r4, lsl #8
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r2, .L91+44
	cmp	r0, r2
	cmple	r1, #0
	beq	.L90
.L56:
	add	r3, r3, #1
	str	r3, [r6]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L24:
	ldr	r5, .L91+12
	ldr	r9, .L91+16
	ldr	r4, [r5, #8]
	ldr	r7, [r9]
	b	.L25
.L43:
	mov	r3, #0
	str	r3, [r6, #8]
	str	r3, [r6, #16]
	str	r3, [r6, #12]
	ldr	r3, [r6]
.L50:
	ldr	r2, .L91+24
	ldrh	r2, [r2, #48]
	tst	r2, #32
	bne	.L53
.L89:
	ldr	r2, [r8]
	ldr	ip, [r5, #12]
	add	r1, r2, r4, lsl #8
	sub	r0, ip, #1
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L53
	ldr	r1, [r5, #28]
	add	r1, r4, r1
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #8
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	ip, #0
	cmpge	r2, #0
	bne	.L53
	ldr	r1, .L91+48
	ldr	r2, [r1]
	cmp	r2, #0
	str	r0, [r5, #12]
	blt	.L53
	sub	r0, r0, r2
	cmp	r0, #119
	suble	r2, r2, #1
	strle	r2, [r1]
	b	.L53
.L33:
	ldr	r0, [r5, #12]
	ldr	r3, [r8]
	add	r1, r3, r0
	ldrb	lr, [r1, r4, lsl #8]	@ zero_extendqisi2
	ldr	r1, [r5, #24]
	cmp	lr, #0
	add	r1, r0, r1
	bne	.L59
	add	r2, r3, r1
	ldrb	r2, [r2, r4, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L60
	sub	r2, r4, #1
	add	r3, r3, r2, lsl #8
	add	r2, r3, r0
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L82
	add	r3, r3, r1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L38
.L82:
	mvn	r3, #0
.L37:
	mov	r1, #1
	mov	r2, #0
	add	r3, r3, r1
	add	r0, r0, r1
	add	r4, r4, r3
	add	r7, r7, r3
	str	r0, [r5, #12]
	str	r4, [r5, #8]
	str	r7, [r9]
	str	r2, [r6, #12]
	str	r2, [r6, #16]
	str	r1, [r6, #4]
	ldr	r0, [r8, #4]
	b	.L39
.L87:
	ldr	r2, [r6, #12]
	cmp	r2, #0
	beq	.L44
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L46
	b	.L45
.L48:
	cmp	r2, #79
	cmpgt	r0, #0
	bgt	.L83
	cmp	r7, #0
	ble	.L50
	b	.L49
.L84:
	ldr	r1, [r8]
	ldr	lr, [r5, #12]
	sub	r3, r4, #1
	add	r3, r1, r3, lsl #8
	ldrb	r2, [r3, lr]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, lr
	bne	.L25
	ldr	r10, [r5, #24]
	ldrb	r3, [r3, r10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L25
	mvn	r2, #4
	mov	r0, #1
	ldr	r6, .L91+20
	str	r3, [r8, #4]
	str	r2, [r6, #8]
	str	r0, [r6, #12]
	b	.L26
.L90:
	ldr	r1, .L91+48
	ldr	r2, [r1]
	add	r0, r0, #1
	cmp	r2, #240
	str	r0, [r5, #12]
	bgt	.L56
	sub	r0, r0, r2
	cmp	r0, #120
	addgt	r2, r2, #1
	strgt	r2, [r1]
	b	.L56
.L88:
	ldr	r3, .L91+8
	ldrh	r3, [r3]
	tst	r3, #64
	subeq	r0, r0, #3
	b	.L45
.L27:
	ldr	r3, .L91+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L32
	b	.L58
.L59:
	mov	r3, r2
	b	.L37
.L60:
	mov	r3, lr
	b	.L37
.L92:
	.align	2
.L91:
	.word	oldButtons
	.word	.LANCHOR1
	.word	buttons
	.word	player
	.word	vOff
	.word	.LANCHOR0
	.word	67109120
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	466
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
	ldr	r3, .L104
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	beq	.L94
	ldr	r2, .L104+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L94
	mov	r2, #1
	ldr	r3, .L104+8
	str	r2, [r3, #20]
.L96:
	b	updatePlayer
.L94:
	cmp	r3, #0
	beq	.L96
	ldr	r3, .L104+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L104+8
	streq	r2, [r3, #20]
	b	.L96
.L105:
	.align	2
.L104:
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
	ldr	r3, .L117
	ldr	r2, [r3, #52]
	cmp	r2, #0
	beq	.L107
	ldr	r2, .L117+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L107:
	ldr	r1, .L117+8
	ldr	r2, .L117+12
	ldr	ip, [r1]
	ldr	r1, [r3, #12]
	ldr	r0, [r2]
	sub	r1, r1, ip
	ldr	r2, [r3, #8]
	ldr	ip, .L117+16
	lsl	r1, r1, #23
	sub	r2, r2, r0
	lsr	r1, r1, #23
	and	r0, ip, #32768
	str	lr, [sp, #-4]!
	orr	r1, r0, r1
	ldr	lr, [r3, #56]
	ldr	r0, .L117+4
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
.L118:
	.align	2
.L117:
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
	ldr	r3, .L121
	mov	lr, pc
	bx	r3
	ldr	r4, .L121+4
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L121+8
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L121+12
	ldrh	r1, [r2]
	ldr	r2, .L121+16
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r3, .L128
	ldr	r0, .L128+4
	ldr	r3, [r3, #8]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, r2, lsl #2
	ldr	lr, .L128+8
	eor	ip, r3, r3, asr #31
	sub	r2, r3, r2, lsl #2
	sub	ip, ip, r3, asr #31
	smull	r3, lr, r2, lr
	ldr	r3, .L128+12
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
.L129:
	.align	2
.L128:
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
