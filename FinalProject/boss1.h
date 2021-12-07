
//{{BLOCK(boss1)

//======================================================================
//
//	boss1, 2048x256@4, 
//	+ palette 256 entries, not compressed
//	+ 25 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 256x32 
//	Total size: 512 + 800 + 16384 = 17696
//
//	Time-stamp: 2021-12-06, 20:36:02
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BOSS1_H
#define GRIT_BOSS1_H

#define boss1TilesLen 800
extern const unsigned short boss1Tiles[400];

#define boss1MapLen 16384
extern const unsigned short boss1Map[8192];

#define boss1PalLen 512
extern const unsigned short boss1Pal[256];

#endif // GRIT_BOSS1_H

//}}BLOCK(boss1)
