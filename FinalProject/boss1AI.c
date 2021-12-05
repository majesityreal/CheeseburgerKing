#include "mylib.h"
#include "game.h"
#include "boss1AI.h"

#include "sin.notquitec"


int timer;

int beginning;

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
int pikachuFramecount = 6;
int pikachuFrames[] = {0, 8, 16, 24, 256, 264};
  int currentFrame = 0;

// boss behaviors
enum {ROLLING, HOVERING, DIZZY};
int currentState;

void initBoss1() {
    timer = 0;
    boss.lives = 50;
    beginning = 0;
    hoverX = 104;
    hoverY = 45;
    boss.worldRow = hoverY;
    boss.worldCol = hoverX;
    boss.eyesOffsetX = 8;
    boss.eyesOffsetY = 6;
    boss.state = HOVERING;
    boss.aniCounter = 0;
    // left
    boss.direction = 0;
}

void updateBoss1() {
    timer++;
    time++;
        if (time % 10 == 0) currentFrame = (currentFrame + 1) % pikachuFramecount;

    // 3 seconds in
    if (timer > 180 && beginning) {
        spawnLettuce();
        timer = 0;
        beginning = 1;
    }
    // 6.5 seconds in
    if (timer > 150) {
        timer = 0;
        boss.state = ROLLING;
        boss.direction = rand() % 2;
        boss.worldRow = 113;
        if (boss.direction) { // right motion
            boss.worldCol = 17;
        }
        else { // left motion
            boss.worldCol = 192;
        }
    }
}

void drawBoss1() {
    if (boss.hide) {
        shadowOAM[shadowOAMIndex].attr0 |= ATTR0_HIDE;
    } else {
            // EYES - they purposely are static
            shadowOAM[shadowOAMIndex].attr0 = (ROWMASK & (boss.worldRow + boss.eyesOffsetY)) | ATTR0_SQUARE;
            shadowOAM[shadowOAMIndex].attr1 = (COLMASK & (boss.worldCol + boss.eyesOffsetX)) | ATTR1_MEDIUM;
            shadowOAM[shadowOAMIndex].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((12), 10) * 2;
            shadowOAMIndex++;

        if (boss.state == ROLLING) {
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
                lettuce[g].lives = 0;
                return;
            }
            else {
                lettuce[g].active = 1;
                lettuce[g].worldRow = 80;
                lettuce[g].worldCol = 200;
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
                big_lettuce[g].worldRow = 137;
                big_lettuce[g].worldCol = 10;
                return;
            }
            else {
                big_lettuce[g].active = 1;
                big_lettuce[g].worldRow = 137;
                big_lettuce[g].worldCol = 210;
                counter++;
            }
        }
    }
}