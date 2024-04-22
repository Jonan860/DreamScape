target = noone
owner = noone
total_time_until_new_direction_sec = 0.1
time_until_new_direction_sec = total_time_until_new_direction_sec

save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.image_angle = image_angle
	s.target = target
	s.owner = owner
}

load = function(s) {
	x = s.x
	y = s.y
	image_angle = s.image_angle
	target = s.target
	owner = s.owner
}