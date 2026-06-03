function scr_frost_nova_damage() {
	var damage_multiplier=ds_list_find_value(list_of_frost_nova_damage_multipliers_per_lvl,spell_q_lvl-1)
	damage*=damage_multiplier
	with(frost_nova_target)
	{
	var var_ground=ds_map_find_value(occupants,"ground")
	var var_air=ds_map_find_value(occupants,"air")
	var var_invisible=ds_map_find_value(occupants,"invisible")

	if(var_ground!=noone)
	{
		if(var_ground.object_index!=obj_crystal)
			{
	if(scr_is_enemies(var_ground,other))
	{
	scr_attack_hp_reduction(other,var_ground)
	}
			}
	}
	if(var_air!=noone)
	{
		if(var_air.object_index!=obj_crystal)
			{
	if(scr_is_enemies(var_air,other))
	{
	scr_attack_hp_reduction(other,var_air)
	}
			}
	}
	if(var_invisible!=noone)
	{
		if(var_invisible.object_index!=obj_crystal)
			{
	if(scr_is_enemies(var_invisible,other))
	{
	scr_attack_hp_reduction(other,var_invisible)
	}
			}
	}
	other.damage*=1/2   ////half damage on souranding area
	for(i=0;i<=ds_list_size(list_of_neighbours)-1;i+=1)
	{
		var var_tile=ds_list_find_value(list_of_neighbours,i)
		with(var_tile)
		{
	var var_ground=ds_map_find_value(occupants,"ground")     /// kanske blir fel med VAR  och with här eller inte
	var var_air=ds_map_find_value(occupants,"air")
	var var_invisible=ds_map_find_value(occupants,"invisible")
		}
	

		if(var_ground!=noone)
	{
		if(var_ground.object_index!=obj_crystal)
			{
	if(scr_is_enemies(var_ground,other))
	{
	scr_attack_hp_reduction(other,var_ground)
	}
			}
	}
	if(var_air!=noone)
	{
		if(var_air.object_index!=obj_crystal)
			{
	if(scr_is_enemies(var_air,other))
	{
	scr_attack_hp_reduction(other,var_air)
	}
			}
	}
	if(var_invisible!=noone)
	{
		if(var_invisible.object_index!=obj_crystal)
			{
	if(scr_is_enemies(var_invisible,other))
	{
	scr_attack_hp_reduction(other,var_invisible)
	}
			}
	}
	}
	}
	damage*=2
	damage/=damage_multiplier
	if(owner=global.player)
	{
	phase="idle"
	}
	else
	{
	phase="movement"
	}




}
