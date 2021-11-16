# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern volatile unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct
{
    u16 tileimg[8192];
} charblock;


typedef struct
{
    u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();




typedef struct
{
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 159 "myLib.h"
void hideSprites();






typedef struct
{
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 202 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 212 "myLib.h"
typedef volatile struct
{
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 253 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 2 "game.c" 2
# 1 "game.h" 1
# 1 "mylib.h" 1
# 2 "game.h" 2

typedef struct {
    int worldRow;
    int worldCol;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
    int targetX;
    int targetY;
    int direction;
    } GHOST;

typedef struct {
    int worldRow;
    int worldCol;
    int size;
    int number;
    int active;
} BIGPELLET;






extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern ANISPRITE pacman;

extern int lives;
extern int pauseVar;
extern int level;


void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void drawFont();
void drawPellets();
int groundCheck();
# 3 "game.c" 2
# 1 "testmapcollisionmap.h" 1
# 21 "testmapcollisionmap.h"
extern const unsigned short testmapcollisionmapBitmap[131072];


extern const unsigned short testmapcollisionmapPal[256];
# 4 "game.c" 2
# 1 "collisionmap.h" 1
# 21 "collisionmap.h"
extern const unsigned short collisionMapBitmap[32768];


extern const unsigned short collisionMapPal[256];
# 5 "game.c" 2

OBJ_ATTR shadowOAM[128];
ANISPRITE pacman;
short pellets[1024];

unsigned char* collisionMap = collisionMapBitmap;

int score = 0;
int pelletsEaten = 0;
int level = 1;

int lives = 3;

int blueMode = 0;
int blueTimer = 0;


int pauseVar = 0;


int hOff;
int vOff;


int grounded = 0;


int yVel = 1;


int gTimer = 0;


enum {PACDOWN, PACUP, PACRIGHT, PACLEFT, PACIDLE};






void initGame() {
    initPlayer();
    gTimer = 0;
}


void initPlayer() {
    pacman.hide = 0;
    pacman.width = 8;
    pacman.height = 8;
    pacman.rdel = 1;
    pacman.cdel = 1;


    pacman.worldRow = 60;
    pacman.worldCol = 90;
    pacman.aniCounter = 0;
    pacman.curFrame = 0;
    pacman.numFrames = 3;
    pacman.aniState = PACDOWN;
}




void updateGame() {

    if ((!(~(oldButtons) & ((1 << 3))) && (~buttons & ((1 << 3)))) | (!(~(oldButtons) & ((1 << 2))) && (~buttons & ((1 << 2))))) {
        pauseVar = 1;
    }
 updatePlayer();

    gTimer++;
}


void drawGame() {

    drawPlayer();

    waitForVBlank();

    DMANow(3, shadowOAM, ((OBJ_ATTR *)(0x7000000)), 128 * 4);

    (*(volatile unsigned short *)0x04000014) = hOff;
    (*(volatile unsigned short *)0x04000016) = vOff;
}


void updatePlayer() {




    grounded = groundCheck();

    if (!grounded && (gTimer % 30 == 0)) {
        yVel++;
    }


    if (grounded) {
        yVel = 0;
    }


    if((!(~(oldButtons) & ((1 << 6))) && (~buttons & ((1 << 6)))) && grounded
        && !collisionMap[((pacman.worldRow - 1) * (256) + (pacman.worldCol))]
        && !collisionMap[((pacman.worldRow - 1) * (256) + (pacman.worldCol + pacman.width)) ]) {

            yVel = -4;

            grounded = 0;
    }


            pacman.worldRow += yVel;

            if ((vOff < 256 && (pacman.worldRow - vOff >= 160 / 2)) || (vOff > 0 && (pacman.worldRow - vOff <= 160 / 2))) {
                vOff += yVel;
            }
# 139 "game.c"
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5)))
        && !collisionMap[((pacman.worldRow) * (256) + (pacman.worldCol - 1))]
        && !collisionMap[((pacman.worldRow + pacman.height) * (256) + (pacman.worldCol - 1))]) {
        if (pacman.worldCol >= 0) {
            pacman.worldCol--;
            if (hOff >= 0 && (pacman.worldCol - hOff < (240 / 2))) {

                hOff--;
            }
        }
    }
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4)))
        && !collisionMap[((pacman.worldRow) * (256) + (pacman.worldCol + pacman.width + 1))]
        && !collisionMap[((pacman.worldRow + pacman.height) * (256) + (pacman.worldCol + pacman.width + 1))]) {
        if (pacman.worldCol <= 256 + 240 - 30) {
            pacman.worldCol++;
            if (hOff <= 240 && (pacman.worldCol - hOff > (240 / 2))) {

                hOff++;
            }
        }
    }



}


