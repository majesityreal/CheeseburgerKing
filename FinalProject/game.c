#include <math.h>
#include "myLib.h"
#include "game.h"
#include "testmapcollisionmap.h"
#include "collisionmap.h"

// this is the mario map collision map
#include "marioMapCollisionMap.h"
// this is the new tilemap thing
#include "platformerCollision.h"

#include "map1Collision.h"



OBJ_ATTR shadowOAM[128];
PLAYER player;
SLASH slash;

// temp placeholder for the first goblin for testing
GOBLIN goblin1;

int shadowOAMIndex = 0;

short pellets[1024];
// gets the collision map set up
unsigned char* collisionMap = map1CollisionBitmap;

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
enum {IDLE, RUNNING, JUMPUP, JUMPDOWN, ATTACK};

// Initialize the game
// #region init
void initGame() {
    initPlayer();
    initSlash();
    initEnemies();
    gTimer = 0;
    shadowOAMIndex = 0;
}

// Initialize the player
void initPlayer() {
    player.hide = 0;
    player.width = 13;
    player.height = 16;
    player.rdel = 1;
    player.cdel = 3;
    player.movementCycle = 2;

    // Place in the middle of the screen in the world location chosen earlier
    player.worldRow = 60;
    player.worldCol = 20;
    player.aniCounter = 0;
    player.curFrame = 0;
    player.numFrames = 6;
    player.aniState = IDLE;
    // util
    player.direction = 0;
    player.attacking = 0;
    player.attackTimer = 0;
}

void initSlash() {
    // hides by default
    slash.hide = 1;
    slash.width = 12;
    slash.height = 11;
    // FIXME configure this TODO
    slash.rdel = 0;
    slash.cdel = 15;

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
    goblin1.active = 1;
    goblin1.width = 13;
    goblin1.height = 16;

    // Place in the middle of the screen in the world location chosen earlier
    goblin1.worldRow = 96;
    goblin1.worldCol = 60;
    goblin1.aniCounter = 0;
    goblin1.curFrame = 0;
    goblin1.numFrames = 4;
    goblin1.aniState = IDLE;
    // ai
    goblin1.direction = 0;
    goblin1.xRange = 128;
    goblin1.yRange = 96;
    goblin1.speed = 1;
}

// #endregion

// Updates the game each frame
void updateGame() {
    // pauses the game
    if (BUTTON_PRESSED(BUTTON_START) | BUTTON_PRESSED(BUTTON_SELECT)) {
        pauseVar = 1;
    }
	updatePlayer();
    // ^^ update slash is a part of update player, since it is so minor
    updateEnemies();
}

// Draws the game each frame
void drawGame() {
    shadowOAMIndex = 0;
    drawPlayer();
    drawSlash();
    drawEnemies();

    waitForVBlank();

    DMANow(3, shadowOAM, OAM, 128 * 4);

    REG_BG1HOFF = hOff;
    REG_BG1VOFF = vOff;
    // parallax motion babbyyy :)
    REG_BG2HOFF = (hOff / 3);
}

