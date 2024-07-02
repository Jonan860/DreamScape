function scr_find_closest_northward_empty_tile(var_altitude, var_tile_to_clear) {
	var var_best_distance = 1000
	var closest_candidate = noone
	var var_distance
	var var_angle
	loopTilesStart
		if(habitable) {
			var_angle = point_direction(var_tile_to_clear._x, var_tile_to_clear._y, _x, _y)
			if(180 >= var_angle and var_angle >= 0) {
				var_distance = scr_get_invisibles_distance(var_tile_to_clear, id)
				if(var_distance < var_best_distance) {
					var var_occupant_list = occupants[? var_altitude]
					if(array_equals(var_occupant_list, [])) {
						closest_candidate = id
						var_best_distance = var_distance
					}
				}
			}
		}
	loopTilesEnd
	var var_optimum_path = []
	if(closest_candidate != noone) {
			var var_optimum_path = scr_find_invisibles_path(var_tile_to_clear, closest_candidate)
	} else {
		return noone
	}
	
	for(var i = 1; i <= array_length(var_optimum_path) - 1; i++) {
		var var_tile_on_optimum_path = var_optimum_path[i]
		var_angle = point_direction(var_tile_to_clear.x, var_tile_to_clear.y, var_tile_on_optimum_path.x, var_tile_on_optimum_path.y)
		if(180 < var_angle and var_angle < 360) {
			return noone
		}
	}
	return closest_candidate
}