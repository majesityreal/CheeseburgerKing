#include <math.h>
#include "myLib.h"
#include "game.h"
#include "testmapcollisionmap.h"
#include "collisionmap.h"

// this is the mario map collision map
#include "marioMapCollisionMap.h"

OBJ_ATTR shadowOAM[128];
PLAYER player;

// temp placeholder for the first goblin for testing
GOBLIN goblin1;

short pellets[1024];
// gets the collision map set up
unsigned char* collisionMap = marioMapCollisionMapBitmap;

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

// detects if player hits something above while jumping
int jumpThud = 0;

// velocity in the y axis
int yVel = 0;
int framesInAir = 0;

// gravity timer, for falling velocity
int gTimer = 0;

// Pacman animation states for aniState
enum {IDLE, RUNNING, PACRIGHT, PACLEFT, PACIDLE};

// Initialize the game
// #region init
void initGame() {
    initPlayer();
    gTimer = 0;
}

// Initialize the player
void initPlayer() {
    player.hide = 0;
    player.width = 16;
    player.height = 20;
    player.rdel = 1;
    player.cdel = 1;

    // Place in the middle of the screen in the world location chosen earlier
    player.worldRow = 60;
    player.worldCol = 20;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 4;
    player.aniState = IDLE;
}

// #endregion

// Updates the game each frame
void updateGame() {
    // pauses the game
    if (BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 1;
    }
	updatePlayer();
    updateEnemies();
}

// Draws the game each frame
void drawGame() {

    drawPlayer();
    drawEnemies();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
}

// Handle every-frame actions of the player
void updatePlayer() {
    // TODO - not super happy with gravity implementation so far, jumps are random?

    // FIXME - jump thuds
    // FIXME - sometimes the player falls into ground :(

    // #region yVel + jumping
    grounded = groundCheck();

    // the check for jumping
    if(BUTTON_PRESSED(BUTTON_UP) && grounded
        && !collisionMap[OFFSET(player.worldCol, player.worldRow - 1, MAPWIDTH)]
        && !collisionMap[OFFSET(player.worldCol + player.width, player.worldRow - 1, MAPWIDTH) ]) {
            // sets y to -4 for upwards movement, gravity will eventually bring it down
            yVel = JUMPVEL;
            // need this
            grounded = 0;
            jumping = 1;
    }

    // loops through pixels above player to check if head collision
        for (int i = 0; i > yVel; i--) {
            if (collisionMap[OFFSET(player.worldCol, player.worldRow + i, MAPWIDTH)]
            || collisionMap[OFFSET(player.worldCol + player.width, player.worldRow + i, MAPWIDTH)]) {
                // snaps player to ground and resets yVel
                player.worldRow += (i + 1);
                vOff += (i + 1);
                yVel = 0;
                jumping = 0;
                jumpThud = 1;
                player.worldCol++;
                // resets so it isn't as snappy
                framesInAir = 0;
                break;
            }
        }


        // TODO - UNINTENTIONAL ZIPLINE
        // hardcoded upright check
        if (BUTTON_HELD(BUTTON_UP) && BUTTON_HELD(BUTTON_RIGHT)) {
            for (int i = 0; i > -2; i--) {
                if (collisionMap[OFFSET(player.worldCol - i, player.worldRow + i, MAPWIDTH)]
                || collisionMap[OFFSET(player.worldCol + player.width - i, player.worldRow + i, MAPWIDTH)]) {
                    // snaps player to ground and resets yVel
                    player.worldRow += (i + 1);
                    vOff += (i + 1);
                    yVel = 0;
                    jumping = 0;
                    jumpThud = 1;
                    player.worldCol++;
                    // resets so it isn't as snappy
                    framesInAir = 0;
                    break;
                }
        }
        }

    // loops through pixels below player to check ground, if they are falling (yVel > 0)
    for (int i = 0; i < yVel; i++) {
        if (collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + i, MAPWIDTH)]
        || collisionMap[OFFSET(player.worldCol + player.width, player.worldRow + player.height + i, MAPWIDTH)]) {
            // snaps player to ground and resets yVel
            player.worldRow += (i - 2);
            vOff += (i - 2);
            yVel = 0;
            break;
        }
    }

    // moves down if in air, handles gravity
    if (!grounded) {
            if (BUTTON_HELD(BUTTON_UP) && jumping && !jumpThud) {
                yVel = JUMPVEL + (GRAVITY * framesInAir);
            }
            else {
                if (jumpThud || !BUTTON_PRESSED(BUTTON_UP)) {
                    yVel = (GRAVITY * framesInAir);
                }
                else {
                    yVel = ((JUMPVEL * 3) / 4) + (GRAVITY * framesInAir);
                }
                // this prevents pressing jump again midair
                jumping = 0;
            }
            // makes sure gravity never gets too insane
            yVel = fmin(3, yVel);
            // smooths out air frames
            if (gTimer % 4 == 0) {
            framesInAir++;
            }
        // this adds in button holding to affect jump height. (&& jumping) is to prevent quick release and press again

    }

    // if on the ground, shouldn't have vertical motionn
    if (grounded) {
        yVel = 0;
        framesInAir = 0;
        jumping = 0;
    }

        // moves the y vel accordingly
    player.worldRow += yVel;

    // moves camera down if player is moving down
    if (vOff < MAPHEIGHT && (player.worldRow - vOff >= SCREENHEIGHT / 2) && (yVel > 0)) {
        vOff += yVel;
    }
    
    // moves camera up if player is moving up
    if (vOff > 0 && (player.worldRow - vOff <= SCREENHEIGHT / 2) && (yVel < 0)) {
        vOff += yVel;
    }

    // #endregion

    // if(BUTTON_HELD(BUTTON_DOWN) 
    //     && !collisionMap[OFFSET(pacman.worldCol, pacman.worldRow + pacman.height + 1, MAPWIDTH)]
    //     && !collisionMap[OFFSET(pacman.worldCol + pacman.width, pacman.worldRow + pacman.height + 1, MAPWIDTH)]) {
    //     if (pacman.worldRow <= MAPHEIGHT + SCREENHEIGHT - 16) {
    //         pacman.worldRow++;
    //         if (vOff < MAPHEIGHT && (pacman.worldRow - vOff >= SCREENHEIGHT / 2)) {
    //             vOff++;
    //         }
    //     }
    // }
    if(BUTTON_HELD(BUTTON_LEFT)
        && !collisionMap[OFFSET(player.worldCol - 1, player.worldRow, MAPWIDTH)]
        && !collisionMap[OFFSET(player.worldCol - 1, player.worldRow + player.height - 1, MAPWIDTH)]) {
        if (player.worldCol >= 0) {
            player.worldCol--;
            if (hOff >= 0 && (player.worldCol - hOff < (SCREENWIDTH / 2))) {
                // Update background offset variable if the above is true
                hOff--;
            }
        }
    }
    if(BUTTON_HELD(BUTTON_RIGHT) 
        && !collisionMap[OFFSET(player.worldCol + player.width + 1, player.worldRow, MAPWIDTH)]
        && !collisionMap[OFFSET(player.worldCol + player.width + 1, player.worldRow + player.height - 1, MAPWIDTH)]) {
        if (player.worldCol <= MAPWIDTH + SCREENWIDTH - 30) {
            player.worldCol++;
            if (hOff <= 240 && (player.worldCol - hOff > (SCREENWIDTH / 2))) {
                // Update background offset variable if the above is true
                hOff++;
            }
        }
    }

    // update the gravity check timer, so gravity is more smooth
    gTimer++;

    // TODO add player animations in
    animatePlayer();
}

