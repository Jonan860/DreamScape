function scr_revive() {
	if(phase="reviving")
	{
		var var_soul_hero=instance_position(x,y,obj_soul_hero)
		if(var_soul_hero!=noone)
		{
		with(var_soul_hero)
		{
		if(revival_time_left_sec>0)
		{
		revival_time_left_sec-=1/room_speed
		}
		else
		{
		var var_hero=var_soul_hero.instance
	    with(var_hero)
		{
			scr_make_room_for_instance_on_tile(other.tile,altitude)
		scr_move_to_tile(other.tile)
		phase="idle"
		action_bar=0 //2021
		}
		other.phase="idle"
		instance_destroy(var_soul_hero)
		}
		}
		}
	}


}
