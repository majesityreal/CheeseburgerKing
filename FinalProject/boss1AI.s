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
	mov	r6, #5
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
	.global	drawBoss1
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoss1, %function
drawBoss1:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L11
	ldr	r3, [r2, #40]
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L11+4
	cmp	r3, #0
	ldr	r3, [r4]
	beq	.L7
	ldr	r1, .L11+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L7:
	mov	r6, #664
	ldr	r5, [r2, #8]
	ldr	r0, [r2, #24]
	lsl	ip, r5, #16
	ldr	r7, [r2, #4]
	ldr	r1, [r2, #20]
	lsr	ip, ip, #16
	ldr	lr, .L11+8
	add	r0, ip, r0
	ldr	r8, [r2, #28]
	and	r0, r0, #255
	add	r2, r1, r7
	lsl	r1, r3, #3
	strh	r0, [lr, r1]	@ movhi
	ldr	r1, .L11+12
	and	r2, r2, r1
	and	r7, r7, r1
	ldr	r1, .L11+16
	add	r0, lr, r3, lsl #3
	orr	r2, r2, r1
	cmp	r8, #0
	and	r1, r1, #32768
	strh	r2, [r0, #2]	@ movhi
	strh	r6, [r0, #4]	@ movhi
	add	r2, r3, #1
	orr	r1, r1, r7
	add	r3, r3, #2
	bne	.L9
	ldr	r0, .L11+20
	ldr	r6, [r0]
	ldr	r0, .L11+24
	add	r8, r6, #90
	smull	r7, ip, r0, r8
	smull	r7, r0, r6, r0
	add	r7, r0, r6
	asr	r0, r6, #31
	add	r9, ip, r8
	rsb	r0, r0, r7, asr #8
	asr	ip, r8, #31
	rsb	ip, ip, r9, asr #8
	add	r0, r0, r0, lsl #1
	add	ip, ip, ip, lsl #1
	rsb	r0, r0, r0, lsl #4
	sub	r0, r6, r0, lsl #3
	rsb	ip, ip, ip, lsl #4
	ldr	r6, .L11+28
	sub	ip, r8, ip, lsl #3
	ldr	r7, [r6, ip, lsl #2]
	str	r3, [r4]
	and	r5, r5, #255
	ldr	r3, .L11+32
	ldr	ip, [r6, r0, lsl #2]
	lsl	r4, r2, #3
	orr	r5, r5, #256
	strh	r5, [lr, r4]	@ movhi
	ldr	r3, [r3]
	ldr	r4, .L11+36
	lsl	r0, r7, #16
	add	r2, lr, r2, lsl #3
	asr	r0, r0, #16
	rsb	lr, ip, #0
	strh	r4, [r2, #4]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	lr, [r3, #14]	@ movhi
	strh	r0, [r3, #6]	@ movhi
	strh	r0, [r3, #30]	@ movhi
	strh	ip, [r3, #22]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L9:
	ldr	r0, .L11+36
	str	r3, [r4]
	and	ip, ip, #255
	lsl	r3, r2, #3
	add	r2, lr, r2, lsl #3
	strh	ip, [lr, r3]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r0, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L12:
	.align	2
.L11:
	.word	boss
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	511
	.word	-32768
	.word	.LANCHOR0
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
	ldr	r2, .L18
	ldr	r3, [r2, #28]
	cmp	r3, #1
	ldr	r3, [r2, #44]
	beq	.L17
.L14:
	add	r3, r3, #1
	str	r3, [r2, #44]
	bx	lr
.L17:
	ldr	r1, .L18+4
	smull	r0, r1, r3, r1
	asr	r0, r3, #31
	rsb	r1, r0, r1, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r3, r1, lsl #1
	bne	.L14
	ldr	r1, [r2, #8]
	cmp	r1, #45
	beq	.L15
	bic	r1, r1, #2
	cmp	r1, #44
	moveq	r1, #45
	streq	r1, [r2, #8]
	b	.L14
.L15:
	ldr	r1, .L18+8
	smull	ip, r1, r3, r1
	sub	r0, r1, r0
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	moveq	r1, #44
	movne	r1, #46
	str	r1, [r2, #8]
	b	.L14
.L19:
	.align	2
.L18:
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
	push	{r4, r5, r6, lr}
	mov	ip, #1
	mov	r4, r3
	mov	r6, #80
	mov	r5, #200
	ldr	r2, .L37
.L27:
	add	r1, r3, r3, lsl #3
	ldr	r0, [r2, r1, lsl #3]
	cmp	r0, #0
	lsl	lr, r3, #3
	add	r0, r2, r1, lsl #3
	bne	.L22
	cmp	r4, #1
	beq	.L26
	add	r3, r3, #1
	cmp	r3, #7
	str	ip, [r2, r1, lsl #3]
	str	r6, [r0, #8]
	str	r5, [r0, #12]
	str	ip, [r0, #48]
	add	lr, r3, r3, lsl #3
	beq	.L21
	ldr	r1, [r2, lr, lsl #3]
	cmp	r1, #0
	lsl	lr, r3, #3
	bne	.L36
.L26:
	mov	r0, #1
	mov	r4, #80
	mov	ip, #40
	add	r3, lr, r3
	add	r1, r2, r3, lsl #3
	str	r4, [r1, #8]
	str	ip, [r1, #12]
	str	r0, [r1, #48]
	str	r0, [r2, r3, lsl #3]
.L21:
	pop	{r4, r5, r6, lr}
	bx	lr
.L36:
	mov	r4, #1
.L22:
	add	r3, r3, #1
	cmp	r3, #7
	bne	.L27
	pop	{r4, r5, r6, lr}
	bx	lr
.L38:
	.align	2
.L37:
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
	ldr	r2, .L55
.L45:
	add	r1, r3, r3, lsl #2
	ldr	r0, [r2, r1, lsl #4]
	cmp	r0, #0
	lsl	ip, r3, #2
	add	r0, r2, r1, lsl #4
	bne	.L40
	cmp	lr, #1
	beq	.L44
	add	r3, r3, #1
	cmp	r3, #6
	str	r7, [r2, r1, lsl #4]
	str	r6, [r0, #8]
	str	r5, [r0, #12]
	str	r4, [r0, #48]
	add	ip, r3, r3, lsl #2
	beq	.L39
	ldr	r1, [r2, ip, lsl #4]
	cmp	r1, #0
	lsl	ip, r3, #2
	bne	.L54
.L44:
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
.L39:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L54:
	mov	lr, #1
.L40:
	add	r3, r3, #1
	cmp	r3, #6
	bne	.L45
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r5, .L85
	ldr	r6, .L85+4
	ldr	r4, .L85+8
	ldr	r3, [r5]
	ldr	r2, [r6]
	ldr	r1, [r4]
	add	r3, r3, #1
	add	r2, r2, #1
	cmp	r1, #0
	str	r3, [r5]
	str	r2, [r6]
	ble	.L79
.L58:
	ldr	r2, [r4, #32]
	cmp	r2, #0
	beq	.L60
	ldr	r2, [r6, #4]
	add	r2, r2, #1
	cmp	r2, #20
	movgt	r2, #0
	strle	r2, [r6, #4]
	strgt	r2, [r6, #4]
	strgt	r2, [r4, #32]
.L60:
	ldr	r7, .L85+12
	cmp	r3, #150
	ldr	r1, [r7]
	ldr	r2, [r4, #28]
	ble	.L63
	cmp	r1, #2
	bgt	.L64
	cmp	r2, #0
	beq	.L80
.L65:
	ldr	r6, .L85+16
	cmp	r3, #240
	ldr	r3, [r6]
	bgt	.L81
.L70:
	cmp	r3, #2
	bgt	.L71
.L72:
	cmp	r2, #0
	beq	.L82
.L57:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L80:
	add	r1, r1, #1
	ldr	r3, .L85+20
	str	r1, [r7]
	str	r2, [r5]
	mov	lr, pc
	bx	r3
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
	ldr	r1, [r7]
	ldr	r3, [r5]
	ldr	r2, [r4, #28]
.L63:
	cmp	r1, #2
	ble	.L65
.L64:
	cmp	r2, #0
	bne	.L65
	mov	lr, #1
	ldr	r1, .L85+24
	cmp	r3, #240
	ldr	r3, [r1]
	ldr	ip, .L85+28
	ldr	r0, .L85+32
	add	r3, r3, lr
	str	r2, [r7]
	str	r3, [r1]
	ldr	r2, [ip]
	ldr	r3, [r0]
	ldr	r6, .L85+16
	str	r3, [r4, #4]
	str	r2, [r4, #8]
	str	lr, [r4, #28]
	ldr	r3, [r6]
	ble	.L67
	cmp	r3, #2
	bgt	.L69
.L68:
	ldr	r2, [r1]
	add	r3, r3, #1
	cmp	r2, #0
	movle	r2, #0
	movgt	r2, #1
	cmp	r3, #1
	mov	r1, #0
	movne	r2, #0
	cmp	r2, r1
	str	r3, [r6]
	str	r1, [r5]
	bne	.L83
	bl	spawnLettuce
	ldr	r3, [r6]
	ldr	r2, [r4, #28]
	b	.L70
.L81:
	cmp	r3, #2
	bgt	.L71
	cmp	r2, #1
	bne	.L72
	ldr	r1, .L85+24
	b	.L68
.L71:
	cmp	r2, #1
	bne	.L72
	ldr	ip, .L85+28
	ldr	r0, .L85+32
	b	.L69
.L82:
	ldr	r2, [r4, #4]
.L74:
	ldr	r1, [r7]
	ldr	r3, [r4, #36]
	cmp	r1, #0
	lsl	r3, r3, #1
	ldr	r1, [r5]
	sub	r3, r3, #1
	beq	.L84
	cmp	r1, #14
	addle	r3, r3, r2
	addgt	r3, r2, r3, lsl #1
	str	r3, [r4, #4]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L79:
	mov	r1, #1
	ldr	r2, .L85+36
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, .L85+40
	str	r1, [r4, #40]
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	b	.L58
.L67:
	cmp	r3, #2
	ble	.L57
.L69:
	mov	r3, #0
	ldr	r1, [ip]
	ldr	r2, [r0]
	str	r1, [r4, #8]
	str	r3, [r6]
	str	r3, [r4, #28]
	b	.L74
.L84:
	add	r3, r2, r3, lsl #1
	add	r1, r1, #1
	str	r3, [r4, #4]
	str	r1, [r5]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L83:
	bl	spawnBigLettuce
	ldr	r3, [r6]
	ldr	r2, [r4, #28]
	b	.L70
.L86:
	.align	2
.L85:
	.word	timer
	.word	.LANCHOR0
	.word	boss
	.word	rollCounter
	.word	hoverCounter
	.word	rand
	.word	roundCounter
	.word	hoverY
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
