
//{{BLOCK(map1)

//======================================================================
//
//	map1, 2048x256@4, 
//	+ palette 256 entries, not compressed
//	+ 47 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 256x32 
//	Total size: 512 + 1504 + 16384 = 18400
//
//	Time-stamp: 2021-12-04, 19:06:57
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP1_H
#define GRIT_MAP1_H

#define map1TilesLen 1504
extern const unsigned short map1Tiles[752];

#define map1MapLen 16384
extern const unsigned short map1Map[8192];

#define map1PalLen 512
extern const unsigned short map1Pal[256];

#endif // GRIT_MAP1_H

//}}BLOCK(map1)
