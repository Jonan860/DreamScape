function scr_mouse_on_learn_katon_gokakuy_no_jutsu_button() {
	return learn_button_width + learn_spell_q_button_width < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width and 0 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < learn_spell_w_button_height)
}
