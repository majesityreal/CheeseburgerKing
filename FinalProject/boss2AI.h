#define BOSS2_LIVES 24

typedef struct {
    int lives;
    int worldCol;
    int worldRow;
    int width;
    int height;
    int eyesOffsetX;
    int eyesOffsetY;
    int state;

    int damaged;

    int direction;

    int hide;

    int aniCounter;

} BOSS2;

typedef struct {
    // determines whether to show sprite + compute AI, if it is on camera then yes
    int active;
    int worldRow;
    int worldCol;
    int width;
    int height;
    // sprite animation stuff
    int aniCounter;
    int curFrame;
    int numFrames;

    int direction;
    int speed;
    } KNIFE;


extern BOSS2 boss2;

void initBoss2();
void updateBoss2();
void drawBoss2();
void animateBoss2();

void initKnives();
void updateKnives();

void drawHealthBar2();

void spawnLettuce2();
void spawnBigLettuce2();