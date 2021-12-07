#include <math.h>
#include "myLib.h"
#include "game.h"

#include "map1.h"
#include "map1Collision.h"

#include "boss1.h"
#include "boss1Collision.h"
#include "boss1AI.h"

#include "boss2.h"
#include "boss2Collision.h"
#include "boss2AI.h"

#include "interrupts.h"
#include "map1Song.h"
#include "bossSong.h"
#include "sfx_attack.h"
#include "sfx_player_hurt.h"
#include "sfx_jump1.h"
#include "sfx_jump2.h"
#include "sfx_lettuce_projectile.h"

// keeps track of whether the player has 'won'
int winning = 0;
int cheating = 0;

OBJ_ATTR shadowOAM[128];


PLAYER player;
SLASH slash;

LETTUCE lettuce[LETTUCECOUNT];
BIG_LETTUCE big_lettuce[BIGLETTUCECOUNT];
BL_BULLET bl_bullets[BIGLETTUCECOUNT];

int shadowOAMIndex = 0;

// gets the collision map set up
unsigned char* collisionMap;

int score = 0;

// pauses game when pauseVar = 1
int pauseVar = 0;

// vars for the offset of the camera
int hOff;
int vOff;

// if the player is on the ground = 1
int grounded = 1;

// whether or not player is holding jump button
int jumping = 0;
// check for player double jump
int doubleJumping = 0;

// for running particle, to track when to place
int running = 0;

// if player is dying
int dying = 0;

int dashing = 0;
int dashingTimer = 0;
int dashed = 0; // keeps track of whether or not you have dashed in the air (1 per airtime)

// now being used as measure to prevent 'rejump' in air from holding up. Check around line 230 for context
int jumpThud = 0;

// velocity in the y axis
int yVel = 0;
int framesInAir = 0;
int coyoteTimer = 0;

// gravity timer, for falling velocity
int gTimer = 0;

int airTimer = 0;

// current map counter
int currMap;

// player position in current map. DO NOT CHANGE - only used to calculate enemy positions and such
int pMapPos;

// for loading in the backgrounds (camera controls)
int bgIndex;

// offset counter for 256 / 512 conversions mid map
// int offSet = 0;

MAP maps[5];

int dead = 0;

// whether or not to lock the camera. Useful for certain situations, like boss fights or arenas
int cameraLock = 0;

// Player animation states for aniState
enum {IDLE, RUNNING, JUMPUP, JUMPDOWN, ATTACK, DAMAGED, DOUBLEJUMP, DYING };

// Initialize the game
// #region init
void initGame() {

    if (currMap == 2) {
        winning = 1;
        pauseTimer();
    }
    else {
        startTimer();
    }
    winning = 0;
    for (int i=0; i<128; i++) {
        // hides the sprites in the beginning
        shadowOAM[i].attr0 = 2 << 8;
    }
    initMaps();
    initPlayer();
    initSlash();
    initEnemies();
    gTimer = 0;
    airTimer = 0;
    shadowOAMIndex = 2;
    // changes per which map to load in!
    hOff = maps[currMap].startingHOff;
    vOff = maps[currMap].startingVOff;
}

// Initialize the player
void initPlayer() {
    player.hide = 0;
    player.width = 8;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 3;
    player.movementCycle = 2;


    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 6;
    player.aniState = IDLE;
    // util
    player.direction = 0;
    player.attacking = 0;
    player.attackTimer = 0;
    player.hearts = 4;
    player.damaged = 0;
    player.damageCounter = 0;

    switch (currMap)
    {
    case 0:
        player.worldRow = 159;
        player.worldCol = 35;
        break;
    case 1:
        player.worldRow = 80;
        player.worldCol = 120;    
        break;
    case 2:
        player.worldRow = 80;
        player.worldCol = 120;
        break;
    default:
        player.worldRow = 80;
        player.worldCol = 120;
        break;
    }

}

void initSlash() {
    // hides by default
    slash.hide = 1;
    slash.width = 14;
    slash.height = 12;
    slash.rdel = 0;
    slash.cdel = 15;

    // making this (-) makes hitbox wider than sprite
    // making this (+) makes hitbox thinner than sprite
    slash.hitboxCDel = -3;

    // 0,0 by default
    slash.worldRow = 0;
    slash.worldCol = 0;
    slash.aniCounter = 0;
    slash.curFrame = 0;
    slash.numFrames = 4;
    // util
    slash.direction = 0;
    slash.attacking = 0;
    slash.attackTimer = 0;
}

