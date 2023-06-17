function scr_tile_empty(argument0) {
	var tile2=argument0
	if(ds_list_empty(tile2.grounds_list) and ds_list_empty(tile2.airs_list) and ds_list_empty(tile2.invisibles_list))
	{
	return 1
	}
	else
	return 0


}
