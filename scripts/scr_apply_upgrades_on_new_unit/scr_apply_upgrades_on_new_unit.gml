function scr_apply_upgrades_on_new_unit(var_unit){
	with(var_unit) {
		switch(object_index) {
			case obj_sorceress :
				if(global.player.sorceress_has_invisibility) {
					max_mana *= learnSpellManaMultiplicator
					mana_regen_rate_per_sec *= learnSpellManaMultiplicator
					mana *= learnSpellManaMultiplicator
					invisibility.lvl = 1
				}
			break;
			case obj_elven_archer :
				scr_update_range()
				break;
			case obj_footman : 
				if(owner.footman_has_defend_upgrade) {
					defend.lvl = 1
				}
				break
			case obj_priest : 
				if(global.player.priest_has_dispel) {
					max_mana *= learnSpellManaMultiplicator
					mana_regen_rate_per_sec *= learnSpellManaMultiplicator
					mana *= learnSpellManaMultiplicator
					dispel.lvl = 1
				}
		}
	
	}
}