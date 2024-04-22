
owner = noone

save = function() {
	var saveDataLocal = {owner : owner}
}

load = function(s) {
	owner = s.owner
}