function scr_ai_crypt_lord() {
	if(mana >= spell_e_mana_cost and spell_e_cooldown_current == 0) {
		var soul_within_range = scr_find_soul_within_range()
		if(soul_within_range != noone) {
			scr_raise_carrion_beetle(soul_within_range)
			spell_e_cooldown_current == spell_e_cooldown_max
			mana -= spell_e_mana_cost
		}
	}
	
	if(mana >= spell_r_mana_cost and spell_r_cooldown_current == 0) {
		var list_of_enemies = scr_find_enemies_within_range()
		if(!ds_list_empty(list_of_enemies)) {
			scr_activate_locust()
			mana -= spell_r_mana_cost
			spell_r_cooldown_current = spell_r_cooldown_max
		}
		ds_list_destroy(list_of_enemies)
	}
}
