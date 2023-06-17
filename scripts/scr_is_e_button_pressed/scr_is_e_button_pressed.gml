function scr_is_e_button_pressed() {
	with(global.hud)
	{
	return keyboard_check_pressed(ord("e")) or (((hud_e_button_x-spell_button_width/2)<(mouse_x-camera_get_view_x(view_camera[0]))) and (hud_e_button_x+spell_button_width/2)>(mouse_x-camera_get_view_x(view_camera[0])) and (hud_e_button_y-spell_button_height/2)<(mouse_y-camera_get_view_y(view_camera[0])) and (hud_e_button_y+spell_button_height/2)>(mouse_y-camera_get_view_y(view_camera[0])))
	}


}
