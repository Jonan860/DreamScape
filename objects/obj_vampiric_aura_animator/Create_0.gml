event_inherited()
save = function() {
	var s = {}
	s.owner = owner.owner.id
	return s
}

load = function(s) {
	x = s.x; y = s.y
	with(obj_unit) {
		loadFromIdd(s, "owner", "vampiric_aura")
	}
}