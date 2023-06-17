/// @scr_build_unit(object)
/// @param object
function scr_build_unit(argument0) {
	//called from building
	///

	if(object_is_ancestor(argument0,obj_unit))
	{
	var most_north_tile=scr_get_most_north_occupiable_neighbour()
	if(most_north_tile!=noone)
	{
		
		with(obj_tile)
		{
			if(scr_tile_empty(id) and habitable)
			{
		var var_unit=scr_instance_create_at_tile_with_owner(argument0,id,global.player)
		scr_apply_upgrades_on_new_unit(var_unit)
			scr_make_room_for_instance_on_tile(most_north_tile,var_unit.altitude)
			with(var_unit)
			{
			scr_move_to_tile(most_north_tile)
			}
			break;
			}
		}
		if(rally_tile!=noone)
		{
		//footman.target=rally_tile
		//footman.phase="movement"
		var_unit.phase="movement"
		var_unit.destination=rally_tile
		//global.game.optimal_path=scr_find_path(var_unit.tile,var_unit.destination)
	//scr_disblend_list(var_unit.path)
	//ds_list_copy(var_unit.path,global.game.optimal_path)
	with(var_unit)
	{
	scr_update_path_to_destination()
	}
	}
		ds_list_delete(queue_list,0)
		build_progress=0
	}
	}


}
