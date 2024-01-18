
function scr_get_tiles_at_range(tile2, range) {
	var list_of_tiles_at_range = ds_list_create()
	
	with(obj_tile) {
		if(scr_get_distance(tile2, id) == range) {
			ds_list_add(list_of_tiles_at_range, id)
		}
	}
	return list_of_tiles_at_range
}
