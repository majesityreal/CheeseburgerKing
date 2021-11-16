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
	push	{r4, lr}
	mov	r0, #8
	mov	r4, #60
	mov	lr, #90
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L7
	str	r2, [r3]
	ldr	r3, .L7+4
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #48]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
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
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #60
	mov	lr, #90
	mov	r0, #8
	mov	r1, #1
	mov	ip, #3
	ldr	r3, .L11
	str	r4, [r3, #8]
	str	lr, [r3, #12]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	ip, [r3, #48]
	str	r0, [r3, #24]
	str	r0, [r3, #28]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, lr}
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
	ldr	r1, .L22
	ldr	r3, .L22+4
	ldr	r0, [r1, #28]
	ldr	r2, [r1, #8]
	ldr	r3, [r3]
	add	r2, r2, r0
	add	r2, r2, #1
	ldr	r0, [r1, #12]
	add	r3, r3, r2, lsl #8
	ldrb	r2, [r3, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r0
	bne	.L21
	ldr	r2, [r1, #24]
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L21:
	mov	r0, #1
	bx	lr
.L23:
	.align	2
.L22:
	.word	pacman
	.word	.LANCHOR1
	.size	groundCheck, .-groundCheck
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
	push	{r4, r5, r6, lr}
	bl	groundCheck
	ldr	lr, .L51
	ldr	ip, .L51+4
	cmp	r0, #0
	str	r0, [lr, #4]
	ldr	r1, [ip, #8]
	bne	.L25
	ldr	r3, [lr]
	add	r3, r3, r3, lsl #4
	ldr	r2, .L51+8
	add	r3, r3, r3, lsl #8
	ldr	r0, .L51+12
	add	r3, r3, r3, lsl #16
	sub	r3, r2, r3
	cmp	r2, r3, ror #1
	ldr	r3, [r0, #4]
	addcs	r3, r3, #1
	strcs	r3, [r0, #4]
	add	r1, r1, r3
.L27:
	ldr	lr, .L51+16
	ldr	r2, [lr]
	cmp	r2, #255
	str	r1, [ip, #8]
	sub	r4, r1, r2
	ble	.L48
	cmp	r4, #80
	ble	.L29
.L30:
	ldr	r3, .L51+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L32
	ldr	r3, [r0]
	ldr	lr, [ip, #12]
	add	r4, r3, r1, lsl #8
	sub	r2, lr, #1
	ldrb	r4, [r4, r2]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L49
.L32:
	ldr	r3, .L51+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L24
	ldr	lr, [ip, #12]
	ldr	r3, [ip, #24]
	ldr	r2, [r0]
	add	r3, lr, r3
	add	r3, r3, #1
	add	r0, r2, r1, lsl #8
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L24
	ldr	r0, [ip, #28]
	add	r1, r1, r0
	add	r2, r2, r1, lsl #8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L51+24
	cmp	lr, r3
	cmple	r2, #0
	beq	.L50
.L24:
	pop	{r4, r5, r6, lr}
	bx	lr
.L25:
	mov	r4, #0
	ldr	r3, .L51+28
	ldrh	r2, [r3]
	ldr	r0, .L51+12
	ands	r3, r2, #64
	str	r4, [r0, #4]
	beq	.L27
	ldr	r3, .L51+32
	ldrh	r2, [r3]
	ands	r3, r2, #64
	bne	.L40
	ldr	r4, [r0]
	ldr	r5, [ip, #12]
	sub	r2, r1, #1
	add	r2, r4, r2, lsl #8
	ldrb	r4, [r2, r5]	@ zero_extendqisi2
	cmp	r4, #0
	add	r2, r2, r5
	bne	.L27
	ldr	r3, [ip, #24]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L40
	mvn	r3, #3
	str	r2, [lr, #4]
	str	r3, [r0, #4]
	add	r1, r1, r3
	b	.L27
.L49:
	ldr	r4, [ip, #28]
	add	r4, r1, r4
	add	r3, r3, r4, lsl #8
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	lr, #0
	cmpge	r3, #0
	bne	.L32
	ldr	lr, .L51+36
	ldr	r3, [lr]
	cmp	r3, #0
	str	r2, [ip, #12]
	blt	.L32
	sub	r2, r2, r3
	cmp	r2, #119
	suble	r3, r3, #1
	strle	r3, [lr]
	b	.L32
.L48:
	cmp	r4, #79
	bgt	.L29
	cmp	r2, #0
	ble	.L30
.L29:
	add	r3, r2, r3
	str	r3, [lr]
	b	.L30
.L40:
	mov	r3, r4
	b	.L27
.L50:
	ldr	r2, .L51+36
	ldr	r3, [r2]
	add	lr, lr, #1
	cmp	r3, #240
	str	lr, [ip, #12]
	bgt	.L24
	sub	lr, lr, r3
	cmp	lr, #120
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L24
.L52:
	.align	2
.L51:
	.word	.LANCHOR0
	.word	pacman
	.word	143165576
	.word	.LANCHOR1
	.word	vOff
	.word	67109120
	.word	466
	.word	oldButtons
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
	ldr	r3, .L69
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L54
	ldr	r2, .L69+4
	ldrh	r2, [r2]
	tst	r2, #8
	moveq	r3, #1
	ldreq	r4, .L69+8
	streq	r3, [r4, #8]
	beq	.L56
.L54:
	cmp	r3, #0
	bne	.L57
.L67:
	ldr	r4, .L69+8
.L56:
	bl	updatePlayer
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	pop	{r4, lr}
	bx	lr
.L57:
	ldr	r3, .L69+4
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L67
	mov	r3, #1
	ldr	r4, .L69+8
	str	r3, [r4, #8]
	b	.L56
.L70:
	.align	2
.L69:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
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
	ldr	r4, .L84
	ldr	r3, .L84+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L72
	ldr	r0, [r4, #44]
	ldr	r3, .L84+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L72:
	ldr	r3, .L84+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L84+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L84+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L75
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	bne	.L77
.L78:
	mov	r3, #2
	str	r3, [r4, #36]
.L77:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L75:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L78
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L77
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L85:
	.align	2
.L84:
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
	ldr	r3, .L90
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L87
	ldr	r2, .L90+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L87:
	b	drawPlayer.part.0
.L91:
	.align	2
.L90:
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
	ldr	r3, .L94
	ldr	r1, .L94+4
	ldr	r0, [r3, #12]
	smull	r3, r1, r0, r1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	asr	ip, r0, #31
	ldr	lr, .L94+8
	rsb	r1, ip, r1, asr #5
	smull	r3, fp, lr, r0
	add	r3, r1, r1, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r0, r3, lsl #2
	smull	r4, lr, r3, lr
	asr	r3, r3, #31
	rsb	lr, r3, lr, asr #2
	mov	r3, #45	@ movhi
	rsb	ip, ip, fp, asr #2
	ldr	fp, .L94+12
	strh	r3, [fp, #44]	@ movhi
	mov	r3, #32	@ movhi
	strh	r3, [fp, #50]	@ movhi
	mov	r3, #46	@ movhi
	strh	r3, [fp, #52]	@ movhi
	mov	r3, #40	@ movhi
	strh	r3, [fp, #58]	@ movhi
	mov	r3, #48	@ movhi
	mov	r2, #0
	mov	r10, #42
	mov	r9, #8
	mov	r8, #43
	mov	r7, #16
	mov	r6, #44
	mov	r5, #24
	strh	r3, [fp, #66]	@ movhi
	mov	r3, #56	@ movhi
	add	ip, ip, ip, lsl #2
	sub	ip, r0, ip, lsl #1
	add	lr, lr, #10
	add	ip, ip, #10
	add	r1, r1, #10
	strh	ip, [fp, #76]	@ movhi
	strh	lr, [fp, #68]	@ movhi
	strh	r1, [fp, #60]	@ movhi
	strh	r10, [fp, #20]	@ movhi
	strh	r9, [fp, #26]	@ movhi
	strh	r8, [fp, #28]	@ movhi
	strh	r7, [fp, #34]	@ movhi
	strh	r6, [fp, #36]	@ movhi
	strh	r5, [fp, #42]	@ movhi
	strh	r3, [fp, #74]	@ movhi
	strh	r2, [fp, #16]	@ movhi
	strh	r2, [fp, #18]	@ movhi
	strh	r2, [fp, #24]	@ movhi
	strh	r2, [fp, #32]	@ movhi
	strh	r2, [fp, #40]	@ movhi
	strh	r2, [fp, #48]	@ movhi
	strh	r2, [fp, #56]	@ movhi
	strh	r2, [fp, #64]	@ movhi
	strh	r2, [fp, #72]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L95:
	.align	2
.L94:
	.word	.LANCHOR0
	.word	1374389535
	.word	1717986919
	.word	shadowOAM
	.size	drawFont, .-drawFont
	.global	gTimer
	.global	yVel
	.global	grounded
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	pauseVar
	.global	blueTimer
	.global	blueMode
	.global	lives
	.global	level
	.global	pelletsEaten
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
	.word	collisionMapBitmap
	.type	yVel, %object
	.size	yVel, 4
yVel:
	.word	1
	.type	lives, %object
	.size	lives, 4
lives:
	.word	3
	.type	level, %object
	.size	level, 4
level:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gTimer, %object
	.size	gTimer, 4
gTimer:
	.space	4
	.type	grounded, %object
	.size	grounded, 4
grounded:
	.space	4
	.type	pauseVar, %object
	.size	pauseVar, 4
pauseVar:
	.space	4
	.type	score, %object
	.size	score, 4
score:
	.space	4
	.type	blueTimer, %object
	.size	blueTimer, 4
blueTimer:
	.space	4
	.type	blueMode, %object
	.size	blueMode, 4
blueMode:
	.space	4
	.type	pelletsEaten, %object
	.size	pelletsEaten, 4
pelletsEaten:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
