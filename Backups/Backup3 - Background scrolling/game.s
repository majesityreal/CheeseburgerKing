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
	.global	initPlayer
	.arch armv4t
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
	mov	r4, #2
	mov	lr, #60
	mov	r1, #3
	mov	ip, #20
	mov	r0, #6
	ldr	r3, .L4
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r4, [r3, #68]
	str	lr, [r3, #8]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	ip, [r3, #12]
	str	r0, [r3, #48]
	str	r1, [r3, #20]
	str	r1, [r3, #72]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
	.size	initPlayer, .-initPlayer
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	bl	initPlayer
	mov	r10, #12
	mov	r3, #0
	mov	r1, #1
	mov	r9, #11
	mov	r8, #15
	mov	ip, #4
	mov	r7, #13
	mov	r6, #16
	mov	r5, #60
	mov	r4, #128
	mov	lr, #2
	mov	r0, #96
	ldr	r2, .L8
	str	r1, [r2, #36]
	str	r10, [r2, #16]
	str	r9, [r2, #20]
	str	r8, [r2, #12]
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	ip, [r2, #32]
	str	r3, [r2, #28]
	str	r3, [r2, #48]
	ldr	r2, .L8+4
	str	r1, [r2]
	str	r1, [r2, #56]
	ldr	r1, .L8+8
	str	ip, [r2, #36]
	str	r3, [r2, #20]
	str	r3, [r2, #32]
	str	r3, [r2, #24]
	str	r3, [r2, #52]
	str	r3, [r2, #40]
	str	r7, [r2, #12]
	str	r6, [r2, #16]
	str	r5, [r2, #8]
	str	r4, [r2, #60]
	str	lr, [r2, #44]
	str	r0, [r2, #4]
	str	r0, [r2, #64]
	str	r3, [r1]
	str	r3, [r1, #4]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L9:
	.align	2
.L8:
	.word	slash
	.word	goblin1
	.word	.LANCHOR0
	.size	initGame, .-initGame
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
	ldr	r3, .L60
	push	{r4, r5, r6, lr}
	ldr	r4, .L60+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L19
	cmp	r2, #0
	beq	.L58
	ldrh	r3, [r3, #48]
.L22:
	ldr	r3, .L60+8
	ldr	r1, [r3, #8]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L25
	movne	r1, #2
	strne	r1, [r4, #36]
.L25:
	ldr	r3, [r3, #12]
	cmp	r3, #0
	movne	r3, #6
	strne	r3, [r4, #36]
	cmp	r2, #0
	movne	r3, #4
	strne	r3, [r4, #36]
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L28
	mov	r1, #5
	ldr	r5, [r4, #32]
	ldr	r3, .L60+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	str	r1, [r4, #36]
	bne	.L30
.L31:
	ldr	r3, .L60+12
	smull	r0, r3, r5, r3
	rsb	r3, r2, r3, asr #1
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3
	beq	.L38
.L39:
	ldr	r0, [r4, #44]
	ldr	r3, .L60+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L32:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L58:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L22
.L30:
	ldr	r1, .L60+12
	smull	r0, r1, r5, r1
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L32
	ldr	r1, [r4, #36]
.L38:
	cmp	r1, #1
	beq	.L39
	cmp	r1, #6
	beq	.L39
	cmp	r1, #5
	beq	.L59
	cmp	r3, #0
	beq	.L39
	b	.L32
.L19:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L22
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L22
.L28:
	ldr	r5, [r4, #32]
	ldr	r3, .L60+12
	smull	r2, r3, r5, r3
	asr	r2, r5, #31
	rsb	r3, r2, r3, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L30
	ldr	r1, [r4, #36]
	cmp	r1, #4
	beq	.L39
	b	.L31
.L59:
	ldr	r0, [r4, #44]
	ldr	r3, .L60+16
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #8
	str	r1, [r4, #44]
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L32
.L61:
	.align	2
.L60:
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
	ldr	r1, .L81
	ldr	r3, [r1, #52]
	ldr	r0, .L81+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L63
	ldr	ip, .L81+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L63:
	ldr	ip, .L81+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [ip]
	ldr	ip, .L81+16
	sub	r3, r3, lr
	ldr	lr, [ip]
	ldr	ip, [r1, #8]
	ldr	r4, .L81+8
	sub	ip, ip, lr
	ldr	r6, [r1, #56]
	lsl	r3, r3, #23
	and	ip, ip, #255
	lsr	r3, r3, #23
	lsl	lr, r2, #3
	orr	r3, r3, #16384
	add	r5, r4, r2, lsl #3
	cmp	r6, #0
	strh	ip, [r4, lr]	@ movhi
	ldr	ip, [r1, #36]
	strh	r3, [r5, #2]	@ movhi
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #44]
	cmp	ip, #6
	ldrls	pc, [pc, ip, asl #2]
	b	.L66
.L68:
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L70
	.word	.L69
	.word	.L67
.L67:
	ldr	r1, .L81+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
.L64:
	add	r2, r2, #1
	str	r2, [r0, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L74:
	lsl	r3, r3, #1
	rsbs	ip, r3, #0
	and	ip, ip, #3
	and	r1, r3, #3
	rsbpl	r1, ip, #0
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L64
.L73:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, r4, lr
	strh	r1, [lr, #4]	@ movhi
	b	.L64
.L72:
	ldr	r1, .L81+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L64
.L71:
	ldr	r1, .L81+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L64
.L70:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, r4, lr
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L64
.L69:
	ldr	r1, .L81+20
	smull	ip, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, r4, lr
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L64
.L66:
	add	r1, r3, ip, lsl #5
	lsl	r1, r1, #1
	add	r3, r4, lr
	strh	r1, [r3, #4]	@ movhi
	b	.L64
.L82:
	.align	2
.L81:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	1431655766
	.size	drawPlayer, .-drawPlayer
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
	ldr	r4, .L85
	ldr	r5, .L85+4
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
	ldr	r3, .L85+8
	mov	r1, r0
	mov	r0, #1069547520
	mov	lr, pc
	bx	r3
	mov	r1, r4
	mov	lr, pc
	bx	r5
	pop	{r4, r5, r6, lr}
	bx	lr
.L86:
	.align	2
.L85:
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
	ldr	r5, .L90
	ldr	r3, .L90+4
	ldr	r4, [r5, #20]
	smull	r1, r2, r3, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L88
	ldr	r0, [r5, #32]
	ldr	r3, .L90+8
	ldr	r1, [r5, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #32]
.L88:
	add	r4, r4, #1
	str	r4, [r5, #20]
	pop	{r4, r5, r6, lr}
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r1, .L102
	ldr	r3, [r1]
	ldr	r0, .L102+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	bne	.L93
	ldr	ip, .L102+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L93:
	ldr	ip, .L102+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #8]
	ldr	lr, [ip]
	ldr	ip, .L102+16
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r1, #52]
	ldr	ip, .L102+8
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
.L103:
	.align	2
.L102:
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
	ldr	r2, .L114
	ldr	r3, [r2, #24]
	cmp	r3, #6
	beq	.L107
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L107
	cmp	r3, #18
	bne	.L106
.L107:
	ldr	r1, [r2, #28]
	add	r1, r1, #1
	str	r1, [r2, #28]
.L106:
	add	r3, r3, #1
	str	r3, [r2, #24]
	bx	lr
.L115:
	.align	2
.L114:
	.word	slash
	.size	animateSlash, .-animateSlash
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
	ldr	r1, .L126
	ldr	r3, [r1, #36]
	ldr	r0, .L126+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L117
	ldr	ip, .L126+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L117:
	ldr	ip, .L126+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L126+16
	ldr	ip, .L126+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L126+8
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
.L127:
	.align	2
.L126:
	.word	slash
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	player
	.word	vOff
	.size	drawSlash, .-drawSlash
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
	ldr	r3, .L131
	ldr	r3, [r3, #16]
	ldr	r2, .L131+4
	cmp	r3, #0
	and	r3, r3, #1
	rsblt	r3, r3, #0
	cmp	r3, #1
	ldr	r3, [r2]
	lsl	r1, r1, #9
	add	r3, r3, r1
	addeq	r3, r3, r0
	ldrbeq	r0, [r3, #256]	@ zero_extendqisi2
	ldrbne	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L132:
	.align	2
.L131:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.size	checkCollision, .-checkCollision
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
	add	r1, r1, r3
	push	{r4, r5, r6, lr}
	add	r4, r1, #1
	mov	r1, r4
	mov	r5, r2
	mov	r6, r0
	bl	checkCollision
	cmp	r0, #0
	movne	r0, #1
	bne	.L133
	mov	r1, r4
	add	r0, r6, r5
	bl	checkCollision
	subs	r0, r0, #0
	movne	r0, #1
.L133:
	pop	{r4, r5, r6, lr}
	bx	lr
	.size	groundCheck, .-groundCheck
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
	ldr	r5, .L232
	ldr	r4, [r5, #12]
	ldr	r7, [r5, #8]
	ldr	r3, [r5, #28]
	ldr	r2, [r5, #24]
	sub	sp, sp, #36
	mov	r0, r4
	mov	r1, r7
	str	r3, [sp, #24]
	str	r2, [sp, #16]
	bl	groundCheck
	cmp	r0, #0
	movne	r3, #0
	ldrne	r6, .L232+4
	strne	r3, [r6, #20]
	strne	r3, [r6, #12]
	ldr	r3, .L232+8
	ldrh	r3, [r3]
	ldr	r2, .L232+12
	ldreq	r6, .L232+4
	tst	r3, #64
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	beq	.L139
	ldr	r3, .L232+16
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L223
.L139:
	ldr	r8, [r6, #8]
	cmp	r8, #0
	bge	.L148
.L147:
	ldr	r3, [sp, #16]
	mov	fp, #0
	add	r9, r4, r3
	b	.L151
.L224:
	mov	r1, r10
	mov	r0, r9
	bl	checkCollision
	cmp	r0, #0
	bne	.L149
	sub	fp, fp, #1
	cmp	fp, r8
	ble	.L148
.L151:
	add	r10, fp, r7
	mov	r1, r10
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L224
.L149:
	mov	r0, #1
	mov	r1, #0
	ldr	r8, .L232+20
	ldr	r2, [r8]
	add	r3, fp, r0
	add	r7, r7, r3
	add	r3, r2, r3
	str	r7, [r5, #8]
	str	r3, [r8]
	str	r1, [r6, #8]
	str	r1, [r6, #24]
	str	r1, [r6, #28]
	str	r0, [r6, #20]
.L148:
	ldr	r3, .L232+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L152
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L152
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ble	.L153
	mov	r9, r4
	ldr	r7, [r5, #8]
	add	r3, r4, #2
	str	r3, [sp, #28]
	add	r10, r7, r4
.L156:
	sub	fp, r10, r9
	mov	r0, r9
	mov	r1, fp
	bl	checkCollision
	mov	r3, r0
	ldr	r2, [sp, #16]
	cmp	r3, #0
	add	r0, r2, r9
	add	r9, r9, #1
	bne	.L154
	mov	r1, fp
	bl	checkCollision
	cmp	r0, #0
	bne	.L154
	ldr	r3, [sp, #28]
	cmp	r3, r9
	bne	.L156
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L182
	b	.L184
.L152:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L219
	ldr	r8, [r6, #8]
	cmp	r8, #0
	ldrgt	r7, [r5, #8]
	ble	.L221
.L184:
	ldr	r3, [sp, #24]
	add	r9, r3, r7
	ldr	r3, [sp, #16]
	mov	fp, #0
	str	r7, [sp, #16]
	add	r10, r4, r3
	b	.L163
.L225:
	mov	r1, r7
	mov	r0, r10
	bl	checkCollision
	cmp	r0, #0
	bne	.L161
	add	fp, fp, #1
	cmp	fp, r8
	bge	.L221
.L163:
	add	r7, fp, r9
	mov	r1, r7
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	beq	.L225
.L161:
	mov	r2, #1
	ldr	r8, .L232+20
	ldr	r7, [sp, #16]
	ldr	r3, [r8]
	sub	fp, fp, #1
	add	r7, fp, r7
	add	fp, r3, fp
	ldr	r3, .L232+12
	str	r7, [r5, #8]
	str	fp, [r8]
	str	r2, [r3, #4]
.L160:
	ldr	r3, .L232+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r0, [r6, #28]
	ldr	r3, [r6, #24]
	bne	.L165
	cmp	r3, #0
	bne	.L226
.L166:
	ldr	r3, .L232+28
	mov	lr, pc
	bx	r3
	ldr	r4, .L232+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L232+36
	mov	lr, pc
	bx	r4
	ldr	r3, .L232+40
	mov	lr, pc
	bx	r3
	mov	r3, r0
	ldr	r0, [r6]
	tst	r0, #3
	ldreq	r2, [r6, #28]
	addeq	r2, r2, #1
	streq	r2, [r6, #28]
	ldr	r2, .L232+12
	ldr	r2, [r2, #4]
	cmp	r2, #0
	str	r3, [r6, #8]
	ldr	r7, [r5, #8]
	ldr	r2, [r8]
	bne	.L182
	add	r7, r7, r3
	cmp	r2, #255
	str	r7, [r5, #8]
	sub	r1, r7, r2
	ble	.L218
.L171:
	lsr	ip, r3, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L170
.L222:
	add	r3, r3, r2
	str	r3, [r8]
	b	.L170
.L154:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r6, #8]
	str	r3, [r6, #24]
	str	r2, [r6, #20]
.L153:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L221
.L219:
	ldr	r7, [r5, #8]
.L182:
	mov	r3, #0
	ldr	r0, [r6]
	str	r3, [r6, #8]
	str	r3, [r6, #28]
	str	r3, [r6, #24]
.L170:
	ldr	r3, .L232+44
	ldr	r1, [r5, #68]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r8, [r5, #12]
	bne	.L173
	ldr	r3, .L232+24
	ldrh	r3, [r3, #48]
	tst	r3, #32
	bne	.L174
	ldr	r9, [r5, #20]
	sub	r4, r8, r9
	mov	r0, r4
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L227
.L174:
	ldr	r3, .L232+24
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L173
	ldr	r4, [r5, #24]
	ldr	r9, [r5, #20]
	add	r4, r8, r4
	add	r4, r4, r9
	mov	r0, r4
	mov	r1, r7
	bl	checkCollision
	cmp	r0, #0
	beq	.L228
.L173:
	ldr	r3, [r5, #56]
	ldr	r4, .L232+48
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r4, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r2, r3, r8
	str	r7, [r4]
	str	r3, [r4, #4]
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	bgt	.L229
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r4, #36]
.L179:
	ldr	r3, .L232+8
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L180
	ldr	r3, .L232+16
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L180
	ldr	r3, [r5, #60]
	cmp	r3, #0
	bne	.L180
	mov	r1, #1
	mov	r2, #20
	str	r3, [r5, #44]
	str	r3, [r4, #36]
	str	r3, [r4, #28]
	str	r3, [r4, #24]
	str	r1, [r5, #60]
	str	r2, [r5, #64]
.L180:
	ldr	r3, [r6]
	add	r3, r3, #1
	str	r3, [r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L223:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L230
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L139
.L181:
	sub	r8, r7, #1
	mov	r1, r8
	mov	r0, r4
	bl	checkCollision
	cmp	r0, #0
	bne	.L139
	ldr	r3, [sp, #16]
	mov	r1, r8
	add	r0, r4, r3
	bl	checkCollision
	cmp	r0, #0
	bne	.L139
	mvn	r8, #4
	mov	r3, #1
	ldr	r2, .L232+12
	str	r0, [sp, #20]
	str	r0, [r2, #4]
	str	r8, [r6, #8]
	str	r3, [r6, #24]
	b	.L147
.L229:
	ldr	r7, .L232+52
	ldmib	r7, {r2, r3}
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	str	r2, [sp, #4]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r3, [sp]
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	ldr	r1, [r4]
	ldr	r0, [r4, #4]
	ldr	r8, .L232+56
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L177
	ldr	r2, [r7, #40]
	cmp	r2, #0
	bne	.L177
	mov	r1, #1
	ldr	r3, [r7, #44]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r7, #44]
	str	r1, [r7, #40]
	strlt	r2, [r7]
.L177:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
	b	.L179
.L218:
	cmp	r1, #79
	cmpgt	r3, #0
	bgt	.L222
	cmp	r2, #0
	ble	.L170
	b	.L171
.L165:
	cmp	r3, #0
	beq	.L166
.L167:
	mov	r3, #1
	sub	r0, r0, #3
	str	r3, [r6, #20]
	b	.L166
.L227:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r4
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r8, #0
	cmpge	r0, #0
	bne	.L174
	ldr	r2, .L232+60
	ldr	r3, [r2]
	cmp	r3, #0
	str	r4, [r5, #12]
	blt	.L186
	sub	r1, r4, r3
	cmp	r1, #119
	bgt	.L186
	sub	r3, r3, r9
	mov	r8, r4
	str	r3, [r2]
	b	.L174
.L228:
	ldr	r1, [r5, #28]
	add	r1, r7, r1
	mov	r0, r4
	sub	r1, r1, #1
	bl	checkCollision
	cmp	r0, #0
	bne	.L173
	ldr	r2, .L232+60
	ldr	r3, [r2]
	add	r8, r8, r9
	cmp	r3, #256
	str	r8, [r5, #12]
	bgt	.L173
	sub	r1, r8, r3
	cmp	r1, #120
	addgt	r9, r9, r3
	strgt	r9, [r2]
	b	.L173
.L226:
	ldr	r3, [r6, #20]
	cmp	r3, #0
	subeq	r0, r0, #5
	beq	.L166
	b	.L167
.L230:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	beq	.L231
	mov	r2, #1
	mvn	r8, #1
	ldr	r1, [sp, #20]
	cmp	r1, #0
	str	r3, [r6, #28]
	str	r3, [r6, #20]
	str	r2, [r6, #12]
	str	r8, [r6, #8]
	bne	.L181
	b	.L147
.L221:
	ldr	r8, .L232+20
	b	.L160
.L231:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L181
	mov	r3, #1
	mvn	r8, #1
	ldr	r2, [sp, #20]
	str	r3, [r6, #12]
	str	r2, [r6, #28]
	str	r2, [r6, #20]
	str	r3, [r6, #24]
	str	r8, [r6, #8]
	b	.L147
.L186:
	mov	r8, r4
	b	.L174
.L233:
	.align	2
.L232:
	.word	player
	.word	.LANCHOR0
	.word	oldButtons
	.word	.LANCHOR1
	.word	buttons
	.word	vOff
	.word	67109120
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	__aeabi_idivmod
	.word	slash
	.word	goblin1
	.word	collision
	.word	hOff
	.size	updatePlayer, .-updatePlayer
	.align	2
	.global	updateEnemies
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateEnemies, %function
updateEnemies:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L250
	ldr	r3, [r4, #40]
	cmp	r3, #0
	ldr	r5, .L250+4
	sub	sp, sp, #24
	beq	.L235
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #40]
.L235:
	add	r2, r5, #8
	ldm	r2, {r2, r3}
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	ldr	r6, .L250+8
	mov	lr, pc
	bx	r6
	cmp	r0, #0
	beq	.L236
	ldr	r3, [r5, #76]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	streq	r3, [r5, #72]
	streq	r2, [r5, #76]
.L236:
	ldr	r7, [r4, #8]
	ldr	r1, [r5, #12]
	sub	r1, r1, r7
	ldr	r3, [r4, #60]
	eor	r2, r1, r1, asr #31
	sub	r2, r2, r1, asr #31
	cmp	r2, r3
	add	r2, r4, #12
	ldr	r6, [r4, #4]
	ldm	r2, {r2, r3}
	bge	.L237
	ldr	r0, [r5, #8]
	sub	r0, r0, r6
	cmp	r0, #0
	ldr	ip, [r4, #64]
	rsblt	r0, r0, #0
	cmp	r0, ip
	blt	.L248
.L237:
	mov	r1, r6
	mov	r0, r7
	bl	groundCheck
	ldr	r5, [r4, #20]
	ldr	r3, .L250+12
	smull	r1, r2, r3, r5
	asr	r3, r5, #31
	cmp	r0, #0
	rsb	r3, r3, r2, asr #2
	addeq	r6, r6, #1
	add	r3, r3, r3, lsl #2
	streq	r6, [r4, #4]
	cmp	r5, r3, lsl #1
	bne	.L240
	ldr	r0, [r4, #32]
	ldr	r3, .L250+16
	ldr	r1, [r4, #36]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #32]
.L240:
	add	r5, r5, #1
	str	r5, [r4, #20]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L248:
	ldr	r0, .L250+20
	ldr	r0, [r0]
	tst	r0, #1
	bne	.L237
	cmp	r1, #0
	ldr	r0, [r4, #56]
	str	r3, [sp, #20]
	blt	.L249
	add	r5, r7, r0
	add	r8, r5, r2
	mov	r0, r8
	mov	r1, r6
	str	r2, [sp, #16]
	bl	checkCollision
	add	r2, sp, #16
	cmp	r0, #0
	ldm	r2, {r2, r3}
	bne	.L237
	add	r1, r6, r3
	mov	r0, r8
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	moveq	r7, r5
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	streq	r5, [r4, #8]
	b	.L237
.L249:
	sub	r5, r7, r0
	mov	r0, r5
	mov	r1, r6
	str	r2, [sp, #16]
	bl	checkCollision
	add	r2, sp, #16
	cmp	r0, #0
	ldm	r2, {r2, r3}
	bne	.L237
	add	r1, r6, r3
	mov	r0, r5
	str	r2, [sp, #20]
	str	r3, [sp, #16]
	bl	checkCollision
	cmp	r0, #0
	moveq	r7, r5
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #20]
	streq	r5, [r4, #8]
	b	.L237
.L251:
	.align	2
.L250:
	.word	goblin1
	.word	player
	.word	collision
	.word	1717986919
	.word	__aeabi_idivmod
	.word	.LANCHOR0
	.size	updateEnemies, .-updateEnemies
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
	ldr	r3, .L264
	ldrh	r3, [r3]
	tst	r3, #8
	push	{r4, lr}
	and	r3, r3, #4
	beq	.L253
	ldr	r2, .L264+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L253
	mov	r2, #1
	ldr	r3, .L264+8
	str	r2, [r3, #32]
.L255:
	bl	updatePlayer
	pop	{r4, lr}
	b	updateEnemies
.L253:
	cmp	r3, #0
	beq	.L255
	ldr	r3, .L264+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L264+8
	streq	r2, [r3, #32]
	b	.L255
.L265:
	.align	2
.L264:
	.word	oldButtons
	.word	buttons
	.word	.LANCHOR0
	.size	updateGame, .-updateGame
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
	ldr	r3, .L268
	ldr	r0, .L268+4
	ldr	r3, [r3]
	smull	r1, r2, r0, r3
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, #40
	mov	lr, #0
	mov	r6, #48
	mov	r5, #56
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	eor	ip, r3, r3, asr #31
	add	r2, r2, r2, lsl #2
	sub	ip, ip, r3, asr #31
	sub	r3, r3, r2, lsl #2
	ldr	r2, .L268+8
	umull	r1, r2, ip, r2
	ldr	r9, .L268+12
	smull	r1, r9, r3, r9
	ldr	r4, .L268+16
	ldr	r8, .L268+20
	ldr	r1, [r4, #4]
	lsr	r2, r2, #3
	add	r2, r2, r2, lsl #2
	sub	r2, ip, r2, lsl #1
	add	r0, r0, #111
	add	ip, r8, r1, lsl #3
	strh	r0, [ip, #4]	@ movhi
	strh	r7, [ip, #2]	@ movhi
	lsl	r0, r1, #3
	add	ip, r1, #1
	asr	r3, r3, #31
	strh	lr, [r8, r0]	@ movhi
	rsb	r3, r3, r9, asr #2
	lsl	r0, ip, #3
	strh	lr, [r8, r0]	@ movhi
	add	ip, r8, ip, lsl #3
	add	r0, r1, #2
	add	r3, r3, #111
	strh	r6, [ip, #2]	@ movhi
	strh	r3, [ip, #4]	@ movhi
	add	r2, r2, #111
	add	r3, r8, r0, lsl #3
	add	r1, r1, #3
	lsl	ip, r0, #3
	str	r1, [r4, #4]
	strh	lr, [r8, ip]	@ movhi
	strh	r5, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L269:
	.align	2
.L268:
	.word	hOff
	.word	1374389535
	.word	-858993459
	.word	1717986919
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawFont, .-drawFont
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
	mov	r3, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L283
	ldr	r1, [r4]
	ldr	r2, .L283+4
	cmp	r1, #255
	str	r3, [r2, #4]
	ldr	r3, [r2, #16]
	ble	.L271
	add	r3, r3, #1
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r0, r3, #3
	rsbpl	r0, r1, #0
	cmp	r0, #3
	str	r3, [r2, #16]
	beq	.L282
	mov	r3, #67108864
	add	r0, r0, #28
	lsl	r0, r0, #24
	orr	r0, r0, #1073741824
	lsr	r0, r0, #16
	strh	r0, [r3, #10]	@ movhi
	ldr	r5, .L283+8
.L273:
	mov	r1, #0
	mov	r2, #120
	ldr	r3, .L283+12
	str	r1, [r4]
	str	r2, [r3, #12]
.L274:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawFont
	ldr	r3, .L283+16
	mov	lr, pc
	bx	r3
	mov	r0, #3
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L283+20
	mov	lr, pc
	bx	r5
	mov	r2, #67108864
	ldr	r1, [r4]
	ldr	r3, .L283+24
	smull	r0, r3, r1, r3
	lsl	r0, r1, #16
	lsr	r0, r0, #16
	strh	r0, [r2, #20]	@ movhi
	ldr	r0, .L283+28
	sub	r3, r3, r1, asr #31
	lsl	r3, r3, #16
	ldrh	r1, [r0]
	lsr	r3, r3, #16
	strh	r1, [r2, #22]	@ movhi
	pop	{r4, r5, r6, lr}
	strh	r3, [r2, #24]	@ movhi
	bx	lr
.L271:
	cmp	r3, #0
	and	r2, r3, #1
	rsblt	r2, r2, #0
	cmp	r2, #1
	beq	.L278
.L281:
	ldr	r5, .L283+8
	b	.L274
.L282:
	mov	r3, #2048
	ldr	r2, .L283+32
	ldr	r1, .L283+36
	ldr	r5, .L283+8
	mov	lr, pc
	bx	r5
	mov	r3, #67108864
	mov	r2, #23808
	strh	r2, [r3, #10]	@ movhi
	b	.L273
.L278:
	cmp	r1, #127
	ble	.L281
	cmp	r3, #3
	ldrne	r2, .L283+40
	ldr	r3, .L283+44
	ldreq	r2, .L283+48
	ldr	r5, .L283+8
	str	r2, [r3]
	b	.L274
.L284:
	.align	2
.L283:
	.word	hOff
	.word	.LANCHOR0
	.word	DMANow
	.word	player
	.word	waitForVBlank
	.word	shadowOAM
	.word	1431655766
	.word	vOff
	.word	100720640
	.word	map1Map
	.word	map1CollisionBitmap
	.word	.LANCHOR1
	.word	map2CollisionBitmap
	.size	drawGame, .-drawGame
	.align	2
	.global	gameOver
	.syntax unified
	.arm
	.fpu softvfp
	.type	gameOver, %function
gameOver:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	gameOver, .-gameOver
	.global	test
	.global	hScreenCounter
	.global	gTimer
	.global	framesInAir
	.global	yVel
	.global	jumpThud
	.global	doubleJumping
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
	.comm	player,84,4
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
	.type	test, %object
	.size	test, 8192
test:
	.word	map1CollisionBitmap
	.word	map2CollisionBitmap
	.space	8184
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
	.type	doubleJumping, %object
	.size	doubleJumping, 4
doubleJumping:
	.space	4
	.type	hScreenCounter, %object
	.size	hScreenCounter, 4
hScreenCounter:
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
