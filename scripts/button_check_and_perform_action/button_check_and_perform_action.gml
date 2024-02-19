function button_check_and_perform_action() {
	with(obj_battle_hud) {
		if(is_pressed()) {
			perform()
		}
	}
}
