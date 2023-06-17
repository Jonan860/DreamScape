/// @description scr_sleep(target)
/// @param target
function scr_sleep(argument0) {

	var var_target=argument0
	with(var_target)
	{
	phase="sleep"
	with(obj_unit)
	{
	if(target=var_target)
	{
	target=noone
	if(owner=global.enemy)
	{
	phase="movement"
	}
	else
	{
		phase="idle"
		action_bar=0 //2021
	}
	destination=noone
	}
	}
	target=noone
	destination=noone
	sleep_timer=ds_list_find_value(other.list_sleep_time_per_lvl,other.spell_w_lvl-1)
	}


}
