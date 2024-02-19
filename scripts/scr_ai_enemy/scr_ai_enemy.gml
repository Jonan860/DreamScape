function scr_ai_enemy() {
	scr_ai_spell_enemy()
	if(phase == "hunt") { //should implies target exist
		if(scr_get_distance(tile, target.tile) > range and action_bar == 0) {
			phase = "movement"
		}
	}
	if(phase == "idle" or phase == "movement" and action_bar == 0) {
		var var_perhaps_target = scr_search_and_perhaps_get_target()
		if(var_perhaps_target != noone) {
			target = var_perhaps_target
		}
		phase = var_perhaps_target != noone ? "hunt" : "movement"
	}
}
