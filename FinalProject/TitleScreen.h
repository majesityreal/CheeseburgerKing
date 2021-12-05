
//{{BLOCK(TitleScreen)

//======================================================================
//
//	TitleScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 393 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 12576 + 2048 = 15136
//
//	Time-stamp: 2021-12-05, 15:32:42
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESCREEN_H
#define GRIT_TITLESCREEN_H

#define TitleScreenTilesLen 12576
extern const unsigned short TitleScreenTiles[6288];

#define TitleScreenMapLen 2048
extern const unsigned short TitleScreenMap[1024];

#define TitleScreenPalLen 512
extern const unsigned short TitleScreenPal[256];

#endif // GRIT_TITLESCREEN_H

//}}BLOCK(TitleScreen)
