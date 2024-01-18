function scr_make_room_on_tile_using_given_empty_tile(tile_to_make_room_for,empty_tile, var_altitude) {
	var invis_path = scr_find_invisibles_path(tile_to_make_room_for, empty_tile)
	var path_length = ds_list_size(invis_path)
	var tile_to_clear
	var tile_to_fill
	var var_unit_to_move
	for(var i = path_length - 1; i > 0; i -= 1) {
		var tile_to_clear = invis_path[|i-1]
		var tile_to_fill = invis_path[|i]
		var var_unit_to_move_list = ds_map_find_value(tile_to_clear.occupants, var_altitude)
		var var_unit_to_move = var_unit_to_move_list[|0]
		with(var_unit_to_move) {
			scr_move_to_tile(tile_to_fill)
		}
	}
}