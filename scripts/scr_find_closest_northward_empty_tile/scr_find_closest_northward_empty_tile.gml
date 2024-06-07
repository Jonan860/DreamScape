function scr_find_closest_northward_empty_tile(var_altitude, var_tile_to_clear) {
	var var_best_distance = 1000
	var closest_candidate = noone
	var var_distance
	var var_angle
	loopTilesStart
		if(habitable) {
			var_angle = point_direction(var_tile_to_clear.x, var_tile_to_clear.y, x, y)
			if(180 >= var_angle and var_angle >= 0) {
				var_distance = scr_get_invisibles_distance(var_tile_to_clear, id)
				if(var_distance < var_best_distance) {
					var var_occupant_list = ds_map_find_value(occupants, var_altitude)
					if(ds_list_empty(var_occupant_list)) {
						closest_candidate = id
						var_best_distance = var_distance
					}
				}
			}
		}
	loopTilesEnd
	var var_optimum_path = ds_list_create()
	if(closest_candidate != noone) {
			var var_optimum_path = scr_find_invisibles_path(var_tile_to_clear, closest_candidate)
	} else {
		return noone
	}
	
	for(var i = 1; i <= ds_list_size(var_optimum_path) - 1; i += 1) {
		var var_tile_on_optimum_path = var_optimum_path[|i]
		var_angle = point_direction(var_tile_to_clear.x, var_tile_to_clear.y, var_tile_on_optimum_path.x, var_tile_on_optimum_path.y)
		if(180 < var_angle and var_angle < 360) {
			return noone
		}
	}
	return closest_candidate
}