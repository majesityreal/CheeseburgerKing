#include <stdio.h>
#include <stdlib.h>
#include "mylib.h"


// Constants
#define MAPHEIGHT 256
#define MAPWIDTH 2048
#define GRAVITY 1
#define JUMPVEL -5
#define PARALLAXFACTOR 3

#define GOBLINCOUNT 5

// number of frames the attack is
#define ATTACK_DURATION 20
#define ATTACK_SPEED 10

// the orc will target the player, moving towards their x value. However, they are very stupid and
// only go towards the X value
typedef struct {
    // determines whether to show sprite + compute AI, if it is on camera then yes
    int active;
    int onScreen;
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
    int index;
    unsigned char* collisionMap;
    unsigned char* map;
    int startingXPos;
    int startingYPos;
    int doorX;
    int doorY;
    int doorWidth;
    int doorHeight;
    GOBLIN goblins[GOBLINCOUNT];
} MAP;

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
    // we are using rdel and cdel to determine offset from player (for animations)
    int rdel;
    int cdel;
    int width;
    int height;
    int hitboxCDel;
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




// Variables
extern int hOff;
extern int vOff;
extern OBJ_ATTR shadowOAM[128];
extern PLAYER player;
extern SLASH slash;

extern int pauseVar;
extern int level;

// int to track whether player has died yet
extern int dead;

// Prototypes
void initGame();

void initMaps();
void initPlayer();
void initSlash();
void initEnemies();

int goblinGroundCheck(int col, int row, int width, int height);
int groundCheck(int col, int row, int width, int height);
int pCheckCollision(int col, int row);
int eCheckCollision(int col, int row);

void drawGame();
void drawPlayer();
void drawFont();
void drawPellets();
void drawSlash();
void drawEnemies();
void drawHUD();

void animateSlash();
void animatePlayer();
void animateEnemies();

void updateEnemies();
void updateMap();
void updateGame();
void updatePlayer();

void gameOver();