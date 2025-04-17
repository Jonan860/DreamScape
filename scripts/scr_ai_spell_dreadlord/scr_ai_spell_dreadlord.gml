function scr_ai_spell_dreadlord() {
	if(mana >= sleep.getManaCost() and sleep.cooldown_current == 0) {
		var sleepTarget = scr_find_sleep_target_within_range()
		if(sleepTarget != noone) {
			var save = global.clicked_tile
			global.clicked_tile = sleepTarget.tile
			sleep.rightPerform()
			action_bar = 0
			mana -= sleep.getManaCost()
			sleep.cooldown_current = sleep.getCooldown()
			global.clicked_tile = save
		}
	}
}
