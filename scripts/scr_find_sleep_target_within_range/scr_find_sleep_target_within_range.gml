function scr_find_sleep_target_within_range() {
	with(obj_unit) {
		if(scr_is_enemies(id, other) and phase != UNIT_PHASES.sleep and altitude != ALTITUDES.invisible) {
			var var_distance = scr_get_distance(tile, other.tile)
			if(var_distance <= other.sleep.range) {
				return id
			}
		}
	}
	return noone
}
