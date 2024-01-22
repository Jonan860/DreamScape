function scr_find_best_procentage_debuff_target_from_list(list_of_targets, debuff_struct) {
	var target_list_length = ds_list_size(list_of_targets)
	var list_of_non_slowed_units = ds_list_create()
	for(var i = 0; i < target_list_length; i += 1) {
		var unit = list_of_targets[|i]
		with(unit) {
			var has_debuff = scr_is_debuffed(debuff_struct)
		}
		if(!has_debuff) {
			ds_list_add(list_of_non_slowed_units,unit)
		}
	}
	var non_slowed_list_lenght = ds_list_size(list_of_non_slowed_units)
	if(non_slowed_list_lenght == 0) {
		return noone
	}

	var best_candidate_yet = list_of_non_slowed_units[|0]
	with(best_candidate_yet) {
		var best_goodness = damage * HP / (attack_cost * (1 - damage_reduction))
	}
	for(var i = 1; i < non_slowed_list_lenght; i += 1) {
		var candidate = list_of_non_slowed_units[|i] 
		with(candidate) {
			var goodness = damage * HP / (attack_cost * (1 - damage_reduction))
			if(goodness > best_goodness) {
				best_goodness = goodness
				best_candidate_yet = candidate
			}
		}
	}
	return best_candidate_yet
}