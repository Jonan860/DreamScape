function scr_ai_spell_lich() {
	if(mana>=spell_q.mana_cost and spell_q.cooldown== 0 and phase != "frost nova") {
		var frost_nova_target_tile_within_range = scr_find_frost_nova_target_within_range()
		if(frost_nova_target_tile_within_range != noone) {
			scr_frost_nova(frost_nova_target_tile_within_range)
			mana -= spell_q.mana_cost
			spell_q.cooldown_current = spell_q.cooldown
		}
		exit;
	}


	if(spell_q.mana_cost + spell_e.mana_cost > mana and mana >= spell_e.mana_cost and spell_e.cooldown_current == 0 and spell_e.lvl > 0 and phase != "frost nova") {
		var var_dark_sacrifice = scr_find_dark_ritual_sacrifice()
		if(var_dark_sacrifice != noone) {
			scr_dark_sacrifice(var_dark_sacrifice)
		}
	}
}
