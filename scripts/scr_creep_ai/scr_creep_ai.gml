function scr_creep_ai() {
	if(phase="hunt") //should implies target exist
	{
	if(scr_get_distance(tile,target.tile)>range or ds_list_find_index(list_of_territory_tiles,target.tile)==noone and action_bar==0) ///300519
	{
		var var_closest_enemy=scr_get_closest_enemy_in_territory()
	if(var_closest_enemy=noone)
	{
	target=noone
	destination=start_tile
	phase="return"
	}
	if(var_closest_enemy!=noone)
	{
	target=var_closest_enemy
	}
	}
	}

	if(phase="idle"  ) //120719 //removed:/and action_bar==0
	{
	var_closest_enemy=scr_get_closest_enemy_in_territory()
	if(var_closest_enemy!=noone)
	{
	if(scr_get_distance(var_closest_enemy.tile,tile)<=range)
	{
	target=var_closest_enemy
	phase="hunt"
	}
	}
	}

	if(phase="return")
	{
	if(tile=start_tile)
	{
	phase="idle"
	action_bar=0 ///2021
	}
	}


}
