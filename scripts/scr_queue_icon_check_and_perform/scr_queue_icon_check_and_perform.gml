function scr_queue_icon_check_and_perform() {
	with(obj_battle_hud) {
		if(scr_is_queue_icon_button_pressed()) {
			scr_perform_queue_icon_left_pressed_perform()
		}
	}
}
