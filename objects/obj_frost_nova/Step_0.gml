var the_lich = instance_find(obj_lich,0)
if(the_lich != noone) {
	if(the_lich.phase != "frost nova" and time_until_frost_nova_after_effect_end_sec < 0) {
		instance_destroy()
	}
}
else if(time_until_frost_nova_after_effect_end_sec <= 0) {
	instance_destroy()
}