// Handle every-frame actions of the player
void updatePlayer() {
    // TODO - not super happy with gravity implementation so far, jumps are random?

    // FIXME - jump thuds, top right and top left clipping

    // #region yVel + jumping
    grounded = groundCheck(player.worldCol, player.worldRow, player.width, player.height);
    // this ensures no jumpThud glitches
    if (grounded) jumpThud = 0;

    // the check for jumping
    if(BUTTON_PRESSED(BUTTON_UP) && grounded
        && !checkCollision(player.worldCol, player.worldRow - 1)
        && !checkCollision(player.worldCol + player.width, player.worldRow - 1)) {
            // sets y to -4 for upwards movement, gravity will eventually bring it down
            yVel = JUMPVEL;
            // need this
            grounded = 0;
            jumping = 1;
    }

    // loops through pixels above player to check if head collision
        for (int i = 0; i > yVel; i--) {
            if (checkCollision(player.worldCol, player.worldRow + i)
            || checkCollision(player.worldCol + player.width, player.worldRow + i)) {
                // snaps player to ground and resets yVel
                player.worldRow += (i + 1);
                vOff += (i + 1);
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
        if (BUTTON_HELD(BUTTON_UP) && BUTTON_HELD(BUTTON_RIGHT) && yVel > 0) {
            for (int i = 0; i > -2; i--) {
                if (checkCollision(player.worldCol - i, player.worldRow + i)
                || checkCollision(player.worldCol + player.width - i, player.worldRow + i)) {
                    // snaps player to ground and resets yVel
                    yVel = 0;
                    jumping = 0;
                    jumpThud = 1;
                    break;
                }
            }   
        }

    // moves down if in air, handles gravity
    if (!grounded) {
        // loops through pixels below player to check ground, if they are falling (yVel > 0)
        for (int i = 0; i < yVel; i++) {
            if (checkCollision(player.worldCol, player.worldRow + player.height + i)
            || checkCollision(player.worldCol + player.width, player.worldRow + player.height + i)) {
                // snaps player to ground and resets yVel
                player.worldRow += (i - 1);
                vOff += (i - 1);
                yVel = 0;
                grounded = 1;
                break;
            }
        }
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

    // left movement
    if (gTimer % player.movementCycle == 0) {
        if(BUTTON_HELD(BUTTON_LEFT)
            && !checkCollision(player.worldCol - player.cdel, player.worldRow)
            && !checkCollision(player.worldCol - player.cdel, player.worldRow + player.height - 1)) {
            if (player.worldCol >= 0) {
                player.worldCol -= player.cdel;
                if (hOff >= 0 && (player.worldCol - hOff < (SCREENWIDTH / 2))) {
                    // Update background offset variable if the above is true
                    hOff-= player.cdel;
                }
            }
        }
        // right movement
        if(BUTTON_HELD(BUTTON_RIGHT) 
            && !checkCollision(player.worldCol + player.width + player.cdel, player.worldRow)
            && !checkCollision(player.worldCol + player.width + player.cdel, player.worldRow + player.height - 1)) {
            if (player.worldCol <= MAPWIDTH + SCREENWIDTH - 30) {
                player.worldCol += player.cdel;
                if (hOff <= 240 && (player.worldCol - hOff > (SCREENWIDTH / 2))) {
                    // Update background offset variable if the above is true
                    hOff += player.cdel;
                }
            }
        }
    }

    slash.worldCol = player.worldCol + (slash.cdel * ((player.direction * -2) + 1));
    slash.worldRow = player.worldRow;
    animateSlash();
    if (player.attackTimer > 0) {
        // TODO - go through all the enemies
        if (collision(slash.worldCol, slash.worldRow, slash.width, slash.height, goblin1.worldCol, goblin1.worldRow, goblin1.width, goblin1.height)) {
            goblin1.active = 0;
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
        // TODO - add in extra stuff, movement restirction?
    }

    // update the gravity check timer, so gravity is more smooth
    gTimer++;

    animatePlayer();
}

// function to check if entity is on ground. returns 1 if on ground, 0 if not
int groundCheck(int col, int row, int width, int height) {
    // this is when entity is standing on ground
    if (checkCollision(col, row + height + 1)
        || checkCollision(col + width, row + height + 1)) {
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
    if (player.attacking) {
        player.aniState = ATTACK;
    }

    // Change the animation frame every X frames of gameplay for different states
    if(player.aniCounter % ATTACK_SPEED == 0 && player.aniState == ATTACK) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 5 == 0 && player.aniState == RUNNING) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }
    else if (player.aniCounter % 10 == 0) {
        player.curFrame = (player.curFrame + 1) % player.numFrames;
    }

    player.aniCounter++;

    // TODO - fix this part up, for not it is commented out
    // If the pacman aniState is idle, frame is pacman standing
    // if (player.aniState == ATTACK) {
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
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (player.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (player.worldCol - hOff)) | ATTR1_SMALL;
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
            default:
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((player.curFrame * 2), player.aniState * 2);
            break;
        }
    }
    shadowOAMIndex++;
}

void updateEnemies() {
    int xDif = player.worldCol - goblin1.worldCol;
    int yDif = player.worldRow - goblin1.worldRow;

    // checking if player is within range
    if (abs(xDif) < goblin1.xRange && abs(yDif) < goblin1.yRange) {
        // this is effectively 'halfing' the move speed, moving every other frame
        if (gTimer % 2 == 0) {
            if (xDif < 0) {
                if (!checkCollision((goblin1.worldCol - goblin1.speed), goblin1.worldRow) && !checkCollision((goblin1.worldCol - goblin1.speed), goblin1.worldRow + goblin1.height)) {
                    goblin1.worldCol -= goblin1.speed;
                }
            }
            else {
                if (!checkCollision((goblin1.worldCol + goblin1.speed + goblin1.width), goblin1.worldRow)
                && !checkCollision((goblin1.worldCol + goblin1.speed + goblin1.width), goblin1.worldRow + goblin1.height)) {
                    goblin1.worldCol += goblin1.speed;
                }
            }        
        }

    }
    // check for gravity
    if (!groundCheck(goblin1.worldCol, goblin1.worldRow, goblin1.width, goblin1.height)) {
        goblin1.worldRow++;
    }
    animateEnemies();
}

// this method was used in Quake 3 Arena, it is a fast inverse square root calculation
float Q_rsqrt( float number )
{
	long i;
	float x2, y;
	const float threehalfs = 1.5F;

	x2 = number * 0.5F;
	y  = number;
	i  = * ( long * ) &y;                       
	i  = 0x5f3759df - ( i >> 1 );                
	y  = * ( float * ) &i;
	y  = y * ( threehalfs - ( x2 * y * y ) );

	return y;
}

void animateEnemies() {
    if (goblin1.aniCounter % 10 == 0) {
        goblin1.curFrame = (goblin1.curFrame + 1) % goblin1.numFrames;
    }
    goblin1.aniCounter++;
}

void drawEnemies() {
    if (!goblin1.active) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
        // the reason vOff and hOff are included in here is to keep them according to the camera
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (goblin1.worldRow - vOff)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (goblin1.worldCol - hOff)) | ATTR1_SMALL;
        // if player is facing left, flip goblin1 to left
        if (goblin1.direction) {
            shadowOAM[shadowOAMIndex].attr1 |= ATTR1_HFLIP;
        }
        // on spritesheet, goblin1 is starting at tile (8,8) in 8x coordinates, which equates to + 3, 4
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((goblin1.curFrame + 9), 2) * 2;
    }
    shadowOAMIndex++;}

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

// returns 1 if it collides with any other color, besides the base 0x0000 one
int checkCollision(int col, int row) {
    if (collisionMap[OFFSET(col, row, MAPWIDTH)]) {
        return 1;
    }
    return 0;
}

// TODO - add a specific color collision check

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