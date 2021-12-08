
//{{BLOCK(map2)

//======================================================================
//
//	map2, 2048x256@4, 
//	+ palette 256 entries, not compressed
//	+ 61 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 256x32 
//	Total size: 512 + 1952 + 16384 = 18848
//
//	Time-stamp: 2021-12-08, 16:41:27
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP2_H
#define GRIT_MAP2_H

#define map2TilesLen 1952
extern const unsigned short map2Tiles[976];

#define map2MapLen 16384
extern const unsigned short map2Map[8192];

#define map2PalLen 512
extern const unsigned short map2Pal[256];

#endif // GRIT_MAP2_H

//}}BLOCK(map2)
