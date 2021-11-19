
//{{BLOCK(map1)

//======================================================================
//
//	map1, 512x256@4, 
//	+ palette 32 entries, not compressed
//	+ 37 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 64 + 1184 + 4096 = 5344
//
//	Time-stamp: 2021-11-17, 19:28:33
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP1_H
#define GRIT_MAP1_H

#define map1TilesLen 1184
extern const unsigned short map1Tiles[592];

#define map1MapLen 4096
extern const unsigned short map1Map[2048];

#define map1PalLen 64
extern const unsigned short map1Pal[32];

#endif // GRIT_MAP1_H

//}}BLOCK(map1)
