
nisses_lista = ds_list_create()
element = "fire"
owner = noone

save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.owner = owner
	s.direction = direction
	s.speed = speed
	s.nisses_lista = nisses_lista
	s.image_angle = image_angle
}

load = function(s) {
	x = s.x
	y = s.y
	owner = s.owner
	direction = s.direction
	speed = s.speed
	nisses_lista = s.nisses_lista
	image_angle = s.image_angle
}