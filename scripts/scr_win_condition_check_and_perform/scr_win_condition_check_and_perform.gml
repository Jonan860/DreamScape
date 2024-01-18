function scr_win_condition_check_and_perform() {
	var var_enemies_left = 0
	with(obj_unit) {
		if(scr_is_enemies(id, global.ida)) {
			var_enemies_left += 1
		}
	}
	if(var_enemies_left == 0 and wave_number > ds_list_size(enemies_wave_length_list) - 1) {
		room_goto(room_win)
	}
}
