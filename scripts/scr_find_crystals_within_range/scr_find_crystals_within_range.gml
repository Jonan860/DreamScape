function scr_find_crystals_within_range() {
	var var_crystals_within_range=noone
	//var var_tiles_within_range3=scr_get_tiles_within_range(range)
	//for(i=0;i<=ds_list_size(var_tiles_within_range3)-1;i+=1)
	//{
	//var tile3=ds_list_find_value(var_tiles_within_range3,i)

	//if(ds_map_find_value(tile3.occupants,"ground")!=noone)
	//{
	//if(scr_is_enemies(self,ds_map_find_value(tile3.occupants,"ground")))
	//{
	//ds_list_add(var_enemies_within_range,ds_map_find_value(tile3.occupants,"ground"))
	//}
	//}
	//}
	with(obj_crystal)
	{
		var var_distance=scr_get_distance(tile,other.tile)
	if(scr_is_enemies(id,other) and var_distance<=other.range)
	{
	var_crystals_within_range=id   /// careful with var
	}
	}

	return var_crystals_within_range


}