void initEnemies() {
    // the lettuce. goes through all and sets defaults
    for (int g = 0; g < LETTUCECOUNT; g++) {
        lettuce[g].active = 0;
        lettuce[g].width = 13;
        lettuce[g].height = 15;

        lettuce[g].aniCounter = 0;
        lettuce[g].aniState = 0;
        lettuce[g].curFrame = 0;
        lettuce[g].numFrames = 4;
        // ai
        lettuce[g].direction = 0;
        lettuce[g].xRange = 128;
        lettuce[g].yRange = 96;
        lettuce[g].speed = 1;
        if (cheating) {
            lettuce[g].lives = 0;
        }
        else {
            lettuce[g].lives = 1;
        }
        lettuce[g].damaged = 0;
    }

    // the big L. goes through all and sets defaults
    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        big_lettuce[g].active = 0;
        big_lettuce[g].width = 13;
        big_lettuce[g].height = 15;

        big_lettuce[g].aniCounter = 0;
        big_lettuce[g].curFrame = 0;
        big_lettuce[g].numFrames = 4;
        big_lettuce[g].aniState = 0;
        // ai
        big_lettuce[g].direction = 0;
        big_lettuce[g].xRange = 240;
        big_lettuce[g].yRange = 60;
        big_lettuce[g].shootSpeed = 60;
        if (cheating) {
            big_lettuce[g].lives = 0;
        }
        else {
            big_lettuce[g].lives = 2;
        }
        big_lettuce[g].damaged = 0;
    }

    // sets up BL Bullets
    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        bl_bullets[g].active = 0;
        bl_bullets[g].width = 8;
        bl_bullets[g].height = 8;

        bl_bullets[g].aniCounter = 0;
        bl_bullets[g].curFrame = 0;
        bl_bullets[g].numFrames = 4;
        // ai
        bl_bullets[g].direction = -1;
        bl_bullets[g].speed = 1;
    }

    // switch statement for which map u are on. set each individual enemy
    switch (currMap) {
        case 0:
            lettuce[0].active = 1;
            lettuce[0].worldRow = 160;
            lettuce[0].worldCol = 136;
            lettuce[1].active = 1;
            lettuce[1].worldRow = 64;
            lettuce[1].worldCol = 672;
            lettuce[2].active = 1;
            lettuce[2].worldRow = 160;
            lettuce[2].worldCol = 800;
            lettuce[3].active = 1;
            lettuce[3].worldRow = 64;
            lettuce[3].worldCol = 769;
            lettuce[4].active = 1;
            lettuce[4].worldRow = 112;
            lettuce[4].worldCol = 920;
            lettuce[5].active = 1;
            lettuce[5].worldRow = 96;
            lettuce[5].worldCol = 1304;
            lettuce[6].active = 1;
            lettuce[6].worldRow = 160;
            lettuce[6].worldCol = 1600;


            // 8 less than the player position
            big_lettuce[0].active = 1;
            big_lettuce[0].worldRow = 55;
            big_lettuce[0].worldCol = 963;
            big_lettuce[0].direction = 0;

            big_lettuce[1].active = 1;
            big_lettuce[1].worldRow = 119;
            big_lettuce[1].worldCol = 350;
            big_lettuce[1].direction = 0;

            big_lettuce[2].active = 1;
            big_lettuce[2].worldRow = 87;
            big_lettuce[2].worldCol = 1417;
            big_lettuce[2].direction = 0;

            big_lettuce[3].active = 1;
            big_lettuce[3].worldRow = 135;
            big_lettuce[3].worldCol = 1689;
            big_lettuce[3].direction = 0;

            big_lettuce[4].active = 1;
            big_lettuce[4].worldRow = 135;
            big_lettuce[4].worldCol = 2016;
            big_lettuce[4].direction = 0;

            big_lettuce[5].active = 1;
            big_lettuce[5].worldRow = 135;
            big_lettuce[5].worldCol = 1936;
            big_lettuce[5].direction = 0;
        break;
        case 1:
            // this is the boss level
            initBoss1();
        break;

        case 3:
            initBoss2();
        break;
    }

}

void initMaps() {
    bgIndex = 0;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24) | BG_SIZE_WIDE | BG_4BPP;
    switch (currMap)
    {
    case 0:

        playSoundA(map1Song_data, map1Song_length, 1);

        cameraLock = 0;
        maps[currMap].startingHOff = 0;
        maps[currMap].startingVOff = 60;

        collisionMap = map1CollisionBitmap;
        maps[currMap].map = map1Map;
        maps[currMap].palette = map1Pal;
        maps[currMap].tiles = map1Tiles;

        maps[currMap].doorX = 1978;
        maps[currMap].doorY = 66;
        maps[currMap].doorWidth = 28;
        maps[currMap].doorHeight = 28;
        break;
    case 1:

        playSoundA(bossSong_data, bossSong_length, 1);

        cameraLock = 1;
        maps[currMap].startingHOff = 0;
        maps[currMap].startingVOff = 0;

        collisionMap = boss1CollisionBitmap;
        maps[currMap].map = boss1Map;
        maps[currMap].palette = boss1Pal;
        maps[currMap].tiles = boss1Tiles;

        REG_BG2VOFF = 0;
        break;
    case 2:
        winning = 1;
    break;
    case 3:
        playSoundA(bossSong_data, bossSong_length, 1);

        cameraLock = 1;
        maps[currMap].startingHOff = 0;
        maps[currMap].startingVOff = 0;

        collisionMap = boss2CollisionBitmap;
        maps[currMap].map = boss2Map;
        maps[currMap].palette = boss1Pal;
        maps[currMap].tiles = boss2Tiles;
        REG_BG2VOFF = 0;
        break;

    default:
        break;
    }

        waitForVBlank();

        // FIXME TODO load in new map here buddy!!!
        DMANow(3, maps[currMap].map, &SCREENBLOCK[24], (16384 / 2)); 
        // might not need this one if use the same tileset for every level
        DMANow(3, maps[currMap].palette, PALETTE, 48);
        DMANow(3, maps[currMap].tiles, &CHARBLOCK[0], map1TilesLen / 2);

}

// #endregion

// Updates the game each frame
void updateGame() {
    if (pauseVar) {
        return;
    }
    // pauses the game
    if (BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 1;
    }

	updatePlayer();
    // ^^ update slash is a part of update player, since it is so minor
    updateBullets();
    updateEnemies();
    updateMap();

    if (currMap == 1) {
        updateBoss1();
    }
    if (currMap == 3) {
        updateBoss2();
    }

    // this determines lose conditions
    if (player.hearts < 1 || player.worldRow > 238) {
        if (!dying) {
            player.curFrame = 0;
            // this ensures that it starts the death animation on the first frame
            player.aniCounter = 1;
        }
        gameOver();
    }

}

