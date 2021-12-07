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
	ldr	r1, .L27
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #0
	mov	r3, r1
	mov	r7, #13
	mov	r6, #15
	mov	r5, #4
	mov	r4, #128
	mov	lr, #96
	mov	r0, #1
	add	ip, r1, #504
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
	str	r0, [r3, #60]
	str	r0, [r3, #48]
	str	r2, [r3, #44]
	add	r3, r3, #72
	cmp	r3, ip
	bne	.L17
	ldr	r2, .L27+4
	mov	r0, #0
	mov	r3, r2
	mov	r8, #13
	mov	r7, #15
	mov	r6, #4
	mov	r5, #240
	mov	ip, #60
	mov	r4, #2
	add	lr, r2, #480
.L18:
	str	r0, [r3]
	str	r8, [r3, #16]
	str	r7, [r3, #20]
	str	r0, [r3, #24]
	str	r0, [r3, #36]
	str	r6, [r3, #40]
	str	r0, [r3, #28]
	str	r0, [r3, #56]
	str	r5, [r3, #60]
	str	ip, [r3, #64]
	str	ip, [r3, #68]
	str	r4, [r3, #48]
	str	r0, [r3, #44]
	add	r3, r3, #80
	cmp	r3, lr
	bne	.L18
	mov	ip, #0
	mov	lr, #8
	mov	r6, #4
	mvn	r5, #0
	mov	r3, #1
	ldr	r0, .L27+8
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
	ldr	r0, .L27+12
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L20
	cmp	r0, #1
	ldreq	r3, .L27+16
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
	ldr	lr, .L27+20
	str	lr, [r1, #228]
	ldr	lr, .L27+24
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
	ldr	r1, .L27+28
	str	r1, [r2, #12]
	ldr	r1, .L27+32
	str	r1, [r2, #92]
	ldr	r1, .L27+36
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
	mov	r7, #0
	mov	r3, #67108864
	mov	r2, #22528
	ldr	r5, .L35
	ldr	r6, [r5]
	ldr	r1, .L35+4
	cmp	r6, r7
	str	r7, [r1]
	strh	r2, [r3, #10]	@ movhi
	beq	.L30
	cmp	r6, #1
	bne	.L34
	ldr	r3, .L35+8
	mov	r2, r6
	ldr	r1, [r3]
	ldr	r0, .L35+12
	ldr	r3, .L35+16
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	ldr	r4, .L35+20
	ldr	r2, .L35+24
	ldr	r1, .L35+28
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	ip, .L35+32
	ldr	r0, .L35+36
	str	r2, [r3, #4]
	str	r1, [r3, #8]
	ldr	r2, .L35+40
	ldr	r1, .L35+44
	str	r7, [r3, #16]
	str	r7, [r3, #20]
	str	ip, [r3, #12]
	str	r6, [r0, #4]
	str	r1, [r2]
.L32:
	ldr	r3, .L35+48
	mov	lr, pc
	bx	r3
	ldr	r3, [r5]
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	ldr	r6, .L35+52
	ldr	r1, [r3, #4]
	mov	r0, #3
	mov	r3, #8192
	ldr	r2, .L35+56
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
.L34:
	ldr	r4, .L35+20
	b	.L32
.L30:
	ldr	r3, .L35+60
	mov	r2, #1
	ldr	r1, [r3]
	ldr	r0, .L35+64
	ldr	r3, .L35+16
	mov	lr, pc
	bx	r3
	mov	r0, #60
	mov	r1, #66
	mov	r2, #28
	ldr	r3, [r5]
	ldr	r4, .L35+20
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsl #5
	str	r0, [r3, #20]
	str	r1, [r3, #28]
	ldr	r0, .L35+68
	ldr	r1, .L35+72
	str	r0, [r3, #4]
	str	r1, [r3, #8]
	ldr	r0, .L35+76
	ldr	r1, .L35+80
	str	r0, [r3, #12]
	str	r1, [r3, #24]
	str	r6, [r3, #16]
	ldr	r0, .L35+36
	ldr	r1, .L35+40
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	ldr	r3, .L35+84
	str	r6, [r0, #4]
	str	r3, [r1]
	b	.L32
.L36:
	.align	2
.L35:
	.word	currMap
	.word	bgIndex
	.word	bossSong_length
	.word	bossSong_data
	.word	playSoundA
	.word	maps
	.word	boss1Map
	.word	boss1Pal
	.word	boss1Tiles
	.word	.LANCHOR0
	.word	collisionMap
	.word	boss1CollisionBitmap
	.word	waitForVBlank
	.word	DMANow
	.word	100712448
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
	mov	r1, #512
	push	{r4, r5, r6, lr}
	ldr	r3, .L41
	add	r2, r3, #1024
.L38:
	strh	r1, [r3], #8	@ movhi
	cmp	r3, r2
	bne	.L38
	mov	r4, #0
	bl	initMaps
	mov	r5, #1
	bl	initPlayer
	mov	lr, #14
	mov	ip, #12
	mov	r0, #15
	mvn	r1, #2
	mov	r2, #4
	ldr	r3, .L41+4
	str	r5, [r3, #40]
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
	ldr	r3, .L41+8
	ldr	r2, [r3]
	ldr	r3, .L41+12
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	ldr	ip, [r3, #16]
	ldr	r0, [r3, #20]
	ldr	r3, .L41+16
	ldr	r2, .L41+20
	str	ip, [r3]
	ldr	r3, .L41+24
	str	r0, [r2]
	str	r4, [r3, #8]
	str	r4, [r3, #12]
	str	r1, [r3, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L42:
	.align	2
.L41:
	.word	shadowOAM
	.word	slash
	.word	currMap
	.word	maps
	.word	hOff
	.word	vOff
	.word	.LANCHOR0
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
	ldr	r2, .L44
	ldr	r3, [r2]
	add	r3, r3, #1
	str	r3, [r2]
	b	initGame
.L45:
	.align	2
.L44:
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
	ldr	r3, .L50
	ldr	r2, [r3]
	push	{r4, lr}
	ldr	r3, .L50+4
	add	r2, r2, r2, lsl #4
	add	r3, r3, r2, lsl #5
	add	r2, r3, #28
	ldm	r2, {r2, ip, lr}
	sub	sp, sp, #16
	ldr	r3, [r3, #24]
	stmib	sp, {r2, ip, lr}
	ldr	r1, .L50+8
	str	r3, [sp]
	ldr	r0, .L50+12
	add	r2, r1, #24
	ldm	r2, {r2, r3}
	ldr	r1, [r1, #8]
	ldr	r0, [r0]
	ldr	r4, .L50+16
	mov	lr, pc
	bx	r4
	cmp	r0, #0
	bne	.L49
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	bx	lr
.L49:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, lr}
	b	updateMap.part.0
.L51:
	.align	2
.L50:
	.word	currMap
	.word	maps
	.word	player
	.word	pMapPos
	.word	collision
	.size	updateMap, .-updateMap
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
	ldr	r9, .L73
	mov	r6, #0
	mov	r4, r9
	ldr	r7, .L73+4
	ldr	r5, .L73+8
	ldr	r8, .L73+12
	sub	sp, sp, #20
.L59:
	ldr	r3, [r4]
	cmp	r3, #0
	beq	.L52
	ldr	r3, [r7]
	ldr	ip, [r4, #12]
	ldr	r2, [r4, #16]
	sub	r0, r3, #239
	add	r1, ip, r2
	cmp	r0, r1
	sub	r1, r3, #476
	sub	r1, r1, #3
	bgt	.L55
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
	ble	.L71
.L56:
	cmp	ip, lr
	bgt	.L61
.L57:
	ldr	r1, [r4, #8]
	ldr	ip, [r5, #24]
	str	r3, [sp]
	ldr	r3, [r5, #8]
	ldr	lr, [r5, #28]
	stmib	sp, {r3, ip}
	str	lr, [sp, #12]
	add	r0, r0, #3
	ldr	r3, [r4, #20]
	add	r1, r1, #4
	mov	lr, pc
	bx	r8
	cmp	r0, #0
	beq	.L58
	ldr	r3, [r4, #4]
	cmp	r3, #0
	beq	.L58
	ldr	r10, [r5, #76]
	cmp	r10, #0
	beq	.L72
.L58:
	add	r6, r6, #1
	cmp	r6, #6
	add	r4, r4, #44
	bne	.L59
.L52:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L55:
	mov	lr, #0
	add	r0, r4, #36
	ldm	r0, {r0, r10}
	mla	r0, r10, r0, ip
	add	ip, r2, r0
	cmp	r1, ip
	str	r0, [r4, #12]
	str	lr, [r4, #4]
	bgt	.L61
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L57
.L61:
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
.L72:
	ldr	r3, .L73+16
	mov	r2, r10
	ldr	r1, [r3]
	ldr	r0, .L73+20
	ldr	r3, .L73+24
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r5, #72]
	sub	r3, r3, #1
	str	r10, [r4]
	str	r3, [r5, #72]
	str	r2, [r5, #76]
	b	.L58
.L71:
	add	r1, r3, #476
	add	r1, r1, #3
	cmp	r0, r1
	ble	.L57
	b	.L56
.L74:
	.align	2
.L73:
	.word	bl_bullets
	.word	pMapPos
	.word	player
	.word	collision
	.word	sfx_player_hurt_length
	.word	sfx_player_hurt_data
	.word	playSoundB
	.size	updateBullets, .-updateBullets
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
	ldr	r1, .L95
	ldr	r3, [r1, #52]
	ldr	ip, .L95+4
	cmp	r3, #0
	ldr	r2, [ip, #16]
	beq	.L76
	ldr	r0, .L95+8
	lsl	r1, r2, #3
	ldrh	r3, [r0, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [r0, r1]	@ movhi
	str	r2, [ip, #16]
	bx	lr
.L76:
	ldr	r0, .L95+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #12]
	ldr	lr, [r0]
	ldr	r0, .L95+16
	sub	r3, r3, #3
	ldr	r4, [r0]
	ldr	r0, [r1, #8]
	sub	r3, r3, lr
	sub	r0, r0, r4
	ldr	lr, .L95+8
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
	cmp	r0, #7
	ldrls	pc, [pc, r0, asl #2]
	b	.L79
.L81:
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L83
	.word	.L82
	.word	.L80
.L80:
	add	r3, r3, #7
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
.L77:
	add	r2, r2, #1
	str	r2, [ip, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L88:
	lsl	r3, r3, #1
	rsbs	r0, r3, #0
	and	r0, r0, #3
	and	r1, r3, #3
	rsbpl	r1, r0, #0
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L87:
	add	r3, r3, #32
	lsl	r1, r3, #1
	add	lr, lr, r4
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L86:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #64
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L85:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #96
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L84:
	rsbs	r1, r3, #0
	and	r1, r1, #3
	and	r3, r3, #3
	rsbpl	r3, r1, #0
	add	r3, r3, #128
	add	lr, lr, r4
	lsl	r1, r3, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L83:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #192
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L82:
	ldr	r1, .L95+20
	smull	r0, r1, r3, r1
	sub	r1, r1, r3, asr #31
	add	r1, r1, r1, lsl #1
	sub	r1, r3, r1
	add	r1, r1, #224
	add	lr, lr, r4
	lsl	r1, r1, #1
	strh	r1, [lr, #4]	@ movhi
	b	.L77
.L79:
	add	r1, r3, r0, lsl #5
	lsl	r1, r1, #1
	add	r3, lr, r4
	strh	r1, [r3, #4]	@ movhi
	b	.L77
.L96:
	.align	2
.L95:
	.word	player
	.word	.LANCHOR0
	.word	shadowOAM
	.word	hOff
	.word	vOff
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
	ldr	r6, .L128
	ldr	r8, .L128+4
	ldr	r7, .L128+8
	ldr	r1, .L128+12
	ldr	r4, [r6, #16]
	ldr	r9, .L128+16
	ldr	r0, [r8]
	ldr	r5, [r7]
	ldr	r3, .L128+20
	add	r1, r1, r4, lsl #3
	mov	r2, r1
	ldrh	fp, [r9]
	add	r5, r5, r0, lsl #8
	add	lr, r3, #504
	b	.L103
.L125:
	ldr	r0, [r3, #4]
	cmp	r0, #0
	beq	.L98
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
	beq	.L123
	ldr	ip, [r3, #28]
	add	r0, r0, ip, lsl #5
	add	r0, r0, #73
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
.L100:
	add	r3, r3, #72
	cmp	r3, lr
	add	r2, r2, #8
	beq	.L124
.L103:
	ldr	r0, [r3]
	cmp	r0, #0
	bne	.L125
.L98:
	ldrh	r0, [r2]
	add	r3, r3, #72
	orr	r0, r0, #512
	cmp	r3, lr
	strh	r0, [r2]	@ movhi
	add	r2, r2, #8
	bne	.L103
.L124:
	ldr	r0, [r9]
	rsb	r0, r0, #65280
	ldr	lr, [r7]
	ldr	r2, [r8]
	ldr	r3, .L128+24
	add	r0, r0, #250
	lsl	r0, r0, #16
	ldr	r7, .L128+28
	ldr	r5, .L128+32
	lsr	r0, r0, #16
	add	lr, lr, r2, lsl #8
	add	ip, r3, #480
	b	.L110
.L127:
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L104
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
	beq	.L108
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #163
	lsl	r2, r2, #2
	strh	r2, [r1, #60]	@ movhi
.L106:
	add	r3, r3, #80
	cmp	ip, r3
	add	r1, r1, #8
	beq	.L126
.L110:
	ldr	r2, [r3]
	cmp	r2, #0
	bne	.L127
.L104:
	ldrh	r2, [r1, #56]
	add	r3, r3, #80
	orr	r2, r2, #512
	cmp	ip, r3
	strh	r2, [r1, #56]	@ movhi
	add	r1, r1, #8
	bne	.L110
.L126:
	add	r4, r4, #13
	str	r4, [r6, #16]
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L108:
	ldr	r8, [r3, #76]
	cmp	r8, #0
	beq	.L109
	add	r2, r2, #131
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L106
.L123:
	cmp	r0, #0
	and	r0, r0, #1
	rsblt	r0, r0, #0
	add	r0, r0, #137
	lsl	r0, r0, #1
	orr	r0, r0, #4096
	strh	r0, [r2, #4]	@ movhi
	b	.L100
.L109:
	cmp	r2, #0
	and	r2, r2, #1
	rsblt	r2, r2, #0
	add	r2, r2, #99
	lsl	r2, r2, #2
	orr	r2, r2, #12288
	strh	r2, [r1, #60]	@ movhi
	b	.L106
.L129:
	.align	2
.L128:
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
	ldr	r1, .L145
	ldr	r2, .L145+4
	ldr	r9, .L145+8
	ldr	r0, [r1]
	ldr	r1, [r2]
	ldr	r8, [r9, #16]
	add	r1, r1, r0, lsl #8
	sub	sp, sp, #12
	str	r1, [sp]
	mov	r1, r8
	ldr	r3, .L145+12
	ldr	r5, .L145+16
	ldrh	r2, [r3]
	add	r6, r8, #1
	add	r5, r5, r8, lsl #3
	add	r7, r8, #7
	ldr	r4, .L145+20
	mov	r8, r2
	ldr	r3, .L145+24
	mov	r2, r1
	ldr	fp, .L145+28
	ldr	r10, .L145+32
	b	.L137
.L144:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	beq	.L131
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
	beq	.L134
	cmp	r0, #3
	beq	.L135
	cmp	r0, #1
	orreq	r1, r1, #4096
	strheq	r1, [r5, #2]	@ movhi
.L136:
	ldr	r1, [r4, #24]
	add	r1, r1, #1
	smull	ip, lr, r10, r1
	asr	ip, r1, #31
	rsb	ip, ip, lr, asr #2
	add	ip, ip, ip, lsl #2
	cmp	r1, ip, lsl #1
	strh	fp, [r5, #4]	@ movhi
	str	r1, [r4, #24]
	bne	.L133
	str	r2, [sp, #4]
	ldr	r3, .L145+36
	ldr	r1, [r4, #32]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	ldr	r2, [sp, #4]
	str	r1, [r4, #28]
	ldr	r3, .L145+24
.L133:
	add	r6, r6, #1
	cmp	r6, r7
	add	r4, r4, #44
	add	r5, r5, #8
	beq	.L143
.L137:
	ldr	r1, [r4]
	cmp	r1, #0
	bne	.L144
.L131:
	ldrh	r1, [r5]
	orr	r1, r1, #512
	strh	r1, [r5]	@ movhi
	b	.L133
.L143:
	add	r8, r2, #6
	str	r8, [r9, #16]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L134:
	orr	r1, r1, #12288
	strh	r1, [r5, #2]	@ movhi
	b	.L136
.L135:
	orr	r1, r1, #8192
	strh	r1, [r5, #2]	@ movhi
	b	.L136
.L146:
	.align	2
.L145:
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
	ldr	r1, .L157
	ldr	r3, [r1, #40]
	ldr	r0, .L157+4
	cmp	r3, #0
	ldr	r2, [r0, #16]
	beq	.L148
	ldr	ip, .L157+8
	lsl	r1, r2, #3
	ldrh	r3, [ip, r1]
	add	r2, r2, #1
	orr	r3, r3, #512
	strh	r3, [ip, r1]	@ movhi
	str	r2, [r0, #16]
	bx	lr
.L148:
	ldr	ip, .L157+12
	push	{r4, r5, r6, lr}
	ldr	r3, [r1, #4]
	ldr	lr, [ip]
	ldr	r5, .L157+16
	ldr	ip, .L157+20
	sub	r3, r3, lr
	ldr	r4, [ip]
	ldr	r6, [r5, #56]
	ldr	ip, .L157+8
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
	str	r2, [r0, #16]
	pop	{r4, r5, r6, lr}
	bx	lr
.L158:
	.align	2
.L157:
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
	ldr	r3, .L225
	push	{r4, r5, r6, lr}
	ldr	r4, .L225+4
	ldrh	r0, [r3, #48]
	ldr	r1, [r4, #36]
	tst	r0, #32
	str	r2, [r4, #36]
	str	r1, [r4, #40]
	ldr	r2, [r4, #60]
	bne	.L160
	cmp	r2, #0
	beq	.L218
	ldrh	r3, [r3, #48]
.L163:
	ldr	r3, .L225+8
	ldr	r1, [r3, #20]
	cmp	r1, #0
	movgt	r1, #3
	strgt	r1, [r4, #36]
	bgt	.L166
	movne	r1, #2
	strne	r1, [r4, #36]
.L166:
	ldr	r1, [r3, #24]
	cmp	r1, #0
	movne	r1, #6
	strne	r1, [r4, #36]
	cmp	r2, #0
	movne	r2, #4
	ldr	r0, [r4, #76]
	strne	r2, [r4, #36]
	cmp	r0, #0
	beq	.L169
	ldr	r2, [r4, #80]
	cmp	r2, #8
	movle	r2, #5
	strle	r2, [r4, #36]
.L169:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L170
	ldr	r2, .L225+12
	ldr	r2, [r2]
	cmp	r2, #0
	movne	r2, #6
	strne	r2, [r4, #36]
.L170:
	ldr	r2, [r3]
	cmp	r2, #0
	ldr	r5, [r4, #32]
	beq	.L171
	mov	r1, #7
	ldr	r2, [r4, #44]
	cmp	r2, #1
	str	r1, [r4, #36]
	ble	.L219
	cmp	r2, #2
	beq	.L220
	ldr	r1, [r4, #48]
	add	r1, r1, #1
	cmp	r2, r1
	bgt	.L183
	ldr	r3, .L225+16
	smull	r0, r1, r3, r5
	asr	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r5, r3, lsl #1
	bne	.L175
	add	r2, r2, #1
	str	r2, [r4, #44]
.L223:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L218:
	mov	r1, #1
	ldrh	r3, [r3, #48]
	tst	r3, #16
	str	r1, [r4, #36]
	str	r1, [r4, #56]
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L163
.L160:
	ldrh	r3, [r3, #48]
	tst	r3, #16
	bne	.L163
	cmp	r2, #0
	moveq	r1, #1
	moveq	r3, #0
	streq	r1, [r4, #36]
	streq	r3, [r4, #56]
	b	.L163
.L171:
	ldr	r2, .L225+16
	smull	r3, r1, r2, r5
	asr	r2, r5, #31
	rsb	r3, r2, r1, asr #2
	add	r3, r3, r3, lsl #2
	subs	r3, r5, r3, lsl #1
	bne	.L221
	ldr	ip, [r4, #36]
	cmp	ip, #4
	beq	.L187
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L187
.L186:
	cmp	ip, #1
	beq	.L187
	cmp	ip, #6
	beq	.L187
	cmp	r0, #0
	bne	.L222
	cmp	r3, #0
	bne	.L175
.L187:
	ldr	r0, [r4, #44]
	ldr	r3, .L225+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
.L175:
	add	r5, r5, #1
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L221:
	rsb	r2, r2, r1, asr #1
	add	r2, r2, r2, lsl #2
	cmp	r5, r2
	bne	.L175
	ldr	ip, [r4, #36]
	b	.L186
.L219:
	tst	r5, #7
	bne	.L175
	add	r2, r2, #1
	str	r2, [r4, #44]
	b	.L223
.L220:
	add	r3, r5, r5, lsl #2
	add	r3, r3, r3, lsl #4
	add	r3, r3, r3, lsl #8
	ldr	r2, .L225+24
	add	r3, r3, r3, lsl #16
	add	r3, r5, r3, lsl #1
	ldr	r1, .L225+28
	add	r2, r3, r2
	cmp	r1, r2, ror #2
	movcs	r3, #3
	add	r5, r5, #1
	strcs	r3, [r4, #44]
	str	r5, [r4, #32]
	pop	{r4, r5, r6, lr}
	bx	lr
.L183:
	add	r2, r5, r5, lsl #4
	ldr	r1, .L225+32
	add	r2, r2, r2, lsl #8
	add	r2, r2, r2, lsl #16
	sub	r2, r1, r2
	cmp	r1, r2, ror #1
	movcs	r2, #1
	strcs	r2, [r3, #32]
	b	.L175
.L222:
	cmp	ip, #5
	beq	.L224
.L179:
	ldr	r3, [r4, #80]
	add	r3, r3, #1
	cmp	r3, #12
	str	r3, [r4, #80]
	movgt	r3, #0
	strgt	r3, [r4, #76]
	strgt	r3, [r4, #80]
	b	.L175
.L224:
	ldr	r0, [r4, #44]
	ldr	r3, .L225+20
	ldr	r1, [r4, #48]
	add	r0, r0, #1
	mov	lr, pc
	bx	r3
	str	r1, [r4, #44]
	b	.L179
.L226:
	.align	2
.L225:
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
	ldr	r5, .L235
	ldr	r8, .L235+4
	ldr	r6, .L235+8
	add	r7, r5, #504
.L229:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L228
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L228:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #72
	cmp	r5, r7
	bne	.L229
	ldr	r5, .L235+12
	ldr	r8, .L235+4
	ldr	r6, .L235+8
	add	r7, r5, #480
.L231:
	ldr	r4, [r5, #24]
	smull	r3, r2, r8, r4
	asr	r3, r4, #31
	rsb	r3, r3, r2, asr #2
	add	r3, r3, r3, lsl #2
	cmp	r4, r3, lsl #1
	bne	.L230
	add	r0, r5, #36
	ldm	r0, {r0, r1}
	add	r0, r0, #1
	mov	lr, pc
	bx	r6
	str	r1, [r5, #36]
.L230:
	add	r4, r4, #1
	str	r4, [r5, #24]
	add	r5, r5, #80
	cmp	r5, r7
	bne	.L231
	pop	{r4, r5, r6, r7, r8, lr}
	bx	lr
.L236:
	.align	2
.L235:
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
	ldr	r2, .L247
	ldr	r3, [r2, #28]
	cmp	r3, #6
	beq	.L240
	sub	r1, r3, #12
	bics	r1, r1, #8
	beq	.L240
	cmp	r3, #18
	bne	.L239
.L240:
	ldr	r1, [r2, #32]
	add	r1, r1, #1
	str	r1, [r2, #32]
.L239:
	add	r3, r3, #1
	str	r3, [r2, #28]
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r4, .L379
	ldr	lr, [r4]
	cmp	lr, #0
	sub	sp, sp, #28
	bne	.L371
	ldr	r5, .L379+4
	ldr	r8, .L379+8
	ldr	r2, .L379+12
	ldr	r1, [r8]
	ldr	r3, [r5, #12]
	ldr	r6, [r5, #8]
	ldr	fp, [r5, #28]
	ldr	r0, [r2]
	add	ip, r6, fp
	add	r2, r3, r1, lsl #8
	add	r7, r0, r2
	add	ip, ip, #1
	str	r7, [sp, #20]
	ldrb	r7, [r7, ip, lsl #11]	@ zero_extendqisi2
	cmp	r7, #0
	ldr	r9, [r5, #24]
	lsl	r1, r1, #8
	bne	.L251
	add	r7, r0, r3
	add	r7, r7, r9
	add	r7, r7, r1
	ldrb	ip, [r7, ip, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L251
	ldr	r10, .L379+16
	str	lr, [sp, #16]
	str	lr, [r10]
.L252:
	ldr	ip, .L379+20
	ldrh	ip, [ip]
	tst	ip, #64
	beq	.L253
	ldr	ip, .L379+24
	ldrh	ip, [ip]
	tst	ip, #64
	beq	.L372
.L253:
	ldr	ip, [r4, #20]
	cmp	ip, #0
	bge	.L261
	ldr	r7, [r10]
	ldr	r10, [r4, #28]
	str	r7, [sp, #16]
.L260:
	add	r3, r9, r3
	add	r3, r3, r6, lsl #11
	add	r1, r3, r1
	add	r2, r2, r6, lsl #11
	add	r1, r0, r1
	add	r0, r0, r2
.L263:
	ldrb	r3, [r0, lr, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L262
	ldrb	r3, [r1, lr, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L262
	sub	lr, lr, #1
	cmp	lr, ip
	bgt	.L263
	ldr	r9, .L379+28
	ldr	r6, [r5, #8]
	ldr	r7, [r9]
	b	.L270
.L262:
	ldr	r3, [r4, #4]
	mov	r2, #1
	cmp	r3, #0
	mov	r3, #0
	ldr	r9, .L379+28
	ldr	r7, [r9]
	add	lr, lr, #1
	add	r6, r6, lr
	addeq	r7, r7, lr
	str	r6, [r5, #8]
	streq	r7, [r9]
	str	r3, [r4, #20]
	str	r3, [r4, #48]
	str	r3, [r4, #52]
	str	r2, [r4, #36]
.L270:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L273
	ldr	r3, .L379+32
	ldrh	r2, [r3, #48]
	tst	r2, #64
	ldr	r0, [r4, #52]
	beq	.L373
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L279
.L319:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	bne	.L280
.L279:
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L278
.L281:
	mov	r3, #1
	str	r3, [r4, #36]
	sub	r0, r0, #3
.L278:
	ldr	r3, .L379+36
	mov	lr, pc
	bx	r3
	ldr	fp, .L379+40
	mov	r2, r0
	mov	r3, r1
	mov	r0, #0
	ldr	r1, .L379+44
	mov	lr, pc
	bx	fp
	ldr	r3, .L379+48
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #12]
	tst	r3, #3
	ldreq	r3, [r4, #52]
	addeq	r3, r3, #1
	streq	r3, [r4, #52]
	ldr	r3, [r4, #44]
	add	r6, r6, r0
	add	r3, r3, #1
	str	r0, [r4, #20]
	str	r6, [r5, #8]
	str	r3, [r4, #44]
.L273:
	cmp	r7, #93
	bgt	.L283
.L377:
	sub	r3, r6, r7
	cmp	r3, #79
	ble	.L284
	ldr	r3, [r4, #20]
	cmp	r3, #0
	ble	.L284
	ldr	r2, [r4, #4]
	cmp	r2, #0
	addeq	r7, r7, r3
	streq	r7, [r9]
.L284:
	cmp	r7, #3
	bgt	.L283
.L285:
	cmp	r10, #0
	beq	.L287
	ldr	r3, [r4, #56]
	ldr	r1, [sp, #16]
	add	r3, r3, #1
	cmp	r3, #15
	movle	r2, #0
	movgt	r2, #1
	cmp	r1, #0
	moveq	r2, #0
	cmp	r2, #0
	str	r3, [r4, #56]
	bne	.L374
	cmp	r3, #15
	movgt	r3, #2
	strgt	r2, [r4, #28]
	strgt	r2, [r4, #56]
	strgt	r3, [r5, #68]
.L287:
	ldr	r3, .L379+20
	ldrh	r3, [r3]
	tst	r3, #256
	beq	.L290
	ldr	r2, .L379+24
	ldrh	r2, [r2]
	tst	r2, #256
	beq	.L291
.L290:
	tst	r3, #512
	beq	.L292
	ldr	r3, .L379+24
	ldrh	r3, [r3]
	tst	r3, #512
	beq	.L293
.L292:
	ldr	r1, [r5, #68]
	ldr	r10, [r5, #12]
.L294:
	ldr	r3, .L379+52
	ldr	r0, [r4, #8]
	mov	lr, pc
	bx	r3
	cmp	r1, #0
	beq	.L297
.L298:
	ldr	r3, [r5, #56]
	ldr	r7, .L379+56
	rsb	r3, r3, r3, lsl #31
	ldr	r2, [r7, #12]
	lsl	r3, r3, #1
	add	r3, r3, #1
	mla	r10, r2, r3, r10
	sub	r10, r10, #2
	stm	r7, {r6, r10}
	bl	animateSlash
	ldr	r3, [r5, #64]
	cmp	r3, #0
	ble	.L304
	mov	fp, #1
	ldr	r6, .L379+60
	ldr	r9, .L379+64
	add	r10, r6, #504
.L308:
	ldr	r1, [r8]
	ldr	r0, [r7, #4]
	ldr	ip, [r6, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #16]
	ldr	lr, [r6, #8]
	add	r0, r0, r1, lsl #8
	ldr	r1, [r6, #16]
	str	ip, [sp, #12]
	add	r0, r0, r3
	sub	r2, r2, r3
	ldr	r3, [r6, #12]
	stm	sp, {r3, lr}
	str	r1, [sp, #8]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L306
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L306
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L306:
	add	r6, r6, #72
	cmp	r10, r6
	bne	.L308
	mov	fp, #1
	ldr	r6, .L379+68
	add	r10, r6, #480
.L312:
	ldr	r1, [r8]
	ldr	r0, [r7, #4]
	ldr	r3, [r6, #16]
	ldr	r2, [r7, #24]
	ldr	ip, [r7, #16]
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
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L310
	ldr	r2, [r6, #44]
	cmp	r2, #0
	bne	.L310
	ldr	r3, [r6, #48]
	sub	r3, r3, #1
	cmp	r3, #0
	str	fp, [r6, #44]
	str	r3, [r6, #48]
	strlt	r2, [r6]
.L310:
	add	r6, r6, #80
	cmp	r10, r6
	bne	.L312
	ldr	r3, .L379+72
	ldr	r6, [r3]
	cmp	r6, #1
	beq	.L375
.L314:
	ldr	r3, [r5, #64]
	sub	r3, r3, #1
	str	r3, [r5, #64]
.L316:
	ldr	r3, .L379+20
	ldrh	r3, [r3]
	tst	r3, #2
	beq	.L317
	ldr	r3, .L379+24
	ldrh	r3, [r3]
	tst	r3, #2
	bne	.L317
	ldr	r2, [r5, #60]
	cmp	r2, #0
	bne	.L317
	mov	r0, #1
	mov	r3, #20
	ldr	r1, .L379+76
	ldr	r1, [r1]
	str	r0, [r5, #60]
	str	r3, [r5, #64]
	lsr	r1, r1, r0
	ldr	r3, .L379+80
	ldr	r0, .L379+84
	str	r2, [r5, #44]
	str	r2, [r7, #40]
	str	r2, [r7, #32]
	str	r2, [r7, #28]
	mov	lr, pc
	bx	r3
.L317:
	add	r2, r4, #8
	ldm	r2, {r2, r3}
	add	r2, r2, #1
	add	r3, r3, #1
	str	r2, [r4, #8]
	str	r3, [r4, #12]
.L371:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animatePlayer
.L251:
	mov	ip, #0
	mov	r7, #1
	ldr	r10, .L379+16
	str	r7, [sp, #16]
	str	ip, [r4, #36]
	str	r7, [r10]
	str	ip, [r4, #24]
	str	ip, [r4, #40]
	str	ip, [r4, #44]
	str	ip, [r4, #48]
	b	.L252
.L261:
	ldr	r6, [r5, #8]
	beq	.L267
	mov	r7, #1
	add	r3, r9, r3
	add	fp, fp, r6
	add	r1, r3, r1
	add	r1, r1, fp, lsl #11
	add	fp, r2, fp, lsl #11
	add	r1, r0, r1
	add	r0, r0, fp
.L269:
	ldrb	r3, [r0, r7, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L268
	ldrb	r3, [r1, r7, lsl #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L268
	add	r7, r7, #1
	cmp	r7, ip
	ble	.L269
.L267:
	ldr	r3, [r10]
	ldr	r9, .L379+28
	str	r3, [sp, #16]
	ldr	r7, [r9]
	ldr	r10, [r4, #28]
	b	.L270
.L293:
	ldr	r3, [r4, #28]
	cmp	r3, #0
	bne	.L292
.L291:
	mov	r3, #1
	ldr	r2, [sp, #16]
	cmp	r2, #0
	str	r3, [r4, #28]
	ldr	r10, [r5, #12]
	bne	.L376
	ldr	r2, [r4, #40]
	cmp	r2, #0
	beq	.L296
	ldr	r1, [r5, #68]
	b	.L294
.L268:
	ldr	r3, .L379+88
	mov	r2, #0
	ldr	r1, [r3]
	ldr	r0, .L379+92
	ldr	r3, .L379+80
	mov	lr, pc
	bx	r3
	ldr	r3, [r4, #4]
	ldr	r9, .L379+28
	cmp	r3, #0
	ldreq	r3, [r9]
	ldr	r6, [r5, #8]
	mov	r2, #0
	add	r6, r7, r6
	addeq	r7, r7, r3
	mov	r3, #1
	ldrne	r7, [r9]
	streq	r7, [r9]
	cmp	r7, #93
	str	r3, [r10]
	str	r6, [r5, #8]
	str	r2, [r4, #20]
	str	r3, [sp, #16]
	ldr	r10, [r4, #28]
	ble	.L377
.L283:
	sub	r3, r6, r7
	cmp	r3, #80
	bgt	.L285
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bge	.L285
	ldr	r2, [r4, #4]
	cmp	r2, #0
	addeq	r3, r3, r7
	streq	r3, [r9]
	b	.L285
.L296:
	str	r3, [r4, #40]
	str	r3, [r5, #68]
.L297:
	ldr	r3, .L379+32
	ldrh	r3, [r3, #48]
	ldr	r2, [r8]
	tst	r3, #32
	lsl	r3, r2, #8
	bne	.L299
	ldr	r1, .L379+12
	ldr	r7, [r5, #20]
	ldr	r1, [r1]
	sub	lr, r10, r7
	add	ip, lr, r3
	add	r0, r1, r6, lsl #11
	ldrb	r0, [r0, ip]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L299
	ldr	r0, [r5, #28]
	add	r0, r6, r0
	sub	r0, r0, #1
	add	r1, r1, r0, lsl #11
	ldrb	r1, [r1, ip]	@ zero_extendqisi2
	cmp	r10, #0
	cmpge	r1, #0
	bne	.L299
	ldr	r1, [r4, #4]
	cmp	r1, #0
	str	lr, [r5, #12]
	bne	.L323
	ldr	r0, .L379+96
	ldr	r1, [r0]
	cmp	r1, #0
	ble	.L300
	sub	ip, lr, r1
	cmp	ip, #119
	bgt	.L323
	sub	r1, r1, r7
	str	r1, [r0]
.L300:
	cmp	r1, #0
	movgt	r1, #0
	movle	r1, #1
	cmp	r2, #0
	moveq	r1, #0
	cmp	r1, #0
	beq	.L323
	mov	ip, #67108864
	mov	lr, #256
	mov	r10, #376
	add	r1, r2, #23
	lsl	r1, r1, #24
	orr	r1, r1, #1073741824
	lsr	r1, r1, #16
	sub	r2, r2, #1
	str	r2, [r8]
	strh	r1, [ip, #10]	@ movhi
	ldrh	r1, [r9]
	str	r10, [r5, #12]
	str	lr, [r0]
	strh	lr, [ip, #20]	@ movhi
	strh	r1, [ip, #22]	@ movhi
	sub	r3, r3, #256
.L299:
	ldr	r1, .L379+32
	ldrh	r1, [r1, #48]
	tst	r1, #16
	bne	.L370
	ldr	r1, .L379+12
	ldr	r0, [r5, #24]
	ldr	ip, [r5, #20]
	ldr	lr, [r1]
	add	r1, r0, r10
	add	r1, r1, ip
	add	r1, r1, r3
	add	r7, lr, r6, lsl #11
	ldrb	r7, [r7, r1]	@ zero_extendqisi2
	cmp	r7, #0
	bne	.L370
	ldr	r7, [r5, #28]
	add	r7, r6, r7
	sub	r7, r7, #1
	add	lr, lr, r7, lsl #11
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	cmp	r1, #0
	ldr	r1, .L379+100
	bne	.L301
	ldr	lr, [r1]
	add	r0, r0, lr
	cmp	r0, #2048
	bgt	.L301
	ldr	r0, [r4, #4]
	add	r10, r10, ip
	cmp	r0, #0
	str	r10, [r5, #12]
	bne	.L301
	ldr	r0, .L379+96
	ldr	r7, [r0]
	cmp	r7, #256
	str	r7, [sp, #16]
	ble	.L302
.L303:
	mov	ip, #67108864
	mov	lr, #0
	mov	r10, #120
	add	r3, r2, #25
	lsl	r3, r3, #24
	ldrh	r7, [r9]
	orr	r9, r3, #1073741824
	lsr	r9, r9, #16
	add	r3, r2, #1
	str	r3, [r8]
	strh	r9, [ip, #10]	@ movhi
	lsl	r3, r3, #8
	str	r10, [r5, #12]
	str	lr, [r0]
	strh	lr, [ip, #20]	@ movhi
	strh	r7, [ip, #22]	@ movhi
	b	.L301
.L370:
	ldr	r1, .L379+100
.L301:
	add	r3, r10, r3
	str	r3, [r1]
	b	.L298
.L304:
	mov	r2, #0
	mov	r3, #1
	str	r2, [r5, #60]
	str	r3, [r7, #40]
	b	.L316
.L373:
	ldr	r2, [r4, #48]
	cmp	r2, #0
	beq	.L275
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bne	.L276
	ldr	r2, [r4, #24]
	cmp	r2, #0
	subeq	r0, r0, #5
	beq	.L278
	ldrh	r3, [r3, #48]
	tst	r3, #64
	bne	.L281
.L318:
	sub	r0, r0, #4
	b	.L278
.L372:
	ldr	ip, [r4, #24]
	cmp	ip, #0
	bne	.L254
	ldr	r7, [r4, #48]
	cmp	r7, #0
	bne	.L255
	ldr	ip, [sp, #16]
	cmp	ip, #0
	bne	.L259
	ldr	ip, [r4, #44]
	cmp	ip, #7
	ble	.L259
	mov	ip, #1
	str	ip, [r4, #24]
	str	ip, [r4, #48]
	mvn	ip, #4
	ldr	r7, [sp, #16]
	str	ip, [r4, #20]
	str	r7, [r4, #52]
	str	r7, [r4, #12]
	str	r7, [r4, #36]
	b	.L253
.L376:
	mov	r1, #2
	mov	r3, #3
	str	r1, [r5, #68]
	str	r3, [r5, #20]
	b	.L294
.L255:
	mov	r7, #1
	str	ip, [r4, #52]
	str	ip, [r4, #12]
	str	ip, [r4, #36]
	mvn	ip, #4
	str	r7, [r4, #24]
	str	ip, [r4, #20]
.L254:
	ldr	ip, [sp, #16]
	cmp	ip, #0
	beq	.L378
.L259:
	ldr	ip, [r4, #28]
	cmp	ip, #0
	str	ip, [sp, #16]
	bne	.L253
	ldr	ip, [sp, #20]
	sub	r7, r6, #1
	ldrb	ip, [ip, r7, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L253
	add	ip, r0, r3
	add	ip, ip, r9
	add	ip, ip, r1
	ldrb	ip, [ip, r7, lsl #11]	@ zero_extendqisi2
	cmp	ip, #0
	bne	.L253
	mvn	ip, #4
	mov	r7, #1
	ldr	fp, [sp, #16]
	str	ip, [r4, #20]
	str	fp, [r10]
	str	fp, [r4, #52]
	mov	r10, fp
	str	fp, [r4, #12]
	str	r7, [r4, #48]
	b	.L260
.L374:
	mov	r3, #0
	mov	r1, #2
	mov	r2, #3
	str	r3, [r4, #28]
	str	r3, [r4, #56]
	str	r1, [r5, #68]
	str	r2, [r5, #20]
	b	.L287
.L275:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L319
	b	.L278
.L375:
	ldr	r8, .L379+104
	add	r0, r8, #12
	ldm	r0, {r0, r2}
	ldr	r3, [r7, #24]
	ldmib	r8, {r1, ip}
	str	r2, [sp, #12]
	ldr	r2, [r7, #16]
	str	r0, [sp, #8]
	ldr	r0, [r7, #4]
	stm	sp, {r1, ip}
	sub	r2, r2, r3
	add	r0, r3, r0
	ldr	r1, [r7]
	ldr	r3, [r7, #20]
	mov	lr, pc
	bx	r9
	cmp	r0, #0
	beq	.L314
	ldr	r3, [r8, #32]
	cmp	r3, #0
	ldreq	r3, [r8]
	subeq	r3, r3, #1
	streq	r6, [r8, #32]
	streq	r3, [r8]
	b	.L314
.L280:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bne	.L279
	b	.L318
.L378:
	ldr	ip, [r4, #44]
	cmp	ip, #7
	ble	.L259
	b	.L253
.L276:
	ldrh	r3, [r3, #48]
	tst	r3, #64
	beq	.L319
	b	.L281
.L323:
	mov	r10, lr
	b	.L299
.L302:
	ldr	r7, [sp, #16]
	ldr	fp, .L379+108
	sub	r7, r10, r7
	cmp	r7, #120
	movgt	r7, #1
	movle	r7, #0
	cmp	lr, fp
	movgt	r7, #0
	cmp	r7, #0
	beq	.L301
	ldr	lr, [sp, #16]
	add	ip, ip, lr
	cmp	ip, #256
	str	ip, [r0]
	ble	.L301
	b	.L303
.L380:
	.align	2
.L379:
	.word	.LANCHOR0
	.word	player
	.word	bgIndex
	.word	collisionMap
	.word	.LANCHOR1
	.word	oldButtons
	.word	buttons
	.word	vOff
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
	.word	playSoundB
	.word	sfx_attack_data
	.word	sfx_jump1_length
	.word	sfx_jump1_data
	.word	hOff
	.word	pMapPos
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
	ldr	lr, .L385
	ldr	ip, .L385+4
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
	bne	.L381
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
.L381:
	ldr	lr, [sp], #4
	bx	lr
.L386:
	.align	2
.L385:
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
	ldr	r0, .L390
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
.L391:
	.align	2
.L390:
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
	ldr	r2, .L393
	ldr	r3, .L393+4
	ldr	r2, [r2]
	ldr	r3, [r3]
	lsl	r1, r1, #11
	add	r1, r1, r2, lsl #8
	add	r1, r3, r1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L394:
	.align	2
.L393:
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
	ldr	r3, .L396
	ldr	r3, [r3]
	add	r3, r3, r1, lsl #11
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	subs	r0, r0, #0
	movne	r0, #1
	bx	lr
.L397:
	.align	2
.L396:
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
	ldr	r4, .L404
	ldr	r2, [r4, #76]
	cmp	r2, #0
	beq	.L399
	ldr	r3, [r4, #72]
.L400:
	cmp	r3, #0
	ble	.L403
.L398:
	pop	{r4, lr}
	bx	lr
.L403:
	ldr	r3, .L404+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L398
	pop	{r4, lr}
	b	gameOver.part.0
.L399:
	ldr	r3, .L404+8
	ldr	r0, .L404+12
	ldr	r1, [r3]
	ldr	r3, .L404+16
	mov	lr, pc
	bx	r3
	mov	r2, #1
	ldr	r3, [r4, #72]
	sub	r3, r3, #1
	str	r3, [r4, #72]
	str	r2, [r4, #76]
	b	.L400
.L405:
	.align	2
.L404:
	.word	player
	.word	.LANCHOR0
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
	mov	r7, #0
	ldr	r10, .L487
	ldr	r4, .L487+4
	ldr	ip, [r10]
	ldr	fp, .L487+8
	ldr	r8, .L487+12
	ldr	r5, .L487+16
	sub	sp, sp, #28
	sub	r3, ip, #239
	add	r6, r4, #504
.L415:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	bgt	.L480
	add	r1, ip, #239
	cmp	r0, r1
	bgt	.L480
	ldr	r1, [r4]
	cmp	r1, #0
	mov	r1, #1
	str	r1, [r4, #4]
	beq	.L408
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L410
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L410:
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
	bx	fp
	cmp	r0, #0
	beq	.L411
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L482
.L411:
	ldr	ip, [r10]
	ldr	r1, [r4, #12]
	sub	r0, ip, r1
	ldr	r3, [r4, #64]
	eor	r2, r0, r0, asr #31
	sub	r2, r2, r0, asr #31
	cmp	r2, r3
	ldr	lr, [r8]
	ldr	r2, [r4, #8]
	bge	.L479
	ldr	r3, [r5, #8]
	sub	r3, r3, r2
	cmp	r3, #0
	ldr	r9, [r4, #68]
	rsblt	r3, r3, #0
	cmp	r3, r9
	bge	.L479
	ldr	r3, .L487+20
	ldr	r3, [r3, #8]
	tst	r3, #1
	beq	.L474
.L479:
	ldr	r3, [r4, #20]
.L412:
	add	r3, r2, r3
	add	r3, r3, #1
	add	r1, lr, r1
	ldrb	r0, [r1, r3, lsl #11]	@ zero_extendqisi2
	cmp	r0, #0
	add	r1, r1, r3, lsl #11
	bne	.L483
.L414:
	add	r2, r2, #1
	str	r2, [r4, #8]
.L481:
	sub	r3, ip, #239
.L408:
	add	r4, r4, #72
	cmp	r4, r6
	bne	.L415
	mov	r9, #1
	ldr	r4, .L487+24
	ldr	r7, .L487+8
	ldr	r8, .L487+20
	ldr	fp, .L487+28
	ldr	r5, .L487+16
	add	r6, r4, #480
.L429:
	add	r0, r4, #12
	ldm	r0, {r0, r2}
	add	r1, r0, r2
	cmp	r3, r1
	movgt	r3, #0
	bgt	.L416
	add	r3, ip, #239
	cmp	r0, r3
	movgt	r3, #0
	movle	r3, #1
.L416:
	ldr	r1, [r4]
	cmp	r1, #0
	str	r3, [r4, #4]
	beq	.L418
	ldr	r3, [r4, #44]
	cmp	r3, #0
	beq	.L419
	ldr	r3, [r5, #60]
	cmp	r3, #0
	streq	r3, [r4, #44]
.L419:
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
	bx	r7
	cmp	r0, #0
	beq	.L420
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L484
.L420:
	ldr	r1, [r4, #12]
	ldr	r3, [r10]
	sub	r3, r3, r1
	ldr	r2, [r4, #60]
	eor	r0, r3, r3, asr #31
	sub	r0, r0, r3, asr #31
	cmp	r0, r2
	bge	.L418
	ldr	r0, [r4, #8]
	ldr	r2, [r5, #8]
	sub	r2, r2, r0
	cmp	r2, #0
	ldr	ip, [r4, #64]
	rsblt	r2, r2, #0
	cmp	r2, ip
	bge	.L418
	ldr	r2, [r8, #8]
	ands	r2, r2, #1
	bne	.L418
	cmp	r3, #0
	strlt	r2, [r4, #56]
	blt	.L423
	strne	r9, [r4, #56]
.L423:
	ldr	r2, [r4, #76]
	cmp	r2, #0
	ldr	r3, [r4, #72]
	beq	.L485
	add	r3, r3, #1
	cmp	r3, #40
	str	r3, [r4, #72]
	ble	.L418
	mov	r2, #0
	ldr	r3, .L487+28
	str	r2, [r4, #76]
	str	r2, [r4, #72]
.L427:
	ldr	ip, [r3]
	cmp	ip, #0
	beq	.L425
	ldr	ip, [r3, #4]
	cmp	ip, #0
	beq	.L425
	add	r2, r2, #1
	cmp	r2, #6
	add	r3, r3, #44
	bne	.L427
.L418:
	add	r4, r4, #80
	cmp	r4, r6
	beq	.L428
	ldr	ip, [r10]
	sub	r3, ip, #239
	b	.L429
.L480:
	str	r7, [r4, #4]
	b	.L408
.L483:
	ldr	r3, [r4, #16]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L414
	b	.L481
.L428:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	animateEnemies
.L484:
	bl	hurtPlayer
	b	.L420
.L482:
	bl	hurtPlayer
	b	.L411
.L474:
	cmp	r0, #0
	blt	.L486
	beq	.L479
	ldr	r3, [r4, #60]
	ldr	r0, [r4, #16]
	add	r3, r1, r3
	add	r0, r3, r0
	str	r3, [sp, #16]
	add	r3, lr, r2, lsl #11
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	ldr	r3, [r4, #20]
	bne	.L412
	add	r0, lr, r0
	mov	r9, r0
	str	r0, [sp, #20]
	add	r0, r2, r3
	ldrb	r9, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r0, r0, #11
	bne	.L412
	add	r9, r0, #2048
	ldr	r0, [sp, #16]
	add	r0, lr, r0
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L412
	ldr	r0, [sp, #20]
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r0, [sp, #16]
	movne	r1, r0
	strne	r0, [r4, #12]
	b	.L412
.L485:
	ldr	r1, [r4, #68]
	add	r3, r3, #1
	cmp	r3, r1
	str	r3, [r4, #72]
	strgt	r9, [r4, #76]
	strgt	r2, [r4, #36]
	strgt	r9, [r4, #72]
	b	.L418
.L486:
	ldr	r0, [r4, #60]
	add	r3, lr, r2, lsl #11
	sub	r0, r1, r0
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	cmp	r3, #0
	str	r0, [sp, #16]
	ldr	r3, [r4, #20]
	bne	.L412
	ldr	r0, [sp, #16]
	add	r9, lr, r0
	add	r0, r2, r3
	str	r9, [sp, #20]
	ldrb	r9, [r9, r0, lsl #11]	@ zero_extendqisi2
	cmp	r9, #0
	lsl	r0, r0, #11
	bne	.L412
	ldr	r9, [sp, #20]
	add	r0, r0, #2048
	ldrb	r9, [r9, r0]	@ zero_extendqisi2
	cmp	r9, #0
	ldr	r9, [sp, #20]
	add	r0, r9, r0
	beq	.L412
	ldr	r9, [r4, #16]
	ldrb	r0, [r0, r9]	@ zero_extendqisi2
	cmp	r0, #0
	ldrne	r1, [sp, #16]
	strne	r1, [r4, #12]
	b	.L412
.L425:
	ldr	r3, [r4, #56]
	add	ip, r2, r2, lsl #2
	add	r2, r2, ip, lsl #1
	lsl	r3, r3, #1
	add	ip, fp, r2, lsl #2
	add	r0, r0, #8
	sub	r3, r3, #1
	str	r9, [fp, r2, lsl #2]
	str	r0, [ip, #8]
	str	r1, [ip, #12]
	str	r3, [ip, #36]
	b	.L418
.L488:
	.align	2
.L487:
	.word	pMapPos
	.word	lettuce
	.word	collision
	.word	collisionMap
	.word	player
	.word	.LANCHOR0
	.word	big_lettuce
	.word	bl_bullets
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
	push	{r4, lr}
	ldr	r4, .L508
	ldr	r3, [r4, #60]
	cmp	r3, #0
	bne	.L489
	ldr	r3, .L508+4
	ldrh	r3, [r3]
	tst	r3, #8
	and	r3, r3, #4
	bne	.L506
.L492:
	cmp	r3, #0
	beq	.L494
	ldr	r3, .L508+8
	ldrh	r3, [r3]
	tst	r3, #4
	bne	.L494
.L493:
	mov	r3, #1
	str	r3, [r4, #60]
.L494:
	bl	updatePlayer
	bl	updateBullets
	bl	updateEnemies
	bl	updateMap
	ldr	r3, .L508+12
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L507
.L495:
	ldr	r3, .L508+16
	ldr	r2, [r3, #72]
	cmp	r2, #0
	ble	.L496
	ldr	r2, [r3, #8]
	cmp	r2, #238
	ble	.L489
.L496:
	ldr	r2, [r4]
	cmp	r2, #0
	bne	.L489
	mov	r1, #1
	pop	{r4, lr}
	str	r2, [r3, #44]
	str	r1, [r3, #32]
	b	gameOver.part.0
.L489:
	pop	{r4, lr}
	bx	lr
.L506:
	ldr	r2, .L508+8
	ldrh	r2, [r2]
	tst	r2, #8
	beq	.L493
	b	.L492
.L507:
	ldr	r3, .L508+20
	mov	lr, pc
	bx	r3
	b	.L495
.L509:
	.align	2
.L508:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r8, .L512
	ldr	r3, .L512+4
	ldr	r7, [r8, #52]
	ldr	lr, .L512+8
	ldr	r10, [r3, #8]
	smull	r3, r4, lr, r7
	smull	r3, lr, r10, lr
	mov	r5, #0
	asr	r0, r7, #31
	rsb	r4, r0, r4, asr #5
	ldr	r6, .L512+12
	add	r1, r4, r4, lsl #2
	asr	r9, r10, #31
	add	r1, r1, r1, lsl #2
	sub	sp, sp, #12
	smull	r3, fp, r6, r7
	sub	r1, r7, r1, lsl #2
	rsb	r3, r9, lr, asr #5
	str	r3, [sp, #4]
	add	r2, r3, r3, lsl #2
	smull	r3, ip, r6, r10
	smull	lr, r3, r6, r1
	add	r2, r2, r2, lsl #2
	sub	r2, r10, r2, lsl #2
	smull	lr, r6, r2, r6
	rsb	r0, r0, fp, asr #2
	str	r3, [sp]
	add	r0, r0, r0, lsl #2
	ldr	r3, [r8, #16]
	sub	r0, r7, r0, lsl #1
	ldr	r7, [sp]
	rsb	ip, r9, ip, asr #2
	asr	r1, r1, #31
	ldr	r9, .L512+16
	rsb	r1, r1, r7, asr #2
	add	r7, r3, #6
	add	fp, r3, #1
	str	r7, [r8, #16]
	add	r4, r4, #111
	add	r7, r9, r3, lsl #3
	asr	r2, r2, #31
	strh	r4, [r7, #4]	@ movhi
	rsb	r2, r2, r6, asr #2
	add	r4, r9, fp, lsl #3
	add	r6, r3, #2
	add	r1, r1, #111
	strh	r1, [r4, #4]	@ movhi
	add	r0, r0, #111
	add	r1, r9, r6, lsl #3
	strh	r0, [r1, #4]	@ movhi
	lsl	r0, r3, #3
	strh	r5, [r9, r0]	@ movhi
	mov	r0, #148	@ movhi
	strh	r0, [r7, #2]	@ movhi
	mov	r0, #156	@ movhi
	lsl	fp, fp, #3
	strh	r0, [r4, #2]	@ movhi
	lsl	r6, r6, #3
	add	r4, r3, #3
	strh	r5, [r9, fp]	@ movhi
	mov	r0, #164	@ movhi
	strh	r5, [r9, r6]	@ movhi
	lsl	r6, r4, #3
	strh	r5, [r9, r6]	@ movhi
	mov	r6, #82	@ movhi
	strh	r0, [r1, #2]	@ movhi
	add	r1, r9, r4, lsl #3
	add	r0, r3, #4
	add	r3, r3, #5
	strh	r6, [r1, #2]	@ movhi
	add	r4, r9, r0, lsl #3
	add	r6, r9, r3, lsl #3
	lsl	r0, r0, #3
	lsl	r3, r3, #3
	strh	r5, [r9, r0]	@ movhi
	strh	r5, [r9, r3]	@ movhi
	mov	r3, #90	@ movhi
	strh	r3, [r4, #2]	@ movhi
	mov	r3, #98	@ movhi
	ldr	lr, [sp, #4]
	add	ip, ip, ip, lsl #2
	sub	ip, r10, ip, lsl #1
	add	lr, lr, #111
	add	r2, r2, #111
	add	ip, ip, #111
	strh	lr, [r1, #4]	@ movhi
	strh	r3, [r6, #2]	@ movhi
	strh	r2, [r4, #4]	@ movhi
	strh	ip, [r6, #4]	@ movhi
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L513:
	.align	2
.L512:
	.word	.LANCHOR0
	.word	player
	.word	1374389535
	.word	1717986919
	.word	shadowOAM
	.size	drawFont, .-drawFont
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
	ldr	r3, .L523
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, .L523+4
	ldr	r3, [r3, #72]
	ldr	ip, [r6, #16]
	cmp	r3, #0
	add	r4, ip, #1
	ble	.L522
	mov	r2, #0
	mov	r5, #16384
	mov	r1, #198
	ldr	r0, .L523+8
	cmp	r3, #1
	lsl	lr, ip, #3
	addeq	r3, ip, #2
	strh	r2, [r0, lr]	@ movhi
	add	lr, r0, ip, lsl #3
	strh	r5, [lr, #2]	@ movhi
	moveq	ip, r4
	strh	r1, [lr, #4]	@ movhi
	moveq	r4, r3
	beq	.L515
	ldr	r5, .L523+12
	add	lr, r0, r4, lsl #3
	cmp	r3, #2
	lsl	r4, r4, #3
	strh	r5, [lr, #2]	@ movhi
	strh	r1, [lr, #4]	@ movhi
	add	lr, ip, #2
	strh	r2, [r0, r4]	@ movhi
	addeq	r4, ip, #3
	moveq	ip, lr
	beq	.L515
	ldr	r4, .L523+16
	cmp	r3, #3
	add	r3, r0, lr, lsl #3
	strh	r4, [r3, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	add	r3, ip, #3
	addeq	r4, ip, #4
	moveq	ip, r3
	lsl	lr, lr, #3
	strh	r2, [r0, lr]	@ movhi
	ldrne	r4, .L523+20
	addne	lr, r0, r3, lsl #3
	lslne	r3, r3, #3
	strhne	r1, [lr, #4]	@ movhi
	strhne	r2, [r0, r3]	@ movhi
	strhne	r4, [lr, #2]	@ movhi
	addne	r4, ip, #5
	addne	ip, ip, #4
.L515:
	ldr	r2, [r6, #64]
	ldr	lr, .L523+24
	smull	r3, lr, r2, lr
	asr	r10, r2, #31
	ldr	r1, .L523+28
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
	ldr	lr, .L523+32
	lsl	r4, r4, #3
	add	r3, ip, #4
	ldr	ip, .L523+36
	strh	r5, [r0, r4]	@ movhi
	lsl	r4, r2, #3
	add	r2, r0, r2, lsl #3
	strh	r5, [r0, fp]	@ movhi
	strh	r7, [r1, #2]	@ movhi
	str	r3, [r6, #16]
	strh	r5, [r0, r4]	@ movhi
	strh	lr, [r2, #2]	@ movhi
	strh	ip, [r2, #4]	@ movhi
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	lr
.L522:
	ldr	r0, .L523+8
	b	.L515
.L524:
	.align	2
.L523:
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
	ldr	r3, .L533
	ldr	r2, [r3, #60]
	cmp	r2, #0
	bxne	lr
	mov	r1, #1
	push	{r4, lr}
	ldr	r2, .L533+4
	str	r1, [r3, #16]
	mov	lr, pc
	bx	r2
	bl	drawHUD
	ldr	r3, .L533+8
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L532
.L527:
	bl	drawPlayer
	bl	drawSlash
	bl	drawEnemies
	bl	drawBullets
	bl	drawFont
	ldr	r3, .L533+12
	mov	lr, pc
	bx	r3
	ldr	r4, .L533+16
	mov	r3, #512
	mov	r2, #117440512
	mov	r0, #3
	ldr	r1, .L533+20
	mov	lr, pc
	bx	r4
	mov	ip, #67108864
	ldr	r3, .L533+24
	ldr	r3, [r3]
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	strh	r2, [ip, #20]	@ movhi
	ldr	r2, .L533+28
	ldr	lr, [r2]
	ldr	r1, .L533+32
	lsl	r2, lr, #16
	lsr	r2, r2, #16
	ldr	r0, [r1]
	strh	r2, [ip, #22]	@ movhi
	ldr	r2, .L533+36
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
.L532:
	ldr	r3, .L533+40
	mov	lr, pc
	bx	r3
	ldr	r3, .L533+44
	mov	lr, pc
	bx	r3
	b	.L527
.L534:
	.align	2
.L533:
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
	ldr	r3, .L537
	ldr	r3, [r3]
	cmp	r3, #0
	bxne	lr
	b	gameOver.part.0
.L538:
	.align	2
.L537:
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
