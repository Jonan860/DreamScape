event_inherited()
active_locusts = 0
max_active_locusts = 7
time_until_next_locust = 0
locust_spawn_interval_sec = 0.4
if(variable_instance_exists(id, "owner")) {
	duration = owner.duration
}
idd = noone
save = function() {
	var s = {}
	s.x = x; s.y = y
	s.idd = id
	s.owner = owner.owner.id
	s.active_locusts = active_locusts
	s.duration = duration
	return s
}


load = function(s) {
	x = s.x; y = s.y
	idd = s.idd
	with(obj_unit) {
		loadFromIdd(s, "owner", "locust_swarm")
	}
	active_locust = s.active_locusts
	duration = s.duration
}