// Draws the game each frame
void drawGame() {

    if (pauseVar) {
        return;
    }

    shadowOAMIndex = 1;
    hideSprites();
    drawHUD();



    if (currMap == 1) {
        drawBoss1();
        animateBoss1();
    }

    if (currMap == 3) {
        drawBoss2();
        animateBoss2();
    }

    drawPlayer();
    drawSlash();
    drawEnemies();
    drawBullets();
    drawFont();

    drawTimer();



    waitForVBlank();


    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;

    // parallax motion babbyyy :) - checks based on screen changes
    REG_BG2HOFF = ((hOff + (bgIndex * 256)) / PARALLAXFACTOR);
    REG_BG2VOFF = ((vOff / PARALLAXFACTOR) - 15);

}

// #region update game
void updateMap() {
    MAP temp = maps[currMap];
    // check for player collision with doors - uses pMapPos because it needs world col
    if (collision(pMapPos, player.worldRow, player.width, player.height, temp.doorX, temp.doorY, temp.doorWidth, temp.doorHeight)) {

        // FIXME load in the next level here! Decide what you want to do here

        // increment current map index
        currMap++;

        initGame();

    }
}

// Handle every-frame actions of the player
void updatePlayer() {

    // allows for playing the death animation, but locking all other player motion
    if (dying) {
        animatePlayer();
        return;
    }

    
    
    grounded = groundCheck(player.worldCol, player.worldRow, player.width, player.height);

    // #region yVel + jumping
    // grounded = groundCheck(player.worldCol, player.worldRow, player.width, player.height);
    // this ensures no jumpThud glitches
    if (grounded)  {
        jumpThud = 0;
        doubleJumping = 0;
        dashed = 0;
        coyoteTimer = 0;
        jumping = 0;
        // leaving here, but it ocassionaly leads to 1 pixel above landings
        // yVel = 0;
    }

    // the check for double jumping - must go before regular jumping to prevent double counting
    // checks for whether the player jumped, or whether they are just falling
    if(BUTTON_PRESSED(BUTTON_UP) && !doubleJumping && ((jumping || (!grounded && coyoteTimer >= COYOTE_TIME)))) {
        playSoundB(sfx_jump1_data, sfx_jump1_length, 0);
        doubleJumping = 1;
        yVel = JUMPVEL;
        framesInAir = 0;
        airTimer = 0;
        // this resets so you can continue holding the dJ
        jumpThud = 0;
        // this is for the case where you fall of ledge without jumping
        if (!jumping) {
            jumping = 1;
        }
    }

    // the check for jumping - the double collision check ensures both bottoms are on ground, no coyote jumping! Should this be changed to be more merciful to players?
    if(BUTTON_PRESSED(BUTTON_UP) && (grounded || (!grounded && coyoteTimer < COYOTE_TIME)) && !dashing
        && !pCheckCollision(player.worldCol, player.worldRow - 1)
        && !pCheckCollision(player.worldCol + player.width, player.worldRow - 1)) {
            playSoundB(sfx_jump2_data, sfx_jump2_length, 0);
            // sets y to -4 for upwards movement, gravity will eventually bring it down
            yVel = JUMPVEL;
            framesInAir = 0;
            airTimer = 0;
            // need this
            grounded = 0;
            jumping = 1;
    }

    // loops through pixels above player to check if head collision
        for (int i = 0; i > yVel; i--) {
            if (pCheckCollision(player.worldCol, player.worldRow + i)
            || pCheckCollision(player.worldCol + player.width, player.worldRow + i)) {
                // this makes it so it appears the player head goes up till the collision
                player.worldRow += (i + 1);
                if (!cameraLock) {
                    vOff += (i + 1);
                }

                yVel = 0;
                jumping = 0;
                jumpThud = 1;
                // resets so it isn't as snappy
                framesInAir = 0;
                break;
            }
        }

        // TODO - UNINTENTIONAL ZIPLINE
        // hardcoded upright check
        // if (BUTTON_HELD(BUTTON_UP) && BUTTON_HELD(BUTTON_RIGHT) && yVel > 0) {
        //     for (int i = 0; i > -2; i--) {
        //         if (pCheckCollision(player.worldCol - i, player.worldRow + i)
        //         || pCheckCollision(player.worldCol + player.width - i, player.worldRow + i)) {
        //             // snaps player to ground and resets yVel
        //             yVel = 0;
        //             jumping = 0;
        //             jumpThud = 1;
        //             break;
        //         }
        //     }   
        // }

    // loops through pixels below player to check ground, if they are falling (yVel > 0)
    // IMPORTANT - that this is called BEFORE the air calculations, as the snapping will changeeverything
    for (int i = 1; i <= yVel; i++) {
        if (pCheckCollision(player.worldCol, player.worldRow + player.height + i)
        || pCheckCollision(player.worldCol + player.width, player.worldRow + player.height + i)) {
            // snaps player to ground and resets yVel
            player.worldRow += (i);
            if (!cameraLock) {
                vOff += (i);
            }
            yVel = 0;
            grounded = 1;
            break;
        }
    }

    // moves down if in air, handles gravity
    if (!grounded) {



        // first jump, holding up gets higher velocity
        if (BUTTON_HELD(BUTTON_UP) && jumping && !jumpThud && !doubleJumping) {
            yVel = JUMPVEL + (GRAVITY * framesInAir);
        }
        else if (BUTTON_HELD(BUTTON_UP) && doubleJumping && !jumpThud) {
            yVel = ((7 * JUMPVEL) / 8) + (GRAVITY * framesInAir);
        }
        else {
            // case where you let go of jump midair, but are still jumping
            if (jumping) {
                yVel = ((JUMPVEL * 5) / 8) + (GRAVITY * framesInAir);
                // this is what stops you from holding jump again to get the boost
                jumpThud = 1;
            }
            // case where you are falling without ever having jumped, or you hit head on ceiling
            else {
                yVel = (GRAVITY * framesInAir);
            }
        }
        // makes sure gravity never gets too insane
        yVel = fmin(3, yVel);
        // smooths out air frames
        if (airTimer % 4 == 0) {
            framesInAir++;
        }
        // allows for jumps slightly after leaving ledge
        coyoteTimer++;

        player.worldRow += yVel;

    }

    // if on the ground, shouldn't have vertical motionn
    // if (grounded) {
    //     yVel = 0;
    //     // framesInAir = 0;
    //     jumping = 0;
    // }

        // moves the y vel accordingly
        if (!grounded) {
        }

    // moves camera down if player is moving down
    if (vOff < 254 - SCREENHEIGHT && (player.worldRow - vOff >= SCREENHEIGHT / 2) && (yVel > 0)) {
        if (!cameraLock) {
            vOff += yVel;
        }

    }
    
    // moves camera up if player is moving up
    if (vOff > 3 && (player.worldRow - vOff <= SCREENHEIGHT / 2) && (yVel < 0)) {
        if (!cameraLock) {
            vOff += yVel;
        }
    }

    // #endregion

    // TODO - cheat: make the dash longer, more invulnerable frames
    // #region DASHING IN AIR. The dash works by changing movementCycle, so the player moves every frame instead of every other frame
    if (dashing) {
        dashingTimer++;
        // allows for quick dash on ground
        if (grounded && dashingTimer > DASH_TIME) {
            dashing = 0;
            dashingTimer = 0;
            player.movementCycle = 2;
            player.cdel = 3;
        }
        // has timer on dash
        if (dashingTimer > DASH_TIME - 15) {
            dashing = 0;
            dashingTimer = 0;
            player.movementCycle = 2;
        }
    }

    if ((BUTTON_PRESSED(BUTTON_R) || BUTTON_PRESSED(BUTTON_L)) && !dashing) {
        dashing = 1;
        // makes slower movement on the ground
        if (grounded) {
            if (cheating) {
                player.movementCycle = 1;
            }
            else {
                player.movementCycle = 2;
            }
            player.cdel = 3;
        }
        else if (!dashed) {
            dashed = 1;
            player.movementCycle = 1;
            if (cheating) {
                player.cdel = 4;
            }
            
        }
    }
    // #endregion dashing


    // #region left and right movement
    // left movement
    if (gTimer % player.movementCycle == 0) {
        if (BUTTON_HELD(BUTTON_LEFT)
            && !pCheckCollision(player.worldCol - player.cdel, player.worldRow)
            && !pCheckCollision(player.worldCol - player.cdel, player.worldRow + player.height - 1)) {
            if (player.worldCol >= 0) {
                player.worldCol -= player.cdel;
                // stops the running particles if changing direction. Since player.direction is updated after this, it has previous frame data
                if (!player.direction) {
                    running = 0;
                }

                if (!cameraLock) {
                    if (hOff > 0 && (player.worldCol - hOff < (SCREENWIDTH / 2))) {
                        // Update background offset variable if the above is true
                        hOff-= player.cdel;
                    }
                    
                    // left map / camera changing!
                    if (hOff <= 0 && bgIndex != 0) {

                        bgIndex--;
                        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24 + bgIndex) | BG_SIZE_WIDE | BG_4BPP;
                        hOff = 256;
                        // we need to set these right away to stop the 1 frame visual artifacts ! SO HAPPY I FIXED THIS !
                        REG_BG1HOFF = hOff;
                        REG_BG1VOFF = vOff;
                        player.worldCol = 120 + 256;
                    }
                }
            }
        }

        // right movement
        if (BUTTON_HELD(BUTTON_RIGHT) 
            && !pCheckCollision(player.worldCol + player.width + player.cdel, player.worldRow)
            && !pCheckCollision(player.worldCol + player.width + player.cdel, player.worldRow + player.height - 1)) {
            if (pMapPos + player.width <= MAPWIDTH) {
                player.worldCol += player.cdel;
                // if changing direction, stop running particles
                if (player.direction) {
                    running = 0;
                }
                if (!cameraLock) {
                    if (hOff <= 256 && (player.worldCol - hOff > (SCREENWIDTH / 2)) && pMapPos <= (MAPWIDTH - 120)) {
                        hOff += player.cdel;
                    }
                    // check for right camera changes
                    // if goes over, changes thingy
                    if (hOff > 256) {
                        bgIndex++;
                        REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(24 + bgIndex) | BG_SIZE_WIDE | BG_4BPP;
                        hOff = 0;
                        REG_BG1HOFF = hOff;
                        REG_BG1VOFF = vOff;
                        player.worldCol = 120;
                    }
                }
            }
        }

        // setting total map position, because player.worldCol changes due to camera changing
        pMapPos = player.worldCol + 256 * bgIndex;

    }
    // #endregion


    // #region attacking slash
    slash.worldCol = player.worldCol + (slash.cdel * ((player.direction * -2) + 1)) - 2;
    slash.worldRow = player.worldRow;
    animateSlash();
    // ATTACKING - this handles damaging enemies while doing the slash - maybe make it into its own separate method
    if (player.attackTimer > 0) {
        // go through all the enemies
        for (int g = 0; g < LETTUCECOUNT; g++) {
            if (collision(slash.worldCol + (256 * bgIndex) + slash.hitboxCDel, slash.worldRow, slash.width - slash.hitboxCDel, slash.height, lettuce[g].worldCol, lettuce[g].worldRow, lettuce[g].width, lettuce[g].height)) {
                // mark it as damaged to prevent multiple hits per frame
                if (!lettuce[g].damaged) {
                    lettuce[g].damaged = 1;
                    lettuce[g].lives--;
                    // TODO - add in death animation
                    if (lettuce[g].lives < 0) {
                        lettuce[g].active = 0;
                    }
                }
            }
        }
        for (int j = 0; j < BIGLETTUCECOUNT; j++) {
            if (collision(slash.worldCol + (256 * bgIndex) + slash.hitboxCDel, slash.worldRow, slash.width - slash.hitboxCDel, slash.height, big_lettuce[j].worldCol, big_lettuce[j].worldRow, big_lettuce[j].width + 2, big_lettuce[j].height)) {
                // mark it as damaged to prevent multiple hits per frame
                if (!big_lettuce[j].damaged) {
                    big_lettuce[j].damaged = 1;
                    big_lettuce[j].lives--;
                    // TODO - add in death animation
                    if (big_lettuce[j].lives < 0) {
                        big_lettuce[j].active = 0;
                    }
                }
            }
        }
        if (currMap == 1) {
            if (collision(slash.worldCol + slash.hitboxCDel, slash.worldRow, slash.width - slash.hitboxCDel, slash.height, boss.worldCol, boss.worldRow, boss.width, boss.height)) {
                if (!boss.damaged) {
                    boss.lives--;
                    boss.damaged = 1;
                }

            }
        }
        if (currMap == 3) {
            if (collision(slash.worldCol + slash.hitboxCDel, slash.worldRow, slash.width - slash.hitboxCDel, slash.height, boss2.worldCol, boss2.worldRow, boss2.width, boss2.height)) {
                if (!boss2.damaged) {
                    boss2.lives--;
                    boss2.damaged = 1;
                }

            }
        }
        // we are displacing slash by its cdel off from the main player
        // ((player.direction * -2) + 1) <- this is making it either 1 or -1 to change the direction of cdel
        player.attackTimer--;
    }
    else {
        player.attacking = 0;
        slash.hide = 1;
    }

    // FIXME FOR SOME REASON WHEN I USE BUTTON_A, JUMPING ACTIVATES THE ATTACK??? WHAAAAA
    if (BUTTON_PRESSED(BUTTON_B) && !player.attacking) {
        player.attacking = 1;
        player.attackTimer = ATTACK_DURATION;
        player.curFrame = 0;
        slash.hide = 0;
        slash.curFrame = 0;
        // I am setting to 0 because I am controlling individual frames of attack
        slash.aniCounter = 0;
        
        playSoundB(sfx_attack_data, sfx_attack_length / 2, 0);

    }

    // #endregion

    // update the gravity check timer, so gravity is more smooth
    gTimer++;
    airTimer++;

    animatePlayer();
}

