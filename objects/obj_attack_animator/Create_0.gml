if(!variable_instance_exists(id, "owner")) {
	owner = noone
}
save = function() {
	return {owner : owner}
}