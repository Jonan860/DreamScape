function scr_ai_player() {
	if(phase == UNIT_PHASES.idle and action_bar == 0) {
		player_ai_idle_counter -= 1
		if(player_ai_idle_counter <= 0) {
			player_ai_idle_counter = room_speed * global.player_idle_ai_think_time_in_sec
			scr_idle_player_ai()
		}
	}
	
	if(phase == UNIT_PHASES.healing) {
		if(target.HP = target.max_HP or scr_get_distance(tile, target.tile) > heal.range or altitude = ALTITUDES.invisible) {
			phase = UNIT_PHASES.idle
		} else if(heal.getManaCost() < mana and heal.cooldown_current <= 0) {
			with(heal) {
				var temp = global.clicked_tile
				global.clicked_tile = other.target.tile
				rightPerform()
				global.clicked_tile = temp
				cooldown_current = getCooldown()
				owner.mana -= getManaCost()
			}
		}
		action_bar = 0
	}
	player_ai_spell_counter -= 1
	if(player_ai_spell_counter <= 0) {
		player_ai_spell_counter = room_speed * global.player_ai_think_time_in_sec
		for(var i = 0; i < array_length(skills); i++) {
			with(skills[i]) {
				if(autocast and owner.mana >= getManaCost() and cooldown_current <= 0 and owner.phase != UNIT_PHASES.movement and owner.altitude != ALTITUDES.invisible) {
					ai()
				}
			}
		}
	}
}
