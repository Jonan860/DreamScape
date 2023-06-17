function scr_mana_regeneration() {
	with(obj_unit)
	{
		if(mana!=noone)
		{
	if(!eaten)
	{
	mana=min(mana+mana_regen_rate_per_sec/(room_speed),max_mana)
	}
	}
	}


}
