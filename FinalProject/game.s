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
	ldr	r2, .L28
	push	{r4, r5, r6, lr}
	ldr	r5, .L28+4
	ldr	r3, [r2]
	ldr	lr, [r5, #8]
	ldr	r1, [r5, #28]
	cmp	r3, #0
	ldr	r4, [r2, #4]
	ldr	r6, [r5, #12]
	add	lr, lr, r1
	ble	.L20
	ldr	ip, [r5, #24]
	add	ip, r6, ip
	add	ip, ip, lr, lsl #8
	add	r1, r6, lr, lsl #8
	add	ip, r4, ip
	add	r1, r4, r1
.L23:
	ldrb	r2, [r1, r3, lsl #8]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L21
	ldrb	r0, [ip, r3, lsl #8]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L19
.L21:
	subs	r3, r3, #1
	bne	.L23
.L20:
	add	lr, lr, #1
	add	lr, r4, lr, lsl #8
	ldrb	r3, [lr, r6]	@ zero_extendqisi2
	cmp	r3, #0
	movne	r0, #1
	add	lr, lr, r6
	bne	.L19
	ldr	r3, [r5, #24]
	ldrb	r0, [lr, r3]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L19:
	pop	{r4, r5, r6, lr}
	bx	lr
.L29:
	.align	2
.L28:
	.word	.LANCHOR1
	.word	pacman
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
	ldr	lr, .L58
	ldr	ip, .L58+4
	cmp	r0, #0
	str	r0, [lr, #4]
	ldr	r1, [ip, #8]
	ldr	r0, [lr]
	bne	.L31
	ldr	r4, .L58+8
	ldr	r3, [r4]
	tst	r0, #3
	addeq	r3, r3, #1
	streq	r3, [r4]
	add	r1, r1, r3
.L33:
	ldr	r5, .L58+12
	ldr	r2, [r5]
	cmp	r2, #255
	str	r1, [ip, #8]
	sub	r6, r1, r2
	ble	.L55
	cmp	r6, #80
	ble	.L35
.L36:
	ldr	r3, .L58+16
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L38
	ldr	r3, [r4, #4]
	ldr	r6, [ip, #12]
	add	r2, r3, r1, lsl #8
	sub	r5, r6, #1
	ldrb	r2, [r2, r5]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L56
.L38:
	ldr	r3, .L58+16
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L41
	ldr	r5, [ip, #12]
	ldr	r3, [ip, #24]
	ldr	r2, [r4, #4]
	add	r3, r5, r3
	add	r3, r3, #1
	add	r4, r2, r1, lsl #8
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L41
	ldr	r4, [ip, #28]
	add	r1, r1, r4
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #8
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldr	r3, .L58+20
	cmp	r5, r3
	cmple	r2, #0
	beq	.L57
.L41:
	add	r0, r0, #1
	str	r0, [lr]
	pop	{r4, r5, r6, lr}
	bx	lr
.L31:
	mov	r5, #0
	ldr	r3, .L58+24
	ldrh	r2, [r3]
	ldr	r4, .L58+8
	ands	r3, r2, #64
	str	r5, [r4]
	beq	.L33
	ldr	r3, .L58+28
	ldrh	r2, [r3]
	ands	r3, r2, #64
	bne	.L46
	ldr	r5, [r4, #4]
	ldr	r6, [ip, #12]
	sub	r2, r1, #1
	add	r2, r5, r2, lsl #8
	ldrb	r5, [r2, r6]	@ zero_extendqisi2
	cmp	r5, #0
	add	r2, r2, r6
	bne	.L33
	ldr	r3, [ip, #24]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L46
	mvn	r3, #3
	str	r2, [lr, #4]
	str	r3, [r4]
	add	r1, r1, r3
	b	.L33
.L56:
	ldr	r2, [ip, #28]
	add	r2, r1, r2
	sub	r2, r2, #1
	add	r3, r3, r2, lsl #8
	ldrb	r3, [r3, r5]	@ zero_extendqisi2
	cmp	r6, #0
	cmpge	r3, #0
	bne	.L38
	ldr	r2, .L58+32
	ldr	r3, [r2]
	cmp	r3, #0
	str	r5, [ip, #12]
	blt	.L38
	sub	r5, r5, r3
	cmp	r5, #119
	suble	r3, r3, #1
	strle	r3, [r2]
	b	.L38
.L55:
	cmp	r6, #79
	bgt	.L35
	cmp	r2, #0
	ble	.L36
.L35:
	add	r3, r2, r3
	str	r3, [r5]
	b	.L36
.L46:
	mov	r3, r5
	b	.L33
.L57:
	ldr	r2, .L58+32
	ldr	r3, [r2]
	add	r5, r5, #1
	cmp	r3, #240
	str	r5, [ip, #12]
	bgt	.L41
	sub	r5, r5, r3
	cmp	r5, #120
	addgt	r3, r3, #1
	strgt	r3, [r2]
	b	.L41
.L59:
	.align	2
.L58:
	.word	.LANCHOR0
	.word	pacman
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
	@ link register save eliminated.
	ldr	r3, .L71
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	beq	.L61
	ldr	r2, .L71+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L61
	mov	r2, #1
	ldr	r3, .L71+8
	str	r2, [r3, #8]
.L63:
	b	updatePlayer
.L61:
	cmp	r3, #0
	beq	.L63
	ldr	r3, .L71+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L71+8
	streq	r2, [r3, #8]
	b	.L63
.L72:
	.align	2
.L71:
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
	ldr	r4, .L86
	ldr	r3, .L86+4
	ldr	r5, [r4, #32]
	smull	r0, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	ldr	r6, [r4, #36]
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	str	r6, [r4, #40]
	str	r1, [r4, #36]
	bne	.L74
	ldr	r0, [r4, #44]
	ldr	r3, .L86+8
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L74:
	ldr	r3, .L86+12
	ldrh	r3, [r3, #48]
	tst	r3, #64
	moveq	r3, #1
	streq	r3, [r4, #36]
	ldr	r3, .L86+12
	ldrh	r3, [r3, #48]
	ands	r3, r3, #128
	streq	r3, [r4, #36]
	ldr	r3, .L86+12
	ldrh	r2, [r3, #48]
	tst	r2, #32
	bne	.L77
	mov	r2, #3
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	bne	.L79
.L80:
	mov	r3, #2
	str	r3, [r4, #36]
.L79:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L77:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L80
	ldr	r3, [r4, #36]
	cmp	r3, #4
	bne	.L79
	mov	r3, #0
	str	r6, [r4, #36]
	str	r3, [r4, #44]
	str	r3, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L87:
	.align	2
.L86:
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
	ldr	r3, .L92
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L89
	ldr	r2, .L92+4
	ldrh	r3, [r2]
	orr	r3, r3, #512
	strh	r3, [r2]	@ movhi
	bx	lr
.L89:
	b	drawPlayer.part.0
.L93:
	.align	2
.L92:
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
	ldr	r3, .L96
	ldr	r1, .L96+4
	ldr	r0, [r3, #12]
	smull	r3, r1, r0, r1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	asr	ip, r0, #31
	ldr	lr, .L96+8
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
	ldr	fp, .L96+12
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
.L97:
	.align	2
.L96:
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
	.type	yVel, %object
	.size	yVel, 4
yVel:
	.word	1
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	marioMapCollisionMapBitmap
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
