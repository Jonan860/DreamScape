function scr_attack_hp_reduction(var_perputrator, var_victim, _armor) {
	with(scr_get_nearby_friendly_spell_shield(var_victim)) {
		HP -= var_perputrator.damage
		exit;
	}
	var elementattackbonus = scr_get_element_attack_bonus(var_perputrator.element, var_victim.element)
	var reducedArmor = max(_armor - var_perputrator.piercing, 0)
	var reducedDamage = var_perputrator.damage - reducedArmor
	var var_hp_to_remove = (reducedDamage > 0 ? ceil(reducedDamage) : pow(2, reducedDamage)) * elementattackbonus
	var_victim.HP -= var_hp_to_remove
	if(object_is_ancestor(var_perputrator.object_index, obj_unit)) {
		var_perputrator.HP = min(var_perputrator.max_HP, var_perputrator.HP + get_max_aura(var_perputrator, obj_vampiric_aura_animator) / 100 * var_hp_to_remove)
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
		var_creator.HP = min(var_creator.max_HP, var_creator.HP + get_max_aura(var_creator, obj_vampiric_aura_animator) * var_hp_to_remove)
		var_victim.HP -= var_hp_to_remove / room_speed
	}
}

function get_max_aura(unit, animator_object_index) {
	var varMax = 0
	with(animator_object_index) {
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
