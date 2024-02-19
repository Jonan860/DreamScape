function scr_ai_spell_dreadlord() {
	if(mana >= spell_w.mana_cost and spell_w.cooldown_current == 0) {
		with(scr_find_sleep_target_within_range()) {
			other.scr_sleep(sleep_target_within_range)
			other.mana -= other.spell_w.mana_cost
			other.spell_w.cooldown_current = other.spell_w.cooldown
		}
	}
}
