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
	mov	r6, #24
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
	str	r2, [r3, #28]
	str	r2, [r3, #44]
	str	lr, [r3, #24]
	ldr	r2, .L4+20
	ldr	lr, .L4+24
	str	r6, [r3]
	str	r5, [r3, #20]
	str	r4, [r3, #36]
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L20
	ldr	r0, [r9]
	cmp	r0, #0
	ble	.L6
	mov	r3, #15
	cmp	r0, #1
	moveq	r1, #237
	movne	r1, #202
	ldr	r10, .L20+4
	ldr	r5, [r10]
	ldr	r7, .L20+8
	lsl	r2, r5, #3
	mov	ip, #72
	strh	r3, [r7, r2]	@ movhi
	add	r3, r7, r5, lsl #3
	strh	r1, [r3, #4]	@ movhi
	mov	r4, #15
	mov	r1, #4
	mov	r8, #235
	mov	fp, #205
	mov	r6, #203
	add	r2, r7, r2
	lsl	lr, r2, #16
	lsr	lr, lr, #16
	strh	ip, [r3, #2]	@ movhi
	rsb	lr, lr, #80
.L13:
	add	r3, lr, r2
	lsl	r3, r3, #16
	cmp	r0, r1
	lsr	r3, r3, #16
	strh	r4, [r2, #8]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strhge	r6, [r2, #12]	@ movhi
	sub	ip, r1, #1
	bge	.L11
	cmp	r0, ip
	strheq	fp, [r2, #12]	@ movhi
	strhne	r8, [r2, #12]	@ movhi
.L11:
	add	r1, r1, #2
	cmp	r1, #24
	add	r2, r2, #8
	bne	.L13
	ldr	r2, [r9]
	cmp	r2, #24
	mov	ip, #15
	mov	r1, #160
	moveq	r2, #204
	add	r3, r5, #11
	beq	.L19
	cmp	r2, #23
	moveq	r2, #206
	movne	r2, #236
.L19:
	lsl	r0, r3, #3
	add	r5, r5, #12
	add	r3, r7, r3, lsl #3
	str	r5, [r10]
	strh	ip, [r7, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L6:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
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
	ldr	r2, .L32
	ldr	r3, [r2, #40]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L32+4
	cmp	r3, #0
	ldr	r3, [r4]
	beq	.L23
	ldr	r1, .L32+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	drawHealthBar
.L23:
	mov	r6, #664
	ldr	r5, [r2, #8]
	add	r0, r2, #20
	ldm	r0, {r0, r1}
	lsl	ip, r5, #16
	lsr	ip, ip, #16
	ldr	r7, [r2, #4]
	ldr	lr, .L32+8
	add	r1, ip, r1
	ldr	r8, .L32+12
	and	r1, r1, #255
	lsl	r9, r3, #3
	add	r0, r0, r7
	strh	r1, [lr, r9]	@ movhi
	ldr	r1, .L32+16
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
	ldr	r5, .L32+20
	ldr	r2, .L32+24
	ldr	r5, [r5]
	smull	r7, r6, r2, r5
	asr	r2, r5, #31
	rsb	r2, r2, r6, asr #2
	add	r2, r2, r2, lsl #2
	sub	r2, r5, r2, lsl #1
	cmp	r2, #4
	and	r2, ip, #255
	ldrle	ip, .L32+28
	ldrgt	ip, .L32+32
	str	r3, [r4]
	add	r3, lr, r0, lsl #3
	lsl	r0, r0, #3
	strh	r2, [lr, r0]	@ movhi
	strh	ip, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	drawHealthBar
.L25:
	ldr	r6, [r2, #28]
	cmp	r6, #0
	bne	.L27
	ldr	ip, .L32+20
	ldr	r7, [ip]
	ldr	ip, .L32+36
	add	r9, r7, #90
	smull	r8, r6, ip, r9
	smull	r8, ip, r7, ip
	add	r8, ip, r7
	asr	ip, r7, #31
	add	r10, r6, r9
	rsb	ip, ip, r8, asr #8
	asr	r6, r9, #31
	rsb	r6, r6, r10, asr #8
	add	ip, ip, ip, lsl #1
	add	r6, r6, r6, lsl #1
	rsb	ip, ip, ip, lsl #4
	sub	ip, r7, ip, lsl #3
	rsb	r6, r6, r6, lsl #4
	ldr	r7, [r2, #36]
	ldr	r2, .L32+40
	sub	r6, r9, r6, lsl #3
	and	r5, r5, #255
	ldr	r6, [r2, r6, lsl #2]
	ldr	ip, [r2, ip, lsl #2]
	orr	r5, r5, #256
	lsl	r2, r0, #3
	strh	r5, [lr, r2]	@ movhi
	add	r0, lr, r0, lsl #3
	ldr	r2, .L32+44
	ldr	lr, .L32+48
	cmp	r7, #0
	strh	r1, [r0, #2]	@ movhi
	strh	lr, [r0, #4]	@ movhi
	ldr	r2, [r2]
	lsl	r1, r6, #16
	lsl	r0, ip, #16
	asr	r1, r1, #16
	asr	r0, r0, #16
	rsbne	r6, r6, #0
	rsbeq	ip, ip, #0
	strhne	r6, [r2, #14]	@ movhi
	str	r3, [r4]
	strhne	r0, [r2, #6]	@ movhi
	strhne	r1, [r2, #22]	@ movhi
	strhne	r0, [r2, #30]	@ movhi
	strheq	ip, [r2, #14]	@ movhi
	strheq	r1, [r2, #6]	@ movhi
	strheq	r0, [r2, #22]	@ movhi
	strheq	r1, [r2, #30]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	drawHealthBar
.L27:
	ldr	r5, .L32+48
	str	r3, [r4]
	and	r2, ip, #255
	lsl	r3, r0, #3
	add	r0, lr, r0, lsl #3
	strh	r2, [lr, r3]	@ movhi
	strh	r5, [r0, #4]	@ movhi
	strh	r1, [r0, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	drawHealthBar
.L33:
	.align	2
.L32:
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
	.word	.LANCHOR1
	.word	.LANCHOR2
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
	ldr	r2, .L39
	ldr	r3, [r2, #28]
	cmp	r3, #1
	ldr	r3, [r2, #44]
	beq	.L38
.L35:
	add	r3, r3, #1
	str	r3, [r2, #44]
	bx	lr
.L38:
	ldr	r1, .L39+4
	smull	r0, r1, r3, r1
	asr	r0, r3, #31
	rsb	r1, r0, r1, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r3, r1, lsl #1
	bne	.L35
	ldr	r1, [r2, #8]
	cmp	r1, #45
	beq	.L36
	bic	r1, r1, #2
	cmp	r1, #44
	moveq	r1, #45
	streq	r1, [r2, #8]
	b	.L35
.L36:
	ldr	r1, .L39+8
	smull	ip, r1, r3, r1
	sub	r0, r1, r0
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	moveq	r1, #44
	movne	r1, #46
	str	r1, [r2, #8]
	b	.L35
.L40:
	.align	2
.L39:
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
	ldr	r2, .L57
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r2]
	cmp	r9, r3
	movne	r8, r3
	moveq	r8, #2
	mov	r5, r3
	mov	r7, #80
	mov	r6, #200
	mov	lr, #1
	ldr	r1, .L57+4
.L49:
	add	r0, r3, r3, lsl #3
	ldr	ip, [r1, r0, lsl #3]
	cmp	ip, #0
	add	r2, r1, r0, lsl #3
	lsl	r4, r3, #3
	bne	.L43
	cmp	r5, #1
	beq	.L48
	add	r3, r3, #1
	cmp	r3, #7
	str	r7, [r2, #8]
	str	r6, [r2, #12]
	str	lr, [r2, #28]
	str	r8, [r2, #48]
	str	lr, [r1, r0, lsl #3]
	add	r4, r3, r3, lsl #3
	beq	.L42
	ldr	r2, [r1, r4, lsl #3]
	cmp	r2, #0
	lsl	r4, r3, #3
	bne	.L56
.L48:
	cmp	r9, #0
	mov	r0, #1
	moveq	ip, #2
	mov	r5, #80
	mov	lr, #40
	add	r3, r4, r3
	add	r2, r1, r3, lsl #3
	str	ip, [r2, #48]
	str	r5, [r2, #8]
	str	lr, [r2, #12]
	str	r0, [r2, #28]
	str	r0, [r1, r3, lsl #3]
.L42:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L56:
	mov	r5, #1
.L43:
	add	r3, r3, #1
	cmp	r3, #7
	bne	.L49
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L58:
	.align	2
.L57:
	.word	cheating
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
	ldr	r2, .L74
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r2]
	cmp	r9, r3
	movne	r8, r3
	moveq	r8, #2
	mov	r4, r3
	mov	r7, #120
	mov	r6, #210
	mov	r5, #1
	ldr	r2, .L74+4
.L66:
	add	r1, r3, r3, lsl #2
	ldr	ip, [r2, r1, lsl #4]
	cmp	ip, #0
	add	r0, r2, r1, lsl #4
	lsl	lr, r3, #2
	bne	.L60
	cmp	r4, #1
	beq	.L65
	add	r3, r3, #1
	cmp	r3, #6
	str	r7, [r0, #8]
	str	r6, [r0, #12]
	str	r8, [r0, #48]
	str	r5, [r2, r1, lsl #4]
	add	lr, r3, r3, lsl #2
	beq	.L59
	ldr	r1, [r2, lr, lsl #4]
	cmp	r1, #0
	lsl	lr, r3, #2
	bne	.L73
.L65:
	cmp	r9, #0
	moveq	ip, #2
	mov	r5, #120
	mov	r4, #10
	mov	r0, #1
	add	r3, lr, r3
	add	r1, r2, r3, lsl #4
	str	ip, [r1, #48]
	str	r5, [r1, #8]
	str	r4, [r1, #12]
	str	r0, [r2, r3, lsl #4]
.L59:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L73:
	mov	r4, #1
.L60:
	add	r3, r3, #1
	cmp	r3, #6
	bne	.L66
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L75:
	.align	2
.L74:
	.word	cheating
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
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, .L112
	ldr	r6, .L112+4
	ldr	r4, .L112+8
	ldr	r2, [r5]
	ldr	r3, [r6]
	ldr	r1, [r4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r1, #0
	str	r2, [r5]
	str	r3, [r6]
	sub	sp, sp, #16
	ble	.L103
	ldr	r2, .L112+12
	add	r0, r2, #24
	ldm	r0, {r0, r1}
	ldr	lr, [r2, #8]
	ldr	ip, [r2, #12]
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #12]
	str	r1, [sp, #12]
	str	r0, [sp, #8]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #4]
	stm	sp, {ip, lr}
	ldr	r7, .L112+16
	sub	r3, r3, #6
	sub	r2, r2, #5
	add	r1, r1, #3
	add	r0, r0, #2
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L104
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L81
.L110:
	ldr	r3, [r6, #4]
	add	r3, r3, #1
	cmp	r3, #20
	movgt	r3, #0
	strle	r3, [r6, #4]
	strgt	r3, [r6, #4]
	strgt	r3, [r4, #32]
.L81:
	ldr	r3, [r5]
	ldr	r7, .L112+20
	cmp	r3, #150
	ldr	r2, [r7]
	ldr	r6, [r4, #28]
	bgt	.L105
.L84:
	cmp	r2, #2
	bgt	.L85
.L86:
	ldr	r8, .L112+24
	cmp	r3, #250
	ldr	r3, [r8]
	ble	.L92
	cmp	r3, #2
	ble	.L106
.L93:
	cmp	r6, #1
	beq	.L107
.L94:
	cmp	r6, #0
	bne	.L76
	ldr	r2, [r4, #4]
.L96:
	ldr	r1, [r7]
	ldr	r3, [r4, #36]
	cmp	r1, #0
	lsl	r3, r3, #1
	ldr	r1, [r5]
	sub	r3, r3, #1
	beq	.L108
	cmp	r1, #14
	addle	r3, r3, r2
	addgt	r3, r2, r3, lsl #1
	str	r3, [r4, #4]
.L76:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L105:
	cmp	r2, #2
	bgt	.L85
	cmp	r6, #0
	bne	.L86
	add	r2, r2, #1
	ldr	r3, .L112+28
	str	r2, [r7]
	str	r6, [r5]
	mov	lr, pc
	bx	r3
	mov	r2, #113
	subs	r3, r0, #0
	ldr	r1, [r7]
	and	r3, r3, #1
	rsblt	r3, r3, #0
	cmp	r1, #2
	str	r3, [r4, #36]
	str	r2, [r4, #8]
	ble	.L109
.L87:
	cmp	r3, #0
	movne	r3, #17
	moveq	r3, #192
	ldr	r2, [r7]
	str	r3, [r4, #4]
	ldr	r6, [r4, #28]
	ldr	r3, [r5]
	b	.L84
.L104:
	ldr	r3, .L112+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L81
	b	.L110
.L85:
	cmp	r6, #0
	bne	.L86
	mov	r1, #1
	ldr	r2, .L112+36
	cmp	r3, #250
	ldr	r3, [r2]
	ldr	r10, .L112+40
	ldr	r9, .L112+44
	add	r3, r3, r1
	ldr	r0, [r10]
	str	r3, [r2]
	ldr	r8, .L112+24
	ldr	r3, [r9]
	str	r6, [r7]
	str	r3, [r4, #4]
	str	r0, [r4, #8]
	str	r1, [r4, #28]
	ldr	r3, [r8]
	ble	.L89
	cmp	r3, #2
	bgt	.L91
.L90:
	ldr	r2, [r2]
	add	r1, r3, #1
	cmp	r2, #1
	movle	r2, #0
	movgt	r2, #1
	cmp	r1, #1
	mov	r0, #0
	movne	r2, #0
	cmp	r2, r0
	str	r1, [r8]
	str	r0, [r5]
	bne	.L111
	add	r3, r3, #2
	str	r3, [r8]
	bl	spawnLettuce
	ldr	r3, [r8]
	ldr	r6, [r4, #28]
.L92:
	cmp	r3, #2
	ble	.L94
	b	.L93
.L103:
	ldr	r2, .L112+48
	ldr	r3, [r2]
	ldr	r1, .L112+52
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L106:
	cmp	r6, #1
	bne	.L94
	ldr	r2, .L112+36
	b	.L90
.L107:
	ldr	r10, .L112+40
	ldr	r9, .L112+44
.L91:
	ldr	r3, .L112+56
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L112+60
	ldr	r3, .L112+64
	mov	lr, pc
	bx	r3
	mov	r3, #0
	ldr	r1, [r10]
	ldr	r2, [r9]
	str	r1, [r4, #8]
	str	r3, [r8]
	str	r3, [r4, #28]
	b	.L96
.L108:
	add	r3, r2, r3, lsl #1
	add	r1, r1, #1
	str	r3, [r4, #4]
	str	r1, [r5]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	lr
.L89:
	cmp	r3, #2
	ble	.L76
	b	.L91
.L109:
	ldr	r3, .L112+56
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L112+60
	ldr	r3, .L112+64
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #36]
	b	.L87
.L111:
	bl	spawnBigLettuce
	ldr	r3, [r8]
	ldr	r6, [r4, #28]
	b	.L92
.L113:
	.align	2
.L112:
	.word	timer
	.word	.LANCHOR0
	.word	boss
	.word	player
	.word	collision
	.word	rollCounter
	.word	hoverCounter
	.word	rand
	.word	hurtPlayer
	.word	roundCounter
	.word	hoverY
	.word	hoverX
	.word	currMap
	.word	initGame
	.word	sfx_lettuce_roll_length
	.word	sfx_lettuce_roll_data
	.word	playSoundB
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
	.comm	soundB,32,4
	.comm	soundA,32,4
	.global	sin_lut_fixed8
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
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
	.set	.LANCHOR2,. + 0
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
