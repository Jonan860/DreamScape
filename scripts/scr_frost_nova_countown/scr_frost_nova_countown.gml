function scr_frost_nova_countown() {
	with(obj_lich)
	{
		if(time_until_frost_nova_sec>0)
		{
	time_until_frost_nova_sec-=1/room_speed
		}
	if(time_until_frost_nova_after_effect_end_sec>0)
	{
	time_until_frost_nova_after_effect_end_sec-=1/room_speed
	}
	}

	with(obj_frost_nova)
	{
		if(time_until_frost_nova_sec>0)
		{
	time_until_frost_nova_sec-=1/room_speed
	if(time_until_frost_nova_sec<=0)
	{
	depth=layer_get_depth(layer_get_id("air"))-1
	}
		}
	else
	if(time_until_frost_nova_after_effect_end_sec>0 and time_until_frost_nova_sec<=0)
	{
	time_until_frost_nova_after_effect_end_sec-=1/room_speed
	}
	}



}
