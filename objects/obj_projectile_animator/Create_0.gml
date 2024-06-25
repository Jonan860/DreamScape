owner = noone
target_tile = noone

save = function() {
	var s = {}
	s.owner = owner
	s.target_tile = target_tile
	s.x = x; s.y = y
	s.image_angle = image_angle
}

load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner")
	}
	target_tile = s.target_tile
	x = s.x; y = s.y
	image_angle = s.image_angle
}
