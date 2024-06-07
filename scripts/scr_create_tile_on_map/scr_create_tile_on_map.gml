function scr_create_tile_on_map() {
	for (var i = 0; 4 * 32 + 8 * 32 * (i - 1) < room_height - 512; i += 1) { //last one is partially outside 
		for(var j = 0; 4 * 32 + 12 * 32 * (j - 1) < room_width; j += 1) {
			with(new createTile()) {
				_x = 4 * 32 + 12 * 32 * j
				_y =  4 * 32 + 8 * 32 * i
				tile_x = 2 * j; tile_y = 2 * i
				indexSprite = tile_x mod 2 ? spr_hexagon_pink : spr_hexagon_purple
				ds_list_add(global.gameBoard.tiles, self)
			}
		}
	}
	for (var i = 0; 4 * 32 + 8 * 32 * (i - 1) < room_height - 512; i += 1)  {//last one is partially outside
		for(var j = 0; 4 * 32 + 12 * 32 * (j - 1) < room_width; j += 1) {
			with(new createTile()) {
				_x = -2 * 32 + 12 * 32 * j
				_y = 8 * 32 * i
				tile_x = 2 * j - 1
				tile_y = 2 * i - 1
				indexSprite = tile_x mod 2 ? spr_hexagon_pink : spr_hexagon_purple
				ds_list_add(global.gameBoard.tiles, self)
			}
		}
	}
}
