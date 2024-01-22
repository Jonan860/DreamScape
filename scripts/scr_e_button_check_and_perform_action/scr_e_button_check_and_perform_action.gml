function scr_e_button_check_and_perform_action() {
	with(obj_battle_hud) {
		if(scr_is_e_button_pressed()) {
			scr_perform_e()
		}
	}
}
