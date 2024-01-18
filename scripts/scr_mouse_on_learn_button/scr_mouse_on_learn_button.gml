function scr_mouse_on_learn_button() {
	return hud_abilities_x - hud_abilities_x/2 < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < hud_abilities_x + spell_button_width/2 and hud_abilities_y - spell_button_height/2 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < hud_abilities_y + spell_button_height / 2
}
