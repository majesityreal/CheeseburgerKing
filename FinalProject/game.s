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
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r3, #0
	mov	r1, #1
	mov	r9, #13
	mov	r8, #16
	mov	r7, #60
	mov	r6, #20
	mov	r5, #6
	mov	r4, #14
	mov	lr, #12
	mov	ip, #15
	mov	r0, #4
	ldr	r2, .L4
	str	r1, [r2, #16]
	str	r1, [r2, #20]
	str	r3, [r2, #32]
	str	r3, [r2, #44]
	str	r3, [r2, #36]
	str	r9, [r2, #24]
	str	r8, [r2, #28]
	str	r7, [r2, #8]
	str	r6, [r2, #12]
	str	r5, [r2, #48]
	str	r3, [r2, #52]
	str	r3, [r2, #56]
	str	r3, [r2, #60]
	str	r3, [r2, #64]
	ldr	r2, .L4+4
	str	r1, [r2, #36]
	ldr	r1, .L4+8
	str	r3, [r2, #8]
	str	r3, [r2]
	str	r3, [r2, #4]
	str	r3, [r2, #24]
	str	r3, [r2, #28]
	str	r3, [r2, #40]
	str	r3, [r2, #44]
	str	r3, [r2, #48]
	str	r4, [r2, #16]
	str	lr, [r2, #20]
	str	ip, [r2, #12]
	str	r0, [r2, #32]
	str	r3, [r1]
	str	r3, [r1, #4]
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	player
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
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #13
	mov	r4, #16
	mov	lr, #60
	mov	r1, #1
	mov	ip, #20
	mov	r0, #6
	ldr	r3, .L8
	str	r5, [r3, #24]
	str	r4, [r3, #28]
	str	lr, [r3, #8]
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	ip, [r3, #12]
	str	r0, [r3, #48]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	pop	{r4, r5, lr}
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
	mov	lr, #14
	mov	ip, #12
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
	ldr	r1, .L18
	ldr	r3, .L18+4
	ldr	r0, [r1, #28]
	ldr	r2, [r1, #8]
	ldr	r3, [r3]
	add	r2, r2, r0
	add	r2, r2, #1
	ldr	r0, [r1, #12]
	add	r3, r3, r2, lsl #9
	ldrb	r2, [r3, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r0
	bne	.L15
	ldr	r2, [r1, #24]
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	cmp	r0, #0
	bxeq	lr
.L15:
	mov	r2, #0
	ldr	r3, .L18+8
	mov	r0, #1
	str	r2, [r3, #8]
	bx	lr
.L19:
	.align	2
.L18:
	.word	player
	.word	.LANCHOR1
	.word	.LANCHOR0
	.size	groundCheck, .-groundCheck
	.global	__aeabi_idivmod
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L23
	ldr	r4, [r5, #24]
	tst	r4, #7
	bne	.L21
	ldr	r0, [r5, #28]
	ldr	r3, .L23+4
	ldr	r1, [r5, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r5, #28]
.L21:
	add	r4, r4, #1
	str	r4, [r5, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L24:
	.align	2
.L23:
	.word	slash
	.word	__aeabi_idivmod
	.size	animateSlash, .-animateSlash
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
	mov	r3, #0
	ldr	r2, .L41
	ldrh	r1, [r2, #48]
	push	{r4, r5, r6, lr}
	ldr	r4, .L41+4
	tst	r1, #32
	ldr	r2, [r4, #36]
	str	r3, [r4, #36]
	moveq	r3, #1
	streq	r3, [r4, #36]
	streq	r3, [r4, #56]
	ldr	r3, .L41
	ldrh	r3, [r3, #48]
	ands	r3, r3, #16
	str	r2, [r4, #40]
	moveq	r2, #1
	streq	r3, [r4, #56]
	ldr	r3, .L41+8
	ldr	r3, [r3, #12]
	streq	r2, [r4, #36]
	cmp	r3, #0
	movgt	r3, #3
	strgt	r3, [r4, #36]
	bgt	.L29
	movne	r3, #2
	strne	r3, [r4, #36]
.L29:
	ldr	r3, [r4, #60]
	ldr	r5, [r4, #32]
	cmp	r3, #0
	and	r3, r5, #7
	beq	.L30
	mov	r2, #4
	cmp	r3, #0
	str	r2, [r4, #36]
	asrne	r3, r5, #31
	beq	.L40
.L31:
	ldr	r2, .L41+12
	smull	r1, r2, r5, r2
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L32
.L40:
	ldr	r0, [r4, #44]
	ldr	r3, .L41+16
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
.L30:
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r4, #36]
	cmp	r3, #4
	beq	.L40
.L33:
	ldr	r2, .L41+12
	smull	r3, r2, r5, r2
	asr	r3, r5, #31
	rsb	r2, r3, r2, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L31
	ldr	r2, [r4, #36]
	cmp	r2, #1
	beq	.L40
	b	.L31
.L42:
	.align	2
.L41:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	1717986919
	.word	__aeabi_idivmod
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	bl	groundCheck
	ldr	r3, .L118
	ldrh	fp, [r3]
	ldr	r9, .L118+4
	ands	r3, fp, #64
	mov	r7, r0
	str	r3, [sp, #4]
	str	r0, [r9, #4]
	beq	.L44
	ldr	r3, .L118+8
	ldrh	r3, [r3]
	lsr	r3, r3, #6
	eor	r3, r3, #1
	cmp	r0, #0
	moveq	r3, #0
	andne	r3, r3, #1
	ldr	r4, .L118+12
	ldr	r10, .L118+16
	cmp	r3, #0
	ldr	r6, [r4, #8]
	ldr	r8, [r10]
	bne	.L110
.L45:
	ldr	r5, .L118+20
	ldr	ip, [r5, #12]
	cmp	ip, #0
	bge	.L47
	ldr	lr, [r9]
	ldr	r0, [r4, #12]
	ldr	r1, [r4, #24]
.L46:
	add	r1, r1, r0
	add	r1, r1, r6, lsl #9
	add	r2, r0, r6, lsl #9
	mov	r3, #0
	add	r1, lr, r1
	add	r0, lr, r2
	b	.L50
.L111:
	ldrb	r2, [r1, r3, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L48
	sub	r3, r3, #1
	cmp	r3, ip
	ble	.L47
.L50:
	ldrb	r2, [r0, r3, lsl #9]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L111
.L48:
	mov	r1, #1
	mov	r2, #0
	add	r3, r3, r1
	add	r6, r6, r3
	add	r8, r8, r3
	str	r6, [r4, #8]
	str	r8, [r10]
	str	r2, [r5, #12]
	str	r2, [r5, #16]
	str	r2, [r5, #20]
	str	r1, [r5, #8]
.L47:
	ldr	r3, .L118+24
	ldrh	r2, [r3, #48]
	tst	r2, #64
	bne	.L51
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L51
	ldr	r3, [r5, #12]
	cmp	r3, #0
	ble	.L52
	ldr	r0, [r9]
	ldr	r2, [r4, #12]
	add	lr, r0, r6, lsl #9
	ldrb	ip, [lr, r2]	@ zero_extendqisi2
	ldr	r1, [r4, #24]
	cmp	ip, #0
	add	r1, r2, r1
	bne	.L53
	ldrb	ip, [lr, r1]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L53
	sub	lr, r6, #1
	add	lr, r0, lr, lsl #9
	add	ip, lr, r2
	ldrb	ip, [ip, #1]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L53
	add	lr, lr, r1
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L53
	cmp	r7, #0
	beq	.L55
	b	.L76
.L51:
	cmp	r7, #0
	bne	.L108
	ldr	r3, [r5, #12]
	cmp	r3, #0
	ble	.L58
	ldr	r2, [r4, #12]
	ldr	r1, [r4, #24]
	ldr	r0, [r9]
	add	r1, r2, r1
.L55:
	ldr	lr, [r4, #28]
	add	lr, r6, lr
	add	r2, r2, lr, lsl #9
	add	r1, r1, lr, lsl #9
	mov	ip, #0
	add	r2, r0, r2
	add	r1, r0, r1
	b	.L61
.L112:
	ldrb	r0, [r1, ip, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L59
	add	ip, ip, #1
	cmp	ip, r3
	bge	.L58
.L61:
	ldrb	r0, [r2, ip, lsl #9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L112
.L59:
	mov	r7, #1
	sub	ip, ip, #1
	add	r6, r6, ip
	add	r8, r8, ip
	str	r6, [r4, #8]
	str	r8, [r10]
	str	r7, [r9, #4]
.L58:
	ldr	r3, .L118+24
	ldrh	r3, [r3, #48]
	tst	r3, #64
	ldr	r2, [r5, #8]
	ldr	r0, [r5, #20]
	bne	.L62
	ldr	r3, [r5, #16]
	cmp	r3, #0
	bne	.L113
.L62:
	ldr	r3, [sp, #4]
	rsbs	r3, r3, #1
	movcc	r3, #0
	cmp	r2, #0
	movne	r3, #1
	cmp	r3, #0
	beq	.L114
.L63:
	mov	r3, #0
	str	r3, [r5, #16]
.L64:
	ldr	r3, .L118+28
	mov	lr, pc
	bx	r3
	ldr	fp, .L118+32
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L118+36
	mov	lr, pc
	bx	fp
	ldr	r3, .L118+40
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	tst	r3, #3
	ldreq	r2, [r5, #20]
	addeq	r2, r2, #1
	streq	r2, [r5, #20]
	cmp	r7, #0
	str	r0, [r5, #12]
	bne	.L115
	ldr	r2, .L118
	add	r6, r6, r0
	cmp	r8, #255
	ldrh	fp, [r2]
	str	r6, [r4, #8]
	ldr	r2, [r4, #12]
	sub	r1, r6, r8
	ble	.L106
.L68:
	lsr	ip, r0, #31
	cmp	r1, #80
	movgt	r1, #0
	andle	r1, ip, #1
	cmp	r1, #0
	beq	.L67
.L109:
	ldr	r1, .L118+24
	ldrh	r1, [r1, #48]
	add	r0, r0, r8
	tst	r1, #32
	str	r0, [r10]
	beq	.L116
.L70:
	ldr	r1, .L118+24
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L71
	ldr	r1, [r4, #24]
	ldr	r0, [r9]
	add	r1, r2, r1
	add	r1, r1, #1
	add	ip, r0, r6, lsl #9
	ldrb	ip, [ip, r1]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L71
	ldr	ip, [r4, #28]
	add	ip, r6, ip
	sub	ip, ip, #1
	add	r0, r0, ip, lsl #9
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	ldr	r1, .L118+44
	cmp	r2, r1
	cmple	r0, #0
	beq	.L117
.L71:
	ldr	r1, [r4, #56]
	ldr	r7, .L118+48
	rsb	r1, r1, r1, lsl #31
	ldr	r0, [r7, #12]
	lsl	r1, r1, #1
	add	r1, r1, #1
	mla	r2, r0, r1, r2
	ldr	r8, [r7, #24]
	tst	r8, #7
	str	r6, [r7]
	str	r2, [r7, #4]
	bne	.L72
	ldr	r0, [r7, #28]
	str	r3, [sp, #4]
	ldr	r2, .L118+52
	ldr	r1, [r7, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r2
	ldr	r3, [sp, #4]
	str	r1, [r7, #28]
.L72:
	ldr	r2, [r4, #64]
	cmp	r2, #0
	movle	r1, #0
	movle	r2, #1
	subgt	r2, r2, #1
	strgt	r2, [r4, #64]
	strle	r1, [r4, #60]
	strle	r2, [r7, #36]
	add	r8, r8, #1
	tst	fp, #2
	str	r8, [r7, #24]
	beq	.L75
	ldr	r2, .L118+8
	ldrh	r2, [r2]
	tst	r2, #2
	bne	.L75
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L75
	mov	r0, #1
	ldr	r1, [r7, #32]
	sub	r1, r1, #1
	lsl	r1, r1, #3
	str	r2, [r4, #44]
	str	r2, [r7, #36]
	str	r2, [r7, #28]
	str	r1, [r4, #64]
	str	r0, [r4, #60]
.L75:
	add	r3, r3, #1
	str	r3, [r5]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L44:
	ldr	r4, .L118+12
	ldr	r10, .L118+16
	ldr	r6, [r4, #8]
	ldr	r8, [r10]
	b	.L45
.L115:
	ldr	r3, .L118
	ldrh	fp, [r3]
.L108:
	ldr	r2, [r4, #12]
.L76:
	mov	r3, #0
	str	r3, [r5, #12]
	str	r3, [r5, #20]
	str	r3, [r5, #16]
	ldr	r3, [r5]
.L67:
	ldr	r1, .L118+24
	ldrh	r1, [r1, #48]
	tst	r1, #32
	bne	.L70
.L116:
	ldr	r1, [r9]
	sub	ip, r2, #1
	add	r0, r1, r6, lsl #9
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L70
	ldr	r0, [r4, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #9
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r2, #0
	cmpge	r1, #0
	bne	.L70
	ldr	r1, .L118+56
	ldr	r2, [r1]
	cmp	r2, #0
	str	ip, [r4, #12]
	blt	.L78
	sub	r0, ip, r2
	cmp	r0, #119
	bgt	.L78
	sub	r2, r2, #1
	str	r2, [r1]
	mov	r2, ip
	b	.L70
.L106:
	cmp	r1, #79
	cmpgt	r0, #0
	bgt	.L109
	cmp	r8, #0
	ble	.L67
	b	.L68
.L110:
	ldr	lr, [r9]
	ldr	r0, [r4, #12]
	sub	r3, r6, #1
	add	r3, lr, r3, lsl #9
	ldrb	r2, [r3, r0]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r0
	bne	.L45
	ldr	r1, [r4, #24]
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L45
	mvn	ip, #4
	mov	r2, #1
	ldr	r5, .L118+20
	mov	r7, r3
	str	r3, [r9, #4]
	str	ip, [r5, #12]
	str	r2, [r5, #16]
	b	.L46
.L113:
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L64
	b	.L63
.L53:
	mov	r3, #0
	mov	r2, #1
	str	r3, [r5, #12]
	str	r3, [r5, #16]
	str	r2, [r5, #8]
.L52:
	cmp	r7, #0
	bne	.L108
	b	.L58
.L117:
	ldr	r0, .L118+56
	ldr	r1, [r0]
	add	r2, r2, #1
	cmp	r1, #240
	str	r2, [r4, #12]
	bgt	.L71
	sub	ip, r2, r1
	cmp	ip, #120
	addgt	r1, r1, #1
	strgt	r1, [r0]
	b	.L71
.L78:
	mov	r2, ip
	b	.L70
.L114:
	ldr	r3, .L118+8
	ldrh	r3, [r3]
	tst	r3, #64
	subeq	r0, r0, #3
	b	.L63
.L119:
	.align	2
.L118:
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
	.word	722
	.word	slash
	.word	__aeabi_idivmod
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
	ldr	r3, .L131
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	beq	.L121
	ldr	r2, .L131+4
	ldrh	r2, [r2]
	tst	r2, #8
	bne	.L121
	mov	r2, #1
	ldr	r3, .L131+8
	str	r2, [r3, #24]
.L123:
	b	updatePlayer
.L121:
	cmp	r3, #0
	beq	.L123
	ldr	r3, .L131+4
	ldrh	r3, [r3]
	tst	r3, #4
	moveq	r2, #1
	ldreq	r3, .L131+8
	streq	r2, [r3, #24]
	b	.L123
.L132:
	.align	2
.L131:
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
	ldr	r1, .L150
	ldr	r3, [r1, #52]
	ldr	ip, .L150+4
	cmp	r3, #0
	ldr	r2, [ip, #4]
	beq	.L134
	ldr	r0, .L150+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [r0, r1]	@ movhi
	str	r2, [ip, #4]
	bx	lr
.L134:
	ldr	r0, .L150+12
	push	{r4, r5, r6, lr}
	ldr	lr, [r0]
	ldr	r0, .L150+16
	ldr	r3, [r1, #12]
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	sub	r3, r3, lr
	sub	r0, r0, r4
	ldr	lr, .L150+8
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
	b	.L137
.L139:
	.word	.L143
	.word	.L142
	.word	.L141
	.word	.L140
	.word	.L138
.L138:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, lr, r4
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
.L135:
	add	r2, r2, #1
	str	r2, [ip, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L143:
	lsl	r3, r3, #1
	rsbs	r0, r3, #0
	and	r0, r0, #3
	and	r1, r3, #3
	rsbpl	r1, r0, #0
	add	r3, lr, r4
	lsl	r1, r1, #1
	strh	r1, [r3, #4]	@ movhi
	b	.L135
.L142:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L135
.L141:
	ldr	r1, .L150+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	r3, lr, r4
	lsl	r1, r1, #1
	strh	r1, [r3, #4]	@ movhi
	b	.L135
.L140:
	ldr	r1, .L150+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	r3, lr, r4
	lsl	r1, r1, #1
	strh	r1, [r3, #4]	@ movhi
	b	.L135
.L137:
	add	r1, r3, r0, lsl #5
	lsl	r1, r1, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L135
.L151:
	.align	2
.L150:
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
	.global	drawSlash
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawSlash, %function
drawSlash:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L165
	ldr	r3, [r1, #36]
	ldr	r0, .L165+4
	cmp	r3, #0
	ldr	r2, [r0, #4]
	beq	.L156
	ldr	ip, .L165+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #4]
	bx	lr
.L156:
	ldr	ip, .L165+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L165+16
	ldr	ip, .L165+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L165+8
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
.L166:
	.align	2
.L165:
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
	ldr	r3, .L169
	push	{r4, lr}
	str	r2, [r3, #4]
	bl	drawPlayer
	bl	drawSlash
	ldr	r3, .L169+4
	mov	lr, pc
	bx	r3
	ldr	r4, .L169+8
	mov	r3, #512
	mov	r2, #117440512
	ldr	r1, .L169+12
	mov	r0, #3
	mov	lr, pc
	bx	r4
	mov	r3, #67108864
	ldr	r2, .L169+16
	ldrh	r1, [r2]
	ldr	r2, .L169+20
	ldrh	r2, [r2]
	strh	r1, [r3, #20]	@ movhi
	pop	{r4, lr}
	strh	r2, [r3, #22]	@ movhi
	bx	lr
.L170:
	.align	2
.L169:
	.word	.LANCHOR0
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.size	drawGame, .-drawGame
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
	ldr	r3, .L173
	ldr	r0, .L173+4
	ldr	r3, [r3, #12]
	smull	r1, r2, r0, r3
	asr	r0, r3, #31
	rsb	r0, r0, r2, asr #5
	add	r2, r0, r0, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, r2, lsl #2
	ldr	lr, .L173+8
	eor	ip, r3, r3, asr #31
	sub	r2, r3, r2, lsl #2
	sub	ip, ip, r3, asr #31
	smull	r3, lr, r2, lr
	ldr	r3, .L173+12
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
.L174:
	.align	2
.L173:
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
	.comm	goblin1,56,4
	.comm	slash,52,4
	.comm	player,68,4
	.comm	shadowOAM,1024,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	collisionMap, %object
	.size	collisionMap, 4
collisionMap:
	.word	platformerCollisionBitmap
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
