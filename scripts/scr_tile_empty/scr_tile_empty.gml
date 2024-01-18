function scr_tile_empty(tile2) {
	return ds_list_empty(tile2.grounds_list) and ds_list_empty(tile2.airs_list) and ds_list_empty(tile2.invisibles_list)
}
