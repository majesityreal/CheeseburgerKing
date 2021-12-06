#include "mylib.h"
#include "game.h"
#include "boss1AI.h"

#include "sin.notquitec"


int timer;
int damageTimer = 0;

// vars for states

int roundCounter;
int rollCounter;
int hoverCounter;

int hoverX;
int hoverY;


typedef struct
{
    u16 fill0[3];  // leave gaps for the normal OAM attrs
    short a;       // make sure they're signed (-sin(x), etc.)!
    u16 fill1[3];
    short b;
    u16 fill2[3];
    short c;
    u16 fill3[3];
    short d;
} OBJ_AFFINE;

OBJ_AFFINE *SHADOW_OAM_AFF = (OBJ_AFFINE*)shadowOAM;

BOSS1 boss;

int time = 0;
int currentFrame = 0;

// boss behaviors
enum {ROLLING, HOVERING, DIZZY};
int currentState;

void initBoss1() {
    timer = 0;
    boss.lives = BOSS_LIVES;
    hoverX = 104;
    hoverY = 45;
    boss.worldRow = hoverY;
    boss.worldCol = hoverX;
    boss.eyesOffsetX = 8;
    boss.eyesOffsetY = 6;
    boss.state = HOVERING;
    boss.aniCounter = 0;
    boss.width = 32;
    boss.height = 32;
    // left
    boss.direction = 0;
    rollCounter = 0;
    hoverCounter = 0;
    roundCounter = 0;
}

void updateBoss1() {
    timer++;
    time++;
    // TODO - do something special when the boss dies???
    if (boss.lives <= 0) {
        boss.hide = 1;
        currMap++;
        initGame();
    }

    if (collision(boss.worldCol, boss.worldRow, boss.width, boss.height, player.worldCol, player.worldRow, player.width, player.height)) {
        if (!player.damaged) {
            player.damaged = 1;
            player.hearts--;
        }
    }

    if (boss.damaged) {
        damageTimer++;
        if (damageTimer > 20) {
            damageTimer = 0;
            boss.damaged = 0;
        }
    }

    // 6.5 seconds in
    if (timer > 150 && rollCounter <= 2 && boss.state == ROLLING) {
        timer = 0;
        rollCounter++;
        boss.direction = rand() % 2;
        boss.worldRow = 113;
        if (boss.direction) { // right motion
            boss.worldCol = 17;
        }
        else { // left motion
            boss.worldCol = 192;
        }
    }

    if (rollCounter > 2 && boss.state == ROLLING) {
        rollCounter = 0;
        roundCounter++;
        boss.state = HOVERING;
        boss.worldRow = hoverY;
        boss.worldCol = hoverX;
    }

    if (timer > 250 && hoverCounter <= 2 && boss.state == HOVERING) {
        timer = 0;
        hoverCounter++;
        if (roundCounter > 0 && hoverCounter == 1) {
            spawnBigLettuce();
        }
        else {
            spawnLettuce();
        }
    }

    if (hoverCounter > 2 && boss.state == HOVERING) {
        hoverCounter = 0;
        boss.state = ROLLING;
        boss.worldRow = hoverY;
        boss.worldCol = hoverX;
    }

    if (boss.state == ROLLING) {
        int direction = (boss.direction * 2) - 1;
        if (rollCounter == 0) {
            boss.worldCol += direction * 2;
            timer++;
            return;
        }
        if (timer < 15) {
            boss.worldCol += direction;
        }
        else {
            boss.worldCol += 2 * direction;
        }

    }
}