void updateEnemies() {
    // update lettuce
    for (int g = 0; g < LETTUCECOUNT; g++) {

        // check for if it is on screen.
        if (lettuce[g].worldCol + lettuce[g].width > (pMapPos - 240) && lettuce[g].worldCol < (pMapPos + 240)) {
            lettuce[g].onScreen = 1;
        }
        else {
            lettuce[g].onScreen = 0;
        }

        if (!lettuce[g].active || !lettuce[g].onScreen) {
            continue;
        }

        // wait until the player is done attacking to apply damage
        if (lettuce[g].damaged && !player.attacking) {
            lettuce[g].damaged = 0;
        }

        // checks for collision with player
        if (collision(lettuce[g].worldCol, lettuce[g].worldRow + 3, lettuce[g].width, lettuce[g].height - 2, pMapPos, player.worldRow, player.width, player.height) && !player.damaged) {
            hurtPlayer();
        }

        int xDif = pMapPos - lettuce[g].worldCol;
        int yDif = player.worldRow - lettuce[g].worldRow;
        

        // checking if player is within range
        if (abs(xDif) < lettuce[g].xRange && abs(yDif) < lettuce[g].yRange) {
            // this is effectively 'halfing' the move speed, moving every other frame
            if (gTimer % 2 == 0) {
                // goblins[g].worldRow -= 3;
                // if the player is above, dont go into pit to fall
                if (xDif < 0) {
                    // THIS IS CALLED
                    if (!eCheckCollision((lettuce[g].worldCol - lettuce[g].speed), lettuce[g].worldRow) 
                    && !eCheckCollision((lettuce[g].worldCol - lettuce[g].speed), lettuce[g].worldRow + lettuce[g].height)) {
                        // THIS IS NOT CALLED
                        if (goblinGroundCheck((lettuce[g].worldCol - lettuce[g].speed), lettuce[g].worldRow, lettuce[g].width, lettuce[g].height)) {
                            lettuce[g].worldCol -= lettuce[g].speed;
                        }

                    }

                }
                else if (xDif > 0) {
                    if (!eCheckCollision((lettuce[g].worldCol + lettuce[g].speed + lettuce[g].width), lettuce[g].worldRow)
                    && !eCheckCollision((lettuce[g].worldCol + lettuce[g].speed + lettuce[g].width), lettuce[g].worldRow + lettuce[g].height)) {
                        // if on ground, then move. otherwise dont
                        if (goblinGroundCheck((lettuce[g].worldCol + lettuce[g].speed), lettuce[g].worldRow, lettuce[g].width, lettuce[g].height)) {
                            lettuce[g].worldCol += lettuce[g].speed;
                        }
                        else {

                        }
                    }
                }        
            }

        }

        // check for gravity
        if (!goblinGroundCheck(lettuce[g].worldCol, lettuce[g].worldRow, lettuce[g].width, lettuce[g].height)) {
            lettuce[g].worldRow++;
        }

    }

    for (int j = 0; j < BIGLETTUCECOUNT; j++) {

        // check for if it is on screen.
        if (big_lettuce[j].worldCol + big_lettuce[j].width > (pMapPos - 240) && big_lettuce[j].worldCol < (pMapPos + 240)) {
            big_lettuce[j].onScreen = 1;
        }
        else {
            big_lettuce[j].onScreen = 0;
        }

        if (!big_lettuce[j].active) {
            continue;
        }

        // wait until the player is done attacking to apply damage
        if (big_lettuce[j].damaged && !player.attacking) {
            big_lettuce[j].damaged = 0;
        }

        // checks for collision with player
        if (collision(big_lettuce[j].worldCol + 1, big_lettuce[j].worldRow + 1, big_lettuce[j].width, big_lettuce[j].height, pMapPos, player.worldRow, player.width, player.height) && !player.damaged) {
            hurtPlayer();
        }

        int xDif = pMapPos - big_lettuce[j].worldCol;
        int yDif = player.worldRow - big_lettuce[j].worldRow;
        
        // checking if player is within range
        if (abs(xDif) < big_lettuce[j].xRange && abs(yDif) < big_lettuce[j].yRange) {
            if (gTimer % 2 == 0) {
                if (xDif < 0) {
                   big_lettuce[j].direction = 0;
                }
                else if (xDif > 0) {
                    big_lettuce[j].direction = 1;
                }
                // now we increment timer
                if (!big_lettuce[j].shooting) {
                    big_lettuce[j].shootTimer++;
                    if (big_lettuce[j].shootTimer > big_lettuce[j].shootSpeed) {
                        big_lettuce[j].shootTimer = 0;
                        big_lettuce[j].shooting = 1;
                        // ensures it starts at beginning of shoot animation
                        big_lettuce[j].curFrame = 0;
                    }
                }
                // first 40 frames of shoot, animates to tell player about to shoot. then it shoots lettuce
                if (big_lettuce[j].shooting) {
                    big_lettuce[j].shootTimer++;
                    if (big_lettuce[j].shootTimer > 40) {
                        playSoundB(sfx_lettuce_projectile_data, sfx_lettuce_projectile_length, 0);
                        big_lettuce[j].shooting = 0;
                        big_lettuce[j].shootTimer = 0;
                        for (int i = 0; i < BIGLETTUCECOUNT; i++) {
                            if (!bl_bullets[i].active || !bl_bullets[i].onScreen) {
                                bl_bullets[i].direction = (big_lettuce[j].direction * 2 - 1);
                                bl_bullets[i].worldCol = big_lettuce[j].worldCol;
                                bl_bullets[i].worldRow = big_lettuce[j].worldRow + 8;
                                bl_bullets[i].active = 1;
                                break;
                            }
                        }
                    }
                }
                
            }

        }

    }

    animateEnemies();
}

