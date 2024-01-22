var var_ground_target = target_tile.grounds_list[|0]

if(point_distance(x,y,target_tile.x,target_tile.y)<10) {
	
	if(var_ground_target!=noone and altitude="ground")
	{
		if(scr_is_attack_hitting(accuracy,var_ground_target.evasiveness))
		{
			scr_attack_hp_reduction(id,var_ground_target)
		}
	}
	instance_destroy()
}