int groundCheck() {

    if (!collisionMap[((pacman.worldRow + pacman.height + 1) * (256) + (pacman.worldCol))]
        && !collisionMap[((pacman.worldRow + pacman.height + 1) * (256) + (pacman.worldCol + pacman.width))]) {
            return 0;
    }
    return 1;
}



void animatePlayer() {


    pacman.prevAniState = pacman.aniState;
    pacman.aniState = PACIDLE;


    if(pacman.aniCounter % 10 == 0) {
        pacman.curFrame = (pacman.curFrame + 1) % pacman.numFrames;
    }


    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 6))))
        pacman.aniState = PACUP;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 7))))
        pacman.aniState = PACDOWN;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 5))))
        pacman.aniState = PACLEFT;
    if((~((*(volatile unsigned short *)0x04000130)) & ((1 << 4))))
        pacman.aniState = PACRIGHT;


    if (pacman.aniState == PACIDLE) {
        pacman.curFrame = 0;
        pacman.aniCounter = 0;
        pacman.aniState = pacman.prevAniState;
    } else {
        pacman.aniCounter++;
    }
}


void drawPlayer() {
    if (pacman.hide) {
        shadowOAM[0].attr0 |= (2 << 8);
    } else {

        shadowOAM[0].attr0 = (0xFF & (pacman.worldRow - vOff)) | (0 << 14);
        shadowOAM[0].attr1 = (0x1FF & (pacman.worldCol - hOff)) | (0 << 14);
        if (pacman.aniState == PACDOWN) {
            shadowOAM[0].attr2 = ((0) << 12) | ((0)*32 + (0));
        }
        else
            shadowOAM[0].attr2 = ((0) << 12) | ((0)*32 + (0));
    }
}

void drawFont() {

    for (int i = 0; i < 5; i++) {
        shadowOAM[2 + i].attr0 = (0xFF & 0) | (0 << 14);
        shadowOAM[2 + i].attr1 = (0x1FF & ((i * 8))) | (0 << 14);
        shadowOAM[2 + i].attr2 = ((0) << 12) | ((1)*32 + ((10 + i)));
    }

    int d3 = score / 100;
    int d2 = (score % 100) / 10;
    int d1 = score % 10;
        shadowOAM[7].attr0 = (0xFF & 0) | (0 << 14);
        shadowOAM[7].attr1 = (0x1FF & (40)) | (0 << 14);
        shadowOAM[7].attr2 = ((0) << 12) | ((0)*32 + ((10 + d3)));

        shadowOAM[8].attr0 = (0xFF & 0) | (0 << 14);
        shadowOAM[8].attr1 = (0x1FF & (48)) | (0 << 14);
        shadowOAM[8].attr2 = ((0) << 12) | ((0)*32 + ((10 + d2)));

        shadowOAM[9].attr0 = (0xFF & 0) | (0 << 14);
        shadowOAM[9].attr1 = (0x1FF & (56)) | (0 << 14);
        shadowOAM[9].attr2 = ((0) << 12) | ((0)*32 + ((10 + d1)));
}