void updateBullets() {
    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        if (!bl_bullets[g].active) {
            return;
        }

        // if off screen, do not display bullet
        if (!(bl_bullets[g].worldCol + bl_bullets[g].width > (pMapPos - 240) && bl_bullets[g].worldCol < (pMapPos + 240))) {
            bl_bullets[g].onScreen = 0;
        }
        else {
            bl_bullets[g].onScreen = 1;
        }

        // move bullet in direction with speed
        bl_bullets[g].worldCol += (bl_bullets[g].direction * bl_bullets[g].speed);

        // if off screen by far, 'destroy' bullet
        if (!( (bl_bullets[g].worldCol + bl_bullets[g].width > (pMapPos - 480) && bl_bullets[g].worldCol < (pMapPos + 480 ) ) )
            && bl_bullets[g].onScreen == 0) {
            bl_bullets[g].active = 0;
            bl_bullets[g].onScreen = 0;
            return;
        }

        // TODO - checks for collision with walls??? Idk, maybe could be interesting puzzles without
        // if (eCheckCollision(bl_bullets[g].worldCol, bl_bullets[g].worldRow)) {
        //     bl_bullets[g].active = 0;
        // }

        // check for player collision - make sure bullet is on the screen
        if (collision(bl_bullets[g].worldCol + 3, bl_bullets[g].worldRow + 4, bl_bullets[g].width, bl_bullets[g].height, pMapPos, player.worldRow, player.width, player.height)
         && bl_bullets[g].onScreen) {
            if (!player.damaged) {
                hurtPlayer();
                bl_bullets[g].active = 0;
            }
            // SOUND - maybe play sound here?
        }

        
    }
}
// #endregion updateGame

