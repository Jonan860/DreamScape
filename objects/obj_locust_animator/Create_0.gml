function locustPerforming() {
	if(active_locusts < max_active_locusts and time_until_next_locust <= 0) {
		var locust = instance_create_depth(x, y, 0, obj_locust)
		with(locust) {
			owner = owner.id
		}
		active_locusts += 1
		time_until_next_locust = locust_spawn_interval_sec
	} else {
		time_until_next_locust = max(0, time_until_next_locust - 1/room_speed)
	}
	time_left -= 1/room_speed
	if(time_left <= 0) {
		activated = 0
	}
}