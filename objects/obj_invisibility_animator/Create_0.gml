event_inherited()
save = function() {
	return {
		owner : scr_get_idd(owner.owner)
	}
}

load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner", "invisibility")
	}
}
