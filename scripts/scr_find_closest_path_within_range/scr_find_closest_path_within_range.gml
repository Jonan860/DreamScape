function scr_find_closest_path_within_range(start_tile, target_tile2, range) {
	var closest_distance_yet = 100
	var closest_path = []
	var candidate = []
	tiles_within_range = []
	tiles_within_range = scr_get_tiles_at_range(target_tile2, range)
	for(var i = 0; i < array_length(tiles_within_range); i+=1) {
		target_tile2 = tiles_within_range[i]
		if(scr_occupiable(target_tile2, altitude)) {
			candidate = scr_find_path(start_tile, target_tile2,altitude)
			if(!array_equals(candidate, [])) {
				if(array_length(candidate) - 1 < closest_distance_yet) {
					closest_path = candidate
					closest_distance_yet = array_length(closest_path) - 1
				}
			}
		}
	}
	return closest_path
}
