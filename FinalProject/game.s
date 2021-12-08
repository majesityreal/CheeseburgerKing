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
	ldr	r3, .L13
	ldr	r1, [r3]
	ldr	r3, .L13+4
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
	cmp	r1, lr
	beq	.L12
	mov	r1, #80
	mov	r2, #120
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L6:
	mov	r1, #159
	mov	r2, #35
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L12:
	mov	r1, #140
	mov	r2, #20
	str	r1, [r3, #8]
	str	r2, [r3, #12]
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L14:
	.align	2
.L13:
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
	ldr	r3, .L17
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
.L18:
	.align	2
.L17:
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
	ldr	r3, .L31
	ldr	r9, [r3, #8]
	ldr	r1, .L31+4
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
.L20:
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
	bne	.L20
	ldr	r2, .L31+8
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
.L21:
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
	bne	.L21
	mov	ip, #0
	mov	lr, #8
	mov	r6, #4
	mvn	r5, #0
	mov	r3, #1
	ldr	r0, .L31+12
	add	r4, r0, #264
.L22:
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
	bne	.L22
	ldr	r0, .L31+16
	ldr	r0, [r0]
	cmp	r0, #1
	beq	.L23
	cmp	r0, #3
	beq	.L24
	cmp	r0, #0
	beq	.L30
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L23:
	ldr	r3, .L31+20
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L30:
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
	ldr	lr, .L31+24
	str	lr, [r1, #228]
	ldr	lr, .L31+28
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
	ldr	r1, .L31+32
	str	r1, [r2, #12]
	ldr	r1, .L31+36
	str	r1, [r2, #92]
	ldr	r1, .L31+40
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
.L24:
	ldr	r3, .L31+44
	mov	lr, pc
	bx	r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L32:
	.align	2
.L31:
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
	.word	initBoss2
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
	mov	r3, #67108864
	mov	r0, #0
	mov	r2, #22528
	push	{r4, r5, r6, lr}
	ldr	r1, .L43
	ldr	r5, .L43+4
	str	r0, [r1]
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r5]
	cmp	r3, #4
	ldrls	pc, [pc, r3, asl #2]
	b	.L41
.L36:
	.word	.L40
	.word	.L39
	.word	.L38
	.word	.L37
	.word	.L35
.L35:
	mov	r2, #1
	ldr	r3, .L43+8
	ldr	r4, .L43+12
	str	r2, [r3, #12]
.L34:
	ldr	r3, .L43+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L43+20
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L43+24
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
	pop	{r4, r5, r6, lr}
	bx	lr
.L40:
	ldr	r3, .L43+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L43+32
	ldr	r3, .L43+36
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	ip, #66
	mov	r1, #28
	mov	r2, #0
	ldr	r3, [r5]
	ldr	r4, .L43+12
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r0, [r3, #20]
	ldr	r0, .L43+40
	str	r0, [r3, #4]
	ldr	r0, .L43+44
	str	ip, [r3, #28]
	str	r0, [r3, #8]
	ldr	ip, .L43+48
	ldr	r0, .L43+52
	str	r1, [r3, #32]
	str	r0, [r3, #12]
	str	r1, [r3, #36]
	str	r2, [r3, #16]
	ldr	r0, .L43+8
	str	ip, [r3, #24]
	ldr	r1, .L43+56
	ldr	r3, .L43+60
	str	r2, [r0, #4]
	str	r1, [r3]
	b	.L34
.L39:
	ldr	r3, .L43+64
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L43+68
	ldr	r3, .L43+36
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r0, #67108864
	mov	r1, #1
	ldr	r3, [r5]
	ldr	r4, .L43+12
	ldr	ip, .L43+72
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	ip, [r3, #4]
	ldr	ip, .L43+76
	str	ip, [r3, #8]
	ldr	ip, .L43+80
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	r2, [r3, #20]
	ldr	ip, .L43+84
	ldr	r3, .L43+60
	str	ip, [r3]
	ldr	r3, .L43+8
	strh	r2, [r0, #26]	@ movhi
	str	r1, [r3, #4]
	b	.L34
.L38:
	ldr	r3, .L43+28
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L43+32
	ldr	r3, .L43+36
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	ip, #66
	mov	r1, #28
	mov	r2, #0
	ldr	r3, [r5]
	ldr	r4, .L43+12
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r0, [r3, #20]
	ldr	r0, .L43+88
	str	r0, [r3, #4]
	ldr	r0, .L43+92
	str	ip, [r3, #28]
	str	r0, [r3, #8]
	ldr	ip, .L43+48
	ldr	r0, .L43+96
	str	r1, [r3, #32]
	str	r0, [r3, #12]
	str	r1, [r3, #36]
	str	r2, [r3, #16]
	ldr	r0, .L43+8
	str	ip, [r3, #24]
	ldr	r1, .L43+100
	ldr	r3, .L43+60
	str	r2, [r0, #4]
	str	r1, [r3]
	b	.L34
.L37:
	ldr	r3, .L43+64
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L43+68
	ldr	r3, .L43+36
	mov	lr, pc
	bx	r3
	mov	r2, #0
	mov	r0, #67108864
	mov	r1, #1
	ldr	r3, [r5]
	ldr	r4, .L43+12
	ldr	ip, .L43+104
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	ip, [r3, #4]
	ldr	ip, .L43+76
	str	ip, [r3, #8]
	ldr	ip, .L43+108
	str	r2, [r3, #16]
	str	ip, [r3, #12]
	str	r2, [r3, #20]
	ldr	ip, .L43+112
	ldr	r3, .L43+60
	str	ip, [r3]
	ldr	r3, .L43+8
	strh	r2, [r0, #26]	@ movhi
	str	r1, [r3, #4]
	b	.L34
.L41:
	ldr	r4, .L43+12
	b	.L34
.L44:
	.align	2
.L43:
	.word	bgIndex
	.word	currMap
	.word	.LANCHOR0
	.word	maps
	.word	waitForVBlank
	.word	DMANow
	.word	100712448
	.word	map1Song_length
	.word	map1Song_data
	.word	playSoundA
	.word	map1Map
	.word	map1Pal
	.word	1978
	.word	map1Tiles
	.word	map1CollisionBitmap
	.word	collisionMap
	.word	bossSong_length
	.word	bossSong_data
	.word	boss1Map
	.word	boss1Pal
	.word	boss1Tiles
	.word	boss1CollisionBitmap
	.word	map2Map
	.word	map2Pal
	.word	map2Tiles
	.word	map2CollisionBitmap
	.word	boss2Map
	.word	boss2Tiles
	.word	boss2CollisionBitmap
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
	ldr	r6, .L52
	ldr	r3, [r6]
	cmp	r3, #4
	beq	.L51
	ldr	r3, .L52+4
	mov	lr, pc
	bx	r3
	ldr	r5, .L52+8
.L47:
	mov	r2, #0
	mov	r1, #512
	ldr	r3, .L52+12
	str	r2, [r5, #12]
	add	r2, r3, #1024
.L48:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L48
	mov	r4, #0
	bl	initMaps
	mov	r7, #1
	bl	initPlayer
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #2
	mov	r2, #4
	ldr	r3, .L52+16
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
	ldr	r3, .L52+20
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r2, [r3, #20]
	ldr	r0, .L52+24
	ldr	r3, .L52+28
	str	r4, [r5, #16]
	str	r4, [r5, #20]
	str	r1, [r5, #24]
	str	ip, [r0]
	str	r2, [r3]
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L51:
	mov	r2, #1
	ldr	r5, .L52+8
	ldr	r3, .L52+32
	str	r2, [r5, #12]
	mov	lr, pc
	bx	r3
	b	.L47
.L53:
	.align	2
.L52:
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
	ldr	r2, .L55
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L56:
	.align	2
.L55:
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
	ldr	r3, .L61
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L61+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L61+8
	str	r3, [sp]
	ldr	r0, .L61+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L61+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L60
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L60:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L62:
	.align	2
.L61:
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
	ldr	r2, .L89
	ldr	r3, [r2, #52]
	ldr	r0, .L89+4
	cmp	r3, #0
	push	{r4, r5, r6, r7, lr}
	ldr	r1, [r0, #24]
	ldr	r4, [r2, #36]
	beq	.L64
	ldr	ip, .L89+8
	lsl	r5, r1, #3
	ldrh	r3, [ip, r5]
	add	lr, r1, #1
	orr	r3, r3, #512
	cmp	r4, #1
	strh	r3, [ip, r5]	@ movhi
	str	lr, [r0, #24]
	bne	.L66
.L65:
	ldr	r3, [r0, #28]
	add	r3, r3, #1
	cmp	r3, #30
	str	r3, [r0, #28]
	ble	.L63
	ldr	r4, .L89+12
	smull	r5, r4, r3, r4
	ldr	r5, .L89+16
	asr	r3, r3, #31
	rsb	r3, r3, r4, asr #1
	umull	r4, r5, r3, r5
	ldr	r6, [r2, #28]
	ldr	r4, [r2, #8]
	lsr	r5, r5, #2
	add	r5, r5, r5, lsl #1
	add	r4, r4, r6
	ldr	r6, .L89+20
	sub	r3, r3, r5, lsl #1
	ldr	r6, [r6]
	add	r3, r3, #432
	add	r5, ip, lr, lsl #3
	lsl	r3, r3, #1
	sub	r4, r4, #7
	strh	r3, [r5, #4]	@ movhi
	sub	r4, r4, r6
	ldr	r5, .L89+24
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
.L77:
	lsl	r3, r3, #1
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
.L78:
	add	r1, r1, #1
	str	r1, [r0, #24]
.L66:
	mov	r3, #0
	str	r3, [r0, #28]
.L63:
	pop	{r4, r5, r6, r7, lr}
	bx	lr
.L64:
	ldr	ip, .L89+24
	ldr	r3, [r2, #12]
	ldr	lr, [ip]
	sub	r3, r3, #3
	ldr	ip, .L89+20
	sub	r3, r3, lr
	ldr	r5, [ip]
	ldr	lr, [r2, #8]
	ldr	ip, .L89+8
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
	b	.L68
.L70:
	.word	.L77
	.word	.L76
	.word	.L75
	.word	.L74
	.word	.L73
	.word	.L72
	.word	.L71
	.word	.L69
.L76:
	add	r3, r3, #32
	lsl	r3, r3, #1
	add	r5, ip, r5
	add	lr, r1, #1
	strh	r3, [r5, #4]	@ movhi
	str	lr, [r0, #24]
	b	.L65
.L75:
	ldr	r2, .L89+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #64
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L78
.L74:
	ldr	r2, .L89+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #96
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L78
.L73:
	rsbs	r2, r3, #0
	and	r2, r2, #3
	and	r3, r3, #3
	rsbpl	r3, r2, #0
	add	r3, r3, #128
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L78
.L72:
	ldr	r2, .L89+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #192
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L78
.L71:
	ldr	r2, .L89+28
	smull	lr, r2, r3, r2
	sub	r2, r2, r3, asr #31
	add	r2, r2, r2, lsl #1
	sub	r3, r3, r2
	add	r3, r3, #224
	add	ip, ip, r5
	lsl	r3, r3, #1
	strh	r3, [ip, #4]	@ movhi
	b	.L78
.L69:
	add	r3, r3, #7
	lsl	r3, r3, #1
	add	ip, ip, r5
	strh	r3, [ip, #4]	@ movhi
	b	.L78
.L68:
	add	r3, r3, r4, lsl #5
	lsl	r3, r3, #1
	add	ip, ip, r5
	add	r1, r1, #1
	strh	r3, [ip, #4]	@ movhi
	str	r1, [r0, #24]
	b	.L66
.L90:
	.align	2
.L89:
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
	ldr	r6, .L122
	ldr	r8, .L122+4
	ldr	r7, .L122+8
	ldr	r1, .L122+12
	ldr	r4, [r6, #24]
	ldr	r9, .L122+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L122+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L97
.L119:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L92
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
	beq	.L117
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L94:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L118
.L97:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L119
.L92:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L97
.L118:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L122+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L122+28
	ldr	r5, .L122+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L104
.L121:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L98
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
	beq	.L102
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L100:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L120
.L104:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L121
.L98:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L104
.L120:
	add	r4, r4, #13
	str	r4, [r6, #24]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L102:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L103
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L100
.L117:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L94
.L103:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L100
.L123:
	.align	2
.L122:
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
	ldr	r1, .L139
	ldr	r2, .L139+4
	ldr	r9, .L139+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #24]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L139+12
	ldr	r5, .L139+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L139+20
	mov	r8, r2
	ldr	r3, .L139+24
	mov	r2, r1
	ldr	fp, .L139+28
	ldr	r10, .L139+32
	b	.L131
.L138:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L125
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
	beq	.L128
	cmp	r0, #3
	beq	.L129
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L130:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L127
	str	r2, [sp, #4]
	ldr	r3, .L139+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L139+24
.L127:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L137
.L131:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L138
.L125:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L127
.L137:
	add	r8, r2, #6
	str	r8, [r9, #24]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L128:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L130
.L129:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L130
.L140:
	.align	2
.L139:
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
	ldr	r1, .L151
	ldr	r3, [r1, #40]
	ldr	r0, .L151+4
	cmp	r3, #0
	ldr	r2, [r0, #24]
	beq	.L142
	ldr	ip, .L151+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #24]
	bx	lr
.L142:
	ldr	ip, .L151+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L151+16
	ldr	ip, .L151+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L151+8
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
.L152:
	.align	2
.L151:
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
	ldr	r3, .L219
	push	{r4, r5, r6, lr}
	ldr	r4, .L219+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L154
	cmp	r2, #0
	beq	.L212
	ldrh	r3, [r3, #48]
.L157:
	ldr	r3, .L219+8
	ldr	r1, [r3, #32]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L160
	movne	r1, #2
	strne	r1, [r4, #36]
.L160:
	ldr	r1, [r3, #36]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L163
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L163:
	ldr	r2, [r3, #40]
	cmp	r2, #0
	beq	.L164
	ldr	r2, .L219+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L164:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L165
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L213
	cmp	r2, #2
	beq	.L214
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L177
	ldr	r3, .L219+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L169
	add	r2, r2, #1
	str	r2, [r4, #44]
.L217:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L212:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L157
.L154:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L157
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L157
.L165:
	ldr	r2, .L219+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L215
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L181
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L181
.L180:
	cmp	ip, #1
	beq	.L181
	cmp	ip, #6
	beq	.L181
	cmp	r0, #0
	bne	.L216
	cmp	r3, #0
	bne	.L169
.L181:
	ldr	r0, [r4, #44]
	ldr	r3, .L219+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L169:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L215:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L169
	ldr	ip, [r4, #36]
	b	.L180
.L213:
	tst	r5, #7
	bne	.L169
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L217
.L214:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L219+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L219+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L177:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L219+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #44]
	b	.L169
.L216:
	cmp	ip, #5
	beq	.L218
.L173:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L169
.L218:
	ldr	r0, [r4, #44]
	ldr	r3, .L219+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L173
.L220:
	.align	2
.L219:
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
	ldr	r5, .L229
	ldr	r8, .L229+4
	ldr	r6, .L229+8
	add	r7, r5, #504
.L223:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L222
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L222:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L223
	ldr	r5, .L229+12
	ldr	r8, .L229+4
	ldr	r6, .L229+8
	add	r7, r5, #480
.L225:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L224
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L224:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L225
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L230:
	.align	2
.L229:
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
	ldr	r2, .L241
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L234
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L234
	cmp	r3, #18
	bne	.L233
.L234:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L233:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L242:
	.align	2
.L241:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, .L394
	ldr	r8, [r4]
	cmp	r8, #0
	sub	sp, sp, #28
	bne	.L385
	ldr	r5, .L394+4
	ldr	r10, .L394+8
	ldr	r7, .L394+12
	ldr	r6, [r5, #8]
	ldr	r2, [r5, #28]
	ldr	r3, [r10]
	ldr	r1, [r7]
	add	r2, r6, r2
	ldr	fp, [r5, #12]
	add	r2, r2, #1
	add	r3, r3, r1, lsl #8
	add	r3, r3, r2, lsl #11
	ldrb	r2, [r3, fp]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, fp
	bne	.L245
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L245
	mov	r1, r8
	ldr	r9, .L394+16
	str	r8, [r9]
.L246:
	ldr	r3, .L394+20
	ldrh	r3, [r3]
	tst	r3, #64
	str	r3, [sp, #16]
	beq	.L247
	ldr	r3, .L394+24
	ldrh	r2, [r3]
	tst	r2, #64
	bne	.L248
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bne	.L380
	ldr	r2, [r4, #60]
	cmp	r2, #0
	bne	.L251
	cmp	r1, #0
	bne	.L380
	ldr	r2, [r4, #56]
	cmp	r2, #7
	ble	.L380
.L251:
	ldr	r1, .L394+28
	mov	r2, #0
	ldr	r1, [r1]
	ldr	r0, .L394+32
	ldr	r6, .L394+36
	mov	lr, pc
	bx	r6
	mov	r2, #0
	mov	r1, #1
	mvn	r0, #4
	ldr	ip, [r4, #60]
	str	r2, [r4, #64]
	cmp	ip, r2
	str	r2, [r4, #20]
	str	r2, [r4, #48]
	ldr	r2, .L394+20
	ldrh	r2, [r2]
	streq	r1, [r4, #60]
	str	r2, [sp, #16]
	tst	r2, #64
	ldr	r2, [r4, #40]
	add	r6, r5, #8
	str	r1, [r4, #36]
	str	r0, [r4, #32]
	ldr	r3, .L394+24
	ldm	r6, {r6, fp}
	str	r2, [sp, #20]
	beq	.L320
	ldrh	r3, [r3]
	tst	r3, #64
	beq	.L321
	b	.L382
.L260:
	beq	.L264
	mov	r0, #1
	ldr	ip, [r7]
	ldr	r3, [r5, #24]
	ldr	r1, [r5, #28]
	add	r3, r3, ip, lsl #8
	add	r1, r6, r1
	add	ip, fp, ip, lsl #8
	add	r3, r3, fp
	add	r3, r3, r1, lsl #11
	add	r1, ip, r1, lsl #11
	ldr	ip, [r10]
	add	r3, ip, r3
	add	r1, ip, r1
.L266:
	ldrb	ip, [r1, r0, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L265
	ldrb	ip, [r3, r0, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L265
	add	r0, r0, #1
	cmp	r0, r2
	ble	.L266
.L264:
	ldr	r9, [r9]
.L267:
	cmp	r9, #0
	bne	.L268
	ldr	r3, .L394+40
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r4, #64]
	beq	.L387
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L274
.L319:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L275
.L274:
	ldr	r3, [r4, #60]
	cmp	r3, #0
	beq	.L273
.L276:
	mov	r3, #1
	str	r3, [r4, #48]
	sub	r0, r0, #3
.L273:
	ldr	r3, .L394+44
	mov	lr, pc
	bx	r3
	ldr	r8, .L394+48
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L394+52
	mov	lr, pc
	bx	r8
	ldr	r3, .L394+56
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
.L268:
	ldr	r8, .L394+60
	ldr	r3, [r8]
	cmp	r3, #93
	bgt	.L278
.L392:
	sub	r2, r6, r3
	cmp	r2, #79
	ble	.L279
	ldr	r2, [r4, #32]
	cmp	r2, #0
	ble	.L279
	ldr	r1, [r4, #4]
	cmp	r1, #0
	addeq	r3, r3, r2
	streq	r3, [r8]
.L279:
	cmp	r3, #3
	bgt	.L278
.L280:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L282
	ldr	r3, [r4, #68]
	add	r3, r3, #1
	cmp	r9, #0
	cmpne	r3, #30
	str	r3, [r4, #68]
	movgt	r2, #1
	movle	r2, #0
	bgt	.L388
	cmp	r3, #15
	movgt	r3, #2
	strgt	r2, [r4, #40]
	strgt	r2, [r4, #68]
	strgt	r3, [r5, #68]
.L282:
	ldr	r3, [sp, #16]
	tst	r3, #256
	beq	.L285
	ldr	r3, .L394+24
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L286
.L285:
	ldr	r3, [sp, #16]
	tst	r3, #512
	beq	.L383
	ldr	r3, .L394+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L286
.L383:
	ldr	r1, [r5, #68]
.L288:
	ldr	r3, .L394+64
	ldr	r0, [r4, #16]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	ldr	r3, [r5, #56]
	beq	.L317
.L293:
	ldr	r8, .L394+68
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r8, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r3, r2, r3, fp
	sub	r3, r3, #2
	str	r3, [r8, #4]
	str	r6, [r8]
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	ble	.L301
	mov	fp, #1
	ldr	r6, .L394+72
	ldr	r9, .L394+76
	add	r10, r6, #504
.L305:
	ldr	r1, [r7]
	ldr	r0, [r8, #4]
	ldr	ip, [r6, #20]
	ldr	r3, [r8, #24]
	ldr	r2, [r8, #16]
	ldr	lr, [r6, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r6, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r6, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r8, #20]
	ldr	r1, [r8]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L303
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L303
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L303:
	add	r6, r6, #72
	cmp	r10, r6
	bne	.L305
	mov	fp, #1
	ldr	r6, .L394+80
	add	r10, r6, #480
.L309:
	ldr	r1, [r7]
	ldr	r0, [r8, #4]
	ldr	r3, [r6, #16]
	ldr	r2, [r8, #24]
	ldr	ip, [r8, #16]
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
	ldr	r3, [r8, #20]
	ldr	r1, [r8]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L307
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L307
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L307:
	add	r6, r6, #80
	cmp	r10, r6
	bne	.L309
	ldr	r6, .L394+84
	ldr	r3, [r6]
	cmp	r3, #1
	beq	.L389
.L310:
	cmp	r3, #3
	beq	.L390
.L313:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
.L315:
	ldr	r3, .L394+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L316
	ldr	r3, .L394+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L316
	ldr	r2, [r5, #60]
	cmp	r2, #0
	bne	.L316
	mov	r0, #1
	mov	r3, #20
	ldr	r1, .L394+88
	ldr	r1, [r1]
	str	r0, [r5, #60]
	str	r3, [r5, #64]
	lsr	r1, r1, r0
	ldr	r3, .L394+36
	ldr	r0, .L394+92
	str	r2, [r5, #44]
	str	r2, [r8, #40]
	str	r2, [r8, #32]
	str	r2, [r8, #28]
	mov	lr, pc
	bx	r3
.L316:
	add	r2, r4, #16
	ldm	r2, {r2, r3}
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r4, #16]
	str	r3, [r4, #20]
.L385:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L245:
	mov	r3, #0
	mov	r2, #1
	ldr	r9, .L394+16
	mov	r1, r2
	str	r3, [r4, #48]
	str	r2, [r9]
	str	r3, [r4, #36]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	b	.L246
.L247:
	ldr	r3, [r4, #40]
	str	r3, [sp, #20]
.L254:
	ldr	r2, [r4, #32]
	cmp	r2, #0
	bge	.L260
	ldr	r9, [r9]
.L259:
	ldr	r1, [r7]
	ldr	r3, [r5, #24]
	ldr	r0, [r10]
	add	r3, r3, r1, lsl #8
	add	r1, fp, r1, lsl #8
	add	r3, r3, fp
	add	r1, r1, r6, lsl #11
	add	r3, r3, r6, lsl #11
	add	r1, r0, r1
	add	r3, r0, r3
	ldrb	r0, [r1, r8, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L261
.L391:
	ldrb	r0, [r3, r8, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L261
	sub	r8, r8, #1
	cmp	r8, r2
	ble	.L267
	ldrb	r0, [r1, r8, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L391
.L261:
	mov	r2, #1
	mov	r3, #0
	add	r8, r8, r2
	add	r6, r6, r8
	str	r6, [r5, #8]
	str	r3, [r4, #32]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r2, [r4, #48]
	b	.L267
.L286:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L383
	mov	r3, #1
	cmp	r9, #0
	str	r3, [r4, #40]
	beq	.L289
	ldr	r3, [r4, #8]
	cmp	r3, #0
	movne	r1, #1
	moveq	r1, #2
	mov	r3, #3
	str	r1, [r5, #68]
	str	r3, [r5, #20]
	b	.L288
.L265:
	mov	r3, #1
	mov	r2, #0
	ldr	r8, .L394+60
	str	r3, [r9]
	mov	r9, r3
	ldr	r3, [r8]
	add	r6, r6, r0
	cmp	r3, #93
	str	r6, [r5, #8]
	str	r2, [r4, #32]
	ble	.L392
.L278:
	sub	r2, r6, r3
	cmp	r2, #80
	bgt	.L280
	ldr	r2, [r4, #32]
	cmp	r2, #0
	bge	.L280
	ldr	r1, [r4, #4]
	cmp	r1, #0
	addeq	r3, r2, r3
	streq	r3, [r8]
	b	.L280
.L289:
	ldr	r2, [r4, #52]
	cmp	r2, #0
	bne	.L383
	ldr	r2, [r4, #8]
	cmp	r2, #0
	str	r3, [r4, #52]
	str	r3, [r5, #68]
	movne	r3, #4
	strne	r3, [r5, #20]
	ldr	r3, [r5, #56]
.L317:
	ldr	r2, .L394+40
	ldrh	r2, [r2, #48]
	ldr	r1, [r7]
	tst	r2, #32
	str	r1, [sp, #16]
	lsl	r9, r1, #8
	bne	.L294
	ldr	lr, [r5, #20]
	ldr	r2, [r10]
	sub	ip, fp, lr
	add	r0, ip, r9
	add	r1, r2, r6, lsl #11
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L294
	ldr	r1, [r5, #28]
	add	r1, r6, r1
	sub	r1, r1, #1
	add	r2, r2, r1, lsl #11
	ldrb	r2, [r2, r0]	@ zero_extendqisi2
	cmp	fp, #0
	cmpge	r2, #0
	bne	.L294
	ldr	r2, [r4, #4]
	cmp	r3, #0
	streq	r3, [r4, #28]
	cmp	r2, #0
	str	ip, [r5, #12]
	bne	.L326
	ldr	r0, .L394+96
	ldr	r2, [r0]
	cmp	r2, #0
	ble	.L296
	sub	r1, ip, r2
	cmp	r1, #119
	bgt	.L326
	sub	r2, r2, lr
	str	r2, [r0]
.L296:
	ldr	r1, [sp, #16]
	cmp	r2, #0
	movgt	r2, #0
	movle	r2, #1
	cmp	r1, #0
	moveq	r2, #0
	cmp	r2, #0
	beq	.L326
	mov	r1, #67108864
	mov	ip, #256
	mov	lr, #376
	ldr	fp, [sp, #16]
	add	r2, fp, #23
	lsl	r2, r2, #24
	orr	r2, r2, #1073741824
	sub	fp, fp, #1
	lsr	r2, r2, #16
	str	fp, [r7]
	strh	r2, [r1, #10]	@ movhi
	str	ip, [r0]
	strh	ip, [r1, #20]	@ movhi
	str	fp, [sp, #16]
	mov	fp, lr
	ldrh	r2, [r8]
	strh	r2, [r1, #22]	@ movhi
	str	lr, [r5, #12]
	sub	r9, r9, #256
.L294:
	ldr	r2, .L394+40
	ldrh	r2, [r2, #48]
	tst	r2, #16
	bne	.L384
	ldr	r0, [r5, #24]
	ldr	lr, [r5, #20]
	ldr	r1, [r10]
	add	r2, r0, fp
	add	r2, r2, lr
	add	r2, r2, r9
	add	ip, r1, r6, lsl #11
	ldrb	ip, [ip, r2]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L384
	ldr	ip, [r5, #28]
	add	ip, r6, ip
	sub	ip, ip, #1
	add	r1, r1, ip, lsl #11
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r2, .L394+100
	bne	.L297
	ldr	ip, [r2]
	add	r0, r0, ip
	cmp	r0, #2048
	bgt	.L297
	cmp	r3, #0
	strne	r1, [r4, #28]
	ldr	r1, [r4, #4]
	add	fp, fp, lr
	cmp	r1, #0
	str	fp, [r5, #12]
	bne	.L297
	ldr	r0, .L394+96
	ldr	r1, [r0]
	cmp	r1, #256
	str	r1, [sp, #20]
	ble	.L299
.L300:
	mov	ip, #67108864
	mov	r9, #0
	mov	lr, #120
	ldr	r10, [sp, #16]
	add	r1, r10, #25
	lsl	r1, r1, #24
	orr	r1, r1, #1073741824
	add	fp, r10, #1
	lsr	r1, r1, #16
	str	fp, [r7]
	strh	r1, [ip, #10]	@ movhi
	ldrh	r1, [r8]
	str	r9, [r0]
	strh	r9, [ip, #20]	@ movhi
	strh	r1, [ip, #22]	@ movhi
	lsl	r9, fp, #8
	str	lr, [r5, #12]
	mov	fp, lr
	b	.L297
.L384:
	ldr	r2, .L394+100
.L297:
	add	r9, fp, r9
	str	r9, [r2]
	b	.L293
.L301:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r8, #40]
	b	.L315
.L387:
	ldr	r2, [r4, #60]
	cmp	r2, #0
	beq	.L270
	ldr	r2, [r4, #48]
	cmp	r2, #0
	bne	.L271
	ldr	r2, [r4, #36]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L273
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L276
.L318:
	sub	r0, r0, #4
	b	.L273
.L248:
	ldr	r3, [r4, #40]
	str	r3, [sp, #20]
.L382:
	ldr	r3, .L394+20
	ldrh	r3, [r3]
	str	r3, [sp, #16]
	b	.L254
.L380:
	ldr	r3, [r4, #40]
	str	r3, [sp, #20]
.L321:
	ldr	r3, [r9]
	cmp	r3, #0
	bne	.L255
	ldr	r3, [r4, #56]
	cmp	r3, #7
	bgt	.L382
.L255:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L382
	ldr	r2, [r10]
	ldr	r1, [r7]
	sub	r3, r6, #1
	add	r3, r2, r3, lsl #11
	add	r3, r3, r1, lsl #8
	ldrb	r2, [r3, fp]	@ zero_extendqisi2
	cmp	r2, #0
	add	r3, r3, fp
	bne	.L382
	ldr	r2, [r5, #24]
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L382
	ldr	r6, [sp, #20]
	ldr	r3, .L394+104
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L394+108
	ldr	r3, .L394+36
	mov	lr, pc
	bx	r3
	mov	r3, #1
	mvn	r2, #4
	str	r3, [r4, #60]
	ldr	r3, .L394+20
	ldrh	r3, [r3]
	str	r3, [sp, #16]
	ldr	r3, [r4, #40]
	str	r6, [r9]
	str	r6, [r4, #64]
	mov	r9, r6
	str	r6, [r4, #20]
	add	r6, r5, #8
	str	r2, [r4, #32]
	ldm	r6, {r6, fp}
	str	r3, [sp, #20]
	b	.L259
.L388:
	mov	r3, #0
	mov	r1, #2
	mov	r2, #3
	str	r3, [r4, #40]
	str	r3, [r4, #68]
	str	r1, [r5, #68]
	str	r2, [r5, #20]
	b	.L282
.L270:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L319
	b	.L273
.L390:
	ldr	r6, .L394+112
	add	r0, r6, #12
	ldm	r0, {r0, r2}
	ldr	r3, [r8, #24]
	ldmib	r6, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r8, #16]
	str	r0, [sp, #8]
	ldr	r0, [r8, #4]
	stm	sp, {r1, ip}
	sub	r2, r2, r3
	add	r0, r3, r0
	ldr	r1, [r8]
	ldr	r3, [r8, #20]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L313
	ldr	r3, [r6, #32]
	cmp	r3, #0
	moveq	r2, #1
	ldreq	r3, [r6]
	subeq	r3, r3, #1
	streq	r3, [r6]
	streq	r2, [r6, #32]
	b	.L313
.L389:
	ldr	r7, .L394+116
	add	r0, r7, #12
	ldm	r0, {r0, r2}
	ldr	r3, [r8, #24]
	ldmib	r7, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r8, #16]
	str	r0, [sp, #8]
	ldr	r0, [r8, #4]
	stm	sp, {r1, ip}
	sub	r2, r2, r3
	add	r0, r3, r0
	ldr	r1, [r8]
	ldr	r3, [r8, #20]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L393
	ldr	r3, [r7, #32]
	cmp	r3, #0
	moveq	r1, #1
	ldreq	r2, [r7]
	subeq	r2, r2, #1
	ldr	r3, [r6]
	streq	r2, [r7]
	streq	r1, [r7, #32]
	b	.L310
.L275:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	bne	.L274
	b	.L318
.L271:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L319
	b	.L276
.L393:
	ldr	r3, [r6]
	b	.L310
.L326:
	mov	fp, ip
	b	.L294
.L299:
	ldr	r1, [sp, #20]
	ldr	r10, .L394+120
	sub	r1, fp, r1
	cmp	r1, #120
	movgt	r1, #1
	movle	r1, #0
	cmp	ip, r10
	movgt	r1, #0
	cmp	r1, #0
	beq	.L297
	ldr	r1, [sp, #20]
	add	lr, lr, r1
	cmp	lr, #256
	str	lr, [r0]
	ble	.L297
	b	.L300
.L320:
	mvn	r2, #4
	ldr	r9, [r9]
	b	.L259
.L395:
	.align	2
.L394:
	.word	.LANCHOR0
	.word	player
	.word	collisionMap
	.word	bgIndex
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
	.word	vOff
	.word	__aeabi_idivmod
	.word	slash
	.word	lettuce
	.word	collision
	.word	big_lettuce
	.word	currMap
	.word	sfx_attack_length
	.word	sfx_attack_data
	.word	hOff
	.word	pMapPos
	.word	sfx_jump2_length
	.word	sfx_jump2_data
	.word	boss2
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
	ldr	lr, .L400
	ldr	ip, .L400+4
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
	bne	.L396
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L396:
	ldr	lr, [sp], #4
	bx	lr
.L401:
	.align	2
.L400:
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
	ldr	r0, .L405
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
.L406:
	.align	2
.L405:
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
	ldr	r2, .L408
	ldr	r3, .L408+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L409:
	.align	2
.L408:
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
	ldr	r3, .L411
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L412:
	.align	2
.L411:
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
	ldr	r4, .L429
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L414
	ldr	r3, [r4, #72]
	cmp	r3, #0
	ble	.L428
.L413:
	pop	{r4, lr}
	bx	lr
.L414:
	ldr	r3, .L429+4
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ldr	r3, [r3, #40]
	bne	.L427
	cmp	r3, #0
	beq	.L417
	ldr	r3, .L429+8
	ldr	r3, [r3]
.L427:
	cmp	r3, #0
	bne	.L413
.L417:
	ldr	r3, .L429+12
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L429+16
	ldr	r3, .L429+20
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r4, #72]
	sub	r3, r3, #1
	cmp	r3, #0
	str	r3, [r4, #72]
	str	r2, [r4, #76]
	bgt	.L413
.L428:
	ldr	r3, .L429+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L413
	pop	{r4, lr}
	b	gameOver.part.0
.L430:
	.align	2
.L429:
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
	ldr	r6, .L513
	ldr	r4, .L513+4
	ldr	ip, [r6]
	ldr	r9, .L513+8
	ldr	r10, .L513+12
	ldr	r5, .L513+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r7, r4, #504
.L440:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L506
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L506
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L433
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L435
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L435:
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
	beq	.L436
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L508
.L436:
	ldr	ip, [r6]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r10]
	ldr	r2, [r4, #8]
	bge	.L505
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	fp, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, fp
	bge	.L505
	ldr	r3, .L513+20
	ldr	r3, [r3, #16]
	tst	r3, #1
	beq	.L499
.L505:
	ldr	r3, [r4, #20]
.L437:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L509
.L439:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L507:
	sub	r3, ip, #239
.L433:
	add	r4, r4, #72
	cmp	r4, r7
	bne	.L440
	ldr	r4, .L513+24
	ldr	r8, .L513+8
	ldr	r9, .L513+20
	ldr	fp, .L513+28
	ldr	r10, .L513+32
	add	r7, r4, #480
.L454:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L441
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L441:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L443
	ldr	r3, [r4, #44]
	cmp	r3, #0
	ldr	r5, .L513+16
	beq	.L444
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L444:
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
	beq	.L445
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L510
.L445:
	ldr	r2, [r6]
	ldr	r3, [r4, #12]
	sub	r3, r2, r3
	eor	r1, r3, r3, asr #31
	ldr	r2, [r4, #60]
	sub	r1, r1, r3, asr #31
	cmp	r1, r2
	bge	.L443
	ldr	r1, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r1
	cmp	r2, #0
	ldr	r1, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, r1
	bge	.L443
	ldr	r2, [r9, #16]
	ands	r2, r2, #1
	bne	.L443
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L448
	movne	r3, #1
	strne	r3, [r4, #56]
.L448:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	bne	.L449
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	bgt	.L511
.L443:
	add	r4, r4, #80
	cmp	r7, r4
	beq	.L453
	ldr	ip, [r6]
	sub	r3, ip, #239
	b	.L454
.L506:
	str	r8, [r4, #4]
	b	.L433
.L509:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L439
	b	.L507
.L453:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L510:
	bl	hurtPlayer
	b	.L445
.L508:
	bl	hurtPlayer
	b	.L436
.L499:
	cmp	r0, #0
	blt	.L512
	beq	.L505
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L437
	add	r0, lr, r0
	mov	fp, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L437
	add	fp, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L437
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L437
.L449:
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L443
	mov	r2, #0
	ldr	r3, .L513+36
	mov	r0, r10
	ldr	r1, [fp]
	mov	lr, pc
	bx	r3
	mov	r3, #0
	mov	r2, r3
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	ldr	r3, .L513+40
.L452:
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L450
	ldr	r1, [r3, #4]
	cmp	r1, #0
	beq	.L450
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L452
	b	.L443
.L511:
	mov	r3, #1
	str	r2, [r4, #36]
	str	r3, [r4, #76]
	str	r3, [r4, #72]
	b	.L443
.L512:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L437
	ldr	r0, [sp, #16]
	add	fp, lr, r0
	add	r0, r2, r3
	str	fp, [sp, #20]
	ldrb	fp, [fp, r0, lsl #11]	@ zero_extendqisi2
	cmp	fp, #0
	lsl	r0, r0, #11
	bne	.L437
	ldr	fp, [sp, #20]
	add	r0, r0, #2048
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	cmp	fp, #0
	ldr	fp, [sp, #20]
	add	r0, fp, r0
	beq	.L437
	ldr	fp, [r4, #16]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L437
.L450:
	mov	r0, #1
	ldr	r3, [r4, #56]
	ldr	lr, .L513+40
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
	b	.L443
.L514:
	.align	2
.L513:
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
	ldr	r9, .L536
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L536+4
	ldr	r5, .L536+8
	ldr	r8, .L536+12
	sub	sp, sp, #20
.L522:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L515
	ldr	r3, [r7]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, r3, #239
	add	r1, ip, r2
	cmp	r0, r1
	sub	r1, r3, #476
	sub	r1, r1, #3
	bgt	.L518
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
	ble	.L534
.L519:
	cmp	ip, lr
	bgt	.L524
.L520:
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
	beq	.L521
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L521
	ldr	r10, [r5, #76]
	cmp	r10, #0
	beq	.L535
.L521:
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #44
	bne	.L522
.L515:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L518:
	mov	lr, #0
	add	r0, r4, #36
	ldm	r0, {r0, r10}
	mla	r0, r10, r0, ip
	add	ip, r2, r0
	cmp	r1, ip
	str	r0, [r4, #12]
	str	lr, [r4, #4]
	bgt	.L524
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L520
.L524:
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
.L535:
	bl	hurtPlayer
	str	r10, [r4]
	b	.L521
.L534:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L520
	b	.L519
.L537:
	.align	2
.L536:
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
	push	{r4, r5, r6, lr}
	ldr	r4, .L559
	ldr	r3, [r4, #72]
	cmp	r3, #0
	bne	.L538
	ldr	r3, .L559+4
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	bne	.L556
.L541:
	cmp	r3, #0
	beq	.L543
	ldr	r3, .L559+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L543
.L542:
	mov	r3, #1
	str	r3, [r4, #72]
.L543:
	ldr	r5, .L559+12
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, [r5]
	cmp	r3, #1
	beq	.L557
	cmp	r3, #3
	beq	.L558
.L545:
	ldr	r3, .L559+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L546
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L538
.L546:
	ldr	r2, [r4]
	cmp	r2, #0
	bne	.L538
	mov	r1, #1
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L538:
	pop	{r4, r5, r6, lr}
	bx	lr
.L556:
	ldr	r2, .L559+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L542
	b	.L541
.L557:
	ldr	r3, .L559+20
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	cmp	r3, #3
	bne	.L545
.L558:
	ldr	r3, .L559+24
	mov	lr, pc
	bx	r3
	b	.L545
.L560:
	.align	2
.L559:
	.word	.LANCHOR0
	.word	oldButtons
	.word	buttons
	.word	currMap
	.word	player
	.word	updateBoss1
	.word	updateBoss2
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
	ldr	r3, .L564
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r2, .L564+4
	ldr	r5, [r3]
	ldr	r3, .L564+8
	ldr	r4, [r2]
	smull	r1, r2, r3, r5
	smull	r1, r3, r4, r3
	mov	r6, #0
	mov	r9, #76
	mov	r8, #82
	asr	r0, r5, #31
	rsb	r2, r0, r2, asr #5
	add	r2, r2, r2, lsl #2
	ldr	lr, .L564+12
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
	ldr	r7, .L564+16
	rsb	r0, r0, ip, asr #2
	rsb	r1, r1, fp, asr #2
	ldr	ip, [r7, #24]
	ldr	fp, .L564+20
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
.L565:
	.align	2
.L564:
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
	ldr	r3, .L575
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L575+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #24]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L574
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L575+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L567
	ldr	r5, .L575+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L567
	ldr	r4, .L575+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L575+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L567:
	ldr	r2, [r6, #76]
	ldr	lr, .L575+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L575+28
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
	ldr	lr, .L575+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L575+36
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
.L574:
	ldr	r0, .L575+8
	b	.L567
.L576:
	.align	2
.L575:
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
	ldr	r3, .L587
	ldr	r2, [r3, #72]
	cmp	r2, #0
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r4, .L587+4
	ldr	r2, .L587+8
	str	r1, [r3, #24]
	mov	lr, pc
	bx	r2
	bl	drawHUD
	ldr	r3, [r4]
	cmp	r3, #1
	beq	.L585
.L579:
	cmp	r3, #3
	beq	.L586
.L580:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawTimer
	ldr	r3, .L587+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L587+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L587+20
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L587+24
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [ip, #20]	@ movhi
	ldr	r2, .L587+28
	ldr	lr, [r2]
	ldr	r1, .L587+32
	lsl	r2, lr, #16
	lsr	r2, r2, #16
	ldr	r0, [r1]
	strh	r2, [ip, #22]	@ movhi
	ldr	r2, .L587+36
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
.L585:
	ldr	r3, .L587+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L587+44
	mov	lr, pc
	bx	r3
	ldr	r3, [r4]
	b	.L579
.L586:
	ldr	r3, .L587+48
	mov	lr, pc
	bx	r3
	ldr	r3, .L587+52
	mov	lr, pc
	bx	r3
	b	.L580
.L588:
	.align	2
.L587:
	.word	.LANCHOR0
	.word	currMap
	.word	hideSprites
	.word	waitForVBlank
	.word	DMANow
	.word	shadowOAM
	.word	hOff
	.word	vOff
	.word	bgIndex
	.word	1431655766
	.word	drawBoss1
	.word	animateBoss1
	.word	drawBoss2
	.word	animateBoss2
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
	ldr	r3, .L591
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L592:
	.align	2
.L591:
	.word	.LANCHOR0
	.size	gameOver, .-gameOver
	.global	cameraLock
	.global	dead
	.comm	maps,2720,4
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
