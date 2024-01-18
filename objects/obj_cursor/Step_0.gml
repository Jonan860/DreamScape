
x = mouse_x; y = mouse_y

if((x - camera_get_view_x(view_camera[0]) < 0) or ((x - camera_get_view_x(view_camera[0])) > camera_get_view_width(view_camera[0]))) {
	var xx = x - camera_get_view_x(view_camera[0])
	n = random(5)
}
var var_neg_x_speed = -min(max(32 - (x - camera_get_view_x(view_camera[0])), 0), 32)
var var_pos_x_speed = min(max(32 - camera_get_view_width(view_camera[0]) + (x - camera_get_view_x(view_camera[0])), 0), 32)
var var_x_speed = var_neg_x_speed + var_pos_x_speed
var var_pos_y_speed = min(max(32 - camera_get_view_height(view_camera[0]) + y - camera_get_view_y(view_camera[0]), 0), 32)
var var_neg_y_speed = -min(max(32 - (y - camera_get_view_y(view_camera[0])), 0), 32)
var var_y_speed = var_neg_y_speed + var_pos_y_speed
if(var_pos_x_speed * var_neg_x_speed != 0 or var_pos_y_speed * var_neg_y_speed != 0 or abs(var_x_speed) == 32 or var_y_speed > 0) {
	n = random(5)
}
camera_set_view_pos(view_camera[0], min(max(camera_get_view_x(view_camera[0]) + var_x_speed, 0), room_width - camera_get_view_width(view_camera[0])), min(max(camera_get_view_y(view_camera[0]) + var_y_speed, 0), room_height - camera_get_view_height(view_camera[0])))