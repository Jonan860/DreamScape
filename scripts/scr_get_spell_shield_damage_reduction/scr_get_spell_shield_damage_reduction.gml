function scr_get_spell_shield_damage_reduction(var_victim) {
	if(global.nils.spell_w_activated) {
		if(scr_is_enemies(var_victim,global.nils) == 0) {
			if(scr_get_distance(var_victim.tile, global.nils.tile) <= global.nils.spell_w_range) {
				global.nils.spell_w_damage_reduction; exit;
			}
		}
	}
	return 0
}