// #region drawGame

// Draw the player
void drawPlayer() {
    if (player.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff - 3)) | ATTR1_SMALL;
        // if player is facing left, flip sprite to left
        if (player.direction) {
            shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
        }
        switch (player.aniState) {
            // do not ask why sometimes I percent inside, others outside... its just the way it works, otherwise glitchy
            case IDLE:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2) % 4, player.aniState) * 2;
            break;
            case JUMPUP:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), player.aniState * 2);
            break;
            case JUMPDOWN:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), player.aniState * 2);
            break;
            case ATTACK:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 4 * 2), player.aniState * 2);
            break;
            case RUNNING:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2), player.aniState * 2);
            break;
            case DOUBLEJUMP:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), (player.aniState + 1) * 2);
            break;
            case DAMAGED:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame % 3 * 2), (player.aniState + 1) * 2);
            break;
            case DYING:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((14 + (player.curFrame * 2)), 0);
            break;
            default:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2), player.aniState * 2);
            break;
        }
    }
    shadowOAMIndex++;

    if (player.aniState == RUNNING) {
        running++;
        if (running > 30) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff + player.height - 7)) | ATTR0_SQUARE;
            int temp = (running / 5) % 6;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((temp * 2), 27);
            if (player.direction) {
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
            }
            else {
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff - 7)) | ATTR1_SMALL;
            }
            shadowOAMIndex++;
        }
    }
    else {
        running = 0;
    }

}

