
function scr_find_best_heal_target_from_list(list_of_targets){
	var target_list_length = array_length(list_of_targets)
	var list_of_healable_units = []
	for(var i = 0; i < target_list_length; i++) {
		var unit = list_of_targets[i]
		if(unit.HP < unit.max_HP) {
			array_push(list_of_healable_units, unit)
		}
	}
	var healable_list_lenght = array_length(list_of_healable_units)
	if(healable_list_lenght == 0) {
		return noone
	}

	var best_candidate_yet = array_first(list_of_healable_units)
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


function scr_find_damage_spell_target(){
	var var_optimal_goodness_to_coil = 0
	var var_optimal_coil = noone
	var var_goodness = 0
	var var_damage = damage_spell.getAmount()
	with(obj_unit) {
		if(owner = global.player) {
			if(scr_get_distance(tile, other.tile) <= other.damage_spell.range) {
				var_goodness = damage*accuracy*(is_undefined(mana) ? 1 : 2) * min(var_damage, HP)	//HP * var_conversion - max(0, HP * var_conversion - other.mana)
				if(var_goodness > var_optimal_goodness_to_coil) {
					var_optimal_goodness_to_coil = var_goodness
					var_optimal_coil = id
				}
			}
		}
		
		if(owner = global.enemy and id != other.owner) {
			if(scr_get_distance(tile, other.tile) <= other.damage_spell.range) {
				var_goodness = damage*accuracy*(is_undefined(mana) ? 1 : 2) * min(var_damage, max_HP - HP)	//HP * var_conversion - max(0, HP * var_conversion - other.mana)
				if(var_goodness > var_optimal_goodness_to_coil) {
					var_optimal_goodness_to_coil = var_goodness
					var_optimal_coil = id
				}
			}
		}
	}
	return var_optimal_goodness_to_coil > damage_spell.getManaCost() * 2 ? var_optimal_coil : noone
}


function scr_find_sleep_target_within_range() {
	with(obj_unit) {
		if(scr_is_enemies(id, other) and !scr_is_debuffed(SPELLS.sleep) and altitude != ALTITUDES.invisible) {
			var var_distance = scr_get_distance(tile, other.tile)
			if(var_distance <= other.sleep.range) {
				return id
			}
		}
	}
	return noone
}

function scr_find_spell_target() {
	var var_optimal_unit = noone
	var var_goodness = least_acceptable_goodness
	var varTiles = scr_get_tiles_within_range(range)
	for(i = 0; i < array_length(varTiles); i++) {
		var varunit = array_first(varTiles[i].occupants[? ALTITUDES.ground])
		if(targetable(varunit)) {
			if(evaluate_goodness(varunit) > var_goodness) {
				var_optimal_unit = var_optimal_unit
			}
		}
	}
	return var_optimal_unit
}
	