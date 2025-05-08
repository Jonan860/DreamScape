function scr_create_tile_on_map() {
	for (var i = 0; 4 * 32 + 8 * 32 * (i - 1) < room_height - 512; i++) { //last one is partially outside 
		for(var j = 0; 4 * 32 + 12 * 32 * (j - 1) < room_width; j++) {
			with(new createTile()) {
				_x = 4 * 32 + 12 * 32 * j
				_y =  4 * 32 + 8 * 32 * i
				tile_x = 2 * j; tile_y = 2 * i
				indexSprite = tile_x mod 2 ? spr_hexagon_pink : spr_hexagon_purple
				array_push(global.gameBoard.tiles, self)
			}
		}
	}
	for (var i = 0; 4 * 32 + 8 * 32 * (i - 1) < room_height - 512; i++)  {//last one is partially outside
		for(var j = 0; 4 * 32 + 12 * 32 * (j - 1) < room_width; j++) {
			with(new createTile()) {
				_x = -2 * 32 + 12 * 32 * j
				_y = 8 * 32 * i
				tile_x = 2 * j - 1; 
				tile_y = 2 * i - 1
				indexSprite = tile_x mod 2 ? spr_hexagon_pink : spr_hexagon_purple
				array_push(global.gameBoard.tiles, self)
			}
		}
	}
	
}
function getTileCoordinate(_x, _y) {
	if(tile_x % 0) {
		var j = (_x + 64) / (12 * 32)
		var i = _y / (8 * 32)
		var tileX = round(2 * j - 1)
		var tileY = round(2 * i - 1)
		return [tileX, tileY]
	}
}
function tileCordinateToCordinate(tile_x, tile_y) {
	if(!(tile_x % 2)) {
		var _x = 4 * 32 + 12 * 32 * tile_x / 2
		var _y = 4 * 32 + 8 * 32 * tile_y / 2
	} else {
		var _x = -2 * 32 + 12 * 32 * (tile_x + 1) / 2
		var _y = 8 * 32 * (tile_y + 1) / 2 
	}
	return [_x, _y]
}

	
