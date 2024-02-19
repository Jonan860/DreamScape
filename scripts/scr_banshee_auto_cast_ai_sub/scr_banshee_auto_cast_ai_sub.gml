function scr_banshee_auto_cast_ai_sub(){
	
	var list_curse_target_within_range = scr_find_enemies_within_range(curse.range)
	if(ds_list_size(list_curse_target_within_range) > 0) {
		var curse_target = scr_find_best_procentage_debuff_target_from_list(list_curse_target_within_range, spell_q)
		if(curse_target != noone) {
			scr_curse_unit(curse_target)
			mana -= spell_q.mana_cost
			spell_q.cooldown_current = spell_q.cooldown
			action_bar = 0
		}
	}
}