function scr_level_up_e_spell() {
	var var_selected = global.tile_selected.selected_units[|0]
	global.hud.gui_display_abilities == 0
	spell_e_lvl += 1
	number_of_ability_points -= 1
	if(var_selected.object_index == obj_ida) {
		spell_e_cooldown_max = list_spell_e_cooldown_max[|spell_e_lvl - 1]
		spell_e_mana_cost = list_spell_e_cost[|spell_e_lvl - 1]
	}
	if(var_selected.object_index=obj_nils) {
		spell_e_damage_multiplier = list_spell_e_damage_multiplier[|spell_e_lvl - 1]
		spell_e_mana_cost = list_spell_e_cost[|spell_e_lvl - 1]
	}
	scr_update_info_text()
}