
//{{BLOCK(boss2)

//======================================================================
//
//	boss2, 2048x256@4, 
//	+ palette 256 entries, not compressed
//	+ 22 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 256x32 
//	Total size: 512 + 704 + 16384 = 17600
//
//	Time-stamp: 2021-12-07, 04:28:15
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_BOSS2_H
#define GRIT_BOSS2_H

#define boss2TilesLen 704
extern const unsigned short boss2Tiles[352];

#define boss2MapLen 16384
extern const unsigned short boss2Map[8192];

#define boss2PalLen 512
extern const unsigned short boss2Pal[256];

#endif // GRIT_BOSS2_H

//}}BLOCK(boss2)
