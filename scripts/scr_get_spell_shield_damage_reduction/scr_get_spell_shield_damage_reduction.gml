function scr_get_spell_shield_damage_reduction(var_victim) {
	with(global.nils.spell_w) {
	if(activated) {
		if(scr_is_enemies(var_victim, global.nils) == 0) {
			if(scr_get_distance(var_victim.tile, owner.tile) <= range) {
				damage_reduction; exit;
			}
		}
	}
	return 0
	}
}
