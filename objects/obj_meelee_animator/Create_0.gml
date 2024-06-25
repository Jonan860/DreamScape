save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.image_angle = image_angle
	s.owner = owner
	s.alarm = alarm[0]
	s.object_index = object_index
}

load = function(s) {
	x = s.x; y = s.y
	image_alpha = s.image_alpha
	with(obj_unit) {
		loadFromIdd(s, "owner")
	}
	alarm[0] = s.alarm
}