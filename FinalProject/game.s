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
	.type	gameOver.part.0, %function
gameOver.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r1, #1
	mov	ip, #7
	mov	r0, #0
	ldr	r2, .L3
	ldr	r3, .L3+4
	str	r1, [r2]
	str	r1, [r2, #4]
	str	ip, [r3, #36]
	str	r0, [r3, #44]
	bx	lr
.L4:
	.align	2
.L3:
	.word	.LANCHOR0
	.word	player
	.size	gameOver.part.0, .-gameOver.part.0
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
	mov	r2, #0
	push	{r4, r5, r6, r7, lr}
	mov	ip, #6
	mov	r7, #8
	mov	r6, #16
	mov	r5, #1
	mov	r4, #3
	mov	lr, #2
	mov	r0, #4
	ldr	r3, .L10
	ldr	r1, [r3]
	ldr	r3, .L10+4
	cmp	r1, r2
	str	r2, [r3, #52]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r2, [r3, #64]
	str	r2, [r3, #76]
	str	r2, [r3, #80]
	str	r7, [r3, #24]
	str	r6, [r3, #28]
	str	r5, [r3, #16]
	str	r4, [r3, #20]
	str	lr, [r3, #68]
	str	ip, [r3, #48]
	str	r0, [r3, #72]
	beq	.L6
	cmp	r1, r5
	moveq	r1, #80
	moveq	r2, #120
	streq	r1, [r3, #8]
	streq	r2, [r3, #12]
.L5:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L6:
	mov	r1, #159
	mov	r2, #35
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L11:
	.align	2
.L10:
	.word	currMap
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
	push	{r4, r5, lr}
	mov	r2, #0
	mov	r5, #1
	mov	r4, #14
	mov	lr, #12
	mov	ip, #15
	mvn	r0, #2
	mov	r1, #4
	ldr	r3, .L14
	str	r5, [r3, #40]
	str	r4, [r3, #16]
	str	lr, [r3, #20]
	str	ip, [r3, #12]
	str	r0, [r3, #24]
	str	r1, [r3, #36]
	str	r2, [r3, #8]
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #28]
	str	r2, [r3, #32]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	str	r2, [r3, #52]
	pop	{r4, r5, lr}
	bx	lr
.L15:
	.align	2
.L14:
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
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, .L27
	ldr	r9, [r3, #8]
	ldr	r1, .L27+4
	rsbs	r8, r9, #1
	mov	r3, r1
	movcc	r8, #0
	mov	r2, #0
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #128
	mov	lr, #96
	mov	ip, #1
	add	r0, r1, #504
.L17:
	str	r2, [r3]
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #28]
	str	r2, [r3, #36]
	str	r5, [r3, #40]
	str	r2, [r3, #56]
	str	r4, [r3, #64]
	str	lr, [r3, #68]
	str	ip, [r3, #60]
	str	r8, [r3, #48]
	str	r2, [r3, #44]
	add	r3, r3, #72
	cmp	r3, r0
	bne	.L17
	ldr	r2, .L27+8
	cmp	r9, #0
	movne	r8, #0
	moveq	r8, #2
	mov	r3, r2
	mov	r0, #0
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #240
	mov	ip, #60
	add	lr, r2, #480
.L18:
	str	r0, [r3]
	str	r7, [r3, #16]
	str	r6, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r5, [r3, #40]
	str	r0, [r3, #28]
	str	r0, [r3, #56]
	str	r4, [r3, #60]
	str	ip, [r3, #64]
	str	ip, [r3, #68]
	str	r8, [r3, #48]
	str	r0, [r3, #44]
	add	r3, r3, #80
	cmp	r3, lr
	bne	.L18
	mov	ip, #0
	mov	lr, #8
	mov	r6, #4
	mvn	r5, #0
	mov	r3, #1
	ldr	r0, .L27+12
	add	r4, r0, #264
.L19:
	str	ip, [r0]
	str	lr, [r0, #16]
	str	lr, [r0, #20]
	str	ip, [r0, #24]
	str	ip, [r0, #28]
	str	r6, [r0, #32]
	str	r5, [r0, #36]
	str	r3, [r0, #40]
	add	r0, r0, #44
	cmp	r0, r4
	bne	.L19
	ldr	r0, .L27+16
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L20
	cmp	r0, #1
	ldreq	r3, .L27+20
	moveq	lr, pc
	bxeq	r3
.L16:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L20:
	mov	lr, #160
	str	lr, [r1, #8]
	str	lr, [r1, #152]
	str	lr, [r1, #440]
	mov	lr, #920
	str	lr, [r1, #300]
	mov	lr, #96
	str	lr, [r1, #368]
	mov	lr, #1600
	str	lr, [r1, #444]
	mov	lr, #55
	str	lr, [r2, #8]
	mov	lr, #119
	mov	r4, #64
	mov	fp, #136
	mov	r10, #672
	mov	r9, #800
	mov	r8, #112
	mov	ip, #135
	mov	r7, #87
	mov	r6, #2016
	mov	r5, #1936
	str	lr, [r2, #88]
	ldr	lr, .L27+24
	str	lr, [r1, #228]
	ldr	lr, .L27+28
	str	r3, [r1]
	str	r3, [r1, #72]
	str	r3, [r1, #144]
	str	r3, [r1, #216]
	str	r3, [r1, #288]
	str	r3, [r1, #360]
	str	r3, [r1, #432]
	str	fp, [r1, #12]
	str	r4, [r1, #80]
	str	r4, [r1, #224]
	str	r10, [r1, #84]
	str	r9, [r1, #156]
	str	r8, [r1, #296]
	str	lr, [r1, #372]
	ldr	r1, .L27+32
	str	r1, [r2, #12]
	ldr	r1, .L27+36
	str	r1, [r2, #92]
	ldr	r1, .L27+40
	str	r1, [r2, #172]
	add	r1, r1, #272
	str	r3, [r2]
	str	r3, [r2, #80]
	str	r3, [r2, #160]
	str	r7, [r2, #168]
	str	r0, [r2, #56]
	str	r0, [r2, #136]
	str	r0, [r2, #216]
	str	r3, [r2, #240]
	str	r3, [r2, #320]
	str	r3, [r2, #400]
	str	r6, [r2, #332]
	str	r5, [r2, #412]
	str	r0, [r2, #296]
	str	r0, [r2, #376]
	str	r0, [r2, #456]
	str	ip, [r2, #248]
	str	ip, [r2, #328]
	str	ip, [r2, #408]
	str	r1, [r2, #252]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L28:
	.align	2
.L27:
	.word	.LANCHOR0
	.word	lettuce
	.word	big_lettuce
	.word	bl_bullets
	.word	currMap
	.word	initBoss1
	.word	769
	.word	1304
	.word	963
	.word	350
	.word	1417
	.size	initEnemies, .-initEnemies
	.align	2
	.global	initMaps
	.syntax unified
	.arm
	.fpu softvfp
	.type	initMaps, %function
initMaps:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, #22528
	mov	r7, #0
	mov	r8, #67108864
	ldr	r5, .L36
	ldr	r6, [r5]
	ldr	r2, .L36+4
	cmp	r6, #1
	str	r7, [r2]
	strh	r3, [r8, #10]	@ movhi
	beq	.L30
	cmp	r6, #2
	beq	.L31
	cmp	r6, r7
	beq	.L34
	ldr	r4, .L36+8
.L32:
	ldr	r3, .L36+12
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L36+16
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L36+20
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r1, [r3, #8]
	mov	r2, #83886080
	mov	r3, #48
	mov	r0, #3
	mov	lr, pc
	bx	r6
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r4, r4, r3, lsl #5
	ldr	r1, [r4, #12]
	mov	r3, #1008
	mov	r2, #100663296
	mov	r0, #3
	mov	lr, pc
	bx	r6
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L30:
	ldr	r3, .L36+24
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L36+28
	ldr	r3, .L36+32
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r4, .L36+8
	ldr	r2, .L36+36
	ldr	r1, .L36+40
	ldr	r0, .L36+44
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	r0, [r3, #12]
	ldr	r2, .L36+48
	ldr	r1, .L36+52
	ldr	r3, .L36+56
	str	r1, [r2]
	str	r6, [r3, #4]
	strh	r7, [r8, #26]	@ movhi
	b	.L32
.L34:
	ldr	r3, .L36+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L36+64
	ldr	r3, .L36+32
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	r1, #66
	mov	r2, #28
	ldr	r3, [r5]
	ldr	r4, .L36+8
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r0, [r3, #20]
	str	r1, [r3, #28]
	ldr	r0, .L36+68
	ldr	r1, .L36+72
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, .L36+76
	ldr	r1, .L36+80
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r6, [r3, #16]
	ldr	r0, .L36+56
	ldr	r1, .L36+48
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	ldr	r3, .L36+84
	str	r6, [r0, #4]
	str	r3, [r1]
	b	.L32
.L31:
	mov	r2, #1
	ldr	r3, .L36+56
	ldr	r4, .L36+8
	str	r2, [r3, #12]
	b	.L32
.L37:
	.align	2
.L36:
	.word	currMap
	.word	bgIndex
	.word	maps
	.word	waitForVBlank
	.word	DMANow
	.word	100712448
	.word	bossSong_length
	.word	bossSong_data
	.word	playSoundA
	.word	boss1Map
	.word	boss1Pal
	.word	boss1Tiles
	.word	collisionMap
	.word	boss1CollisionBitmap
	.word	.LANCHOR0
	.word	map1Song_length
	.word	map1Song_data
	.word	map1Map
	.word	map1Pal
	.word	map1Tiles
	.word	1978
	.word	map1CollisionBitmap
	.size	initMaps, .-initMaps
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, .L45
	ldr	r3, [r6]
	cmp	r3, #2
	beq	.L44
	ldr	r3, .L45+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L45+8
.L40:
	mov	r2, #0
	mov	r1, #512
	ldr	r3, .L45+12
	str	r2, [r5, #12]
	add	r2, r3, #1024
.L41:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L41
	mov	r4, #0
	bl	initMaps
	mov	r7, #1
	bl	initPlayer
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #2
	mov	r2, #4
	ldr	r3, .L45+16
	str	r7, [r3, #40]
	str	lr, [r3, #16]
	str	ip, [r3, #20]
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r2, [r3, #36]
	str	r4, [r3, #8]
	str	r4, [r3]
	str	r4, [r3, #4]
	str	r4, [r3, #28]
	str	r4, [r3, #32]
	str	r4, [r3, #44]
	str	r4, [r3, #48]
	str	r4, [r3, #52]
	bl	initEnemies
	mov	r1, #2
	ldr	r2, [r6]
	ldr	r3, .L45+20
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, [r3, #20]
	ldr	r0, .L45+24
	ldr	r3, .L45+28
	str	r4, [r5, #16]
	str	r4, [r5, #20]
	str	r1, [r5, #24]
	str	ip, [r0]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L44:
	mov	r2, #1
	ldr	r5, .L45+8
	ldr	r3, .L45+32
	str	r2, [r5, #12]
	mov	lr, pc
	bx	r3
	b	.L40
.L46:
	.align	2
.L45:
	.word	currMap
	.word	startTimer
	.word	.LANCHOR0
	.word	shadowOAM
	.word	slash
	.word	maps
	.word	hOff
	.word	vOff
	.word	pauseTimer
	.size	initGame, .-initGame
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap.part.0, %function
updateMap.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L48
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L49:
	.align	2
.L48:
	.word	currMap
	.size	updateMap.part.0, .-updateMap.part.0
	.align	2
	.global	updateMap
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateMap, %function
updateMap:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L54
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L54+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L54+8
	str	r3, [sp]
	ldr	r0, .L54+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L54+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L53
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L53:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L55:
	.align	2
.L54:
	.word	currMap
	.word	maps
	.word	player
	.word	pMapPos
	.word	collision
	.size	updateMap, .-updateMap
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
	ldr	r2, .L82
	ldr	r3, [r2, #52]
	ldr	r0, .L82+4
	cmp	r3, #0
	push	{r4, r5, r6, r7, lr}
	ldr	r1, [r0, #24]
	ldr	r4, [r2, #36]
	beq	.L57
	ldr	ip, .L82+8
	lsl	r5, r1, #3
	ldrh	r3, [ip, r5]
	add	lr, r1, #1
	orr	r3, r3, #512
	cmp	r4, #1
	strh	r3, [ip, r5]	@ movhi
	str	lr, [r0, #24]
	bne	.L59
.L58:
	ldr	r3, [r0, #28]
	add	r3, r3, #1
	cmp	r3, #30
	str	r3, [r0, #28]
	ble	.L56
	ldr	r4, .L82+12
	smull	r5, r4, r3, r4
	ldr	r5, .L82+16
	asr	r3, r3, #31
	rsb	r3, r3, r4, asr #1
	umull	r4, r5, r3, r5
	ldr	r6, [r2, #28]
	ldr	r4, [r2, #8]
	lsr	r5, r5, #2
	add	r5, r5, r5, lsl #1
	add	r4, r4, r6
	ldr	r6, .L82+20
	sub	r3, r3, r5, lsl #1
	ldr	r6, [r6]
	add	r3, r3, #432
	add	r5, ip, lr, lsl #3
	lsl	r3, r3, #1
	sub	r4, r4, #7
	strh	r3, [r5, #4]	@ movhi
	sub	r4, r4, r6
	ldr	r5, .L82+24
	ldr	r6, [r2, #56]
	ldrh	r3, [r2, #12]
	cmp	r6, #0
	ldrh	r2, [r5]
	subeq	r3, r3, #7
	subne	r3, r3, r2
	subeq	r3, r3, r2
	lslne	r3, r3, #23
	lsleq	r3, r3, #23
	lsl	lr, lr, #3
	and	r4, r4, #255
	lsrne	r3, r3, #23
	lsreq	r3, r3, #23
	strh	r4, [ip, lr]	@ movhi
	orrne	r3, r3, #20480
	add	ip, ip, lr
	orreq	r3, r3, #16384
	add	r1, r1, #2
	strh	r3, [ip, #2]	@ movhi
	str	r1, [r0, #24]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L70:
	lsl	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
.L71:
	add	r1, r1, #1
	str	r1, [r0, #24]
.L59:
	mov	r3, #0
	str	r3, [r0, #28]
.L56:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L57:
	ldr	ip, .L82+24
	ldr	r3, [r2, #12]
	ldr	lr, [ip]
	sub	r3, r3, #3
	ldr	ip, .L82+20
	sub	r3, r3, lr
	ldr	r5, [ip]
	ldr	lr, [r2, #8]
	ldr	ip, .L82+8
	ldr	r7, [r2, #56]
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	orr	r3, r3, #16384
	sub	lr, lr, r5
	add	r6, ip, r1, lsl #3
	cmp	r7, #0
	strh	r3, [r6, #2]	@ movhi
	and	lr, lr, #255
	orrne	r3, r3, #4096
	lsl	r5, r1, #3
	strhne	r3, [r6, #2]	@ movhi
	strh	lr, [ip, r5]	@ movhi
	ldr	r3, [r2, #44]
	cmp	r4, #7
	ldrls	pc, [pc, r4, asl #2]
	b	.L61
.L63:
	.word	.L70
	.word	.L69
	.word	.L68
	.word	.L67
	.word	.L66
	.word	.L65
	.word	.L64
	.word	.L62
.L69:
	add	r3, r3, #32
	lsl	r3, r3, #1
	add	r5, ip, r5
	add	lr, r1, #1
	strh	r3, [r5, #4]	@ movhi
	str	lr, [r0, #24]
	b	.L58
.L68:
	ldr	r2, .L82+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #64
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L71
.L67:
	ldr	r2, .L82+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #96
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L71
.L66:
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	add	r3, r3, #128
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L71
.L65:
	ldr	r2, .L82+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #192
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L71
.L64:
	ldr	r2, .L82+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #224
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L71
.L62:
	add	r3, r3, #7
	lsl	r3, r3, #1
	add	ip, ip, r5
	strh	r3, [ip, #4]	@ movhi
	b	.L71
.L61:
	add	r3, r3, r4, lsl #5
	lsl	r3, r3, #1
	add	ip, ip, r5
	add	r1, r1, #1
	strh	r3, [ip, #4]	@ movhi
	str	r1, [r0, #24]
	b	.L59
.L83:
	.align	2
.L82:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	1717986919
	.word	-1431655765
	.word	vOff
	.word	hOff
	.word	1431655766
	.size	drawPlayer, .-drawPlayer
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L115
	ldr	r8, .L115+4
	ldr	r7, .L115+8
	ldr	r1, .L115+12
	ldr	r4, [r6, #24]
	ldr	r9, .L115+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L115+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L90
.L112:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L85
	ldr	r0, [r3, #12]
	sub	r0, r0, r5
	ldr	r10, [r3, #56]
	lsl	r0, r0, #23
	lsr	r0, r0, #23
	orr	r0, r0, #16384
	cmp	r10, #0
	strh	r0, [r2, #2]	@ movhi
	ldr	ip, [r3, #8]
	orrne	r0, r0, #4096
	strhne	r0, [r2, #2]	@ movhi
	ldr	r0, [r3, #44]
	sub	ip, ip, fp
	and	ip, ip, #255
	cmp	r0, #1
	strh	ip, [r2]	@ movhi
	ldr	r0, [r3, #36]
	beq	.L110
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L87:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L111
.L90:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L112
.L85:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L90
.L111:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L115+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L115+28
	ldr	r5, .L115+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L97
.L114:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L91
	ldr	r2, [r3, #12]
	sub	r2, r2, lr
	ldr	r10, [r3, #56]
	sub	r2, r2, #6
	and	r8, r5, #32768
	and	r2, r2, r7
	orr	r2, r8, r2
	cmp	r10, #0
	strh	r2, [r1, #58]	@ movhi
	ldr	r9, [r3, #8]
	orreq	r2, r2, #4096
	strheq	r2, [r1, #58]	@ movhi
	ldr	r2, [r3, #44]
	add	r9, r0, r9
	and	r8, r9, #255
	cmp	r2, #0
	strh	r8, [r1, #56]	@ movhi
	ldr	r2, [r3, #36]
	beq	.L95
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L93:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L113
.L97:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L114
.L91:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L97
.L113:
	add	r4, r4, #13
	str	r4, [r6, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L95:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L96
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L93
.L110:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L87
.L96:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L93
.L116:
	.align	2
.L115:
	.word	.LANCHOR0
	.word	bgIndex
	.word	hOff
	.word	shadowOAM
	.word	vOff
	.word	lettuce
	.word	big_lettuce
	.word	511
	.word	-32768
	.size	drawEnemies, .-drawEnemies
	.global	__aeabi_idivmod
	.align	2
	.global	drawBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawBullets, %function
drawBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r1, .L132
	ldr	r2, .L132+4
	ldr	r9, .L132+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #24]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L132+12
	ldr	r5, .L132+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L132+20
	mov	r8, r2
	ldr	r3, .L132+24
	mov	r2, r1
	ldr	fp, .L132+28
	ldr	r10, .L132+32
	b	.L124
.L131:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L118
	ldr	r0, [sp]
	ldr	r1, [r4, #12]
	ldr	ip, [r4, #8]
	sub	r1, r1, r0
	ldr	r0, [r4, #28]
	and	r1, r1, r3
	sub	ip, ip, r8
	orr	r1, r1, #16384
	and	ip, ip, #255
	cmp	r0, #2
	strh	r1, [r5, #2]	@ movhi
	strh	ip, [r5]	@ movhi
	beq	.L121
	cmp	r0, #3
	beq	.L122
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L123:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L120
	str	r2, [sp, #4]
	ldr	r3, .L132+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L132+24
.L120:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L130
.L124:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L131
.L118:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L120
.L130:
	add	r8, r2, #6
	str	r8, [r9, #24]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L121:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L123
.L122:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L123
.L133:
	.align	2
.L132:
	.word	bgIndex
	.word	hOff
	.word	.LANCHOR0
	.word	vOff
	.word	shadowOAM
	.word	bl_bullets
	.word	511
	.word	4500
	.word	1717986919
	.word	__aeabi_idivmod
	.size	drawBullets, .-drawBullets
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
	ldr	r1, .L144
	ldr	r3, [r1, #40]
	ldr	r0, .L144+4
	cmp	r3, #0
	ldr	r2, [r0, #24]
	beq	.L135
	ldr	ip, .L144+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #24]
	bx	lr
.L135:
	ldr	ip, .L144+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L144+16
	ldr	ip, .L144+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L144+8
	lsl	r3, r3, #23
	lsr	r3, r3, #23
	add	r5, ip, r2, lsl #3
	orr	r3, r3, #16384
	cmp	r6, #0
	strh	r3, [r5, #2]	@ movhi
	ldr	lr, [r1]
	orrne	r3, r3, #4096
	strhne	r3, [r5, #2]	@ movhi
	ldr	r3, [r1, #32]
	sub	lr, lr, r4
	and	lr, lr, #255
	lsl	r4, r2, #3
	add	r3, r3, #132
	strh	lr, [ip, r4]	@ movhi
	lsl	r3, r3, #1
	add	ip, ip, r4
	add	r2, r2, #1
	strh	r3, [ip, #4]	@ movhi
	str	r2, [r0, #24]
	pop	{r4, r5, r6, lr}
	bx	lr
.L145:
	.align	2
.L144:
	.word	slash
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	player
	.word	vOff
	.size	drawSlash, .-drawSlash
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
	ldr	r3, .L212
	push	{r4, r5, r6, lr}
	ldr	r4, .L212+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L147
	cmp	r2, #0
	beq	.L205
	ldrh	r3, [r3, #48]
.L150:
	ldr	r3, .L212+8
	ldr	r1, [r3, #32]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L153
	movne	r1, #2
	strne	r1, [r4, #36]
.L153:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L156
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L156:
	ldr	r2, [r3, #40]
	cmp	r2, #0
	beq	.L157
	ldr	r2, .L212+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L157:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L158
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L206
	cmp	r2, #2
	beq	.L207
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L170
	ldr	r3, .L212+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L162
	add	r2, r2, #1
	str	r2, [r4, #44]
.L210:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L205:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L150
.L147:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L150
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L150
.L158:
	ldr	r2, .L212+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L208
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L174
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L174
.L173:
	cmp	ip, #1
	beq	.L174
	cmp	ip, #6
	beq	.L174
	cmp	r0, #0
	bne	.L209
	cmp	r3, #0
	bne	.L162
.L174:
	ldr	r0, [r4, #44]
	ldr	r3, .L212+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L162:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L208:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L162
	ldr	ip, [r4, #36]
	b	.L173
.L206:
	tst	r5, #7
	bne	.L162
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L210
.L207:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L212+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L212+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L170:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L212+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #44]
	b	.L162
.L209:
	cmp	ip, #5
	beq	.L211
.L166:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L162
.L211:
	ldr	r0, [r4, #44]
	ldr	r3, .L212+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L166
.L213:
	.align	2
.L212:
	.word	67109120
	.word	player
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1717986919
	.word	__aeabi_idivmod
	.word	715827880
	.word	357913940
	.word	143165576
	.size	animatePlayer, .-animatePlayer
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
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L222
	ldr	r8, .L222+4
	ldr	r6, .L222+8
	add	r7, r5, #504
.L216:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L215
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L215:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L216
	ldr	r5, .L222+12
	ldr	r8, .L222+4
	ldr	r6, .L222+8
	add	r7, r5, #480
.L218:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L217
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L217:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L218
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L223:
	.align	2
.L222:
	.word	lettuce
	.word	1717986919
	.word	__aeabi_idivmod
	.word	big_lettuce
	.size	animateEnemies, .-animateEnemies
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
	ldr	r2, .L234
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L227
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L227
	cmp	r3, #18
	bne	.L226
.L227:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L226:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L235:
	.align	2
.L234:
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
	ldr	r4, .L385
	ldr	fp, [r4]
	cmp	fp, #0
	sub	sp, sp, #36
	bne	.L378
	ldr	r5, .L385+4
	ldr	r7, .L385+8
	ldr	r3, .L385+12
	ldr	r6, [r5, #8]
	ldr	r2, [r5, #28]
	ldr	r3, [r3]
	ldr	r1, [r7]
	add	r2, r6, r2
	ldr	r8, [r5, #12]
	add	r2, r2, #1
	add	r3, r3, r1, lsl #8
	add	r3, r3, r2, lsl #11
	ldrb	r2, [r3, r8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r8
	bne	.L238
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L238
	mov	r1, fp
	ldr	r10, .L385+16
	str	fp, [r10]
.L239:
	ldr	r3, .L385+20
	ldrh	r3, [r3]
	tst	r3, #64
	str	r3, [sp, #20]
	beq	.L240
	ldr	r9, .L385+24
	ldrh	r3, [r9]
	tst	r3, #64
	bne	.L241
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L373
	ldr	r3, [r4, #60]
	cmp	r3, #0
	bne	.L244
	cmp	r1, #0
	bne	.L373
	ldr	r3, [r4, #56]
	cmp	r3, #7
	ble	.L373
.L244:
	ldr	r3, .L385+28
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L385+32
	ldr	r3, .L385+36
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, #1
	mvn	r1, #4
	ldr	r0, [r4, #60]
	str	r3, [r4, #64]
	cmp	r0, r3
	str	r3, [r4, #20]
	str	r3, [r4, #48]
	ldr	r3, .L385+20
	ldrh	r3, [r3]
	streq	r2, [r4, #60]
	str	r3, [sp, #20]
	tst	r3, #64
	ldr	r3, [r4, #40]
	add	r6, r5, #8
	str	r2, [r4, #36]
	str	r1, [r4, #32]
	ldm	r6, {r6, r8}
	str	r3, [sp, #24]
	beq	.L313
	ldrh	r3, [r9]
	tst	r3, #64
	beq	.L314
	b	.L375
.L253:
	beq	.L258
	mov	r0, #1
	ldr	ip, [r7]
	ldr	r3, [r5, #24]
	ldr	r1, [r5, #28]
	add	r3, r3, ip, lsl #8
	add	r1, r6, r1
	add	ip, r8, ip, lsl #8
	add	r3, r3, r8
	add	r3, r3, r1, lsl #11
	add	r1, ip, r1, lsl #11
	ldr	ip, .L385+12
	ldr	ip, [ip]
	add	r3, ip, r3
	add	r1, ip, r1
.L260:
	ldrb	ip, [r1, r0, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L259
	ldrb	ip, [r3, r0, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L259
	add	r0, r0, #1
	cmp	r0, r2
	ble	.L260
.L258:
	ldr	r10, [r10]
.L261:
	cmp	r10, #0
	bne	.L263
	ldr	r3, .L385+40
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r4, #64]
	beq	.L380
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L269
.L311:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L270
.L269:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L268
.L271:
	mov	r3, #1
	str	r3, [r4, #48]
	sub	r0, r0, #3
.L268:
	ldr	r3, .L385+44
	mov	lr, pc
	bx	r3
	ldr	fp, .L385+48
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L385+52
	mov	lr, pc
	bx	fp
	ldr	r3, .L385+56
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #20]
	tst	r3, #3
	ldreq	r3, [r4, #64]
	addeq	r3, r3, #1
	streq	r3, [r4, #64]
	ldr	r3, [r4, #56]
	add	r6, r6, r0
	add	r3, r3, #1
	str	r0, [r4, #32]
	str	r6, [r5, #8]
	str	r3, [r4, #56]
.L263:
	cmp	r9, #93
	bgt	.L273
.L384:
	sub	r3, r6, r9
	cmp	r3, #79
	ble	.L274
	ldr	r3, [r4, #32]
	cmp	r3, #0
	ble	.L274
	ldr	r2, [r4, #4]
	cmp	r2, #0
	addeq	r9, r9, r3
	ldreq	r3, [sp, #28]
	streq	r9, [r3]
.L274:
	cmp	r9, #3
	bgt	.L273
.L275:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L277
	ldr	r3, [r4, #68]
	add	r3, r3, #1
	cmp	r10, #0
	cmpne	r3, #30
	str	r3, [r4, #68]
	movgt	r2, #1
	movle	r2, #0
	bgt	.L381
	cmp	r3, #15
	movgt	r3, #2
	strgt	r2, [r4, #40]
	strgt	r2, [r4, #68]
	strgt	r3, [r5, #68]
.L277:
	ldr	r3, [sp, #20]
	tst	r3, #256
	beq	.L280
	ldr	r3, .L385+24
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L281
.L280:
	ldr	r3, [sp, #20]
	tst	r3, #512
	beq	.L376
	ldr	r3, .L385+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L281
.L376:
	ldr	r1, [r5, #68]
.L283:
	ldr	r3, .L385+60
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, [r5, #56]
	beq	.L310
.L288:
	ldr	r9, .L385+64
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r9, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r8, r2, r3, r8
	sub	r8, r8, #2
	stm	r9, {r6, r8}
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	ble	.L296
	mov	fp, #1
	ldr	r6, .L385+68
	ldr	r8, .L385+72
	add	r10, r6, #504
.L300:
	ldr	r1, [r7]
	ldr	r0, [r9, #4]
	ldr	ip, [r6, #20]
	ldr	r3, [r9, #24]
	ldr	r2, [r9, #16]
	ldr	lr, [r6, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r6, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r6, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r9, #20]
	ldr	r1, [r9]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L298
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L298
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L298:
	add	r6, r6, #72
	cmp	r10, r6
	bne	.L300
	mov	fp, #1
	ldr	r6, .L385+76
	add	r10, r6, #480
.L304:
	ldr	r1, [r7]
	ldr	r0, [r9, #4]
	ldr	r3, [r6, #16]
	ldr	r2, [r9, #24]
	ldr	ip, [r9, #16]
	add	r0, r0, r1, lsl #8
	add	r3, r3, #2
	ldr	r1, [r6, #20]
	add	r0, r0, r2
	sub	r2, ip, r2
	ldr	ip, [r6, #8]
	str	r3, [sp, #8]
	ldr	r3, [r6, #12]
	stm	sp, {r3, ip}
	str	r1, [sp, #12]
	ldr	r3, [r9, #20]
	ldr	r1, [r9]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L302
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L302
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L302:
	add	r6, r6, #80
	cmp	r10, r6
	bne	.L304
	ldr	r3, .L385+80
	ldr	r6, [r3]
	cmp	r6, #1
	beq	.L382
.L306:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
.L308:
	ldr	r3, .L385+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L309
	ldr	r3, .L385+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L309
	ldr	r2, [r5, #60]
	cmp	r2, #0
	bne	.L309
	mov	r0, #1
	mov	r3, #20
	ldr	r1, .L385+84
	ldr	r1, [r1]
	str	r0, [r5, #60]
	str	r3, [r5, #64]
	lsr	r1, r1, r0
	ldr	r3, .L385+36
	ldr	r0, .L385+88
	str	r2, [r5, #44]
	str	r2, [r9, #40]
	str	r2, [r9, #32]
	str	r2, [r9, #28]
	mov	lr, pc
	bx	r3
.L309:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r4, #16]
	str	r3, [r4, #20]
.L378:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L238:
	mov	r3, #0
	mov	r2, #1
	ldr	r10, .L385+16
	mov	r1, r2
	str	r3, [r4, #48]
	str	r2, [r10]
	str	r3, [r4, #36]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	b	.L239
.L240:
	ldr	r3, [r4, #40]
	str	r3, [sp, #24]
.L247:
	ldr	r2, [r4, #32]
	ldr	r3, .L385+92
	cmp	r2, #0
	str	r3, [sp, #28]
	ldr	r9, [r3]
	bge	.L253
	ldr	r10, [r10]
.L252:
	ldr	r1, [r7]
	ldr	r3, [r5, #24]
	ldr	r0, .L385+12
	add	r3, r3, r1, lsl #8
	ldr	r0, [r0]
	add	r1, r8, r1, lsl #8
	add	r3, r3, r8
	add	r1, r1, r6, lsl #11
	add	r3, r3, r6, lsl #11
	add	r1, r0, r1
	add	r3, r0, r3
	ldrb	r0, [r1, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L254
.L383:
	ldrb	r0, [r3, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L254
	sub	fp, fp, #1
	cmp	fp, r2
	ble	.L261
	ldrb	r0, [r1, fp, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L383
.L254:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ldreq	r3, [sp, #28]
	add	fp, fp, #1
	addeq	r9, r9, fp
	mov	r2, #1
	streq	r9, [r3]
	mov	r3, #0
	add	r6, r6, fp
	str	r6, [r5, #8]
	str	r3, [r4, #32]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r2, [r4, #48]
	b	.L261
.L281:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L376
	mov	r3, #1
	cmp	r10, #0
	str	r3, [r4, #40]
	beq	.L284
	ldr	r3, [r4, #8]
	cmp	r3, #0
	movne	r1, #1
	moveq	r1, #2
	mov	r3, #3
	str	r1, [r5, #68]
	str	r3, [r5, #20]
	b	.L283
.L259:
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ldreq	r3, [sp, #28]
	addeq	r9, r9, r0
	streq	r9, [r3]
	mov	r2, #0
	mov	r3, #1
	add	r6, r6, r0
	cmp	r9, #93
	str	r3, [r10]
	str	r6, [r5, #8]
	mov	r10, r3
	str	r2, [r4, #32]
	ble	.L384
.L273:
	sub	r3, r6, r9
	cmp	r3, #80
	bgt	.L275
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bge	.L275
	ldr	r2, [r4, #4]
	cmp	r2, #0
	ldreq	r2, [sp, #28]
	addeq	r3, r3, r9
	streq	r3, [r2]
	b	.L275
.L284:
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L376
	ldr	r2, [r4, #8]
	cmp	r2, #0
	str	r3, [r4, #52]
	str	r3, [r5, #68]
	movne	r3, #4
	strne	r3, [r5, #20]
	ldr	r3, [r5, #56]
.L310:
	ldr	r2, .L385+40
	ldrh	r2, [r2, #48]
	ldr	r10, [r7]
	tst	r2, #32
	lsl	r2, r10, #8
	bne	.L289
	ldr	r1, .L385+12
	ldr	r9, [r5, #20]
	ldr	r1, [r1]
	sub	lr, r8, r9
	add	ip, lr, r2
	add	r0, r1, r6, lsl #11
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L289
	ldr	r0, [r5, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #11
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r8, #0
	cmpge	r1, #0
	bne	.L289
	ldr	r1, [r4, #4]
	cmp	r3, #0
	streq	r3, [r4, #28]
	cmp	r1, #0
	str	lr, [r5, #12]
	bne	.L319
	ldr	fp, .L385+96
	ldr	r1, [fp]
	cmp	r1, #0
	ble	.L291
	sub	r0, lr, r1
	cmp	r0, #119
	bgt	.L319
	sub	r1, r1, r9
	str	r1, [fp]
.L291:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r10, #0
	moveq	r1, #0
	cmp	r1, #0
	beq	.L319
	mov	r0, #67108864
	mov	ip, #256
	mov	r8, #376
	add	r1, r10, #23
	lsl	r1, r1, #24
	orr	r1, r1, #1073741824
	lsr	r1, r1, #16
	sub	r10, r10, #1
	str	r10, [r7]
	strh	r1, [r0, #10]	@ movhi
	ldr	r1, [sp, #28]
	ldrh	r1, [r1]
	str	r8, [r5, #12]
	str	ip, [fp]
	strh	ip, [r0, #20]	@ movhi
	strh	r1, [r0, #22]	@ movhi
	sub	r2, r2, #256
.L289:
	ldr	r1, .L385+40
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L377
	add	r9, r5, #20
	ldm	r9, {r9, ip}
	ldr	r1, .L385+12
	ldr	r0, [r1]
	add	r1, ip, r8
	add	r1, r1, r9
	add	r1, r1, r2
	add	lr, r0, r6, lsl #11
	ldrb	lr, [lr, r1]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L377
	ldr	lr, [r5, #28]
	add	lr, r6, lr
	sub	lr, lr, #1
	add	r0, r0, lr, lsl #11
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	cmp	r0, #0
	ldr	r1, .L385+100
	bne	.L292
	ldr	lr, [r1]
	add	ip, ip, lr
	cmp	ip, #2048
	bgt	.L292
	cmp	r3, #0
	strne	r0, [r4, #28]
	ldr	r0, [r4, #4]
	add	r8, r8, r9
	cmp	r0, #0
	str	r8, [r5, #12]
	bne	.L292
	ldr	fp, .L385+96
	ldr	r0, [fp]
	cmp	r0, #256
	str	r0, [sp, #20]
	ble	.L294
.L295:
	mov	r0, #67108864
	mov	ip, #0
	mov	r8, #120
	ldr	lr, [sp, #28]
	add	r2, r10, #25
	lsl	r2, r2, #24
	ldrh	lr, [lr]
	orr	r2, r2, #1073741824
	lsr	r9, r2, #16
	add	r2, r10, #1
	str	r2, [r7]
	strh	r9, [r0, #10]	@ movhi
	lsl	r2, r2, #8
	str	r8, [r5, #12]
	str	ip, [fp]
	strh	ip, [r0, #20]	@ movhi
	strh	lr, [r0, #22]	@ movhi
	b	.L292
.L377:
	ldr	r1, .L385+100
.L292:
	add	r2, r8, r2
	str	r2, [r1]
	b	.L288
.L296:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r9, #40]
	b	.L308
.L241:
	ldr	r3, [r4, #40]
	str	r3, [sp, #24]
.L375:
	ldr	r3, .L385+20
	ldrh	r3, [r3]
	str	r3, [sp, #20]
	b	.L247
.L380:
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L265
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L266
	ldr	r2, [r4, #36]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L268
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L271
.L312:
	sub	r0, r0, #4
	b	.L268
.L373:
	ldr	r3, [r4, #40]
	str	r3, [sp, #24]
.L314:
	ldr	r3, [r10]
	cmp	r3, #0
	bne	.L248
	ldr	r3, [r4, #56]
	cmp	r3, #7
	bgt	.L375
.L248:
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L375
	ldr	r3, .L385+12
	ldr	r2, [r3]
	ldr	r1, [r7]
	sub	r3, r6, #1
	add	r3, r2, r3, lsl #11
	add	r3, r3, r1, lsl #8
	ldrb	r2, [r3, r8]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, r8
	bne	.L375
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L375
	ldr	r6, [sp, #24]
	ldr	r3, .L385+104
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L385+108
	ldr	r3, .L385+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mvn	r2, #4
	str	r3, [r4, #60]
	ldr	r3, .L385+20
	ldrh	r3, [r3]
	ldr	r1, .L385+92
	str	r3, [sp, #20]
	ldr	r3, [r4, #40]
	str	r6, [r10]
	str	r6, [r4, #64]
	mov	r10, r6
	str	r6, [r4, #20]
	add	r6, r5, #8
	str	r1, [sp, #28]
	str	r2, [r4, #32]
	ldr	r9, [r1]
	ldm	r6, {r6, r8}
	str	r3, [sp, #24]
	b	.L252
.L381:
	mov	r3, #0
	mov	r1, #2
	mov	r2, #3
	str	r3, [r4, #40]
	str	r3, [r4, #68]
	str	r1, [r5, #68]
	str	r2, [r5, #20]
	b	.L277
.L265:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L311
	b	.L268
.L382:
	ldr	r7, .L385+112
	add	r0, r7, #12
	ldm	r0, {r0, r2}
	ldr	r3, [r9, #24]
	ldmib	r7, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r9, #16]
	str	r0, [sp, #8]
	ldr	r0, [r9, #4]
	stm	sp, {r1, ip}
	sub	r2, r2, r3
	add	r0, r3, r0
	ldr	r1, [r9]
	ldr	r3, [r9, #20]
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L306
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ldreq	r3, [r7]
	subeq	r3, r3, #1
	streq	r6, [r7, #32]
	streq	r3, [r7]
	b	.L306
.L270:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L269
	b	.L312
.L266:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L311
	b	.L271
.L319:
	mov	r8, lr
	b	.L289
.L294:
	ldr	r0, [sp, #20]
	ldr	ip, .L385+116
	sub	r0, r8, r0
	cmp	r0, #120
	movgt	r0, #1
	movle	r0, #0
	cmp	lr, ip
	movgt	r0, #0
	cmp	r0, #0
	beq	.L292
	ldr	r0, [sp, #20]
	add	ip, r9, r0
	cmp	ip, #256
	str	ip, [fp]
	ble	.L292
	b	.L295
.L313:
	ldr	r3, .L385+92
	mvn	r2, #4
	str	r3, [sp, #28]
	ldr	r10, [r10]
	ldr	r9, [r3]
	b	.L252
.L386:
	.align	2
.L385:
	.word	.LANCHOR0
	.word	player
	.word	bgIndex
	.word	collisionMap
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	sfx_jump1_length
	.word	sfx_jump1_data
	.word	playSoundB
	.word	67109120
	.word	__aeabi_i2d
	.word	fmin
	.word	1074266112
	.word	__aeabi_d2iz
	.word	__aeabi_idivmod
	.word	slash
	.word	lettuce
	.word	collision
	.word	big_lettuce
	.word	currMap
	.word	sfx_attack_length
	.word	sfx_attack_data
	.word	vOff
	.word	hOff
	.word	pMapPos
	.word	sfx_jump2_length
	.word	sfx_jump2_data
	.word	boss
	.word	1928
	.size	updatePlayer, .-updatePlayer
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
	str	lr, [sp, #-4]!
	ldr	lr, .L391
	ldr	ip, .L391+4
	add	r1, r1, r3
	ldr	r3, [lr]
	add	r1, r1, #1
	ldr	ip, [ip]
	add	r3, r3, r1, lsl #11
	add	r3, r3, ip, lsl #8
	ldrb	r1, [r3, r0]	@ zero_extendqisi2
	cmp	r1, #0
	add	r3, r3, r0
	movne	r0, #1
	bne	.L387
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L387:
	ldr	lr, [sp], #4
	bx	lr
.L392:
	.align	2
.L391:
	.word	collisionMap
	.word	bgIndex
	.size	groundCheck, .-groundCheck
	.align	2
	.global	goblinGroundCheck
	.syntax unified
	.arm
	.fpu softvfp
	.type	goblinGroundCheck, %function
goblinGroundCheck:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	ip, r0
	ldr	r0, .L396
	add	r1, r1, r3
	ldr	r3, [r0]
	add	r1, r1, #1
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, ip]	@ zero_extendqisi2
	cmp	r0, #0
	add	r3, r3, ip
	bxeq	lr
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L397:
	.align	2
.L396:
	.word	collisionMap
	.size	goblinGroundCheck, .-goblinGroundCheck
	.align	2
	.global	pCheckCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	pCheckCollision, %function
pCheckCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L399
	ldr	r3, .L399+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L400:
	.align	2
.L399:
	.word	bgIndex
	.word	collisionMap
	.size	pCheckCollision, .-pCheckCollision
	.align	2
	.global	eCheckCollision
	.syntax unified
	.arm
	.fpu softvfp
	.type	eCheckCollision, %function
eCheckCollision:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L402
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L403:
	.align	2
.L402:
	.word	collisionMap
	.size	eCheckCollision, .-eCheckCollision
	.align	2
	.global	hurtPlayer
	.syntax unified
	.arm
	.fpu softvfp
	.type	hurtPlayer, %function
hurtPlayer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L420
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L405
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ble	.L419
.L404:
	pop	{r4, lr}
	bx	lr
.L405:
	ldr	r3, .L420+4
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldr	r3, [r3, #40]
	bne	.L418
	cmp	r3, #0
	beq	.L408
	ldr	r3, .L420+8
	ldr	r3, [r3]
.L418:
	cmp	r3, #0
	bne	.L404
.L408:
	ldr	r3, .L420+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L420+16
	ldr	r3, .L420+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r4, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #72]
	str	r2, [r4, #76]
	bgt	.L404
.L419:
	ldr	r3, .L420+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L404
	pop	{r4, lr}
	b	gameOver.part.0
.L421:
	.align	2
.L420:
	.word	player
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	sfx_player_hurt_length
	.word	sfx_player_hurt_data
	.word	playSoundB
	.size	hurtPlayer, .-hurtPlayer
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, #0
	ldr	r6, .L504
	ldr	r4, .L504+4
	ldr	ip, [r6]
	ldr	r9, .L504+8
	ldr	r10, .L504+12
	ldr	r5, .L504+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r7, r4, #504
.L431:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L497
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L497
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L424
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L426
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L426:
	ldr	lr, [r5, #28]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	str	ip, [sp]
	str	lr, [sp, #12]
	ldr	ip, [r5, #24]
	ldr	lr, [r5, #8]
	str	ip, [sp, #8]
	str	lr, [sp, #4]
	sub	r3, r3, #2
	add	r1, r1, #3
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L427
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L499
.L427:
	ldr	ip, [r6]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r10]
	ldr	r2, [r4, #8]
	bge	.L496
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	fp, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, fp
	bge	.L496
	ldr	r3, .L504+20
	ldr	r3, [r3, #16]
	tst	r3, #1
	beq	.L490
.L496:
	ldr	r3, [r4, #20]
.L428:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L500
.L430:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L498:
	sub	r3, ip, #239
.L424:
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L431
	ldr	r4, .L504+24
	ldr	r8, .L504+8
	ldr	r9, .L504+20
	ldr	fp, .L504+28
	ldr	r10, .L504+32
	add	r7, r4, #480
.L445:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L432
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L432:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L434
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldr	r5, .L504+16
	beq	.L435
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L435:
	ldr	r1, [r4, #8]
	ldr	r3, [r5, #24]
	str	ip, [sp]
	ldr	lr, [r5, #28]
	ldr	ip, [r5, #8]
	str	lr, [sp, #12]
	str	r3, [sp, #8]
	str	ip, [sp, #4]
	add	r0, r0, #1
	ldr	r3, [r4, #20]
	add	r1, r1, #1
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L436
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L501
.L436:
	ldr	r2, [r6]
	ldr	r3, [r4, #12]
	sub	r3, r2, r3
	eor	r1, r3, r3, asr #31
	ldr	r2, [r4, #60]
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	bge	.L434
	ldr	r1, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r1, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, r1
	bge	.L434
	ldr	r2, [r9, #16]
	ands	r2, r2, #1
	bne	.L434
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L439
	movne	r3, #1
	strne	r3, [r4, #56]
.L439:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	bne	.L440
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	bgt	.L502
.L434:
	add	r4, r4, #80
	cmp	r7, r4
	beq	.L444
	ldr	ip, [r6]
	sub	r3, ip, #239
	b	.L445
.L497:
	str	r8, [r4, #4]
	b	.L424
.L500:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L430
	b	.L498
.L444:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L501:
	bl	hurtPlayer
	b	.L436
.L499:
	bl	hurtPlayer
	b	.L427
.L490:
	cmp	r0, #0
	blt	.L503
	beq	.L496
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L428
	add	r0, lr, r0
	mov	fp, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L428
	add	fp, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L428
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L428
.L440:
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L434
	mov	r2, #0
	ldr	r3, .L504+36
	mov	r0, r10
	ldr	r1, [fp]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	ldr	r3, .L504+40
.L443:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L441
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L441
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L443
	b	.L434
.L502:
	mov	r3, #1
	str	r2, [r4, #36]
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	b	.L434
.L503:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L428
	ldr	r0, [sp, #16]
	add	fp, lr, r0
	add	r0, r2, r3
	str	fp, [sp, #20]
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L428
	ldr	fp, [sp, #20]
	add	r0, r0, #2048
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	cmp	fp, #0
	ldr	fp, [sp, #20]
	add	r0, fp, r0
	beq	.L428
	ldr	fp, [r4, #16]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L428
.L441:
	mov	r0, #1
	ldr	r3, [r4, #56]
	ldr	lr, .L504+40
	add	r1, r2, r2, lsl #2
	add	r2, r2, r1, lsl r0
	lsl	r3, r3, r0
	add	r1, lr, r2, lsl #2
	sub	r3, r3, #1
	ldr	ip, [r4, #8]
	str	r3, [r1, #36]
	ldr	r3, [r4, #12]
	add	ip, ip, #8
	str	ip, [r1, #8]
	str	r3, [r1, #12]
	str	r0, [lr, r2, lsl #2]
	b	.L434
.L505:
	.align	2
.L504:
	.word	pMapPos
	.word	lettuce
	.word	collision
	.word	collisionMap
	.word	player
	.word	.LANCHOR0
	.word	big_lettuce
	.word	sfx_lettuce_projectile_length
	.word	sfx_lettuce_projectile_data
	.word	playSoundB
	.word	bl_bullets
	.size	updateEnemies, .-updateEnemies
	.align	2
	.global	updateBullets
	.syntax unified
	.arm
	.fpu softvfp
	.type	updateBullets, %function
updateBullets:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r9, .L527
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L527+4
	ldr	r5, .L527+8
	ldr	r8, .L527+12
	sub	sp, sp, #20
.L513:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L506
	ldr	r3, [r7]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, r3, #239
	add	r1, ip, r2
	cmp	r0, r1
	sub	r1, r3, #476
	sub	r1, r1, #3
	bgt	.L509
	add	lr, r3, #239
	cmp	ip, lr
	movgt	r10, #0
	movle	r10, #1
	add	r0, r4, #36
	ldm	r0, {r0, fp}
	mla	r0, fp, r0, ip
	add	fp, r2, r0
	cmp	r1, fp
	str	r0, [r4, #12]
	str	r10, [r4, #4]
	ble	.L525
.L510:
	cmp	ip, lr
	bgt	.L515
.L511:
	ldr	lr, [r5, #24]
	ldr	ip, [r5, #8]
	ldr	r10, [r5, #28]
	ldr	r1, [r4, #8]
	stmib	sp, {ip, lr}
	str	r3, [sp]
	str	r10, [sp, #12]
	add	r0, r0, #3
	ldr	r3, [r4, #20]
	add	r1, r1, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L512
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L512
	ldr	r10, [r5, #76]
	cmp	r10, #0
	beq	.L526
.L512:
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #44
	bne	.L513
.L506:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L509:
	mov	lr, #0
	add	r0, r4, #36
	ldm	r0, {r0, r10}
	mla	r0, r10, r0, ip
	add	ip, r2, r0
	cmp	r1, ip
	str	r0, [r4, #12]
	str	lr, [r4, #4]
	bgt	.L515
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L511
.L515:
	mov	r3, #0
	add	r2, r6, r6, lsl #2
	add	r6, r6, r2, lsl #1
	lsl	r6, r6, #2
	str	r3, [r9, r6]!
	str	r3, [r9, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L526:
	bl	hurtPlayer
	str	r10, [r4]
	b	.L512
.L525:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L511
	b	.L510
.L528:
	.align	2
.L527:
	.word	bl_bullets
	.word	pMapPos
	.word	player
	.word	collision
	.size	updateBullets, .-updateBullets
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
	push	{r4, lr}
	ldr	r4, .L548
	ldr	r3, [r4, #72]
	cmp	r3, #0
	bne	.L529
	ldr	r3, .L548+4
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	bne	.L546
.L532:
	cmp	r3, #0
	beq	.L534
	ldr	r3, .L548+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L534
.L533:
	mov	r3, #1
	str	r3, [r4, #72]
.L534:
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L548+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L547
.L535:
	ldr	r3, .L548+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L536
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L529
.L536:
	ldr	r2, [r4]
	cmp	r2, #0
	bne	.L529
	mov	r1, #1
	pop	{r4, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L529:
	pop	{r4, lr}
	bx	lr
.L546:
	ldr	r2, .L548+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L533
	b	.L532
.L547:
	ldr	r3, .L548+20
	mov	lr, pc
	bx	r3
	b	.L535
.L549:
	.align	2
.L548:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	currMap
	.word	player
	.word	updateBoss1
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
	@ link register save eliminated.
	bx	lr
	.size	drawFont, .-drawFont
	.align	2
	.global	drawTimer
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawTimer, %function
drawTimer:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L553
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L553+4
	ldr	r5, [r3]
	ldr	r3, .L553+8
	ldr	r4, [r2]
	smull	r1, r2, r3, r5
	smull	r1, r3, r4, r3
	mov	r6, #0
	mov	r9, #76
	mov	r8, #82
	asr	r0, r5, #31
	rsb	r2, r0, r2, asr #5
	add	r2, r2, r2, lsl #2
	ldr	lr, .L553+12
	add	r2, r2, r2, lsl #2
	sub	r2, r5, r2, lsl #2
	smull	r1, ip, lr, r5
	smull	r1, r10, lr, r2
	asr	r1, r4, #31
	smull	r7, fp, lr, r4
	rsb	r3, r1, r3, asr #5
	add	r3, r3, r3, lsl #2
	add	r3, r3, r3, lsl #2
	sub	r3, r4, r3, lsl #2
	smull	r7, lr, r3, lr
	ldr	r7, .L553+16
	rsb	r0, r0, ip, asr #2
	rsb	r1, r1, fp, asr #2
	ldr	ip, [r7, #24]
	ldr	fp, .L553+20
	asr	r2, r2, #31
	rsb	r2, r2, r10, asr #2
	add	r2, r2, #111
	add	r10, fp, ip, lsl #3
	add	r0, r0, r0, lsl #2
	strh	r2, [r10, #4]	@ movhi
	sub	r0, r5, r0, lsl #1
	lsl	r2, ip, #3
	add	r5, ip, #1
	asr	r3, r3, #31
	strh	r6, [fp, r2]	@ movhi
	rsb	r3, r3, lr, asr #2
	add	r2, ip, #2
	add	lr, fp, r5, lsl #3
	add	r0, r0, #111
	strh	r0, [lr, #4]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	add	r3, r3, #111
	strh	r8, [lr, #2]	@ movhi
	add	r1, r1, r1, lsl #2
	lsl	lr, r2, #3
	add	r2, fp, r2, lsl #3
	strh	r3, [r2, #4]	@ movhi
	sub	r1, r4, r1, lsl #1
	mov	r3, #98	@ movhi
	mov	r4, #92	@ movhi
	add	r0, ip, #3
	lsl	r5, r5, #3
	strh	r6, [fp, r5]	@ movhi
	add	r1, r1, #111
	strh	r6, [fp, lr]	@ movhi
	add	ip, ip, #4
	add	lr, fp, r0, lsl #3
	lsl	r0, r0, #3
	strh	r4, [r2, #2]	@ movhi
	str	ip, [r7, #24]
	strh	r1, [lr, #4]	@ movhi
	strh	r6, [fp, r0]	@ movhi
	strh	r3, [lr, #2]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L554:
	.align	2
.L553:
	.word	time_m
	.word	time_s
	.word	1374389535
	.word	1717986919
	.word	.LANCHOR0
	.word	shadowOAM
	.size	drawTimer, .-drawTimer
	.align	2
	.global	drawHUD
	.syntax unified
	.arm
	.fpu softvfp
	.type	drawHUD, %function
drawHUD:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L564
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L564+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #24]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L563
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L564+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L556
	ldr	r5, .L564+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L556
	ldr	r4, .L564+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L564+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L556:
	ldr	r2, [r6, #76]
	ldr	lr, .L564+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L564+28
	rsb	lr, r10, lr, asr #5
	smull	r3, fp, r1, r2
	add	r3, lr, lr, lsl #2
	mov	r5, #0
	mov	r9, #200
	mov	r8, #208
	add	r3, r3, r3, lsl #2
	sub	r3, r2, r3, lsl #2
	smull	r7, r1, r3, r1
	mov	r7, #216	@ movhi
	rsb	r10, r10, fp, asr #2
	add	r10, r10, r10, lsl #2
	asr	r3, r3, #31
	sub	r2, r2, r10, lsl #1
	rsb	r1, r3, r1, asr #2
	add	r10, r0, ip, lsl #3
	add	lr, lr, #111
	strh	lr, [r10, #4]	@ movhi
	add	r3, ip, #2
	add	lr, r0, r4, lsl #3
	add	r1, r1, #111
	strh	r1, [lr, #4]	@ movhi
	lsl	fp, r3, #3
	add	r1, r0, r3, lsl #3
	add	r2, r2, #111
	lsl	r3, ip, #3
	strh	r5, [r0, r3]	@ movhi
	strh	r9, [r10, #2]	@ movhi
	strh	r2, [r1, #4]	@ movhi
	strh	r8, [lr, #2]	@ movhi
	add	r2, ip, #3
	ldr	lr, .L564+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L564+36
	strh	r5, [r0, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, r0, r2, lsl #3
	strh	r5, [r0, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #24]
	strh	r5, [r0, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L563:
	ldr	r0, .L564+8
	b	.L556
.L565:
	.align	2
.L564:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	16400
	.word	16416
	.word	16432
	.word	1374389535
	.word	1717986919
	.word	16608
	.word	8326
	.size	drawHUD, .-drawHUD
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
	ldr	r3, .L574
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L574+4
	str	r1, [r3, #24]
	mov	lr, pc
	bx	r2
	bl	drawHUD
	ldr	r3, .L574+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L573
.L568:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawTimer
	ldr	r3, .L574+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L574+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L574+20
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L574+24
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [ip, #20]	@ movhi
	ldr	r2, .L574+28
	ldr	lr, [r2]
	ldr	r1, .L574+32
	lsl	r2, lr, #16
	lsr	r2, r2, #16
	ldr	r0, [r1]
	strh	r2, [ip, #22]	@ movhi
	ldr	r2, .L574+36
	add	r0, r3, r0, lsl #8
	smull	r3, r1, r2, lr
	smull	r4, r3, r2, r0
	sub	r2, r1, lr, asr #31
	sub	r3, r3, r0, asr #31
	sub	r2, r2, #15
	lsl	r3, r3, #16
	lsl	r2, r2, #16
	lsr	r3, r3, #16
	lsr	r2, r2, #16
	strh	r3, [ip, #24]	@ movhi
	pop	{r4, lr}
	strh	r2, [ip, #26]	@ movhi
	bx	lr
.L573:
	ldr	r3, .L574+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L574+44
	mov	lr, pc
	bx	r3
	b	.L568
.L575:
	.align	2
.L574:
	.word	.LANCHOR0
	.word	hideSprites
	.word	currMap
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	bgIndex
	.word	1431655766
	.word	drawBoss1
	.word	animateBoss1
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
	ldr	r3, .L578
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L579:
	.align	2
.L578:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	cameraLock
	.global	dead
	.comm	maps,2176,4
	.comm	bgIndex,4,4
	.comm	pMapPos,4,4
	.comm	currMap,4,4
	.global	airTimer
	.global	gTimer
	.global	coyoteTimer
	.global	framesInAir
	.global	yVel
	.global	jumpThud
	.global	dashed
	.global	dashingTimer
	.global	dashing
	.global	dying
	.global	running
	.global	doubleJumping
	.global	jumping
	.global	grounded
	.comm	vOff,4,4
	.comm	hOff,4,4
	.global	pauseVar
	.global	score
	.comm	collisionMap,4,4
	.global	shadowOAMIndex
	.comm	bl_bullets,264,4
	.comm	big_lettuce,480,4
	.comm	lettuce,504,4
	.comm	slash,56,4
	.comm	player,84,4
	.comm	shadowOAM,1024,4
	.global	cheating
	.global	winning
	.comm	soundB,32,4
	.comm	soundA,32,4
	.data
	.align	2
	.set	.LANCHOR1,. + 0
	.type	grounded, %object
	.size	grounded, 4
grounded:
	.word	1
	.bss
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dying, %object
	.size	dying, 4
dying:
	.space	4
	.type	cameraLock, %object
	.size	cameraLock, 4
cameraLock:
	.space	4
	.type	cheating, %object
	.size	cheating, 4
cheating:
	.space	4
	.type	winning, %object
	.size	winning, 4
winning:
	.space	4
	.type	gTimer, %object
	.size	gTimer, 4
gTimer:
	.space	4
	.type	airTimer, %object
	.size	airTimer, 4
airTimer:
	.space	4
	.type	shadowOAMIndex, %object
	.size	shadowOAMIndex, 4
shadowOAMIndex:
	.space	4
	.type	running, %object
	.size	running, 4
running:
	.space	4
	.type	yVel, %object
	.size	yVel, 4
yVel:
	.space	4
	.type	doubleJumping, %object
	.size	doubleJumping, 4
doubleJumping:
	.space	4
	.type	dashing, %object
	.size	dashing, 4
dashing:
	.space	4
	.type	dead, %object
	.size	dead, 4
dead:
	.space	4
	.type	jumpThud, %object
	.size	jumpThud, 4
jumpThud:
	.space	4
	.type	dashed, %object
	.size	dashed, 4
dashed:
	.space	4
	.type	coyoteTimer, %object
	.size	coyoteTimer, 4
coyoteTimer:
	.space	4
	.type	jumping, %object
	.size	jumping, 4
jumping:
	.space	4
	.type	framesInAir, %object
	.size	framesInAir, 4
framesInAir:
	.space	4
	.type	dashingTimer, %object
	.size	dashingTimer, 4
dashingTimer:
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
