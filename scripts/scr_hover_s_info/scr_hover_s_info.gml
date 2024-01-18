function scr_hover_s_info() {
	if(abs((mouse_x-camera_get_view_x(view_camera[0]))-other.hud_s_button_x)<other.spell_button_width/2 and abs((mouse_y-camera_get_view_y(view_camera[0]))-other.hud_s_button_y)<other.spell_button_height/2) {
		draw_set_color(c_green)
		//bb//draw_rectangle(camera_get_view_width(view_camera[0])-32-2*string_width(s_info),camera_get_view_height(view_camera[0])-global.hud.hud_height-32-2*string_height(s_info),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0])-global.hud.hud_height,0)
		draw_set_color(c_black)
		var old_align = draw_get_halign()
		draw_set_halign(fa_center)
		draw_text_transformed(global.hud.hud_width - string_width(s_info), global.camera_height - global.hud.hud_height - 2 * string_height(s_info), s_info, 2, 2, 0)
		draw_set_halign(old_align)
	}
}