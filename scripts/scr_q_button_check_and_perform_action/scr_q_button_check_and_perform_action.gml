function scr_q_button_check_and_perform_action() {
	with(obj_battle_hud) {
		if(scr_is_q_button_pressed()) {
			scr_perform_q()
		}
	}
}
