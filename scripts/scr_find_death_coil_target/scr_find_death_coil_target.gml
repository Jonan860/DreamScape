function scr_find_death_coil_target(){
	var var_optimal_goodness_to_coil = 0
	var var_optimal_coil = noone
	var var_goodness = 0
	var var_damage = death_coil.getAmount()
	with(obj_unit) {
		if(owner = global.player) {
			if(scr_get_distance(tile, other.tile) <= other.death_coil.range) {
				var_goodness = damage*accuracy*(is_undefined(mana) ? 1 : 2) * min(var_damage, HP)	//HP * var_conversion - max(0, HP * var_conversion - other.mana)
				if(var_goodness > var_optimal_goodness_to_coil) {
					var_optimal_goodness_to_coil = var_goodness
					var_optimal_coil = id
				}
			}
		}
		
		if(owner = global.enemy and id != other.owner) {
			if(scr_get_distance(tile, other.tile) <= other.death_coil.range) {
				var_goodness = damage*accuracy*(is_undefined(mana) ? 1 : 2) * min(var_damage, max_HP - HP)	//HP * var_conversion - max(0, HP * var_conversion - other.mana)
				if(var_goodness > var_optimal_goodness_to_coil) {
					var_optimal_goodness_to_coil = var_goodness
					var_optimal_coil = id
				}
			}
		}
	}
	return var_optimal_goodness_to_coil > death_coil.getManaCost() * 2 ? var_optimal_coil : noone
}