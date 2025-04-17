function scr_find_best_procentage_debuff_target_from_list(list_of_targets, ailmentEnum) {
	var target_list_length = array_length(list_of_targets)
	var non_ailed_units = []
	for(var i = 0; i < target_list_length; i++) {
		var unit = list_of_targets[i]
		with(unit) {
			var has_debuff = scr_is_debuffed(ailmentEnum)
		}
		if(!has_debuff) {
			array_push(non_ailed_units, unit)
		}
	}
	if(array_length(non_ailed_units) == 0) {
		return noone
	}
	var best_candidate_yet = noone
	var best_goodness = 0
	for(var i = 0; i < array_length(non_ailed_units); i++) {
		var candidate = non_ailed_units[i] 
		with(candidate) {
			var goodness = (damage + armor) * HP / attack_cost
			if(goodness > best_goodness) {
				best_goodness = goodness
				best_candidate_yet = candidate
			}
		}
	}
	return best_candidate_yet
}