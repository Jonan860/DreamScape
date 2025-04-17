event_inherited()
duration_left = variable_instance_exists(id, "owner") ? owner.duration : noone
depth -= 1

save = function() {
	return {
		duration_left : duration_left,
		owner : owner.owner.id,
		target : target.id
	}
}

load = function(s) {
	duration_left = s.duration_left
	with(obj_unit) {
		loadFromIdd(s, "owner", "dark_ritual")
		loadFromIdd(s, "target")
	}
}