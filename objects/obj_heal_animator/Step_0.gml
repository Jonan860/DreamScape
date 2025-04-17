duration_left = max(0, duration_left - 1/room_speed)
image_alpha = -16 * duration_left * (duration_left - 0.5)

if(duration_left <= 0 or owner == undefined or target == undefined) {
	instance_destroy()
	exit
}
x = target.x; y = target.y
