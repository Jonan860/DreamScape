save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.owner = owner
}

load = function(s) {
	x = s.x
	y = s.y
	owner = s.owner
}