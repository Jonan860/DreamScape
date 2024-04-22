active_locusts = 0
max_active_locusts = 7
time_until_next_locust = 0
locust_spawn_interval_sec = 0.4
duration = owner.duration

save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.owner = owner
	s.active_locusts = active_locusts
}

load = function(s) {
	x = s.x
	y = s.y
	owner = s.owner
	active_locust = s.active_locust
	
}