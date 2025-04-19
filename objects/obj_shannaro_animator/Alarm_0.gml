if(number_of_moves == 0) {
	instance_destroy()
} else {
	with(target){
		var newTile = getTile(tile.tile_x + other.tile_translation_x, tile.tile_y + other.tile_translation_y)
		if(newTile != noone) {
			scr_make_room_for_instance_on_tile(newTile, ALTITUDES.ground)
			scr_move_to_tile(newTile)
		}
	}
	alarm[0] = 30
	number_of_moves -= 1
}