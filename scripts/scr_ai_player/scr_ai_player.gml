function scr_ai_player() {
	if(phase == "idle" and action_bar == 0) {
		player_ai_idle_counter -= 1
		if(player_ai_idle_counter <= 0) {
			player_ai_idle_counter = room_speed * global.player_idle_ai_think_time_in_sec
			scr_idle_player_ai()
		}
	}
	
	if(phase == "healing") {
		if(target.HP = target.max_HP or scr_get_distance(tile, target.tile) > heal_range or altitude = "invisible") {
			phase = "idle"
		} else if(heal.mana_cost < mana and heal.cooldown_current <= 0) {
			scr_heal_target()
			heal.cooldown_current = heal.cooldown_max
			mana -= heal.mana_cost
		}
		action_bar = 0
	}
	player_ai_spell_counter -= 1
	if(player_ai_spell_counter <= 0) {
		player_ai_spell_counter = room_speed * global.player_ai_think_time_in_sec
		for(var i = 0; i < array_length(skills); i++) {
			with(skills[i]) {
				if(autocast) {
					ai()
				}
			}
		}
	}
}
