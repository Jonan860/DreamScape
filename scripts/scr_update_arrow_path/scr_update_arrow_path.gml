function scr_update_arrow_path() {
	ds_list_clear(list_path_arrow_directions)
	ds_list_add(list_path_arrow_directions, noone)
	var var_tile
	var var_tile_next
	var var_direction
	for(var i = 1; i <= ds_list_size(path) - 1; i += 1) {
		var_tile = path[|i]
		var_tile_next = path[|i - 1]
		var_direction = point_direction(var_tile.x, var_tile.y, var_tile_next.x, var_tile_next.y)
		ds_list_add(list_path_arrow_directions, var_direction)
	}
}
