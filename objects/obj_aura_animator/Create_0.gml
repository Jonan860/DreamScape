event_inherited()
save = function() {
	var s = {}
	s.owner = scr_get_idd(owner.owner)
	s.ownername = owner.name
	s.idd = idd
	return s
}

load = function(s) {
	idd = s.idd
	var objName = object_get_name(object_index)
		var nameLength = string_length(objName) - 13 //obj_+_animator = 13
	with(obj_unit) {
		
		loadFromIdd(s, "owner",  string_copy(objName, 5, nameLength))
	}
}