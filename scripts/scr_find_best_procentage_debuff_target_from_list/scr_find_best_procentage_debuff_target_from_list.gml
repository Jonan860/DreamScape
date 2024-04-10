function scr_find_best_procentage_debuff_target_from_list(list_of_targets, ailmentEnum) {
	var target_list_length = ds_list_size(list_of_targets)
	var non_ailed_units = ds_list_create()
	for(var i = 0; i < target_list_length; i += 1) {
		var unit = list_of_targets[|i]
		with(unit) {
			var has_debuff = scr_is_debuffed(ailmentEnum)
		}
		if(!has_debuff) {
			ds_list_add(non_ailed_units, unit)
		}
	}
	if(ds_list_size(non_ailed_units) == 0) {
		return noone
	}
	var best_candidate_yet = noone
	var best_goodness = 0
	for(var i = 0; i < ds_list_size(non_ailed_units); i += 1) {
		var candidate = non_ailed_units[|i] 
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