time_until_new_direction_sec -= 1/room_speed

if(distance_to_point(target.x, target.y) < speed * 2) {
	if(target != owner) {
		var stored_element = owner.element
		owner.element = ELEMENTS.nature
		attackEffectWrapper(owner, target)
		owner.element = stored_element
		target = owner
	} else {
		instance_destroy()
	}
}
if(time_until_new_direction_sec <= 0) {
	var var_main_direction = point_direction(x, y, target.x, target.y)
	direction = random_range(var_main_direction - 90, var_main_direction + 90) % 360
	time_until_new_direction_sec = total_time_until_new_direction_sec
}
