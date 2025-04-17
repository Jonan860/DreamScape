duration_left = max(0, duration_left - 1/room_speed)
if(duration_left <= 0) {
	instance_destroy()
}