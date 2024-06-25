function scr_make_room_for_instance_on_tile(var_tile_to_clear, var_altitude) {
	var var_unit_to_clear_list = ds_map_find_value(var_tile_to_clear.occupants, var_altitude)
	var var_unit_to_clear = var_unit_to_clear_list[0]
	var var_owner = noone
	var closest_southward_empty_tile
	var closest_northward_empty_tile
	if(is_undefined(var_unit_to_clear)) {
		exit;
	}
	var_owner = var_unit_to_clear.owner
	if(var_owner = global.player) {
		closest_southward_empty_tile = scr_find_closest_southward_empty_tile(var_altitude, var_tile_to_clear)
		if(closest_southward_empty_tile == noone) {
			closest_northward_empty_tile = scr_find_closest_northward_empty_tile(var_altitude, var_tile_to_clear)
			scr_make_room_on_tile_using_given_empty_tile(var_tile_to_clear, closest_northward_empty_tile, var_altitude)
		} else {
			scr_make_room_on_tile_using_given_empty_tile(var_tile_to_clear, closest_southward_empty_tile, var_altitude)
		}
	} else {
		closest_northward_empty_tile = scr_find_closest_northward_empty_tile(var_altitude, var_tile_to_clear)
		if(closest_northward_empty_tile == noone) {
			closest_southward_empty_tile = scr_find_closest_southward_empty_tile(var_altitude, var_tile_to_clear)
			scr_make_room_on_tile_using_given_empty_tile(var_tile_to_clear, closest_southward_empty_tile, var_altitude)
		} else {
			scr_make_room_on_tile_using_given_empty_tile(var_tile_to_clear, closest_northward_empty_tile, var_altitude)
		}
	}
}


