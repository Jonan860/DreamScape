event_inherited()
save = function() {
	var s = {
		owner : scr_get_idd(owner.owner)
	}
	return s
}

load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner", "revive")
	}
}
