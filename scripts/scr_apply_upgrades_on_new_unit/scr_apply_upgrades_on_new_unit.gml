function scr_apply_upgrades_on_new_unit(var_unit){
	with(var_unit) {
		if(object_index == obj_sorceress) {
			if(global.player.sorceress_has_invisibility) {
				max_mana *= learnSpellManaMultiplicator
				mana_regen_rate_per_sec *= learnSpellManaMultiplicator
				mana *= learnSpellManaMultiplicator
			}
		}
	}
}