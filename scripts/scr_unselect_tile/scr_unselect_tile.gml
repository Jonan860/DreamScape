function scr_unselect_tile(argument0) {
	var tile2=argument0
	if(tile2!=noone)
	{
		for(i=0;i<ds_list_size(tile2.selected_units);i+=1)
		{
			var var_selected_unit=ds_list_find_value(tile2.selected_units,i)
	with(var_selected_unit)
	{
		if(object_is_ancestor(var_selected_unit.object_index,obj_unit))
		{
			var j
	for(j=0;j<ds_list_size(path);j+=1)
	{
	var tile3=ds_list_find_value(path,j)
	tile3.image_blend=c_white

	}
		}
	}
	
	}
	ds_list_clear(tile2.selected_units)
	}

}
