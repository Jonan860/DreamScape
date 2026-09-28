event_inherited()
save = function(s) {
	return {
		owner : scr_get_idd(s.owner.owner)
	}
}

load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner", "sleep")
	}
}