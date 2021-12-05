
//{{BLOCK(TitleSpritesheet)

//======================================================================
//
//	TitleSpritesheet, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 1024 tiles not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 32768 + 2048 = 35328
//
//	Time-stamp: 2021-12-05, 16:42:06
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TITLESPRITESHEET_H
#define GRIT_TITLESPRITESHEET_H

#define TitleSpritesheetTilesLen 32768
extern const unsigned short TitleSpritesheetTiles[16384];

#define TitleSpritesheetMapLen 2048
extern const unsigned short TitleSpritesheetMap[1024];

#define TitleSpritesheetPalLen 512
extern const unsigned short TitleSpritesheetPal[256];

#endif // GRIT_TITLESPRITESHEET_H

//}}BLOCK(TitleSpritesheet)
