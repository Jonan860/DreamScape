if(!variable_instance_exists(id, "owner")) {
	owner = noone
}
save = function() {
	var _idd = scr_get_idd(owner)
	return {owner : _idd}
}