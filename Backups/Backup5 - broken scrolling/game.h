#include <stdio.h>
#include <stdlib.h>
#include "mylib.h"

typedef struct {
    int index;
    unsigned char* collisionMap;
    unsigned char* map;
} MAP;

// the orc will target the player, moving towards their x value. However, they are very stupid and
// only go towards the X value
typedef struct {
    // determines whether to show sprite + compute AI, if it is on camera then yes
    int active;
    int worldRow;
    int worldCol;
    int width;
    int height;
    // sprite animation stuff
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    // AI stuff
    // this marks the goblin as being damaged, so that it decrements lives and can be attacked X frames later
    int damaged;
    int lives;
    int targetX;
    int direction;
    int speed;
    int xRange;
    int yRange;
    } GOBLIN;

typedef struct {
    // screen stuff
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    // animation stuff
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    // whether or not to hide
    int hide;
    // extra util stuff
    int direction;
    int attacking;
    int attackTimer;
    int movementCycle;
    int hearts;
    int damaged;
    int damageCounter;
} PLAYER;

typedef struct {
    // screen stuff
    int worldRow;
    int worldCol;
    // we are using rdel and cdel to determine offset from player
    int rdel;
    int cdel;
    int width;
    int height;
    // animation stuff
    int aniCounter;
    int curFrame;
    int numFrames;
    // whether or not to hide
    int hide;
    // extra util stuff
    int direction;
    int attacking;
    int attackTimer;
} SLASH;

typedef struct {
    int worldRow;
    int worldCol;
    int size;
    int number;
    int active;
} BIGPELLET;

// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 512
#define GRAVITY 1
#define JUMPVEL -5

// number of frames the attack is
#define ATTACK_DURATION 20
#define ATTACK_SPEED 10


// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern PLAYER player;
extern SLASH slash;

extern int pauseVar;
extern int level;

// Prototypes
void initGame();
void updateGame();
void drawGame();
void initPlayer();
void updatePlayer();
void animatePlayer();
void drawPlayer();
void drawFont();
void drawPellets();
int goblinGroundCheck(int col, int row, int width, int height);
int groundCheck(int col, int row, int width, int height);
int checkCollision(int col, int row);
// slash
void initSlash();
void drawSlash();
void animateSlash();
// enemies
void initEnemies();
void updateEnemies();
void drawEnemies();
void animateEnemies();

void initMaps();
// special square root function :)
float Q_rsqrt(float number);

void drawHUD();

void gameOver();
