
function scr_is_button_pressed(_button) {
	_button = charToButton[? _button]
	var insideY = (_button._y - spell_button_height/2) < (mouse_y - camera_get_view_y(view_camera[0])) and (_button._y + spell_button_height/2) > (mouse_y - camera_get_view_y(view_camera[0]))
	var insideX = (_button._x - spell_button_width/2) < (mouse_x - camera_get_view_x(view_camera[0])) and (_button._x + spell_button_width/2) > (mouse_x - camera_get_view_x(view_camera[0]))	
	return insideY and insideX
}
