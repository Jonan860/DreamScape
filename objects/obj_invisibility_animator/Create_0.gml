event_inherited()
save = function() {
	return {
		owner : owner.owner.id
	}
}

load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner", "invisibility")
	}
}
