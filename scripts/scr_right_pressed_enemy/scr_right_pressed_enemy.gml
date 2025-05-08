function scr_right_pressed_enemy(var_ground_unit, var_selected_unit) {	
	with(var_selected_unit) {
		phase = UNIT_PHASES.hunt
		target = var_ground_unit
		destination = var_ground_unit.tile
		scr_update_path_to_destination()
	}
}