function scr_banshee_auto_cast_ai_sub(){
	var range_stored = range
	range = global.curse_struct.range
	var list_curse_target_within_range = scr_find_enemies_within_range()
	if(ds_list_size(list_curse_target_within_range) > 0) {
		var curse_target = scr_find_best_procentage_debuff_target_from_list(list_curse_target_within_range, global.curse_struct)
		if(curse_target != noone) {
			scr_curse_unit(curse_target)
			mana -= global.curse_struct.mana_cost
			spell_q_cooldown_current = global.curse_struct.cooldown
			action_bar = 0
		}
	}
	range = range_stored
}