// TODO - add in damaged animation for visual indicator to player
void drawBoss1() {
    if (boss.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
            // EYES - they purposely are static
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss.worldRow + boss.eyesOffsetY)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss.worldCol + boss.eyesOffsetX)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 10) * 2;
            shadowOAMIndex++;
        if (boss.damaged) {
            if (time % 10 < 5) {
                shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss.worldRow)) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss.worldCol)) | ATTR1_MEDIUM;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((5), 7) * 4;
                shadowOAMIndex++;
            }
            else {
                shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss.worldRow)) | ATTR0_SQUARE;
                shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss.worldCol)) | ATTR1_MEDIUM;
                shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((5), 6) * 4;
                shadowOAMIndex++;
            }

        }
        else if (boss.state == ROLLING) {
            shadowOAM[shadowOAMIndex].attr0 = ATTR0_AFFINE | (ROWMASK & (boss.worldRow)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss.worldCol)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((10), 10) * 2;

            int Sx = 1;
            int Sy = 1;
            SHADOW_OAM_AFF[0].a = sin_lut_fixed8[(time + 90) % 360] * Sx;
            SHADOW_OAM_AFF[0].b = -sin_lut_fixed8[time  % 360] * Sx;
            SHADOW_OAM_AFF[0].c = sin_lut_fixed8[time  % 360] * Sy;
            SHADOW_OAM_AFF[0].d = sin_lut_fixed8[(time + 90)  % 360] * Sy;
            shadowOAMIndex++;

        }
        else {
            // the reason vOff and hOff are included in here is to keep them according to the camera
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss.worldRow)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss.worldCol)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(4) | ATTR2_TILEID((5), 5) * 4;
            shadowOAMIndex++;
            
        }
    }
    drawHealthBar();
}

void drawHealthBar() {
    if (!(boss.lives > 0)) {
        return;
    }
    int startingCol = 72;
    // sliver of health for beginning, otherwise its full
    if (boss.lives == 1) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((13), 7);
        shadowOAMIndex++;
    }
    else {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol)) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((10), 6);
        shadowOAMIndex++;
    }

    for (int i = 1; i < 8; i++) {
        // puts full middle bar
        if (boss.lives >= 2 * (i + 1)) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + 8 * i)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((11), 6);
            shadowOAMIndex++;
        }
        // half bar
        else if (boss.lives == (2 * i) + 1) {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + 8 * i)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((13), 6);
            shadowOAMIndex++;
        }
        // empty bar
        else {
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + 8 * i)) | ATTR1_TINY;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((11), 7);
            shadowOAMIndex++;
        }

    }

    int end = (BOSS_LIVES / 2) - 1;

    // the end of the health bar
    if (boss.lives == BOSS_LIVES) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + (8 * end))) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 6);
        shadowOAMIndex++;
    }
    else if (boss.lives == BOSS_LIVES - 1) {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + (8 * end))) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((14), 6);
        shadowOAMIndex++;
    }
    else {
        shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (15)) | ATTR0_SQUARE;
        shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (startingCol + (8 * end))) | ATTR1_TINY;
        shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 7);
        shadowOAMIndex++;
    }
            

}

void animateBoss1() {
    if (boss.state == HOVERING) {
        if (boss.aniCounter % 10 == 0) {
            switch (boss.worldRow) {
                case 46:
                    boss.worldRow--;
                break;
                case 45:
                    if (boss.aniCounter % 3 == 0) {
                        boss.worldRow--;
                    }
                    else {
                        boss.worldRow++;
                    }
                break;
                case 44:
                    boss.worldRow++;
                break;
            }
        }
    }
    boss.aniCounter++;
}

int between(int val, int x, int y) {
    if (val >= x && val <= y) {
        return 1;
    }
    else {
        return 0;
    }
}

void spawnLettuce() {
    int counter = 0;
    for (int g = 0; g < LETTUCECOUNT; g++) {
        if (!lettuce[g].active) {
            if (counter == 1) {
                lettuce[g].active = 1;
                lettuce[g].worldRow = 80;
                lettuce[g].worldCol = 40;
                lettuce[g].aniState = 1;
                lettuce[g].lives = 0;
                return;
            }
            else {
                lettuce[g].active = 1;
                lettuce[g].worldRow = 80;
                lettuce[g].worldCol = 200;
                lettuce[g].aniState = 1;
                lettuce[g].lives = 0;
                counter++;
            }
        }
    }
}

void spawnBigLettuce() {
    int counter = 0;
    for (int g = 0; g < BIGLETTUCECOUNT; g++) {
        if (!big_lettuce[g].active) {
            if (counter == 1) {
                big_lettuce[g].active = 1;
                big_lettuce[g].worldRow = 120;
                big_lettuce[g].worldCol = 10;
                big_lettuce[g].lives = 2;
                return;
            }
            else {
                big_lettuce[g].active = 1;
                big_lettuce[g].worldRow = 120;
                big_lettuce[g].worldCol = 210;
                big_lettuce[g].lives = 2;
                counter++;
            }
        }
    }
}