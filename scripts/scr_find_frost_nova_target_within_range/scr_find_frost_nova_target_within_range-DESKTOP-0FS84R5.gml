function scr_find_frost_nova_target_within_range() {
	var var_optimal_tile_target=noone
	var optimal_goodness=0
	with(obj_tile)
	{
		if(scr_get_distance(self,other.tile)<=other.frost_nova_range)
		{
		var var_ground_unit=ds_map_find_value(occupants,"ground")
		var var_invisible_unit=ds_map_find_value(occupants,"invisible")
		var var_air_unit=ds_map_find_value(occupants,"air")
		var var_goodness_of_frost_nova=0
		if(var_ground_unit!=noone)
		{
			if(var_ground_unit.object_index!=obj_crystal)
			{
			if(scr_is_enemies(other,var_ground_unit))
			{
		var_goodness_of_frost_nova+=2
			}
		}
		}
		if(var_invisible_unit!=noone)
		{
			if(var_invisible_unit.object_index!=obj_crystal)
			{
			if(scr_is_enemies(other,var_invisible_unit))
			{
		var_goodness_of_frost_nova+=2
		}
			}
		}
		if(var_air_unit!=noone)
		{
			if(var_air_unit.object_index!=obj_crystal)
			{
			if(scr_is_enemies(other,var_air_unit))
			{
		var_goodness_of_frost_nova+=2
		}
			}
		}
		for(i=0;i<=ds_list_size(list_of_neighbours)-1;i++)
		{
		var var_tile=ds_list_find_index(list_of_neighbours,i)
	
		with(var_tile)
		{
		var var_ground_unit=ds_map_find_value(occupants,"ground")
		var var_invisible_unit=ds_map_find_value(occupants,"invisible")
		var var_air_unit=ds_map_find_value(occupants,"air")
		}
			if(var_ground_unit!=noone)
		{
			if(var_ground_unit.object_index!=obj_crystal)
			{
			if(scr_is_enemies(other,var_ground_unit))
			{
		var_goodness_of_frost_nova++
		}
		}
		}
		if(var_invisible_unit!=noone)
		{
			if(var_invisible_unit.object_index!=obj_crystal)
			{
			if(scr_is_enemies(other,var_invisible_unit))
			{
		var_goodness_of_frost_nova++
		}
		}
		}
		if(var_air_unit!=noone)
		{
			if(var_air_unit.object_index!=obj_crystal)
			{
			if(scr_is_enemies(other,var_air_unit))
			{
		var_goodness_of_frost_nova++
		}
		}
		}
	
		if(var_goodness_of_frost_nova>optimal_goodness)
		{
		var_optimal_tile_target=self
		optimal_goodness=var_goodness_of_frost_nova
		}
		}
	}
	}


	return var_optimal_tile_target





}
