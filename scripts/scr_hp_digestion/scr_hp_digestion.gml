function scr_hp_digestion() {
	with(obj_hungry_hungry_lizard)
	{
	if(object_in_stomach!=noone and !scr_is_debuffed(global.freeze_struct))
	{
	object_in_stomach.HP-=digestion_rate/room_speed
	}

	}


}
