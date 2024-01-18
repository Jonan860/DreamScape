function scr_hover_q_info_abilities(){
	if(abs((mouse_x - camera_get_view_x(view_camera[0])) - other.hud_q_button_x) < other.spell_button_width/2 and abs((mouse_y - camera_get_view_y(view_camera[0])) - other.hud_q_button_y) < other.spell_button_height/2) {
		draw_set_color(c_green)
		//boda borg//draw_rectangle(camera_get_view_width(view_camera[0])-32-2*string_width(q_info_abilities),camera_get_view_height(view_camera[0])-global.hud.hud_height-32-2*string_height(q_info_abilities),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0])-global.hud.hud_height,0)
		draw_set_color(c_black)
		var old_align = draw_get_halign()
		draw_set_halign(fa_center)
		//bb//draw_text_transformed(global.hud.hud_width-string_width(q_info_abilities),global.camera_height-global.hud.hud_height-2*string_height(q_info_abilities),q_info_abilities,2,2,0)
		draw_set_halign(old_align)
	}
}