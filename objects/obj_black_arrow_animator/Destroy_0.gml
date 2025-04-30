if(shouldPerform) {
	var target_unit = array_first(target_tile.occupants[? altitude])

	with(owner) {
		if(!is_undefined(target_unit) and owner != noone) {
			if(scr_is_enemies(owner, target_unit)) {	
				attackEffectWrapper(owner, target_unit)
			}
		}
		structPerformDamage()
	}
}