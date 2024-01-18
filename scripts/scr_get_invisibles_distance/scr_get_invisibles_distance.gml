function scr_get_invisibles_distance(var_start_tile, var_end_tile) {
	var var_end_tile_id = string(var_end_tile.id)
	var var_return = ds_map_find_value(var_start_tile.ds_map_distances, var_end_tile_id)
	return var_return
}
