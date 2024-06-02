function scr_move_to_tile(tile2) {
	if(tile != noone) {
		var homeland = tile.occupants[?altitude]
	}
	if(scr_occupiable(tile2, altitude)) {
		if(tile != noone) {
			scr_ds_list_remove_value(homeland, id)
		}
		if(global.tile_selected == tile) {
			with(tile) {
				scr_ds_list_remove_value(selected_units, other.id)
			} 
			global.tile_selected = tile2
		}
		tile = tile2
		//x = tile.x; y = tile.y
		var var_altitude_list = ds_map_find_value(tile.occupants, altitude)
		ds_list_add(var_altitude_list, id)
		with(tile2) {
			scr_update_selected_list()
		}
	}
}