void drawEnemies() {
    // go through all the lettuce
    for (int g = 0; g < LETTUCECOUNT; g++) {
        if (!lettuce[g].active || !lettuce[g].onScreen) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        } else {
            // this is converting into camera position, subtracting map changes
            int xCol = (lettuce[g].worldCol - (hOff + (256 * bgIndex)));
            // the reason vOff and hOff are included in here is to keep them according to the camera
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (lettuce[g].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (xCol)) | ATTR1_SMALL;
            // if player is facing left, flip lettuce[g] to left
            if (lettuce[g].direction) {
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
            }
            // on spritesheet, lettuce[g] is starting at tile (8,8) in 8x coordinates, which equates to + 3, 4
            if (lettuce[g].damaged == 1) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(((lettuce[g].curFrame % 2) + 9), 4) * 2;
            }
            else {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID((lettuce[g].curFrame + 9), (2 + lettuce[g].aniState)) * 2;
            }
        }
        shadowOAMIndex++;

    }
    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        if (!big_lettuce[g].active || !big_lettuce[g].onScreen) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
        } else {
            // this is converting into camera position, subtracting map changes
            int xCol = (big_lettuce[g].worldCol - (hOff + (256 * bgIndex)));
            // subtracting 6 for the offset of the sprite
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (big_lettuce[g].worldRow - vOff - 6)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (xCol - 6)) | ATTR1_MEDIUM;
            // if player is facing left, flip big_lettuce[g] to left
            if (!big_lettuce[g].direction) {
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
            }
            // column 12,13 for idle animation
            if (big_lettuce[g].damaged) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((big_lettuce[g].curFrame % 2) + 3), 5) * 4;
            }
            else if (big_lettuce[g].shooting) {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(((big_lettuce[g].curFrame) + 3), 4) * 4;
            }
            else {
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(3) | ATTR2_TILEID(((big_lettuce[g].curFrame % 2) + 3), 3) * 4;
            }
        }
        shadowOAMIndex++;
    }
}

void drawBullets() {
    for (int i = 0; i < BIGLETTUCECOUNT; i++) {
        if (!(bl_bullets[i].active) || !(bl_bullets[i].onScreen)) {
            shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
            shadowOAMIndex++;
        } 
        else {
            int xCol = (bl_bullets[i].worldCol - (hOff + (256 * bgIndex)));
            // the reason vOff and hOff are included in here is to keep them according to the camera
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (bl_bullets[i].worldRow - vOff)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (xCol)) | ATTR1_SMALL;
            // flipping
            switch (bl_bullets[i].curFrame) {
                case 1:
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
                break;
                case 2:
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_VFLIP;
                break;
                case 3:
                shadowOAM[shadowOAMIndex].attr1 |= ATTR1_VFLIP;
                break;
                default:
                break;
            }
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID((10), 6) * 2;
        shadowOAMIndex++;
        bl_bullets[i].aniCounter++;
        if (bl_bullets[i].aniCounter % 10 == 0) {
            bl_bullets[i].curFrame = (bl_bullets[i].curFrame + 1) % bl_bullets[i].numFrames;
        }
        }
        
    }
    
}

void drawSlash() {
    if (slash.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (slash.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (slash.worldCol - hOff)) | ATTR1_SMALL;
        // if player is facing left, flip slash to left
        if (player.direction) {
            shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
        }
        // on spritesheet, slash is starting at tile (8,8) in 8x coordinates, which equates to + 3, 4
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((slash.curFrame + 4), 4) * 2;
    }
    shadowOAMIndex++;
}

// #endregion

// #region animateGame

// Handle player animation states
void animatePlayer() {

    // Set previous state to current state, defaults to idle if no button held
    player.prevAniState = player.aniState;
    player.aniState = IDLE;

    // Control movement and change animation state
    if(BUTTON_HELD(BUTTON_LEFT) && !player.attacking) {
        player.aniState = RUNNING;
        player.direction = 1;
    }
    if(BUTTON_HELD(BUTTON_RIGHT) && !player.attacking) {
        player.aniState = RUNNING;
        player.direction = 0;
    }
    if (yVel > 0) {
        player.aniState = JUMPDOWN;
    }
    if (yVel < 0) {
        player.aniState = JUMPUP;
    }
    if (doubleJumping) {
        player.aniState = DOUBLEJUMP;
    }
    if (player.attacking) {
        player.aniState = ATTACK;
    }
    if (player.damaged && player.damageCounter <= 8) {
        player.aniState = DAMAGED;
    }
    if (dashing && grounded) {
        player.aniState = DOUBLEJUMP;
    }
    if (dying) {
        player.aniState = DYING;
    }

    // Change the animation frame every X frames of gameplay for different states. make sure not dying first
    if (!dying) {
        if(player.aniCounter % ATTACK_SPEED == 0 && player.aniState == ATTACK) {
            player.curFrame = (player.curFrame + 1) % player.numFrames;
        }
        else if (player.aniCounter % 5 == 0 && player.aniState == RUNNING) {
            player.curFrame = (player.curFrame + 1) % player.numFrames;
        }
        else if (player.aniCounter % 5 == 0 && player.aniState == DOUBLEJUMP) {
            player.curFrame = (player.curFrame + 1) % player.numFrames;
        }
        else if (player.aniCounter % 5 == 0 && player.damaged && !dying) {
            if (player.aniState == DAMAGED) {
                player.curFrame = (player.curFrame + 1) % player.numFrames;
            }
            player.damageCounter++;
            if (player.damageCounter > 12) {
                player.damaged = 0;
                player.damageCounter = 0;
            }
        }
        else if (player.aniCounter % 10 == 0) {
            player.curFrame = (player.curFrame + 1) % player.numFrames;
        }
    }
    // this handles the last death animation
    else if (player.curFrame < 2) {
        if (player.aniCounter % 8 == 0) {
            player.curFrame++;
        }
    }
    else if (player.curFrame == 2) {
        if (player.aniCounter % 12 == 0) {
            player.curFrame++;
        }
    }
    else if (player.curFrame <= (player.numFrames + 1)){
        if (player.aniCounter % 10 == 0) {
            player.curFrame++;
        }
    }
    else {
        if (player.aniCounter % 30 == 0) {
            dead = 1;
        }
    }

    player.aniCounter++;

}

