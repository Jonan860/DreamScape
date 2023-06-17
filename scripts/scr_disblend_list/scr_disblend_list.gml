function scr_disblend_list(argument0) {
	var list=argument0

	for(i=0;i<ds_list_size(list);i+=1)
	{
	var tile_to_blank=ds_list_find_value(list,i)
	tile_to_blank.image_blend=c_white
	tile_to_blank.image_alpha=1
	}


}
