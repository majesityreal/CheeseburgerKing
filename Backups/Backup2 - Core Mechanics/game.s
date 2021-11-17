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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, #6
	mov	r5, #16
	ldr	r2, .L4
	mov	r3, #0
	mov	r1, #1
	str	r9, [r2, #48]
	mov	r6, #13
	ldr	r9, .L4+4
	mov	r4, #60
	mov	fp, #3
	mov	r10, #20
	mov	r0, #2
	str	r5, [r2, #28]
	mov	lr, #4
	str	r5, [r9, #16]
	mov	r8, #12
	mov	r7, #11
	mov	ip, #96
	mov	r5, #15
	str	fp, [r2, #20]
	str	r10, [r2, #12]
	str	r6, [r2, #24]
	str	r1, [r2, #16]
	str	r4, [r2, #8]
	str	r3, [r2, #44]
	str	r3, [r2, #36]
	str	r3, [r2, #52]
	str	r3, [r2, #32]
	str	r3, [r2, #56]
	str	r3, [r2, #60]
	str	r3, [r2, #64]
	str	r0, [r2, #68]
	ldr	r2, .L4+8
	str	r1, [r9]
	str	r1, [r2, #36]
	str	r8, [r2, #16]
	str	r7, [r2, #20]
	str	r5, [r2, #12]
	str	r6, [r9, #12]
	str	ip, [r9, #4]
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	r3, [r2, #48]
	str	lr, [r2, #32]
	str	r1, [r9, #56]
	mov	r1, #128
	ldr	r2, .L4+12
	str	r4, [r9, #8]
	str	r3, [r9, #20]
	str	r3, [r9, #32]
	str	lr, [r9, #36]
	str	r3, [r9, #24]
	str	r3, [r9, #52]
	str	ip, [r9, #64]
	str	r0, [r9, #44]
	str	r3, [r9, #40]
	str	r1, [r9, #60]
	str	r3, [r2]
	str	r3, [r2, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.word	goblin1
	.word	slash
	.word	.LANCHOR0
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
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r7, #13
	mov	r6, #16
	mov	r5, #1
	mov	r4, #3
	mov	lr, #2
	mov	ip, #60
	mov	r0, #20
	mov	r1, #6
	ldr	r3, .L8
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #68]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	ip, [r3, #8]
	str	r0, [r3, #12]
	str	r1, [r3, #48]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	player
	.size	initPlayer, .-initPlayer
	.align	2
	.global	initSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	initSlash, %function
initSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #1
	mov	lr, #12
	mov	ip, #11
	mov	r0, #15
	mov	r1, #4
	ldr	r3, .L12
	str	r4, [r3, #36]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r1, [r3, #32]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	slash
	.size	initSlash, .-initSlash
	.align	2
	.global	initEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	initEnemies, %function
initEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, #0
	mov	r0, #1
	mov	r7, #13
	mov	r6, #16
	mov	r5, #60
	mov	r4, #4
	mov	lr, #128
	mov	r1, #96
	mov	ip, #2
	ldr	r3, .L16
	str	r7, [r3, #12]
	str	r6, [r3, #16]
	str	r5, [r3, #8]
	str	r4, [r3, #36]
	str	lr, [r3, #60]
	str	r0, [r3]
	str	r0, [r3, #56]
	str	ip, [r3, #44]
	str	r1, [r3, #4]
	str	r1, [r3, #64]
	str	r2, [r3, #20]
	str	r2, [r3, #32]
	str	r2, [r3, #24]
	str	r2, [r3, #52]
	str	r2, [r3, #40]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	goblin1
	.size	initEnemies, .-initEnemies
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
	ldr	ip, .L21
	add	r1, r1, r3
	ldr	r3, [ip]
	add	r1, r1, #1
	add	r3, r3, r1, lsl #9
	ldrb	r1, [r3, r0]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r0
	bne	.L20
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L20:
	mov	r0, #1
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR1
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
	mov	r2, #0
	ldr	r3, .L59
	push	{r4, r5, r6, lr}
	ldr	r4, .L59+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r1, [r4, #40]
	str	r2, [r4, #36]
	ldr	r0, [r4, #60]
	bne	.L24
	cmp	r0, r2
	beq	.L58
	ldrh	r3, [r3, #48]
.L27:
	ldr	r3, .L59+8
	ldr	r3, [r3, #8]
	cmp	r3, #0
	movgt	r3, #3
	strgt	r3, [r4, #36]
	bgt	.L30
	movne	r3, #2
	strne	r3, [r4, #36]
.L30:
	ldr	r5, [r4, #32]
	ldr	r2, .L59+12
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r0, #0
	sub	r3, r5, r3, lsl #1
	beq	.L31
	mov	r2, #4
	cmp	r3, #0
	str	r2, [r4, #36]
	beq	.L37
.L32:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	mov	r2, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r2, [r4, #36]
	str	r2, [r4, #56]
	moveq	r2, #1
	moveq	r3, #0
	streq	r2, [r4, #36]
	streq	r3, [r4, #56]
	b	.L27
.L31:
	cmp	r3, #0
	bne	.L33
.L37:
	ldr	r0, [r4, #44]
	ldr	r1, [r4, #48]
	ldr	r3, .L59+16
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	add	r5, r5, #1
	str	r1, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L27
	cmp	r0, #0
	moveq	r2, #1
	moveq	r3, #0
	streq	r2, [r4, #36]
	streq	r3, [r4, #56]
	b	.L27
.L33:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L32
	ldr	r3, [r4, #36]
	cmp	r3, #1
	beq	.L37
	b	.L32
.L60:
	.align	2
.L59:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	1717986919
	.word	__aeabi_idivmod
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
	ldr	r1, .L78
	ldr	r3, [r1, #52]
	ldr	ip, .L78+4
	cmp	r3, #0
	ldr	r2, [ip, #4]
	beq	.L62
	ldr	r0, .L78+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [r0, r1]	@ movhi
	str	r2, [ip, #4]
	bx	lr
.L62:
	ldr	r0, .L78+12
	push	{r4, r5, r6, lr}
	ldr	lr, [r0]
	ldr	r0, .L78+16
	ldr	r3, [r1, #12]
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	sub	r3, r3, lr
	sub	r0, r0, r4
	ldr	lr, .L78+8
	ldr	r6, [r1, #56]
	lsl	r3, r3, #23
	and	r0, r0, #255
	lsr	r3, r3, #23
	lsl	r4, r2, #3
	orr	r3, r3, #16384
	add	r5, lr, r2, lsl #3
	cmp	r6, #0
	strh	r0, [lr, r4]	@ movhi
	ldr	r0, [r1, #36]
	strh	r3, [r5, #2]	@ movhi
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #44]
	cmp	r0, #4
	ldrls	pc, [pc, r0, asl #2]
	b	.L65
.L67:
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L66
.L66:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, lr, r4
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
.L63:
	add	r2, r2, #1
	str	r2, [ip, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L71:
	lsl	r3, r3, #1
	rsbs	r0, r3, #0
	and	r0, r0, #3
	and	r1, r3, #3
	rsbpl	r1, r0, #0
	add	r3, lr, r4
	lsl	r1, r1, #1
	strh	r1, [r3, #4]	@ movhi
	b	.L63
.L70:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L63
.L69:
	ldr	r1, .L78+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	r3, lr, r4
	lsl	r1, r1, #1
	strh	r1, [r3, #4]	@ movhi
	b	.L63
.L68:
	ldr	r1, .L78+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	r3, lr, r4
	lsl	r1, r1, #1
	strh	r1, [r3, #4]	@ movhi
	b	.L63
.L65:
	add	r1, r3, r0, lsl #5
	lsl	r1, r1, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L63
.L79:
	.align	2
.L78:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawPlayer, .-drawPlayer
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L92
	ldr	r3, [r4, #40]
	cmp	r3, #0
	ldr	r1, .L92+4
	beq	.L81
	ldr	r3, [r1, #60]
	cmp	r3, #0
	streq	r3, [r4, #40]
.L81:
	ldr	r5, [r4, #8]
	ldr	lr, [r1, #12]
	sub	lr, lr, r5
	ldr	r3, [r4, #60]
	eor	r6, lr, lr, asr #31
	ldr	r0, .L92+8
	ldr	ip, [r4, #4]
	ldr	r2, [r4, #16]
	sub	r6, r6, lr, asr #31
	cmp	r6, r3
	add	r2, ip, r2
	ldr	r3, [r0]
	ldr	r0, [r4, #12]
	bge	.L82
	ldr	r1, [r1, #8]
	sub	r1, r1, ip
	cmp	r1, #0
	ldr	r6, [r4, #64]
	rsblt	r1, r1, #0
	cmp	r1, r6
	blt	.L90
.L82:
	add	r2, r2, #1
	add	r3, r3, r5
	ldrb	r1, [r3, r2, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r2, lsl #9
	bne	.L84
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	addeq	r3, ip, #1
	streq	r3, [r4, #4]
.L84:
	ldr	r5, [r4, #20]
	ldr	r3, .L92+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L85
	ldr	r0, [r4, #32]
	ldr	r3, .L92+16
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L85:
	add	r5, r5, #1
	str	r5, [r4, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L90:
	ldr	r1, .L92+20
	ldr	r1, [r1]
	tst	r1, #1
	bne	.L82
	cmp	lr, #0
	ldr	r1, [r4, #56]
	blt	.L91
	add	r1, r5, r1
	add	lr, r1, r0
	add	r6, r3, lr
	ldrb	r6, [r6, ip, lsl #9]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L82
	add	r6, r3, r2, lsl #9
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	cmp	lr, #0
	moveq	r5, r1
	streq	r1, [r4, #8]
	b	.L82
.L91:
	sub	r1, r5, r1
	add	lr, r3, r1
	ldrb	lr, [lr, ip, lsl #9]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L82
	add	lr, r3, r2, lsl #9
	ldrb	lr, [lr, r1]	@ zero_extendqisi2
	cmp	lr, #0
	moveq	r5, r1
	streq	r1, [r4, #8]
	b	.L82
.L93:
	.align	2
.L92:
	.word	goblin1
	.word	player
	.word	.LANCHOR1
	.word	1717986919
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.size	updateEnemies, .-updateEnemies
	.global	__aeabi_fmul
	.global	__aeabi_fsub
	.align	2
	.global	Q_rsqrt
	.syntax unified
	.arm
	.fpu softvfp
	.type	Q_rsqrt, %function
Q_rsqrt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L96
	ldr	r5, .L96+4
	sub	r4, r4, r0, asr #1
	mov	r1, #1056964608
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	lr, pc
	bx	r5
	mov	r1, r4
	mov	lr, pc
	bx	r5
	ldr	r3, .L96+8
	mov	r1, r0
	mov	r0, #1069547520
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	1597463007
	.word	__aeabi_fmul
	.word	__aeabi_fsub
	.size	Q_rsqrt, .-Q_rsqrt
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L101
	ldr	r3, .L101+4
	ldr	r4, [r5, #20]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L99
	ldr	r0, [r5, #32]
	ldr	r3, .L101+8
	ldr	r1, [r5, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L99:
	add	r4, r4, #1
	str	r4, [r5, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L102:
	.align	2
.L101:
	.word	goblin1
	.word	1717986919
	.word	__aeabi_idivmod
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
	ldr	r1, .L113
	ldr	r3, [r1]
	ldr	r0, .L113+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	bne	.L104
	ldr	ip, .L113+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L104:
	ldr	ip, .L113+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #8]
	ldr	lr, [ip]
	ldr	ip, .L113+16
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r1, #52]
	ldr	ip, .L113+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r5, ip, r2, lsl #3
	orr	r3, r3, #16384
	cmp	r6, #0
	strh	r3, [r5, #2]	@ movhi
	ldr	lr, [r1, #4]
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #32]
	sub	lr, lr, r4
	and	lr, lr, #255
	lsl	r4, r2, #3
	add	r3, r3, #73
	strh	lr, [ip, r4]	@ movhi
	lsl	r3, r3, #1
	add	ip, ip, r4
	add	r2, r2, #1
	strh	r3, [ip, #4]	@ movhi
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L114:
	.align	2
.L113:
	.word	goblin1
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawEnemies, .-drawEnemies
	.align	2
	.global	animateSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateSlash, %function
animateSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L125
	ldr	r3, [r2, #24]
	cmp	r3, #6
	beq	.L118
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L118
	cmp	r3, #18
	bne	.L117
.L118:
	ldr	r1, [r2, #28]
	add	r1, r1, #1
	str	r1, [r2, #28]
.L117:
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L126:
	.align	2
.L125:
	.word	slash
	.size	animateSlash, .-animateSlash
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r5, .L205
	ldr	r8, .L205+4
	ldr	r3, [r5, #28]
	ldr	r6, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	ip, [r8]
	sub	sp, sp, #36
	str	r3, [sp, #28]
	add	r3, r6, r3
	add	r3, r3, #1
	add	lr, ip, r2
	ldrb	r1, [lr, r3, lsl #9]	@ zero_extendqisi2
	ldr	r9, .L205+8
	cmp	r1, #0
	ldr	fp, [r5, #24]
	ldr	r7, [r9]
	bne	.L128
	add	r1, lr, fp
	ldrb	r3, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L128
	str	r3, [r8, #4]
	str	r3, [sp, #16]
	ldr	r3, .L205+12
	ldr	r4, .L205+16
	str	r3, [sp, #20]
	b	.L129
.L128:
	mov	r3, #1
	mov	r1, #0
	ldr	r0, .L205+12
	str	r0, [sp, #20]
	ldrh	r0, [r0]
	ldr	r4, .L205+16
	tst	r0, #64
	str	r3, [r8, #4]
	str	r1, [r4, #12]
	bne	.L200
.L168:
	str	r3, [sp, #16]
.L129:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	str	r3, [sp, #24]
	bge	.L131
.L130:
	mov	r3, #0
	add	r0, fp, r2
	add	r0, r0, r6, lsl #9
	add	r1, r2, r6, lsl #9
	add	r0, ip, r0
	add	r1, ip, r1
.L133:
	ldrb	r10, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L132
	ldrb	r10, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r10, #0
	bne	.L132
	ldr	r10, [sp, #24]
	sub	r3, r3, #1
	cmp	r3, r10
	bgt	.L133
.L131:
	ldr	r3, .L205+20
	ldrh	r1, [r3, #48]
	tst	r1, #64
	bne	.L134
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L134
	ldr	r3, [r4, #8]
	cmp	r3, #0
	ble	.L135
	sub	lr, lr, #1020
	sub	lr, lr, #2
	add	r1, r2, r6, lsl #9
	add	lr, lr, r6, lsl #9
	add	r0, ip, r1
.L137:
	ldrb	r1, [r0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L136
	ldrb	r1, [r0, fp]	@ zero_extendqisi2
	sub	r0, r0, #508
	cmp	r1, #0
	sub	r0, r0, #3
	bne	.L136
	cmp	lr, r0
	bne	.L137
	ldr	r1, [sp, #16]
	cmp	r1, #0
	beq	.L144
.L164:
	mov	r3, #0
	ldr	r0, [r4]
	str	r3, [r4, #8]
	str	r3, [r4, #20]
	str	r3, [r4, #16]
.L153:
	ldr	r3, .L205+24
	ldr	r1, [r5, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r2, [r5, #12]
	bne	.L156
	ldr	r3, .L205+20
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L157
	ldr	ip, [r5, #20]
	ldr	r3, [r8]
	sub	r0, r2, ip
	add	r1, r3, r6, lsl #9
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L157
	ldr	r1, [r5, #28]
	add	r1, r6, r1
	sub	r1, r1, #1
	add	r3, r3, r1, lsl #9
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r2, #0
	cmpge	r3, #0
	bne	.L157
	ldr	r2, .L205+28
	ldr	r3, [r2]
	cmp	r3, #0
	str	r0, [r5, #12]
	blt	.L170
	sub	r1, r0, r3
	cmp	r1, #119
	bgt	.L170
	sub	r3, r3, ip
	str	r3, [r2]
	mov	r2, r0
.L157:
	ldr	r3, .L205+20
	ldrh	r3, [r3, #48]
	tst	r3, #16
	beq	.L201
.L156:
	ldr	r3, [r5, #56]
	ldr	r7, .L205+32
	rsb	r3, r3, r3, lsl #31
	ldr	r1, [r7, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r1, r3, r2
	str	r6, [r7]
	str	r3, [r7, #4]
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	bgt	.L202
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r7, #36]
.L162:
	ldr	r3, [sp, #20]
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L163
	ldr	r3, .L205+36
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L163
	ldr	r3, [r5, #60]
	cmp	r3, #0
	bne	.L163
	mov	r1, #1
	mov	r2, #20
	str	r3, [r5, #44]
	str	r3, [r7, #36]
	str	r3, [r7, #28]
	str	r3, [r7, #24]
	str	r1, [r5, #60]
	str	r2, [r5, #64]
.L163:
	ldr	r3, [r4]
	add	r3, r3, #1
	str	r3, [r4]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L134:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L164
	ldr	r3, [r4, #8]
	cmp	r3, #0
	ble	.L143
.L144:
	mov	r1, #0
	ldr	r0, [sp, #28]
	add	lr, fp, r2
	add	r0, r0, r6
	add	r2, r2, r0, lsl #9
	add	r0, lr, r0, lsl #9
	add	r2, ip, r2
	add	ip, ip, r0
.L142:
	ldrb	r0, [r2, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L141
	ldrb	r0, [ip, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L141
	add	r1, r1, #1
	cmp	r1, r3
	blt	.L142
.L143:
	ldr	r3, .L205+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r3, [r4, #12]
	bne	.L145
	ldr	r2, [r4, #16]
	cmp	r2, #0
	bne	.L203
.L145:
	cmp	r3, #0
	bne	.L204
	ldr	r3, .L205+20
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldrne	r0, [r4, #20]
	ldreq	r0, [r4, #8]
	subne	r0, r0, #3
.L149:
	mov	r3, #0
	str	r3, [r4, #16]
.L147:
	ldr	r3, .L205+40
	mov	lr, pc
	bx	r3
	ldr	r10, .L205+44
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L205+48
	mov	lr, pc
	bx	r10
	ldr	r3, .L205+52
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r4]
	tst	r0, #3
	ldreq	r2, [r4, #20]
	addeq	r2, r2, #1
	streq	r2, [r4, #20]
	ldr	r2, [sp, #16]
	cmp	r2, #0
	str	r3, [r4, #8]
	bne	.L164
	add	r6, r6, r3
	cmp	r7, #255
	str	r6, [r5, #8]
	sub	r2, r6, r7
	ble	.L197
.L154:
	lsr	r1, r3, #31
	cmp	r2, #80
	movgt	r2, #0
	andle	r2, r1, #1
	cmp	r2, #0
	beq	.L153
.L199:
	add	r7, r3, r7
	str	r7, [r9]
	b	.L153
.L132:
	mov	r0, #1
	mov	r1, #0
	add	r3, r3, r0
	add	r6, r6, r3
	add	r7, r7, r3
	str	r6, [r5, #8]
	str	r7, [r9]
	str	r1, [r4, #8]
	str	r1, [r4, #16]
	str	r1, [r4, #20]
	str	r0, [r4, #12]
	b	.L131
.L200:
	ldr	r1, .L205+36
	ldrh	r1, [r1]
	tst	r1, #64
	bne	.L168
	sub	r1, r6, #1
	ldrb	r0, [lr, r1, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L168
	add	r0, lr, fp
	ldrb	r1, [r0, r1, lsl #9]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L168
	mvn	r0, #4
	str	r1, [r8, #4]
	str	r3, [r4, #16]
	str	r1, [sp, #16]
	str	r0, [r4, #8]
	str	r0, [sp, #24]
	b	.L130
.L201:
	ldr	r3, [r5, #24]
	ldr	r1, [r8]
	ldr	ip, [r5, #20]
	add	r3, r2, r3
	add	r3, r3, ip
	add	r0, r1, r6, lsl #9
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L156
	ldr	r0, [r5, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #9
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	ldr	r3, .L205+56
	cmp	r2, r3
	cmple	r1, #0
	bne	.L156
	ldr	r1, .L205+28
	ldr	r3, [r1]
	add	r2, r2, ip
	cmp	r3, #240
	str	r2, [r5, #12]
	bgt	.L156
	sub	r0, r2, r3
	cmp	r0, #120
	addgt	ip, ip, r3
	strgt	ip, [r1]
	b	.L156
.L141:
	mov	r3, #1
	mov	r2, #0
	sub	r1, r1, #1
	add	r6, r6, r1
	add	r7, r7, r1
	str	r6, [r5, #8]
	str	r7, [r9]
	str	r2, [r4, #8]
	str	r3, [r8, #4]
	str	r3, [sp, #16]
	b	.L143
.L202:
	ldr	r6, .L205+60
	ldmib	r6, {r2, r3}
	ldr	r0, [r6, #16]
	ldr	r1, [r6, #12]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r7, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r8, .L205+64
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L160
	ldr	r2, [r6, #40]
	cmp	r2, #0
	bne	.L160
	mov	r1, #1
	ldr	r3, [r6, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r6, #44]
	str	r1, [r6, #40]
	strlt	r2, [r6]
.L160:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
	b	.L162
.L197:
	cmp	r2, #79
	cmpgt	r3, #0
	bgt	.L199
	cmp	r7, #0
	ble	.L153
	b	.L154
.L203:
	ldr	r0, [r4, #20]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L147
	b	.L149
.L136:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r4, #8]
	str	r3, [r4, #16]
	str	r2, [r4, #12]
.L135:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L164
	b	.L143
.L204:
	ldr	r0, [r4, #20]
	b	.L149
.L170:
	mov	r2, r0
	b	.L157
.L206:
	.align	2
.L205:
	.word	player
	.word	.LANCHOR1
	.word	vOff
	.word	oldButtons
	.word	.LANCHOR0
	.word	67109120
	.word	__aeabi_idivmod
	.word	hOff
	.word	slash
	.word	buttons
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	722
	.word	goblin1
	.word	collision
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
	ldr	r3, .L219
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L208
	ldr	r2, .L219+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L208
	mov	r2, #1
	ldr	r3, .L219+8
	str	r2, [r3, #24]
.L210:
	bl	updatePlayer
	pop	{r4, lr}
	b	updateEnemies
.L208:
	cmp	r3, #0
	beq	.L210
	ldr	r3, .L219+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L219+8
	streq	r2, [r3, #24]
	b	.L210
.L220:
	.align	2
.L219:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
	.align	2
	.global	drawSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSlash, %function
drawSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L231
	ldr	r3, [r1, #36]
	ldr	r0, .L231+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L222
	ldr	ip, .L231+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L222:
	ldr	ip, .L231+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L231+16
	ldr	ip, .L231+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L231+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r5, ip, r2, lsl #3
	orr	r3, r3, #16384
	cmp	r6, #0
	strh	r3, [r5, #2]	@ movhi
	ldr	lr, [r1]
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #28]
	sub	lr, lr, r4
	and	lr, lr, #255
	lsl	r4, r2, #3
	add	r3, r3, #132
	strh	lr, [ip, r4]	@ movhi
	lsl	r3, r3, #1
	add	ip, ip, r4
	add	r2, r2, #1
	strh	r3, [ip, #4]	@ movhi
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L232:
	.align	2
.L231:
	.word	slash
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	player
	.word	vOff
	.size	drawSlash, .-drawSlash
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
	mov	r2, #0
	ldr	r3, .L235
	push	{r4, lr}
	str	r2, [r3, #4]
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	ldr	r3, .L235+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L235+8
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L235+12
	mov	lr, pc
	bx	r4
	mov	r2, #67108864
	ldr	r1, .L235+16
	ldr	r3, .L235+20
	ldr	r1, [r1]
	smull	r0, r3, r1, r3
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	strh	r0, [r2, #20]	@ movhi
	ldr	r0, .L235+24
	sub	r3, r3, r1, asr #31
	lsl	r3, r3, #16
	ldrh	r1, [r0]
	lsr	r3, r3, #16
	strh	r1, [r2, #22]	@ movhi
	pop	{r4, lr}
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L236:
	.align	2
.L235:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	1431655766
	.word	vOff
	.size	drawGame, .-drawGame
	.align	2
	.global	checkCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	checkCollision, %function
checkCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L238
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #9
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L239:
	.align	2
.L238:
	.word	.LANCHOR1
	.size	checkCollision, .-checkCollision
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
	ldr	r3, .L242
	ldr	r0, .L242+4
	ldr	r3, [r3, #8]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, r2, lsl #2
	ldr	lr, .L242+8
	eor	ip, r3, r3, asr #31
	sub	r2, r3, r2, lsl #2
	sub	ip, ip, r3, asr #31
	smull	r3, lr, r2, lr
	ldr	r3, .L242+12
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
.L243:
	.align	2
.L242:
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
	.global	shadowOAMIndex
	.comm	goblin1,68,4
	.comm	slash,52,4
	.comm	player,72,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	map2CollisionBitmap
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
	.type	shadowOAMIndex, %object
	.size	shadowOAMIndex, 4
shadowOAMIndex:
	.space	4
	.type	yVel, %object
	.size	yVel, 4
yVel:
	.space	4
	.type	jumpThud, %object
	.size	jumpThud, 4
jumpThud:
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
