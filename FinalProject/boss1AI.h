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

} BOSS1;

extern BOSS1 boss;

void initBoss1();
void updateBoss1();
void drawBoss1();
void animateBoss1();

void spawnLettuce();
void spawnBigLettuce();