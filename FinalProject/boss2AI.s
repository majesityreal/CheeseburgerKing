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
	add	r1, r3, #400
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
	add	r1, r3, #400
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, #0
	ldr	r10, .L32
	mov	r9, r6
	mov	r4, r10
	ldr	r8, .L32+4
	ldr	r5, .L32+8
	ldr	r7, .L32+12
	ldr	fp, .L32+16
	sub	sp, sp, #28
	b	.L21
.L20:
	cmp	r6, #10
	add	r4, r4, #40
	beq	.L14
.L21:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ldr	r1, [r4, #4]
	ldreq	r3, [r4, #36]
	addeq	r1, r1, r3
	streq	r1, [r4, #4]
	cmp	r1, #250
	bgt	.L31
	ldr	r0, [r4, #8]
	mov	lr, pc
	bx	r8
	add	ip, r5, #24
	cmp	r0, #0
	strne	r9, [r4]
	ldm	ip, {ip, lr}
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
	bx	r7
	cmp	r0, #0
	add	r6, r6, #1
	beq	.L20
	ldr	r3, [r5, #76]
	cmp	r3, #0
	bne	.L20
	str	r3, [sp, #20]
	mov	lr, pc
	bx	fp
	ldr	r3, [sp, #20]
	cmp	r6, #10
	str	r3, [r4]
	add	r4, r4, #40
	bne	.L21
.L14:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L31:
	mov	r3, #0
	add	r6, r6, r6, lsl #2
	lsl	r6, r6, #3
	str	r3, [r10, r6]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L33:
	.align	2
.L32:
	.word	knives
	.word	eCheckCollision
	.word	player
	.word	collision
	.word	hurtPlayer
	.size	updateKnives, .-updateKnives
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
	ldr	r9, .L48
	ldr	r0, [r9]
	cmp	r0, #0
	ble	.L34
	mov	r3, #15
	cmp	r0, #1
	moveq	r1, #237
	movne	r1, #202
	ldr	r10, .L48+4
	ldr	r5, [r10]
	ldr	r7, .L48+8
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
.L41:
	add	r3, lr, r2
	lsl	r3, r3, #16
	cmp	r0, r1
	lsr	r3, r3, #16
	strh	r4, [r2, #8]	@ movhi
	strh	r3, [r2, #10]	@ movhi
	strhge	r6, [r2, #12]	@ movhi
	sub	ip, r1, #1
	bge	.L39
	cmp	r0, ip
	strheq	fp, [r2, #12]	@ movhi
	strhne	r8, [r2, #12]	@ movhi
.L39:
	add	r1, r1, #2
	cmp	r1, #24
	add	r2, r2, #8
	bne	.L41
	ldr	r2, [r9]
	cmp	r2, #24
	mov	ip, #15
	mov	r1, #160
	moveq	r2, #204
	add	r3, r5, #11
	beq	.L47
	cmp	r2, #23
	moveq	r2, #206
	movne	r2, #236
.L47:
	lsl	r0, r3, #3
	add	r5, r5, #12
	add	r3, r7, r3, lsl #3
	str	r5, [r10]
	strh	ip, [r7, r0]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r2, [r3, #4]	@ movhi
.L34:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r2, .L57
	ldr	r3, [r2, #40]
	push	{r4, r5, r6, r7, r8, lr}
	ldr	lr, .L57+4
	cmp	r3, #0
	ldr	r3, [lr]
	beq	.L51
	ldr	r1, .L57+8
	lsl	r3, r3, #3
	ldrh	r2, [r1, r3]
	orr	r2, r2, #512
	strh	r2, [r1, r3]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawHealthBar2
.L51:
	mov	r4, #664
	ldr	ip, [r2, #4]
	ldr	r1, [r2, #20]
	ldr	r0, .L57+12
	add	r1, r1, ip
	ldr	r6, .L57+16
	ldrh	r5, [r2, #8]
	and	r1, r1, r0
	and	r7, ip, r0
	ldr	ip, .L57+8
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
	ldreq	r0, .L57+20
	orr	r1, r1, r7
	and	r5, r5, #255
	add	r3, r3, #2
	beq	.L56
	ldr	r4, .L57+24
	ldr	r0, .L57+28
	ldr	r4, [r4]
	smull	r7, r6, r0, r4
	asr	r0, r4, #31
	rsb	r0, r0, r6, asr #2
	add	r0, r0, r0, lsl #2
	sub	r0, r4, r0, lsl #1
	cmp	r0, #4
	ldrle	r0, .L57+32
	ldrgt	r0, .L57+36
.L56:
	str	r3, [lr]
	add	r3, ip, r2, lsl #3
	lsl	r2, r2, #3
	strh	r5, [ip, r2]	@ movhi
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, lr}
	b	drawHealthBar2
.L58:
	.align	2
.L57:
	.word	boss2
	.word	shadowOAMIndex
	.word	shadowOAM
	.word	511
	.word	-32768
	.word	17176
	.word	.LANCHOR0
	.word	1717986919
	.word	17296
	.word	17168
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
	ldr	r2, .L64
	ldr	r3, [r2, #28]
	cmp	r3, #1
	ldr	r3, [r2, #44]
	beq	.L63
.L60:
	add	r3, r3, #1
	str	r3, [r2, #44]
	bx	lr
.L63:
	ldr	r1, .L64+4
	smull	r0, r1, r3, r1
	asr	r0, r3, #31
	rsb	r1, r0, r1, asr #2
	add	r1, r1, r1, lsl #2
	cmp	r3, r1, lsl #1
	bne	.L60
	ldr	r1, [r2, #8]
	cmp	r1, #45
	beq	.L61
	bic	r1, r1, #2
	cmp	r1, #44
	moveq	r1, #45
	streq	r1, [r2, #8]
	b	.L60
.L61:
	ldr	r1, .L64+8
	smull	ip, r1, r3, r1
	sub	r0, r1, r0
	add	r0, r0, r0, lsl #1
	cmp	r3, r0
	moveq	r1, #44
	movne	r1, #46
	str	r1, [r2, #8]
	b	.L60
.L65:
	.align	2
.L64:
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
	ldr	r2, .L81
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r2]
	cmp	r9, r3
	movne	r8, r3
	moveq	r8, #2
	mov	r5, r3
	mov	r7, #80
	mov	r6, #200
	mov	lr, #1
	ldr	r1, .L81+4
.L73:
	add	r0, r3, r3, lsl #3
	ldr	ip, [r1, r0, lsl #3]
	cmp	ip, #0
	add	r2, r1, r0, lsl #3
	lsl	r4, r3, #3
	bne	.L67
	cmp	r5, #1
	beq	.L72
	add	r3, r3, #1
	cmp	r3, #7
	str	r7, [r2, #8]
	str	r6, [r2, #12]
	str	lr, [r2, #28]
	str	r8, [r2, #48]
	str	lr, [r1, r0, lsl #3]
	add	r4, r3, r3, lsl #3
	beq	.L66
	ldr	r2, [r1, r4, lsl #3]
	cmp	r2, #0
	lsl	r4, r3, #3
	bne	.L80
.L72:
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
.L66:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L80:
	mov	r5, #1
.L67:
	add	r3, r3, #1
	cmp	r3, #7
	bne	.L73
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L82:
	.align	2
.L81:
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
	ldr	r2, .L98
	push	{r4, r5, r6, r7, r8, r9, lr}
	ldr	r9, [r2]
	cmp	r9, r3
	movne	r8, r3
	moveq	r8, #2
	mov	r4, r3
	mov	r7, #120
	mov	r6, #210
	mov	r5, #1
	ldr	r2, .L98+4
.L90:
	add	r1, r3, r3, lsl #2
	ldr	ip, [r2, r1, lsl #4]
	cmp	ip, #0
	add	r0, r2, r1, lsl #4
	lsl	lr, r3, #2
	bne	.L84
	cmp	r4, #1
	beq	.L89
	add	r3, r3, #1
	cmp	r3, #6
	str	r7, [r0, #8]
	str	r6, [r0, #12]
	str	r8, [r0, #48]
	str	r5, [r2, r1, lsl #4]
	add	lr, r3, r3, lsl #2
	beq	.L83
	ldr	r1, [r2, lr, lsl #4]
	cmp	r1, #0
	lsl	lr, r3, #2
	bne	.L97
.L89:
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
.L83:
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L97:
	mov	r4, #1
.L84:
	add	r3, r3, #1
	cmp	r3, #6
	bne	.L90
	pop	{r4, r5, r6, r7, r8, r9, lr}
	bx	lr
.L99:
	.align	2
.L98:
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
	ldr	r5, .L142
	ldr	r6, .L142+4
	ldr	r4, .L142+8
	ldr	r2, [r5]
	ldr	r3, [r6]
	ldr	r1, [r4]
	add	r2, r2, #1
	add	r3, r3, #1
	cmp	r1, #0
	str	r2, [r5]
	str	r3, [r6]
	sub	sp, sp, #20
	ble	.L133
	ldr	r2, .L142+12
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
	ldr	r7, .L142+16
	sub	r3, r3, #5
	sub	r2, r2, #3
	add	r1, r1, #3
	add	r0, r0, #1
	mov	lr, pc
	bx	r7
	cmp	r0, #0
	bne	.L134
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L105
.L138:
	ldr	r3, [r6, #4]
	add	r3, r3, #1
	cmp	r3, #20
	movgt	r3, #0
	strle	r3, [r6, #4]
	strgt	r3, [r6, #4]
	strgt	r3, [r4, #32]
.L105:
	ldr	r2, [r5]
	cmp	r2, #60
	ldr	r3, [r4, #28]
	ble	.L108
	cmp	r3, #2
	beq	.L135
	ldr	r6, .L142+20
	cmp	r2, #250
	ldr	r2, [r6]
	ble	.L113
	cmp	r2, #2
	bgt	.L114
	cmp	r3, #1
	bne	.L115
	ldr	r3, .L142+24
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
	bne	.L136
	add	r2, r2, #2
	str	r2, [r6]
	bl	spawnLettuce2
	ldr	r3, [r4, #28]
	ldr	r2, [r6]
	b	.L113
.L108:
	ldr	r6, .L142+20
	ldr	r2, [r6]
.L113:
	cmp	r2, #2
	ble	.L115
.L114:
	cmp	r3, #1
	beq	.L137
.L115:
	cmp	r3, #2
	beq	.L117
.L118:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	updateKnives
.L134:
	ldr	r3, .L142+28
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L105
	b	.L138
.L133:
	ldr	r2, .L142+32
	ldr	r3, [r2]
	ldr	r1, .L142+36
	add	r3, r3, #1
	str	r3, [r2]
	mov	lr, pc
	bx	r1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L141:
	mov	ip, #1
	add	r3, r3, r3, lsl #2
	ldr	r2, [r4, #8]
	str	ip, [r0, r3, lsl #3]
	ldr	ip, [r4, #4]
	add	r3, r0, r3, lsl #3
	add	r2, r2, #8
	stmib	r3, {r2, ip}
	str	r1, [r3, #32]
.L117:
	ldr	r3, [r4, #36]
	lsl	r3, r3, #1
	cmp	r3, #2
	sub	r3, r3, #1
	beq	.L139
	cmn	r3, #1
	beq	.L140
.L121:
	ldr	r2, .L142+40
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
.L122:
	cmp	r3, #2
	ble	.L118
	ldr	r3, [r4, #4]
	sub	r3, r3, #116
	cmp	r3, #8
	movls	r1, #0
	movls	r3, #1
	strls	r1, [r2]
	strls	r3, [r4, #28]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	updateKnives
.L139:
	ldr	r1, [r4, #4]
	cmp	r1, #191
	bgt	.L121
.L120:
	ldr	r2, .L142+40
	add	r3, r1, r3, lsl #1
	str	r3, [r4, #4]
	ldr	r3, [r2]
	b	.L122
.L135:
	mov	r1, #0
	ldr	r0, .L142+44
	mov	r3, r1
	mov	r2, r0
	str	r1, [r5]
.L112:
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L141
	add	r3, r3, #1
	cmp	r3, #6
	add	r2, r2, #40
	bne	.L112
	b	.L117
.L137:
	mov	r0, #0
	mov	r1, #2
	ldr	r2, .L142+24
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	ldr	r3, .L142+48
	str	r0, [r6]
	str	r1, [r4, #28]
	mov	lr, pc
	bx	r3
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	str	r0, [r4, #36]
	ldr	r3, [r4, #28]
	b	.L115
.L140:
	ldr	r1, [r4, #4]
	cmp	r1, #17
	ble	.L121
	b	.L120
.L136:
	bl	spawnBigLettuce2
	ldr	r3, [r4, #28]
	ldr	r2, [r6]
	b	.L113
.L143:
	.align	2
.L142:
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
	.comm	knives,400,4
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
