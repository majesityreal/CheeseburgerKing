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
	.file	"boss2AI.c"
	.text
	.align	2
	.global	initBoss2
	.arch armv4t
	.syntax unified
	.arm
	.fpu softvfp
	.type	initBoss2, %function
initBoss2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, #1
	mov	r3, #0
	mov	r8, #45
	mov	r7, #104
	mov	r6, #32
	mov	fp, #24
	mov	r10, #8
	mov	r9, #6
	mov	r4, r5
	mov	lr, #13
	mov	ip, #15
	mov	r0, #4
	ldr	r1, .L6
	str	r3, [r1]
	ldr	r1, .L6+4
	str	r3, [r1]
	ldr	r1, .L6+8
	str	r3, [r1]
	ldr	r1, .L6+12
	str	r3, [r1]
	ldr	r1, .L6+16
	mov	r2, r3
	str	r3, [r1, #44]
	ldr	r3, .L6+20
	str	r8, [r3]
	ldr	r3, .L6+24
	str	r7, [r3]
	ldr	r3, .L6+28
	str	fp, [r1]
	str	r10, [r1, #20]
	str	r9, [r1, #24]
	str	r8, [r1, #8]
	str	r7, [r1, #4]
	str	r5, [r1, #28]
	str	r5, [r1, #36]
	str	r6, [r1, #12]
	str	r6, [r1, #16]
	add	r1, r3, #200
.L2:
	str	r2, [r3]
	str	lr, [r3, #12]
	str	ip, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r0, [r3, #28]
	str	r2, [r3, #32]
	str	r4, [r3, #36]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L2
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L7:
	.align	2
.L6:
	.word	timer2
	.word	bombCounter2
	.word	hoverCounter2
	.word	roundCounter2
	.word	boss2
	.word	hoverY2
	.word	hoverX2
	.word	knives
	.size	initBoss2, .-initBoss2
	.align	2
	.global	initKnives
	.syntax unified
	.arm
	.fpu softvfp
	.type	initKnives, %function
initKnives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r2, #0
	mov	r4, #13
	mov	lr, #15
	mov	ip, #4
	mov	r0, #1
	ldr	r3, .L12
	add	r1, r3, #200
.L9:
	str	r2, [r3]
	str	r4, [r3, #12]
	str	lr, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	ip, [r3, #28]
	str	r2, [r3, #32]
	str	r0, [r3, #36]
	add	r3, r3, #40
	cmp	r3, r1
	bne	.L9
	pop	{r4, lr}
	bx	lr
.L13:
	.align	2
.L12:
	.word	knives
	.size	initKnives, .-initKnives
	.align	2
	.global	updateKnives
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateKnives, %function
updateKnives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, #0
	ldr	r4, .L31
	ldr	r9, .L31+4
	ldr	r5, .L31+8
	ldr	r8, .L31+12
	ldr	r10, .L31+16
	sub	sp, sp, #20
	add	r6, r4, #200
.L21:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	r1, [r4, #4]
	ldreq	r3, [r4, #36]
	addeq	r1, r1, r3
	streq	r1, [r4, #4]
	cmp	r1, #160
	strgt	r7, [r4]
	bgt	.L16
	add	r1, r1, #5
	ldr	r0, [r4, #8]
	mov	lr, pc
	bx	r9
	add	ip, r5, #24
	cmp	r0, #0
	ldm	ip, {ip, lr}
	strne	r7, [r4]
	add	r2, r4, #12
	ldm	r2, {r2, r3}
	ldr	r1, [r4, #4]
	ldr	r0, [r4, #8]
	str	lr, [sp, #12]
	str	ip, [sp, #8]
	ldr	lr, [r5, #8]
	ldr	ip, [r5, #12]
	sub	r3, r3, #4
	stm	sp, {ip, lr}
	sub	r2, r2, #3
	add	r1, r1, #4
	add	r0, r0, #3
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L16
	ldr	fp, [r5, #76]
	cmp	fp, #0
	beq	.L30
.L16:
	add	r4, r4, #40
	cmp	r4, r6
	bne	.L21
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L30:
	mov	lr, pc
	bx	r10
	str	fp, [r4]
	b	.L16
.L32:
	.align	2
.L31:
	.word	knives
	.word	eCheckCollision
	.word	player
	.word	collision
	.word	hurtPlayer
	.size	updateKnives, .-updateKnives
	.global	__aeabi_idivmod
	.align	2
	.global	drawKnives
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawKnives, %function
drawKnives:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r0, #0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L51
	ldr	r4, .L51+4
	ldr	r6, [r3]
	ldr	r8, .L51+8
	ldr	r2, .L51+12
	ldr	fp, .L51+16
	ldr	r10, .L51+20
	add	r9, r4, #200
.L40:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r4, #20]
	add	r3, r3, #1
	smull	r1, r0, r10, r3
	ldr	r5, [r4, #8]
	asr	r1, r3, #31
	rsb	r1, r1, r0, asr #1
	add	r1, r1, r1, lsl #2
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	and	r5, r5, r2
	cmp	r3, r1
	orr	r5, r5, #16384
	add	r1, r8, r6, lsl #3
	lsl	r7, r6, #3
	str	r3, [r4, #20]
	strh	r5, [r1, #2]	@ movhi
	mov	r3, r1
	strh	fp, [r1, #4]	@ movhi
	strh	r0, [r8, r7]	@ movhi
	beq	.L35
	ldr	r1, [r4, #24]
	cmp	r1, #1
	beq	.L37
.L50:
	cmp	r1, #2
	beq	.L38
	cmp	r1, #0
	addeq	r7, r8, r7
	orreq	r5, r5, #8192
	strheq	r5, [r7, #2]	@ movhi
.L39:
	mov	r0, #1
	add	r6, r6, r0
.L34:
	add	r4, r4, #40
	cmp	r4, r9
	bne	.L40
	cmp	r0, #0
	ldrne	r3, .L51
	strne	r6, [r3]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L35:
	add	r0, r4, #24
	ldm	r0, {r0, r1}
	ldr	r3, .L51+24
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	cmp	r1, #1
	str	r1, [r4, #24]
	ldr	r2, .L51+12
	bne	.L50
.L37:
	add	r7, r8, r7
	orr	r5, r5, #12288
	strh	r5, [r7, #2]	@ movhi
	b	.L39
.L38:
	add	r7, r8, r7
	orr	r5, r5, #4096
	strh	r5, [r7, #2]	@ movhi
	b	.L39
.L52:
	.align	2
.L51:
	.word	shadowOAMIndex
	.word	knives
	.word	shadowOAM
	.word	511
	.word	278
	.word	1717986919
	.word	__aeabi_idivmod
	.size	drawKnives, .-drawKnives
	.align	2
	.global	drawHealthBar2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHealthBar2, %function
drawHealthBar2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L67
	ldr	r0, [r9]
	cmp	r0, #0
	ble	.L53
	mov	r3, #15
	cmp	r0, #1
	moveq	r1, #237
	movne	r1, #202
	ldr	r10, .L67+4
	ldr	r5, [r10]
	ldr	r7, .L67+8
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
.L60:
	add	r3, lr, r2
	lsl	r3, r3, #16
	cmp	r0, r1
	lsr	r3, r3, #16
	strh	r4, [r2, #8]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strhge	r6, [r2, #12]	@ movhi
	sub	ip, r1, #1
	bge	.L58
	cmp	r0, ip
	strheq	fp, [r2, #12]	@ movhi
	strhne	r8, [r2, #12]	@ movhi
.L58:
	add	r1, r1, #2
	cmp	r1, #24
	add	r2, r2, #8
	bne	.L60
	ldr	r2, [r9]
	cmp	r2, #24
	mov	ip, #15
	mov	r1, #160
	moveq	r2, #204
	add	r3, r5, #11
	beq	.L66
	cmp	r2, #23
	moveq	r2, #206
	movne	r2, #236
.L66:
	lsl	r0, r3, #3
	add	r5, r5, #12
	add	r3, r7, r3, lsl #3
	str	r5, [r10]
	strh	ip, [r7, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L53:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L68:
	.align	2
.L67:
	.word	boss2
	.word	shadowOAMIndex
	.word	shadowOAM
	.size	drawHealthBar2, .-drawHealthBar2
	.align	2
	.global	drawBoss2
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBoss2, %function
drawBoss2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L76
	ldr	r3, [r2, #40]
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L76+4
	cmp	r3, #0
	ldr	r3, [lr]
	beq	.L70
	ldr	r1, .L76+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	bl	drawHealthBar2
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawKnives
.L70:
	mov	r4, #664
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #20]
	ldr	r0, .L76+12
	add	r1, r1, ip
	ldr	r6, .L76+16
	ldrh	r5, [r2, #8]
	and	r1, r1, r0
	and	r7, ip, r0
	ldr	ip, .L76+8
	ldr	r0, [r2, #24]
	ldr	r8, [r2, #32]
	add	r0, r5, r0
	orr	r2, r1, r6
	and	r1, r6, #32768
	add	r6, ip, r3, lsl #3
	and	r0, r0, #255
	strh	r2, [r6, #2]	@ movhi
	cmp	r8, #0
	lsl	r2, r3, #3
	strh	r0, [ip, r2]	@ movhi
	strh	r4, [r6, #4]	@ movhi
	add	r2, r3, #1
	ldreq	r0, .L76+20
	orr	r1, r1, r7
	and	r5, r5, #255
	add	r3, r3, #2
	beq	.L75
	ldr	r4, .L76+24
	ldr	r0, .L76+28
	ldr	r4, [r4]
	smull	r7, r6, r0, r4
	asr	r0, r4, #31
	rsb	r0, r0, r6, asr #2
	add	r0, r0, r0, lsl #2
	sub	r0, r4, r0, lsl #1
	cmp	r0, #4
	ldrle	r0, .L76+32
	ldrgt	r0, .L76+36
.L75:
	str	r3, [lr]
	add	r3, ip, r2, lsl #3
	lsl	r2, r2, #3
	strh	r5, [ip, r2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	bl	drawHealthBar2
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawKnives
.L77:
	.align	2
.L76:
	.word	boss2
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	511
	.word	-32768
	.word	25368
	.word	.LANCHOR0
	.word	1717986919
	.word	25488
	.word	25360
	.size	drawBoss2, .-drawBoss2
	.align	2
	.global	animateBoss2
	.syntax unified
	.arm
	.fpu softvfp
	.type	animateBoss2, %function
animateBoss2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L83
	ldr	r3, [r2, #28]
	cmp	r3, #1
	ldr	r3, [r2, #44]
	beq	.L82
.L79:
	add	r3, r3, #1
	str	r3, [r2, #44]
	bx	lr
.L82:
	ldr	r1, .L83+4
	smull	r0, r1, r3, r1
	asr	r0, r3, #31
	rsb	r1, r0, r1, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r3, r1, lsl #1
	bne	.L79
	ldr	r1, [r2, #8]
	cmp	r1, #45
	beq	.L80
	bic	r1, r1, #2
	cmp	r1, #44
	moveq	r1, #45
	streq	r1, [r2, #8]
	b	.L79
.L80:
	ldr	r1, .L83+8
	smull	ip, r1, r3, r1
	sub	r0, r1, r0
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	moveq	r1, #44
	movne	r1, #46
	str	r1, [r2, #8]
	b	.L79
.L84:
	.align	2
.L83:
	.word	boss2
	.word	1717986919
	.word	1431655766
	.size	animateBoss2, .-animateBoss2
	.align	2
	.global	spawnLettuce2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnLettuce2, %function
spawnLettuce2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r3
	mov	r8, #60
	mov	r7, #160
	mov	r6, #3
	mov	r5, #1
	ldr	r2, .L99
	ldr	lr, [r2]
	sub	r2, lr, r3
	rsbs	lr, r2, #0
	ldr	r1, .L99+4
	adc	lr, lr, r2
.L91:
	add	r0, r3, r3, lsl #3
	ldr	r2, [r1, r0, lsl #3]
	cmp	r2, #0
	lsl	ip, r3, #3
	add	r2, r1, r0, lsl #3
	bne	.L86
	cmp	r4, #1
	beq	.L90
	add	r3, r3, #1
	cmp	r3, #7
	str	r8, [r2, #8]
	str	r7, [r2, #12]
	str	r6, [r2, #28]
	str	lr, [r2, #48]
	str	r5, [r1, r0, lsl #3]
	add	ip, r3, r3, lsl #3
	beq	.L85
	ldr	r2, [r1, ip, lsl #3]
	cmp	r2, #0
	lsl	ip, r3, #3
	bne	.L98
.L90:
	mov	r2, #3
	mov	r5, #1
	mov	r4, #60
	mov	r0, #65
	add	r3, ip, r3
	str	r5, [r1, r3, lsl #3]
	add	r1, r1, r3, lsl r2
	str	lr, [r1, #48]
	str	r4, [r1, #8]
	str	r0, [r1, #12]
	str	r2, [r1, #28]
.L85:
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L98:
	mov	r4, #1
.L86:
	add	r3, r3, #1
	cmp	r3, #7
	bne	.L91
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L100:
	.align	2
.L99:
	.word	cheating
	.word	lettuce
	.size	spawnLettuce2, .-spawnLettuce2
	.align	2
	.global	spawnBigLettuce2
	.syntax unified
	.arm
	.fpu softvfp
	.type	spawnBigLettuce2, %function
spawnBigLettuce2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, #0
	ldr	r2, .L116
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r2]
	cmp	r9, r3
	movne	r8, r3
	moveq	r8, #2
	mov	r4, r3
	mov	r7, #104
	mov	r6, #210
	mov	r5, #1
	ldr	r2, .L116+4
.L108:
	add	r1, r3, r3, lsl #2
	ldr	ip, [r2, r1, lsl #4]
	cmp	ip, #0
	add	r0, r2, r1, lsl #4
	lsl	lr, r3, #2
	bne	.L102
	cmp	r4, #1
	beq	.L107
	add	r3, r3, #1
	cmp	r3, #6
	str	r7, [r0, #8]
	str	r6, [r0, #12]
	str	r8, [r0, #48]
	str	r5, [r2, r1, lsl #4]
	add	lr, r3, r3, lsl #2
	beq	.L101
	ldr	r1, [r2, lr, lsl #4]
	cmp	r1, #0
	lsl	lr, r3, #2
	bne	.L115
.L107:
	cmp	r9, #0
	moveq	ip, #2
	mov	r5, #104
	mov	r4, #10
	mov	r0, #1
	add	r3, lr, r3
	add	r1, r2, r3, lsl #4
	str	ip, [r1, #48]
	str	r5, [r1, #8]
	str	r4, [r1, #12]
	str	r0, [r2, r3, lsl #4]
.L101:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L115:
	mov	r4, #1
.L102:
	add	r3, r3, #1
	cmp	r3, #6
	bne	.L108
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L117:
	.align	2
.L116:
	.word	cheating
	.word	big_lettuce
	.size	spawnBigLettuce2, .-spawnBigLettuce2
	.align	2
	.global	updateBoss2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBoss2, %function
updateBoss2:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L159
	ldr	r6, .L159+4
	ldr	r4, .L159+8
	ldr	r2, [r5]
	ldr	r3, [r6]
	ldr	r1, [r4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r1, #0
	str	r2, [r5]
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L150
	bl	updateKnives
	ldr	r2, .L159+12
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
	ldr	r7, .L159+16
	sub	r3, r3, #6
	sub	r2, r2, #5
	add	r1, r1, #3
	add	r0, r0, #2
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L151
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L123
.L155:
	ldr	r3, [r6, #4]
	add	r3, r3, #1
	cmp	r3, #20
	movgt	r3, #0
	strle	r3, [r6, #4]
	strgt	r3, [r6, #4]
	strgt	r3, [r4, #32]
.L123:
	ldr	r2, [r5]
	cmp	r2, #60
	ldr	r3, [r4, #28]
	ble	.L126
	cmp	r3, #2
	beq	.L152
	ldr	r6, .L159+20
	cmp	r2, #250
	ldr	r2, [r6]
	ble	.L131
	cmp	r2, #2
	bgt	.L132
	cmp	r3, #1
	bne	.L133
	ldr	r3, .L159+24
	ldr	r3, [r3]
	add	r1, r2, #1
	cmp	r3, #1
	movle	r3, #0
	movgt	r3, #1
	cmp	r1, #1
	mov	r0, #0
	movne	r3, #0
	cmp	r3, r0
	str	r1, [r6]
	str	r0, [r5]
	bne	.L153
	add	r2, r2, #2
	str	r2, [r6]
	bl	spawnLettuce2
	ldr	r3, [r4, #28]
	ldr	r2, [r6]
	b	.L131
.L126:
	ldr	r6, .L159+20
	ldr	r2, [r6]
.L131:
	cmp	r2, #2
	ble	.L133
.L132:
	cmp	r3, #1
	beq	.L154
.L133:
	cmp	r3, #2
	beq	.L135
.L118:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L151:
	ldr	r3, .L159+28
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L123
	b	.L155
.L150:
	ldr	r2, .L159+32
	ldr	r3, [r2]
	ldr	r1, .L159+36
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L158:
	mov	ip, #1
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #8]
	str	ip, [r0, r3, lsl #3]
	ldr	ip, [r4, #4]
	add	r3, r0, r3, lsl #3
	add	r2, r2, #8
	stmib	r3, {r2, ip}
	str	r1, [r3, #32]
.L135:
	ldr	r1, [r4, #36]
	lsl	r3, r1, #1
	cmp	r3, #2
	sub	r3, r3, #1
	beq	.L156
	cmn	r3, #1
	beq	.L157
.L138:
	cmp	r1, #0
	movne	r1, #0
	moveq	r1, #1
	ldr	r2, .L159+40
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	str	r1, [r4, #36]
.L139:
	cmp	r3, #2
	ble	.L118
	ldr	r3, [r4, #4]
	sub	r3, r3, #116
	cmp	r3, #8
	movls	r1, #0
	movls	r3, #1
	strls	r1, [r2]
	strls	r3, [r4, #28]
	b	.L118
.L156:
	ldr	r0, [r4, #4]
	cmp	r0, #191
	bgt	.L138
.L137:
	ldr	r2, .L159+40
	add	r3, r0, r3, lsl #1
	str	r3, [r4, #4]
	ldr	r3, [r2]
	b	.L139
.L152:
	mov	r1, #0
	ldr	r0, .L159+44
	mov	r3, r1
	mov	r2, r0
	str	r1, [r5]
.L130:
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L158
	add	r3, r3, #1
	cmp	r3, #5
	add	r2, r2, #40
	bne	.L130
	b	.L135
.L154:
	mov	r0, #0
	mov	r1, #2
	ldr	r2, .L159+24
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L159+48
	str	r0, [r6]
	str	r1, [r4, #28]
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	str	r0, [r4, #36]
	ldr	r3, [r4, #28]
	b	.L133
.L157:
	ldr	r0, [r4, #4]
	cmp	r0, #17
	ble	.L138
	b	.L137
.L153:
	bl	spawnBigLettuce2
	ldr	r3, [r4, #28]
	ldr	r2, [r6]
	b	.L131
.L160:
	.align	2
.L159:
	.word	timer2
	.word	.LANCHOR0
	.word	boss2
	.word	player
	.word	collision
	.word	hoverCounter2
	.word	roundCounter2
	.word	hurtPlayer
	.word	currMap
	.word	initGame
	.word	bombCounter2
	.word	knives
	.word	rand
	.size	updateBoss2, .-updateBoss2
	.global	currentFrame2
	.global	time2
	.comm	boss2,48,4
	.comm	knives,200,4
	.comm	hoverY2,4,4
	.comm	hoverX2,4,4
	.comm	hoverCounter2,4,4
	.comm	bombCounter2,4,4
	.comm	roundCounter2,4,4
	.global	damageTimer2
	.comm	timer2,4,4
	.comm	soundB,32,4
	.comm	soundA,32,4
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	time2, %object
	.size	time2, 4
time2:
	.space	4
	.type	damageTimer2, %object
	.size	damageTimer2, 4
damageTimer2:
	.space	4
	.type	currentFrame2, %object
	.size	currentFrame2, 4
currentFrame2:
	.space	4
	.ident	"GCC: (devkitARM release 53) 9.1.0"
