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
	.file	"boss1AI.c"
	.text
	.align	2
	.global	initBoss1
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoss1, %function
initBoss1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #0
	push	{r4, r5, r6, lr}
	mov	lr, #6
	mov	r6, #18
	mov	r5, #8
	mov	r4, #1
	mov	ip, #45
	mov	r0, #104
	mov	r1, #32
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3]
	ldr	r3, .L4+12
	str	r2, [r3]
	ldr	r3, .L4+16
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	lr, [r3, #24]
	ldr	r2, .L4+20
	ldr	lr, .L4+24
	str	r6, [r3]
	str	r5, [r3, #20]
	str	r4, [r3, #28]
	str	ip, [lr]
	str	ip, [r3, #8]
	str	r0, [r3, #4]
	str	r0, [r2]
	str	r1, [r3, #12]
	str	r1, [r3, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	timer
	.word	rollCounter
	.word	hoverCounter
	.word	roundCounter
	.word	boss
	.word	hoverX
	.word	hoverY
	.size	initBoss1, .-initBoss1
	.align	2
	.global	drawHealthBar
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealthBar, %function
drawHealthBar:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, .L20
	ldr	r0, [r6]
	cmp	r0, #0
	ble	.L6
	mov	r3, #15
	cmp	r0, #1
	mov	ip, #72
	moveq	r1, #237
	movne	r1, #202
	ldr	r8, .L20+4
	ldr	lr, [r8]
	ldr	r4, .L20+8
	lsl	r2, lr, #3
	strh	r3, [r4, r2]	@ movhi
	add	r3, r4, lr, lsl #3
	strh	ip, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	mov	ip, #15
	mov	r3, #80
	mov	r1, #4
	mov	r7, #235
	mov	r9, #205
	mov	r5, #203
	add	r2, r4, r2
.L13:
	cmp	r0, r1
	strh	ip, [r2, #8]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strhge	r5, [r2, #12]	@ movhi
	sub	r10, r1, #1
	bge	.L11
	cmp	r0, r10
	strheq	r9, [r2, #12]	@ movhi
	strhne	r7, [r2, #12]	@ movhi
.L11:
	add	r3, r3, #8
	add	r1, r1, #2
	lsl	r3, r3, #16
	cmp	r1, #18
	lsr	r3, r3, #16
	add	r2, r2, #8
	bne	.L13
	ldr	r2, [r6]
	cmp	r2, #18
	mov	ip, #15
	mov	r1, #136
	moveq	r2, #204
	add	r3, lr, #8
	beq	.L19
	cmp	r2, #17
	moveq	r2, #206
	movne	r2, #236
.L19:
	lsl	r0, r3, #3
	add	lr, lr, #9
	add	r3, r4, r3, lsl #3
	str	lr, [r8]
	strh	ip, [r4, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L6:
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L21:
	.align	2
.L20:
	.word	boss
	.word	shadowOAMIndex
	.word	shadowOAM
	.size	drawHealthBar, .-drawHealthBar
	.align	2
	.global	drawBoss1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoss1, %function
drawBoss1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L30
	ldr	r3, [r2, #40]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L30+4
	cmp	r3, #0
	ldr	r3, [r4]
	beq	.L23
	ldr	r1, .L30+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawHealthBar
.L23:
	mov	r6, #664
	ldr	r5, [r2, #8]
	add	r0, r2, #20
	ldm	r0, {r0, r1}
	lsl	ip, r5, #16
	lsr	ip, ip, #16
	ldr	r7, [r2, #4]
	ldr	lr, .L30+8
	add	r1, ip, r1
	ldr	r8, .L30+12
	and	r1, r1, #255
	lsl	r9, r3, #3
	add	r0, r0, r7
	strh	r1, [lr, r9]	@ movhi
	ldr	r1, .L30+16
	and	r7, r7, r8
	and	r0, r0, r8
	ldr	r8, [r2, #32]
	orr	r0, r0, r1
	and	r1, r1, #32768
	orr	r1, r1, r7
	cmp	r8, #0
	add	r7, lr, r3, lsl #3
	strh	r0, [r7, #2]	@ movhi
	strh	r6, [r7, #4]	@ movhi
	add	r0, r3, #1
	add	r3, r3, #2
	beq	.L25
	ldr	r5, .L30+20
	ldr	r2, .L30+24
	ldr	r5, [r5]
	smull	r7, r6, r2, r5
	asr	r2, r5, #31
	rsb	r2, r2, r6, asr #2
	add	r2, r2, r2, lsl #2
	sub	r2, r5, r2, lsl #1
	cmp	r2, #4
	and	r2, ip, #255
	ldrle	ip, .L30+28
	ldrgt	ip, .L30+32
	str	r3, [r4]
	add	r3, lr, r0, lsl #3
	lsl	r0, r0, #3
	strh	r2, [lr, r0]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawHealthBar
.L25:
	ldr	r2, [r2, #28]
	cmp	r2, #0
	bne	.L27
	ldr	r2, .L30+20
	ldr	r6, [r2]
	ldr	r2, .L30+36
	add	r8, r6, #90
	smull	r7, ip, r2, r8
	smull	r7, r2, r6, r2
	add	r7, r2, r6
	asr	r2, r6, #31
	add	r9, ip, r8
	rsb	r2, r2, r7, asr #8
	asr	ip, r8, #31
	rsb	ip, ip, r9, asr #8
	add	r2, r2, r2, lsl #1
	add	ip, ip, ip, lsl #1
	rsb	r2, r2, r2, lsl #4
	sub	r2, r6, r2, lsl #3
	rsb	ip, ip, ip, lsl #4
	ldr	r6, .L30+40
	sub	ip, r8, ip, lsl #3
	ldr	r7, [r6, ip, lsl #2]
	str	r3, [r4]
	and	r5, r5, #255
	ldr	r3, .L30+44
	ldr	ip, [r6, r2, lsl #2]
	lsl	r4, r0, #3
	orr	r5, r5, #256
	strh	r5, [lr, r4]	@ movhi
	ldr	r3, [r3]
	ldr	r4, .L30+48
	lsl	r2, r7, #16
	add	r0, lr, r0, lsl #3
	asr	r2, r2, #16
	rsb	lr, ip, #0
	strh	r4, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r3, #14]	@ movhi
	strh	r2, [r3, #6]	@ movhi
	strh	r2, [r3, #30]	@ movhi
	strh	ip, [r3, #22]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawHealthBar
.L27:
	ldr	r5, .L30+48
	str	r3, [r4]
	and	r2, ip, #255
	lsl	r3, r0, #3
	add	r0, lr, r0, lsl #3
	strh	r2, [lr, r3]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	drawHealthBar
.L31:
	.align	2
.L30:
	.word	boss
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	511
	.word	-32768
	.word	.LANCHOR0
	.word	1717986919
	.word	17300
	.word	17172
	.word	-1240768329
	.word	.LANCHOR2
	.word	.LANCHOR1
	.word	17044
	.size	drawBoss1, .-drawBoss1
	.align	2
	.global	animateBoss1
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBoss1, %function
animateBoss1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L37
	ldr	r3, [r2, #28]
	cmp	r3, #1
	ldr	r3, [r2, #44]
	beq	.L36
.L33:
	add	r3, r3, #1
	str	r3, [r2, #44]
	bx	lr
.L36:
	ldr	r1, .L37+4
	smull	r0, r1, r3, r1
	asr	r0, r3, #31
	rsb	r1, r0, r1, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r3, r1, lsl #1
	bne	.L33
	ldr	r1, [r2, #8]
	cmp	r1, #45
	beq	.L34
	bic	r1, r1, #2
	cmp	r1, #44
	moveq	r1, #45
	streq	r1, [r2, #8]
	b	.L33
.L34:
	ldr	r1, .L37+8
	smull	ip, r1, r3, r1
	sub	r0, r1, r0
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	moveq	r1, #44
	movne	r1, #46
	str	r1, [r2, #8]
	b	.L33
.L38:
	.align	2
.L37:
	.word	boss
	.word	1717986919
	.word	1431655766
	.size	animateBoss1, .-animateBoss1
	.align	2
	.global	between
	.syntax unified
	.arm
	.fpu softvfp
	.type	between, %function
between:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, r0
	cmp	r0, r1
	movlt	r0, #0
	movge	r0, #1
	cmp	ip, r2
	movgt	r0, #0
	bx	lr
	.size	between, .-between
	.align	2
	.global	spawnLettuce
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnLettuce, %function
spawnLettuce:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, lr}
	mov	lr, #1
	mov	r5, r3
	mov	r7, #80
	mov	r6, #200
	ldr	r1, .L56
.L46:
	add	r0, r3, r3, lsl #3
	ldr	ip, [r1, r0, lsl #3]
	cmp	ip, #0
	add	r2, r1, r0, lsl #3
	lsl	r4, r3, #3
	bne	.L41
	cmp	r5, #1
	beq	.L45
	add	r3, r3, #1
	cmp	r3, #7
	str	lr, [r1, r0, lsl #3]
	str	r7, [r2, #8]
	str	r6, [r2, #12]
	str	lr, [r2, #28]
	str	ip, [r2, #48]
	add	r4, r3, r3, lsl #3
	beq	.L40
	ldr	r2, [r1, r4, lsl #3]
	cmp	r2, #0
	lsl	r4, r3, #3
	bne	.L55
.L45:
	mov	r0, #1
	mov	r5, #80
	mov	lr, #40
	mov	ip, #0
	add	r3, r4, r3
	add	r2, r1, r3, lsl #3
	str	r5, [r2, #8]
	str	lr, [r2, #12]
	str	ip, [r2, #48]
	str	r0, [r2, #28]
	str	r0, [r1, r3, lsl #3]
.L40:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L55:
	mov	r5, #1
.L41:
	add	r3, r3, #1
	cmp	r3, #7
	bne	.L46
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	lettuce
	.size	spawnLettuce, .-spawnLettuce
	.align	2
	.global	spawnBigLettuce
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnBigLettuce, %function
spawnBigLettuce:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, lr}
	mov	r7, #1
	mov	lr, r3
	mov	r6, #120
	mov	r5, #210
	mov	r4, #2
	ldr	r2, .L74
.L64:
	add	r1, r3, r3, lsl #2
	ldr	r0, [r2, r1, lsl #4]
	cmp	r0, #0
	lsl	ip, r3, #2
	add	r0, r2, r1, lsl #4
	bne	.L59
	cmp	lr, #1
	beq	.L63
	add	r3, r3, #1
	cmp	r3, #6
	str	r7, [r2, r1, lsl #4]
	str	r6, [r0, #8]
	str	r5, [r0, #12]
	str	r4, [r0, #48]
	add	ip, r3, r3, lsl #2
	beq	.L58
	ldr	r1, [r2, ip, lsl #4]
	cmp	r1, #0
	lsl	ip, r3, #2
	bne	.L73
.L63:
	mov	r4, #1
	mov	lr, #120
	mov	r0, #10
	mov	r1, #2
	add	r3, ip, r3
	str	r4, [r2, r3, lsl #4]
	add	r2, r2, r3, lsl #4
	str	lr, [r2, #8]
	str	r0, [r2, #12]
	str	r1, [r2, #48]
.L58:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L73:
	mov	lr, #1
.L59:
	add	r3, r3, #1
	cmp	r3, #6
	bne	.L64
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	big_lettuce
	.size	spawnBigLettuce, .-spawnBigLettuce
	.align	2
	.global	updateBoss1
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoss1, %function
updateBoss1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L108
	ldr	r7, .L108+4
	ldr	r4, .L108+8
	ldr	r2, [r6]
	ldr	r3, [r7]
	ldr	r1, [r4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r1, #0
	str	r2, [r6]
	str	r3, [r7]
	sub	sp, sp, #16
	ble	.L102
.L77:
	ldr	r5, .L108+12
	add	r2, r5, #8
	ldr	r0, [r5, #28]
	ldr	r1, [r5, #24]
	ldm	r2, {r2, r3}
	ldr	r8, .L108+16
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldmib	r4, {r0, r1, r2, r3}
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L78
	ldr	r3, [r5, #76]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r5, #72]
	subeq	r3, r3, #1
	streq	r3, [r5, #72]
	streq	r2, [r5, #76]
.L78:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #4]
	add	r3, r3, #1
	cmp	r3, #20
	movgt	r3, #0
	strle	r3, [r7, #4]
	strgt	r3, [r7, #4]
	strgt	r3, [r4, #32]
.L80:
	ldr	r2, [r6]
	ldr	r5, .L108+20
	cmp	r2, #150
	ldr	r1, [r5]
	ldr	r3, [r4, #28]
	ble	.L83
	cmp	r1, #2
	bgt	.L84
	cmp	r3, #0
	beq	.L103
.L85:
	ldr	r7, .L108+24
	cmp	r2, #250
	ldr	r2, [r7]
	bgt	.L104
.L90:
	cmp	r2, #2
	bgt	.L91
.L92:
	cmp	r3, #0
	beq	.L105
.L76:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L103:
	add	r1, r1, #1
	ldr	r2, .L108+28
	str	r1, [r5]
	str	r3, [r6]
	mov	lr, pc
	bx	r2
	mov	r3, #113
	cmp	r0, #0
	and	r0, r0, #1
	mov	r2, r0
	rsblt	r2, r0, #0
	cmp	r0, #0
	str	r3, [r4, #8]
	movne	r3, #17
	moveq	r3, #192
	str	r2, [r4, #36]
	str	r3, [r4, #4]
	ldr	r1, [r5]
	ldr	r2, [r6]
	ldr	r3, [r4, #28]
.L83:
	cmp	r1, #2
	ble	.L85
.L84:
	cmp	r3, #0
	bne	.L85
	mov	lr, #1
	ldr	ip, .L108+32
	ldr	r1, .L108+36
	ldr	r7, [ip]
	ldr	r0, .L108+40
	cmp	r2, #250
	ldr	r2, [r1]
	str	r3, [r5]
	str	r7, [r4, #8]
	ldr	r3, [r0]
	ldr	r7, .L108+24
	add	r2, r2, lr
	str	r2, [r1]
	str	r3, [r4, #4]
	str	lr, [r4, #28]
	ldr	r2, [r7]
	ble	.L87
	cmp	r2, #2
	bgt	.L89
.L88:
	ldr	r3, [r1]
	add	r2, r2, #1
	cmp	r3, #0
	movle	r3, #0
	movgt	r3, #1
	cmp	r2, #1
	mov	r1, #0
	movne	r3, #0
	cmp	r3, r1
	str	r2, [r7]
	str	r1, [r6]
	bne	.L106
	bl	spawnLettuce
	ldr	r2, [r7]
	ldr	r3, [r4, #28]
	b	.L90
.L104:
	cmp	r2, #2
	bgt	.L91
	cmp	r3, #1
	bne	.L92
	ldr	r1, .L108+36
	b	.L88
.L91:
	cmp	r3, #1
	bne	.L92
	ldr	ip, .L108+32
	ldr	r0, .L108+40
	b	.L89
.L105:
	ldr	r2, [r4, #4]
.L94:
	ldr	r1, [r5]
	ldr	r3, [r4, #36]
	cmp	r1, #0
	lsl	r3, r3, #1
	ldr	r1, [r6]
	sub	r3, r3, #1
	beq	.L107
	cmp	r1, #14
	addle	r3, r3, r2
	addgt	r3, r2, r3, lsl #1
	str	r3, [r4, #4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L102:
	mov	r1, #1
	ldr	r2, .L108+44
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L108+48
	str	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	b	.L77
.L87:
	cmp	r2, #2
	ble	.L76
.L89:
	mov	r3, #0
	ldr	r1, [ip]
	ldr	r2, [r0]
	str	r1, [r4, #8]
	str	r3, [r7]
	str	r3, [r4, #28]
	b	.L94
.L107:
	add	r3, r2, r3, lsl #1
	add	r1, r1, #1
	str	r3, [r4, #4]
	str	r1, [r6]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L106:
	bl	spawnBigLettuce
	ldr	r2, [r7]
	ldr	r3, [r4, #28]
	b	.L90
.L109:
	.align	2
.L108:
	.word	timer
	.word	.LANCHOR0
	.word	boss
	.word	player
	.word	collision
	.word	rollCounter
	.word	hoverCounter
	.word	rand
	.word	hoverY
	.word	roundCounter
	.word	hoverX
	.word	currMap
	.word	initGame
	.size	updateBoss1, .-updateBoss1
	.comm	currentState,4,4
	.global	currentFrame
	.global	time
	.comm	boss,48,4
	.global	SHADOW_OAM_AFF
	.comm	hoverY,4,4
	.comm	hoverX,4,4
	.comm	hoverCounter,4,4
	.comm	rollCounter,4,4
	.comm	roundCounter,4,4
	.global	damageTimer
	.comm	timer,4,4
	.global	sin_lut_fixed8
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sin_lut_fixed8, %object
	.size	sin_lut_fixed8, 1440
sin_lut_fixed8:
	.word	0
	.word	4
	.word	8
	.word	13
	.word	17
	.word	22
	.word	26
	.word	31
	.word	35
	.word	40
	.word	44
	.word	48
	.word	53
	.word	57
	.word	61
	.word	66
	.word	70
	.word	74
	.word	79
	.word	83
	.word	87
	.word	91
	.word	95
	.word	100
	.word	104
	.word	108
	.word	112
	.word	116
	.word	120
	.word	124
	.word	128
	.word	131
	.word	135
	.word	139
	.word	143
	.word	146
	.word	150
	.word	154
	.word	157
	.word	161
	.word	164
	.word	167
	.word	171
	.word	174
	.word	177
	.word	181
	.word	184
	.word	187
	.word	190
	.word	193
	.word	196
	.word	198
	.word	201
	.word	204
	.word	207
	.word	209
	.word	212
	.word	214
	.word	217
	.word	219
	.word	221
	.word	223
	.word	226
	.word	228
	.word	230
	.word	232
	.word	233
	.word	235
	.word	237
	.word	238
	.word	240
	.word	242
	.word	243
	.word	244
	.word	246
	.word	247
	.word	248
	.word	249
	.word	250
	.word	251
	.word	252
	.word	252
	.word	253
	.word	254
	.word	254
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	256
	.word	255
	.word	255
	.word	255
	.word	255
	.word	255
	.word	254
	.word	254
	.word	253
	.word	252
	.word	252
	.word	251
	.word	250
	.word	249
	.word	248
	.word	247
	.word	246
	.word	244
	.word	243
	.word	242
	.word	240
	.word	238
	.word	237
	.word	235
	.word	233
	.word	232
	.word	230
	.word	228
	.word	226
	.word	223
	.word	221
	.word	219
	.word	217
	.word	214
	.word	212
	.word	209
	.word	207
	.word	204
	.word	201
	.word	198
	.word	196
	.word	193
	.word	190
	.word	187
	.word	184
	.word	181
	.word	177
	.word	174
	.word	171
	.word	167
	.word	164
	.word	161
	.word	157
	.word	154
	.word	150
	.word	146
	.word	143
	.word	139
	.word	135
	.word	131
	.word	128
	.word	124
	.word	120
	.word	116
	.word	112
	.word	108
	.word	104
	.word	100
	.word	95
	.word	91
	.word	87
	.word	83
	.word	79
	.word	74
	.word	70
	.word	66
	.word	61
	.word	57
	.word	53
	.word	48
	.word	44
	.word	40
	.word	35
	.word	31
	.word	26
	.word	22
	.word	17
	.word	13
	.word	8
	.word	4
	.word	0
	.word	-4
	.word	-8
	.word	-13
	.word	-17
	.word	-22
	.word	-26
	.word	-31
	.word	-35
	.word	-40
	.word	-44
	.word	-48
	.word	-53
	.word	-57
	.word	-61
	.word	-66
	.word	-70
	.word	-74
	.word	-79
	.word	-83
	.word	-87
	.word	-91
	.word	-95
	.word	-100
	.word	-104
	.word	-108
	.word	-112
	.word	-116
	.word	-120
	.word	-124
	.word	-127
	.word	-131
	.word	-135
	.word	-139
	.word	-143
	.word	-146
	.word	-150
	.word	-154
	.word	-157
	.word	-161
	.word	-164
	.word	-167
	.word	-171
	.word	-174
	.word	-177
	.word	-181
	.word	-184
	.word	-187
	.word	-190
	.word	-193
	.word	-196
	.word	-198
	.word	-201
	.word	-204
	.word	-207
	.word	-209
	.word	-212
	.word	-214
	.word	-217
	.word	-219
	.word	-221
	.word	-223
	.word	-226
	.word	-228
	.word	-230
	.word	-232
	.word	-233
	.word	-235
	.word	-237
	.word	-238
	.word	-240
	.word	-242
	.word	-243
	.word	-244
	.word	-246
	.word	-247
	.word	-248
	.word	-249
	.word	-250
	.word	-251
	.word	-252
	.word	-252
	.word	-253
	.word	-254
	.word	-254
	.word	-255
	.word	-255
	.word	-255
	.word	-255
	.word	-255
	.word	-256
	.word	-255
	.word	-255
	.word	-255
	.word	-255
	.word	-255
	.word	-254
	.word	-254
	.word	-253
	.word	-252
	.word	-252
	.word	-251
	.word	-250
	.word	-249
	.word	-248
	.word	-247
	.word	-246
	.word	-244
	.word	-243
	.word	-242
	.word	-240
	.word	-238
	.word	-237
	.word	-235
	.word	-233
	.word	-232
	.word	-230
	.word	-228
	.word	-226
	.word	-223
	.word	-221
	.word	-219
	.word	-217
	.word	-214
	.word	-212
	.word	-209
	.word	-207
	.word	-204
	.word	-201
	.word	-198
	.word	-196
	.word	-193
	.word	-190
	.word	-187
	.word	-184
	.word	-181
	.word	-177
	.word	-174
	.word	-171
	.word	-167
	.word	-164
	.word	-161
	.word	-157
	.word	-154
	.word	-150
	.word	-146
	.word	-143
	.word	-139
	.word	-135
	.word	-131
	.word	-128
	.word	-124
	.word	-120
	.word	-116
	.word	-112
	.word	-108
	.word	-104
	.word	-100
	.word	-95
	.word	-91
	.word	-87
	.word	-83
	.word	-79
	.word	-74
	.word	-70
	.word	-66
	.word	-61
	.word	-57
	.word	-53
	.word	-48
	.word	-44
	.word	-40
	.word	-35
	.word	-31
	.word	-26
	.word	-22
	.word	-17
	.word	-13
	.word	-8
	.word	-4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	SHADOW_OAM_AFF, %object
	.size	SHADOW_OAM_AFF, 4
SHADOW_OAM_AFF:
	.word	shadowOAM
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	time, %object
	.size	time, 4
time:
	.space	4
	.type	damageTimer, %object
	.size	damageTimer, 4
damageTimer:
	.space	4
	.type	currentFrame, %object
	.size	currentFrame, 4
currentFrame:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
