event_inherited()
save = function(s) {
	return {
		owner : s.owner.owner.id
	}
}

load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner", "sleep")
	}
}