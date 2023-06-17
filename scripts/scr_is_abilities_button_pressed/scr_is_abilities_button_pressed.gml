function scr_is_abilities_button_pressed() {
	with(global.hud)
	{
		var test=(((hud_abilities_x-spell_button_width/2)<(mouse_x-camera_get_view_x(view_camera[0]))) and (hud_abilities_x+spell_button_width/2)>(mouse_x-camera_get_view_x(view_camera[0])) and (hud_abilities_y-spell_button_height/2)<(mouse_y-camera_get_view_y(view_camera[0])) and (hud_abilities_y+spell_button_height/2)>(mouse_y-camera_get_view_y(view_camera[0])))
	return (((hud_abilities_x-spell_button_width/2)<(mouse_x-camera_get_view_x(view_camera[0]))) and (hud_abilities_x+spell_button_width/2)>(mouse_x-camera_get_view_x(view_camera[0])) and (hud_abilities_y-spell_button_height/2)<(mouse_y-camera_get_view_y(view_camera[0])) and (hud_abilities_y+spell_button_height/2)>(mouse_y-camera_get_view_y(view_camera[0])))
	}


}
