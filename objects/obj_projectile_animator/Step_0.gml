
if(point_distance(x, y, target_tile._x, target_tile._y) < 10) {
	shouldPerform = true
	instance_destroy()
}

if(abs(x) > 1.2 * room_width or abs(y) > 1.2 * room_height) {
	instance_destroy()
}