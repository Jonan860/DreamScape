function scr_get_nearby_friendly_spell_shield(var_victim) {
	with(obj_spell_shield_animator) {
		if(scr_is_enemies(var_victim, global.nils) == 0) {
			if(scr_get_distance(var_victim.tile, owner.owner.tile) <= owner.range) {
				return self;
			}
		}
		return noone
	}
}
