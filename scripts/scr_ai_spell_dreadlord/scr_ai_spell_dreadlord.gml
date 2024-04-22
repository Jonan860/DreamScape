function scr_ai_spell_dreadlord() {
	if(mana >= sleep.getManaCost() and sleep.cooldown_current == 0) {
		with(scr_find_sleep_target_within_range()) {
			other.sleep.rightPerform(self)
			other.mana -= other.sleep.getManaCost()
			other.sleep.cooldown_current = other.sleep.getCooldown()
		}
	}
}
