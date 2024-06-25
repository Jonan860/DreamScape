event_inherited()
duration_left = owner.duration
depth -= 1

save = function() {
	return {
		duration_left : duration_left,
		owner : owner.owner.id
	}
}

load = function(s) {
	duration_left = s.duration_left
	with(obj_unit) {
		loadFromIdd(s, "owner", "dark_ritual")
	}
}