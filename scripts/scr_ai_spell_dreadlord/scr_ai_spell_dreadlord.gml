function scr_ai_spell_dreadlord() {
	if(object_index == obj_dreadlord) {
		if(mana >= spell_w_mana_cost and spell_w_cooldown_current == 0) {
			var sleep_target_within_range = scr_find_sleep_target_within_range()
			if(sleep_target_within_range != noone) {
				scr_sleep(sleep_target_within_range)
				mana -= spell_w_mana_cost
				spell_w_cooldown_current = spell_w_cooldown_max
			}
		}
	}
}
