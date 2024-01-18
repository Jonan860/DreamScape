
function scr_left_hud_pressed(){
	if(scr_is_cursor_on_hud() != 0) {
		scr_q_button_check_and_perform_action()
		scr_w_button_check_and_perform_action()
		scr_e_button_check_and_perform_action()
		scr_r_button_check_and_perform_action()
		scr_a_button_check_and_perform_action()
		scr_s_button_check_and_perform_action()
		scr_queue_icon_check_and_perform()
		scr_abilities_button_check_and_perform_action()
	}
}