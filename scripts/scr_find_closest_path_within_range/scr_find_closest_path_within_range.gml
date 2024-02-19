function scr_find_closest_path_within_range(start_tile, target_tile2, range) {
	var closest_distance_yet = 100
	var closest_path = ds_list_create()
	var candidate = ds_list_create()
	ds_list_clear(tiles_within_range)
	ds_list_copy(tiles_within_range, scr_get_tiles_at_range(target_tile2, range))
	for(var i = 0; i < ds_list_size(tiles_within_range); i+=1) {
		target_tile2 = tiles_within_range[|i]
		if(scr_occupiable(target_tile2, altitude)) {
			candidate = scr_find_path(start_tile, target_tile2,altitude)
			if(!ds_list_empty(candidate)) {
				if(ds_list_size(candidate) - 1 < closest_distance_yet) {
					ds_list_copy(closest_path, candidate)
					closest_distance_yet = ds_list_size(closest_path) - 1
				}
			}
		}
	}
	return closest_path
}
