
//{{BLOCK(map1)

//======================================================================
//
//	map1, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 2048 tiles not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 65536 + 4096 = 70144
//
//	Time-stamp: 2021-11-23, 17:40:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP1_H
#define GRIT_MAP1_H

#define map1TilesLen 65536
extern const unsigned short map1Tiles[32768];

#define map1MapLen 4096
extern const unsigned short map1Map[2048];

#define map1PalLen 512
extern const unsigned short map1Pal[256];

#endif // GRIT_MAP1_H

//}}BLOCK(map1)
