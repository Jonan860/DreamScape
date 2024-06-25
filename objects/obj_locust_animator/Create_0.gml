event_inherited()
active_locusts = 0
max_active_locusts = 7
time_until_next_locust = 0
locust_spawn_interval_sec = 0.4
duration = owner.duration

save = function() {
	var s = {}
	s.x = x; s.y = y
	s.owner = owner.owner.id
	s.active_locusts = active_locusts
	return s
}


load = function(s) {
	x = s.x; y = s.y
	with(obj_unit) {
		loadFromIdd(s, "owner", "locust_swarm")
	}
	active_locust = s.active_locust
}