void animateEnemies() {
    // go through all the lettuce
    for (int g = 0; g < LETTUCECOUNT; g++) {
        if (lettuce[g].aniCounter % 10 == 0) {
            lettuce[g].curFrame = (lettuce[g].curFrame + 1) % lettuce[g].numFrames;
        }
        lettuce[g].aniCounter++;
    }

    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        if (big_lettuce[g].aniCounter % 10 == 0) {
            big_lettuce[g].curFrame = (big_lettuce[g].curFrame + 1) % big_lettuce[g].numFrames;
        }
        big_lettuce[g].aniCounter++;
    }
}

void animateSlash() {
    if (slash.aniCounter == 6) {
        slash.curFrame++;
    }
    else if (slash.aniCounter == 12) {
        slash.curFrame++;
    }
    else if (slash.aniCounter == 18) {
        slash.curFrame++;
    }
    // this is the last dot, doesn't need to be there long
    else if (slash.aniCounter == 20) {
        slash.curFrame++;
    }
    // if (slash.aniCounter % ATTACK_SPEED == 0) {
    //     slash.curFrame = (slash.curFrame + 1) % slash.numFrames;
    // }
    slash.aniCounter++;
}

// #endregion

// function to check if player is on ground. returns 1 if on ground, 0 if not
int groundCheck(int col, int row, int width, int height) {
    // this is when entity is standing on ground
    if (pCheckCollision(col, row + height + 1)
        || pCheckCollision(col + width, row + height + 1)) {
            return 1;
    }
    return 0;
}

// Only difference from regular is that it &&, so not standing over ledge. returns 1 if on ground, 0 if not
int goblinGroundCheck(int col, int row, int width, int height) {
    // this is when entity is standing on ground
    if (eCheckCollision(col, row + height + 1)
        && eCheckCollision(col + width, row + height + 1)) {
            return 1;
    }
    return 0;
}

// returns 1 if it collides with any other color, besides the base 0x0000 one
int pCheckCollision(int col, int row) {
    // normal collision function
        if (collisionMap[OFFSET(col + (256 * bgIndex), row, MAPWIDTH)]) {
            return 1;
        }
    return 0;
}

int eCheckCollision(int col, int row) {
    // normal collision function
        if (collisionMap[OFFSET(col, row, MAPWIDTH)]) {
            return 1;
        }
    return 0;
}

void hurtPlayer() {
    if (!player.damaged) {
        if (cheating && dashing) {
            return;
        }
        if (dashing && grounded) {
            return;
        }
        playSoundB(sfx_player_hurt_data, sfx_player_hurt_length, 0);
        player.hearts--;
        player.damaged = 1;
    }
    if (player.hearts < 1) {
        gameOver();
    }
}

// i am using this for debugging
void drawFont() {
    // this draws the 'score' text
    // for (int i = 0; i < 5; i++) {
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & ((i * 8))) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + i), 1);
    // }
    // this draws the actual score:
    // int d3 = hOff / 100;
    // int d2 = (hOff % 100) / 10;
    // int d1 = hOff % 10;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (48)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d3), 3);
    //     shadowOAMIndex++;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (56)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d2), 3);
    //     shadowOAMIndex++;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (64)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d1), 3);
    //     shadowOAMIndex++;

    // int c3 = framesInAir / 100;
    // int c2 = (framesInAir % 100) / 10;
    // int c1 = framesInAir % 10;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (148)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + c3), 3);
    //     shadowOAMIndex++;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (156)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + c2), 3);
    //     shadowOAMIndex++;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (164)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + c1), 3);
    //     shadowOAMIndex++;

    // int e3 = player.worldRow / 100;
    // int e2 = (player.worldRow % 100) / 10;
    // int e1 = player.worldRow % 10;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (82)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e3), 3);
    //     shadowOAMIndex++;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (90)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e2), 3);
    //     shadowOAMIndex++;
    //     shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
    //     shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (98)) | ATTR1_TINY;
    //     shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e1), 3);
    //     shadowOAMIndex++;

}

void drawTimer() {
        int e4 = (time_m % 100) / 10;
        int e3 = time_m % 10;
        int e2 = (time_s % 100) / 10;
        int e1 = time_s % 10;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (76)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e4), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (82)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e3), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (92)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e2), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (98)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + e1), 3);
        shadowOAMIndex++;
}

void drawHUD() {
    // hearts
        if (player.hearts >= 1) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (0)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
        if (player.hearts >= 2) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (16)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
        if (player.hearts >= 3) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (32)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
        if (player.hearts >= 4) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (48)) | ATTR1_SMALL;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(6, 6);
            shadowOAMIndex++;
        }
    // score
        int d3 = score / 100;
        int d2 = (score % 100) / 10;
        int d1 = score % 10;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (200)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d3), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (208)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d2), 3);
        shadowOAMIndex++;
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (216)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((15 + d1), 3);
        shadowOAMIndex++;
    // cheeseburger icon
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (224)) | ATTR1_SMALL;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 4);
        shadowOAMIndex++;
        }

// this handles when player loses all lives / hearts, or falls off map
void gameOver() {
    if (!dying) {
        // SOUND - dying (mario lose)
        dying = 1;
        player.aniState = DYING;
        player.curFrame = 0;
        cameraLock = 1;
    }
}