function scr_declare_backline_tiles() {
	with(obj_tile) {
		is_back_tile = (tile_x >= 8 and tile_x <= 12 and tile_y == 18) or (tile_y == 17 and tile_x >= 7 and tile_x <= 13)
		if(is_back_tile) {
			scr_instance_create_at_tile_with_owner(obj_crystal, id, global.player)
		}
	}
}
