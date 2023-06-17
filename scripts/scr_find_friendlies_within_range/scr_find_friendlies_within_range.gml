// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_friendlies_within_range(){
var var_friendlies_within_range=ds_list_create()
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
	with(obj_unit)
	{
		if(phase!="dead" and other.phase!="dead")
		{
		var var_distance=scr_get_distance(tile,other.tile)
	if(!scr_is_enemies(id,other.id) and var_distance<=other.range)
	{
	ds_list_add(var_friendlies_within_range,id)   /// careful with var
	}
		}
	}

	return var_friendlies_within_range


}