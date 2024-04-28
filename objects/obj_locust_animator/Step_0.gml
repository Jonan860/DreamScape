x = owner.owner.x; y = owner.owner.y
if(active_locusts < max_active_locusts and time_until_next_locust <= 0 and duration > 0) {
	with(instance_create_depth(x, y, 0, obj_locust, {owner : other})) {
		owner = owner.id
	}
	active_locusts += 1
	time_until_next_locust = locust_spawn_interval_sec
} else {
	time_until_next_locust = max(0, time_until_next_locust - 1/room_speed)
}
duration -= 1/room_speed
if(duration <= 0 and !instance_exists(obj_locust)) {
	instance_destroy()
}

