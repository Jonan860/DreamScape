if(room = map) {
	if(phase = GAME_PHASES.dialogue) {
		if(scr_is_it_time_for_battle(global.dialogue.dialogue_number)) {
			phase = GAME_PHASES.battle
		}
		global.dialogue.dialogue_number += 1
	}
}