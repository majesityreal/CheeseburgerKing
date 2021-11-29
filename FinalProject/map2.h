
//{{BLOCK(map2)

//======================================================================
//
//	map2, 512x256@4, 
//	+ palette 256 entries, not compressed
//	+ 36 tiles (t reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 1152 + 4096 = 5760
//
//	Time-stamp: 2021-11-23, 17:48:12
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_MAP2_H
#define GRIT_MAP2_H

#define map2TilesLen 1152
extern const unsigned short map2Tiles[576];

#define map2MapLen 4096
extern const unsigned short map2Map[2048];

#define map2PalLen 512
extern const unsigned short map2Pal[256];

#endif // GRIT_MAP2_H

//}}BLOCK(map2)
