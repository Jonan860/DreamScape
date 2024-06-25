event_inherited()
save = function() {
	var s = {
		owner : owner.owner.id
	}
	return s
}
load = function(s) {
	with(obj_unit) {
		loadFromIdd(s, "owner", "kawarimi_no_jutsu")
	}
}
	

