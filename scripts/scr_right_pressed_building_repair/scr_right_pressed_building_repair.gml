function scr_right_pressed_building_repair(clicked_tile, var_ground_unit) {
	if(scr_get_distance(global.tile_selected, clicked_tile) <= 1) {
		global.lille_skutt.is_building = var_ground_unit
	}
}