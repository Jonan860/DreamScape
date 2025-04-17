function scr_update_arrow_path() {
	list_path_arrow_directions = []
	array_push(list_path_arrow_directions, noone)
	var var_tile
	var var_tile_next
	var var_direction
	for(var i = 1; i <= array_length(path) - 1; i++) {
		var_tile = path[i]
		var_tile_next = path[i - 1]
		var_direction = point_direction(var_tile._x, var_tile._y, var_tile_next._x, var_tile_next._y)
		array_push(list_path_arrow_directions, var_direction)
	}
}
