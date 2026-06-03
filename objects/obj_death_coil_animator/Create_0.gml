
element = ELEMENTS.normal
owner = noone
target = noone

save = function() {
	var s = {}
	s.x = x; s.y = y
	s.owner = owner.owner.id
	s.direction = direction
	s.speed = speed
	s.target = target
	s.image_angle = image_angle
	return s
}

load = function(s) {
	x = s.x; y = s.y
	owner = s.owner
	target = s.target
	direction = s.direction
	speed = s.speed
	image_angle = s.image_angle
	with(obj_unit) {
		loadFromIdd(s, "owner", "death_coil")
	}
}
