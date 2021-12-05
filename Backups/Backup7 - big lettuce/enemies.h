#define LETTUCECOUNT 5
#define BIGLETTUCECOUNT 3

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
    } LETTUCE;

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
    int xRange;
    int yRange;
    // shoot vars
    int shootSpeed;
    int shootTimer;
    int shooting;
    } BIG_LETTUCE;

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
    int curFrame;
    int numFrames;

    int direction;
    int speed;
    } BL_BULLET;

    void initEnemies();
    void drawEnemies();
    void animateEnemies();
    void updateEnemies();
