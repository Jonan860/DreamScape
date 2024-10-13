save = function() {
	var s = {}
	if(variable_instance_exists(id, "owner")) {
		s.owner = owner
	}
	s.target_tileX = target_tile.tile_x
	s.target_tileY = target_tile.tile_y
	s.x = x; s.y = y
	s.image_angle = image_angle
	s.speed = speed
	s.direction = direction
	s.altitude = altitude
	return s
}

load = function(s) {
	owner = noone
	with(obj_unit) {
		loadFromIdd(s, "owner")
	}
	target_tile = getTile(s.target_tileX, s.target_tileY)
	x = s.x; y = s.y
	image_angle = s.image_angle
	speed = s.speed
	direction = s.direction
	altitude = s.altitude
}
