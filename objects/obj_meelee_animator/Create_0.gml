save = function() {
	var s = {}
	s.x = x; s.y = y
	s.image_angle = image_angle
	if(variable_instance_exists(id, "owner")) {
		s.owner = owner
	}
	s.alarm = alarm[0]
	s.object_index = object_index
	return s
}

load = function(s) {
	x = s.x; y = s.y
	image_angle = s.image_angle
	if(variable_instance_exists(id, "owner")) {
		with(obj_unit) {
			loadFromIdd(s, "owner")
		}
	}
	alarm[0] = s.alarm
}