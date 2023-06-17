function scr_blend_tile_unit_stood_on() {
	if(ds_list_size(path)>=1)
	{
		var tile_to_be_removed=ds_list_find_value(path,ds_list_size(path)-1)
	tile_to_be_removed.image_blend=c_white
	tile_to_be_removed.image_alpha=1
	ds_list_delete(path,ds_list_size(path)-1)
	}


}
