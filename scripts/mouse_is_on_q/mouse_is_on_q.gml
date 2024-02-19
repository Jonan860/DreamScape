function mouse_is_on_q() {
	return abs((mouse_x - camera_get_view_x(view_camera[0])) - other.hud_q_button_x) < other.spell_button_width/2 and abs((mouse_y - camera_get_view_y(view_camera[0])) - other.hud_q_button_y) < other.spell_button_height/2
}