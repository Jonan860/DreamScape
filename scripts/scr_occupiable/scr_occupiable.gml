/// @scr_occupiable(tile)
/// @param tile
function scr_occupiable(argument0,var_altitude) {
	// altitude needed in future
	var var_tile=argument0
	if(var_tile=noone)
	{
	return 0
	}
	else
	if(var_tile.habitable=0)
	{
	return 0
	}
	else
	{
	//if(ds_map_find_value(var_tile.occupants,"ground")!=noone)
	var var_alt_list=ds_map_find_value(var_tile.occupants,var_altitude)
	if(!ds_list_empty(var_alt_list) and var_altitude!="invisible")
	{
	return 0
	}
	else
	{
	return 1
	}
	}


}
