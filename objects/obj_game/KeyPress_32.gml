if(room = map) {
	if(phase = "dialogue") {
		if(scr_is_it_time_for_battle(global.dialogue.dialogue_number)) {
			phase = "battle"
		}
		global.dialogue.dialogue_number += 1
	}
}