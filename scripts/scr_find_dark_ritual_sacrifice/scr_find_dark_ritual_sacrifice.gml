function scr_find_dark_ritual_sacrifice() {
	var var_optimal_goodness_to_ritual = 0
	var var_optimal_sacrifice = noone
	var var_goodness = 0
	var var_conversion = dark_ritual.getAmount()
	with(obj_unit) {
		if(owner = global.enemy and !object_is_ancestor(object_index, obj_hero)) {
			if(scr_get_distance(tile, other.tile) <= other.dark_ritual.range) {
				var_goodness = HP * var_conversion - max(0, HP * var_conversion - other.mana)
				if(object_is_ancestor(object_index, obj_summon)) {
					var_goodness *= 2
				}
				if(var_goodness > var_optimal_goodness_to_ritual) {
					var_optimal_goodness_to_ritual = var_goodness
					var_optimal_sacrifice = id
				}
			}
		}
	}
	return var_goodness > dark_ritual.getManaCost() * 2 ? var_optimal_sacrifice : noone
}
