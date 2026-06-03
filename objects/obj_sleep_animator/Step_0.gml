if(target.HP <= 0) {
	instance_destroy()
}

save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.owner = owner
	return s
}

load = function(s) {
	x = s.x
	y = s.y
	owner = s.owner
}