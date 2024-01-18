
function scr_find_best_heal_target_from_list(list_of_targets){
	var target_list_length = ds_list_size(list_of_targets)
	var list_of_healable_units = ds_list_create()
	for(var i = 0; i < target_list_length; i += 1) {
		var unit = ds_list_find_value(list_of_targets, i)
		if(unit.HP < unit.max_HP) {
			ds_list_add(list_of_healable_units, unit)
		}
	}
	var healable_list_lenght = ds_list_size(list_of_healable_units)
	if(healable_list_lenght == 0) {
		return noone
	}

	var best_candidate_yet=ds_list_find_value(list_of_healable_units,0)
	with(best_candidate_yet) {
		var best_goodness = 1 - HP/max_HP
	}
	for(var i = 1; i < healable_list_lenght; i += 1) {
		var candidate = ds_list_find_value(list_of_healable_units, i)
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