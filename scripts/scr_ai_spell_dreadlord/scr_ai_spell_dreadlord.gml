function scr_ai_spell_dreadlord() {
	if(mana >= sleep.mana_cost and sleep.cooldown_current == 0) {
		with(scr_find_sleep_target_within_range()) {
			other.scr_sleep(sleep_target_within_range)
			other.mana -= other.sleep.mana_cost
			other.sleep.cooldown_current = other.sleep.getCooldown()
		}
	}
}
