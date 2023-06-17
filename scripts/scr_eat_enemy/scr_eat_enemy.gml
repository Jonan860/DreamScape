/// scr_eat_enemy(victim)
/// @param victim
function scr_eat_enemy(argument0) {

	var var_victim=argument0

	object_in_stomach=var_victim
	with(var_victim)
	{
		eaten=1
	
	//ds_map_replace(tile.occupants,altitude,noone)
	var var_alt_list=ds_map_find_value(tile.occupants,altitude)
		scr_ds_list_remove_value(var_alt_list,id)
	//var var_pos=ds_list_find_index(var_alt_list,tile)
//	ds_list_delete(var_alt_list,var_pos)
	tile=other.tile
	}


}
