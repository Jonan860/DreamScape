// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_sorceress_slow_auto_cast_ai_sub(){
var range_stored=range
	range=global.slow_struct.range
	var list_slow_target_within_range=scr_find_enemies_within_range()
	if(ds_list_size(list_slow_target_within_range)>0)
	{
	var slow_target=scr_find_best_procentage_debuff_target_from_list(list_slow_target_within_range,global.slow_struct)
	if(slow_target!=noone)
	{
	
	scr_slow_unit(slow_target)
	mana-=global.slow_struct.mana_cost
	spell_q_cooldown_current=global.slow_struct.cooldown
	action_bar=0
	}
	}
	range=range_stored
}