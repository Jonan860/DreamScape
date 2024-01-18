function scr_ai_enemy() {
	if(owner == global.enemy) {
		scr_ai_spell_enemy()
		scr_locust_perform()
		if(phase == "hunt") //should implies target exist
		{
			if(scr_get_distance(tile, target.tile) > range and action_bar == 0) {
				var var_maybe_target = scr_search_and_perhaps_get_target()
				if(var_maybe_target != noone) {
					target = var_maybe_target
				} else {
					phase = "movement"
				}
			}
		}
		if(phase == "idle" or phase == "movement" and action_bar == 0) {
			var var_perhaps_target = scr_search_and_perhaps_get_target()
			if(var_perhaps_target != noone) {
				target = var_perhaps_target
				phase = "hunt"
			} else {
				phase = "movement"
			}
		}
	}
}
