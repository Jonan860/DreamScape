function scr_attack_hp_reduction(var_perputrator, var_victim) {
	var spellshieldreduction = scr_get_spell_shield_damage_reduction(var_victim)
	var elementattackbonus = scr_get_element_attack_bonus(var_perputrator.element, var_victim.element)
	var var_hp_to_remove = var_perputrator.damage * (1 - var_victim.damage_reduction) * (1 - spellshieldreduction) * elementattackbonus
	var_victim.HP -= var_hp_to_remove
	if(object_is_ancestor(var_perputrator.object_index, obj_unit)) {
		if(var_perputrator.vampiric_aura_percentage > 0) {
			var_perputrator.HP = min(var_perputrator.max_HP, var_perputrator.HP + var_perputrator.vampiric_aura_percentage / 100 * var_hp_to_remove)
		}
		if(var_victim.object_index == obj_crypt_lord) {
			if(var_victim.spiked_carapace.lvl > 0 and var_perputrator.range == 1) {
				var return_damage_fraction = var_victim.list_of_returned_damage_from_spiked_carapacelvl[|var_victim.spell_w.lvl - 1]
				var_perputrator.HP -= var_hp_to_remove * return_damage_fraction
			}
		}
	}
	if(var_perputrator.object_index == obj_light_beam) {
		var var_creator = var_perputrator.creator
		var_creator.HP = min(var_creator.max_HP, var_creator.HP + var_creator.vampiric_aura_percentage / 100 * var_hp_to_remove)
		var_victim.HP -= var_hp_to_remove / room_speed
	}
}