// function to check if player is on ground. returns 0 if there is ground, 1 if there is not
int groundCheck() {
    // this is when player is standing on ground
    if (collisionMap[OFFSET(player.worldCol, player.worldRow + player.height + 1, MAPWIDTH)]
        && collisionMap[OFFSET(player.worldCol + player.width, player.worldRow + player.height + 1, MAPWIDTH)]) {
            // need to reset this before anything else
            jumpThud = 0;
            return 1;
    }
    return 0;
}

// TODO - fix up for player animation states (attack, move left/right, jump)
// Handle player animation states
void animatePlayer() {

    // Set previous state to current state, defaults to idle if no button held
    player.prevAniState = player.aniState;
    player.aniState = IDLE;

    // Change the animation frame every 10 frames of gameplay
    if(player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    // Control movement and change animation state
    // if(BUTTON_HELD(BUTTON_UP))
    //     player.aniState = PACUP;
    // if(BUTTON_HELD(BUTTON_DOWN))
    //     player.aniState = PACDOWN;
    if(BUTTON_HELD(BUTTON_LEFT)) {
        player.aniState = RUNNING;
        player.direction = 1;
    }
    if(BUTTON_HELD(BUTTON_RIGHT)) {
        player.aniState = RUNNING;
        player.direction = 0;
    }

        player.aniCounter++;

    // TODO - fix this part up, for not it is commented out
    // If the pacman aniState is idle, frame is pacman standing
    // if (player.aniState == PACIDLE) {
    //     player.curFrame = 0;
    //     player.aniCounter = 0;
    //     player.aniState = player.prevAniState;
    // } else {
    //     player.aniCounter++;
    // }
}

// Draw the player
void drawPlayer() {
    if (player.hide) {
        shadowOAM[0].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[0].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_TALL;
        shadowOAM[0].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_MEDIUM;
        // if player is facing left, flip sprite to left
        if (player.direction) {
            shadowOAM[0].attr1 |= ATTR1_HFLIP;
        }
        if (player.aniState == IDLE) {
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, (player.curFrame * 4));
        }
        // TODO, change based on the animation row state thingy
        else
            shadowOAM[0].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(player.aniState * 2, (player.curFrame * 4));
    }
}

void updateEnemies() {
    int range = 0;
    if (range < goblin1.targetRange) {

    }

    animateEnemies();
}

void animateEnemies() {

}

void drawEnemies() {

}

void drawFont() {
    // this draws the 'score' text
    for (int i = 0; i < 5; i++) {
        shadowOAM[2 + i].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[2 + i].attr1 = (COLMASK & ((i * 8))) | ATTR1_TINY;
        shadowOAM[2 + i].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + i), 1);
    }
    // this draws the actual score
    int d3 = yVel / 100;
    int d2 = (yVel % 100) / 10;
    int d1 = abs(yVel);
        shadowOAM[7].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[7].attr1 = (COLMASK & (40)) | ATTR1_TINY;
        shadowOAM[7].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + d3), 0);

        shadowOAM[8].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[8].attr1 = (COLMASK & (48)) | ATTR1_TINY;
        shadowOAM[8].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + d2), 0);

        shadowOAM[9].attr0 = (ROWMASK & 0) | ATTR0_SQUARE;
        shadowOAM[9].attr1 = (COLMASK & (56)) | ATTR1_TINY;
        shadowOAM[9].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10 + d1), 0);
}