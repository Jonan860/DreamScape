function scr_hover_e_info_abilities(){
	if(abs((mouse_x - camera_get_view_x(view_camera[0])) - other.hud_e_button_x) < other.spell_button_width/2 and abs((mouse_y - camera_get_view_y(view_camera[0])) - other.hud_e_button_y) < other.spell_button_height/2) {
		draw_set_color(c_green)
		draw_set_color(c_black)
		var old_align = draw_get_halign()
		draw_set_halign(fa_center)
		draw_set_halign(old_align)
	}
}