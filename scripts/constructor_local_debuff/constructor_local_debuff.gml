// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function constructor_local_debuff(global_structu,perputrator_spell_lvl) constructor
{
	if(is_undefined(global_structu.duration))
	{
	total_duration=ds_list_find_value(global_structu.duration_list,perputrator_spell_lvl-1)
	}
	else
	{
	total_duration=global_structu.duration
	}
	spell_health=global_structu.spell_health
duration=total_duration
icon_sprite=global_structu.icon_sprite
name=global_structu.name
global_struct=global_structu
}