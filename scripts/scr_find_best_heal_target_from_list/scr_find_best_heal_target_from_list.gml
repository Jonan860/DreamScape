
function scr_find_best_heal_target_from_list(list_of_targets){
	var target_list_length = array_length(list_of_targets)
	var list_of_healable_units = []
	for(var i = 0; i < target_list_length; i += 1) {
		var unit = list_of_targets[i]
		if(unit.HP < unit.max_HP) {
			array_push(list_of_healable_units, unit)
		}
	}
	var healable_list_lenght = array_length(list_of_healable_units)
	if(healable_list_lenght == 0) {
		return noone
	}

	var best_candidate_yet = list_of_healable_units[0]
	with(best_candidate_yet) {
		var best_goodness = 1 - HP/max_HP
	}
	for(var i = 1; i < healable_list_lenght; i++) {
		var candidate = list_of_healable_units[i]
		with(candidate) {
			var goodness = 1 - HP/max_HP
			if(goodness > best_goodness) {
				best_goodness = goodness
				best_candidate_yet = candidate
			}
		}
	}
	return best_candidate_yet
}