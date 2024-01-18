function scr_level_up_w_spell() {
	var var_selected = global.tile_selected.selected_units[|0]
	global.hud.gui_display_abilities = 0
	spell_w_lvl += 1
	if(var_selected == global.nils) {
		with(var_selected) {
			spell_w_damage_reduction = list_spell_w_damage_reduction[|spell_w_lvl - 1]
			global.nils.spell_w_mana_cost = global.nils.list_spell_w_cost[|spell_w_lvl - 1]
		}
	}
	if(var_selected == global.ida) {
		with(var_selected) {
			katon_gokakyu_no_jutsu_damage = list_katon_gokakyu_no_jutsu_damage[|spell_w_lvl - 1]
			spell_w_mana_cost = list_spell_w_cost[|spell_w_lvl - 1]
		}
	}
	number_of_ability_points -= 1
}