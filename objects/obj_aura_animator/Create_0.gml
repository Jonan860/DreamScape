event_inherited()
save = function() {
	var s = {}
	s.owner = owner.owner.id
	return s
}

load = function(s) {
	with(obj_unit) {
		var objName = object_get_name(object_index)
		var nameLength = string_length(objName) - 13 //obj_+_animator = 13
		loadFromIdd(s, "owner",  string_copy(objName, 4, nameLength))
	}
}