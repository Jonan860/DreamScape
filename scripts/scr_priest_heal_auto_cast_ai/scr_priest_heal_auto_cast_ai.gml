// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_priest_heal_auto_cast_ai(){
if(object_index=obj_priest)
{
	if(mana>=global.heal_struct.mana_cost and spell_q_cooldown_current<=0 and heal_autocast_is_on and altitude!="invisible")  ///and action_bar=0?
	{
		var range_stored=range
	range=global.heal_struct.range
	var list_heal_target_within_range=scr_find_friendlies_within_range()
	if(ds_list_size(list_heal_target_within_range)>0)
	{
	var heal_target=scr_find_best_heal_target_from_list(list_heal_target_within_range)
	if(heal_target!=noone)
	{
	range=range_stored
	var stored_target=target
	target=heal_target
	scr_heal_target()
	target=stored_target
	mana-=global.heal_struct.mana_cost
	spell_q_cooldown_current=global.heal_struct.cooldown
	action_bar=0
	}
	}
	}
}
}