function scr_is_cursor_on_hud() {
var var_output=(mouse_y-camera_get_view_y(view_camera[0]))>camera_get_view_height(view_camera[0])*2/3
	return var_output


}
