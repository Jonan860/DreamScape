function scr_attack_hp_reduction(var_perputrator, var_victim) {
	with(scr_get_nearby_friendly_spell_shield(var_victim)) {
		HP -= var_perputrator.damage
		exit;
	}
	var elementattackbonus = scr_get_element_attack_bonus(var_perputrator.element, var_victim.element)
	var var_hp_to_remove = var_perputrator.damage * (1 - var_victim.damage_reduction)  * elementattackbonus
	var_victim.HP -= var_hp_to_remove
	if(object_is_ancestor(var_perputrator.object_index, obj_unit)) {
		var_perputrator.HP = min(var_perputrator.max_HP, var_perputrator.HP + get_max_vamp_aura(var_perputrator) / 100 * var_hp_to_remove)
		with(var_victim) {
			if(object_index == obj_crypt_lord) {
				with(spiked_carapace) {
					if(lvl > 0 and var_perputrator.range == 1) {
						var return_damage_fraction = amount[1][lvl - 1]
						var_perputrator.HP -= var_hp_to_remove * return_damage_fraction //damage reduction fixas i create event
					}
				}
			}
		}
	}
	if(var_perputrator.object_index == obj_light_beam) {
		var var_creator = var_perputrator.creator
		var_creator.HP = min(var_creator.max_HP, var_creator.HP + get_max_vamp_aura(var_creator) * var_hp_to_remove)
		var_victim.HP -= var_hp_to_remove / room_speed
	}
}

function get_max_vamp_aura(unit) {
	var varMax = 0
	with(obj_vampiric_aura_animator) {
		with(owner) {
			if(unit.owner == owner.owner) {
				if(scr_get_distance(unit.tile, owner.tile) <= owner.range) {
					varMax = max(getAmount(), varMax)
				}
			}
		}
	}
	return varMax
}
