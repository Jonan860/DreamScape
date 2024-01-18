function scr_is_it_time_for_battle(var_dialogue_number) {
	with(global.dialogue) {
		if(list_of_dialogue_numbers_where_dialogue_change_to_battle_phase[|var_dialogue_number] >= 0) {
			return 1
		}
	}
	return 0
}
