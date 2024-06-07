function scr_get_tiles_at_range(tile2, range) {
	var list_of_tiles_at_range = ds_list_create()
	
	loopTilesStart
		if(scr_get_distance(tile2, self) == range) {
			ds_list_add(list_of_tiles_at_range, self)
		}
	loopTilesEnd
	return list_of_tiles_at_range
}
