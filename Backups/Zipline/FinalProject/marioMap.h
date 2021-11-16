
//{{BLOCK(marioMap)

//======================================================================
//
//	marioMap, 256x256@4, 
//	+ palette 16 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 32 + 32768 + 2048 = 34848
//
//	Time-stamp: 2021-11-15, 22:41:23
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MARIOMAP_H
#define GRIT_MARIOMAP_H

#define marioMapTilesLen 32768
extern const unsigned short marioMapTiles[16384];

#define marioMapMapLen 2048
extern const unsigned short marioMapMap[1024];

#define marioMapPalLen 32
extern const unsigned short marioMapPal[16];

#endif // GRIT_MARIOMAP_H

//}}BLOCK(marioMap)
