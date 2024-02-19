
function scr_priest_heal_auto_cast_ai() {
	if(mana >= spell_q.mana_cost and spell_q.cooldown_current <= 0 and spell_q.autocast_is_on and altitude != "invisible") {
		var range_stored = range
		range = spell_q.range
		var list_heal_target_within_range = scr_find_friendlies_within_range()
		if(ds_list_size(list_heal_target_within_range) > 0) {
			var heal_target = scr_find_best_heal_target_from_list(list_heal_target_within_range)
			if(heal_target != noone) {
				range = range_stored
				var stored_target = target
				target = heal_target
				scr_heal_target()
				target = stored_target
				mana -= spell_q.mana_cost
				spell_q.cooldown_current = spell_q.cooldown
				action_bar = 0
			}
		}
	}
}