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
	mov	ip, #8
	push	{r4, r5, lr}
	mov	r0, #45
	mov	r5, #50
	mov	r4, #6
	mov	lr, #1
	mov	r1, #104
	ldr	r3, .L4
	str	r2, [r3]
	ldr	r3, .L4+4
	str	r2, [r3]
	ldr	r3, .L4+8
	str	r2, [r3, #32]
	str	r2, [r3, #24]
	str	ip, [r3, #12]
	ldr	r2, .L4+12
	ldr	ip, .L4+16
	str	r5, [r3]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	r0, [r3, #8]
	str	r0, [ip]
	str	r1, [r3, #4]
	str	r1, [r2]
	pop	{r4, r5, lr}
	bx	lr
.L5:
	.align	2
.L4:
	.word	timer
	.word	beginning
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
	ldr	r3, [r2, #28]
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
	ldr	r0, [r2, #16]
	lsl	ip, r5, #16
	ldr	r7, [r2, #4]
	ldr	r1, [r2, #12]
	lsr	ip, ip, #16
	ldr	lr, .L11+8
	add	r0, ip, r0
	ldr	r8, [r2, #20]
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
	ldr	r3, [r2, #20]
	cmp	r3, #1
	ldr	r3, [r2, #32]
	beq	.L17
.L14:
	add	r3, r3, #1
	str	r3, [r2, #32]
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
	push	{r4, r5, r6, r7, lr}
	mov	r7, #1
	mov	r4, r3
	mov	r6, #80
	mov	r5, #200
	ldr	r2, .L37
.L27:
	add	r1, r3, r3, lsl #3
	ldr	ip, [r2, r1, lsl #3]
	cmp	ip, #0
	add	r0, r2, r1, lsl #3
	lsl	lr, r3, #3
	bne	.L22
	cmp	r4, #1
	beq	.L26
	add	r3, r3, #1
	cmp	r3, #7
	str	r7, [r2, r1, lsl #3]
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
	mov	r4, #1
	mov	ip, #80
	mov	r0, #40
	mov	r1, #0
	add	r3, lr, r3
	str	r4, [r2, r3, lsl #3]
	add	r2, r2, r3, lsl #3
	str	ip, [r2, #8]
	str	r0, [r2, #12]
	str	r1, [r2, #48]
.L21:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L36:
	mov	r4, #1
.L22:
	add	r3, r3, #1
	cmp	r3, #7
	bne	.L27
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L38:
	.align	2
.L37:
	.word	lettuce
	.size	spawnLettuce, .-spawnLettuce
	.global	__aeabi_idivmod
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
	push	{r4, r5, r6, lr}
	ldr	r5, .L50
	ldr	r3, [r5]
	ldr	r2, .L50+4
	add	r3, r3, #1
	smull	r0, r1, r2, r3
	ldr	r6, .L50+8
	asr	r2, r3, #31
	ldr	r4, [r6]
	rsb	r2, r2, r1, asr #2
	add	r2, r2, r2, lsl #2
	add	r4, r4, #1
	cmp	r3, r2, lsl #1
	str	r3, [r5]
	str	r4, [r6]
	bne	.L40
	ldr	r0, [r5, #4]
	ldr	r3, .L50+12
	add	r0, r0, #1
	ldr	r1, [r3, #4]
	ldr	r3, .L50+16
	mov	lr, pc
	bx	r3
	str	r1, [r5, #4]
.L40:
	cmp	r4, #180
	ble	.L41
	ldr	r4, .L50+20
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L49
.L42:
	mov	r3, #0
	ldr	r4, .L50+24
	ldr	r2, .L50+28
	str	r3, [r6]
	str	r3, [r4, #20]
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
	str	r2, [r4, #24]
	str	r3, [r4, #4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L41:
	cmp	r4, #150
	bgt	.L42
	pop	{r4, r5, r6, lr}
	bx	lr
.L49:
	bl	spawnLettuce
	mov	r2, #0
	mov	r3, #1
	str	r2, [r6]
	str	r3, [r4]
	pop	{r4, r5, r6, lr}
	bx	lr
.L51:
	.align	2
.L50:
	.word	.LANCHOR0
	.word	1717986919
	.word	timer
	.word	.LANCHOR1
	.word	__aeabi_idivmod
	.word	beginning
	.word	boss
	.word	rand
	.size	updateBoss1, .-updateBoss1
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
	push	{r4, r5, r6, lr}
	mov	r6, #1
	mov	lr, r3
	mov	r5, #137
	mov	r4, #210
	ldr	r2, .L68
.L58:
	add	r1, r3, r3, lsl #2
	ldr	r0, [r2, r1, lsl #4]
	cmp	r0, #0
	lsl	ip, r3, #2
	add	r0, r2, r1, lsl #4
	bne	.L53
	cmp	lr, #1
	beq	.L57
	add	r3, r3, #1
	cmp	r3, #6
	str	r6, [r2, r1, lsl #4]
	str	r5, [r0, #8]
	str	r4, [r0, #12]
	add	ip, r3, r3, lsl #2
	beq	.L52
	ldr	r1, [r2, ip, lsl #4]
	cmp	r1, #0
	lsl	ip, r3, #2
	bne	.L67
.L57:
	mov	r4, #1
	mov	lr, #137
	mov	r0, #10
	add	r3, ip, r3
	add	r1, r2, r3, lsl #4
	str	r4, [r2, r3, lsl #4]
	str	lr, [r1, #8]
	str	r0, [r1, #12]
.L52:
	pop	{r4, r5, r6, lr}
	bx	lr
.L67:
	mov	lr, #1
.L53:
	add	r3, r3, #1
	cmp	r3, #6
	bne	.L58
	pop	{r4, r5, r6, lr}
	bx	lr
.L69:
	.align	2
.L68:
	.word	big_lettuce
	.size	spawnBigLettuce, .-spawnBigLettuce
	.comm	currentState,4,4
	.global	currentFrame
	.global	pikachuFrames
	.global	pikachuFramecount
	.global	time
	.comm	boss,36,4
	.global	SHADOW_OAM_AFF
	.comm	hoverY,4,4
	.comm	hoverX,4,4
	.comm	beginning,4,4
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
	.type	pikachuFramecount, %object
	.size	pikachuFramecount, 4
pikachuFramecount:
	.word	6
	.type	pikachuFrames, %object
	.size	pikachuFrames, 24
pikachuFrames:
	.word	0
	.word	8
	.word	16
	.word	24
	.word	256
	.word	264
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	time, %object
	.size	time, 4
time:
	.space	4
	.type	currentFrame, %object
	.size	currentFrame, 4
currentFrame:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
