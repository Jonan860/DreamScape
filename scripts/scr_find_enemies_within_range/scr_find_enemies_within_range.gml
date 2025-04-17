function scr_find_enemies_within_range(_range) {
	var var_enemies_within_range = []
	with(obj_unit) {
		if(!(phase == UNIT_PHASES.dead or other.phase == UNIT_PHASES.dead or altitude == ALTITUDES.invisible)) {
			var var_distance = scr_get_distance(tile, other.tile)
			if(scr_is_enemies(id, other) and var_distance <= _range) {
				array_push(var_enemies_within_range, id)   /// careful with var
			}
		}
	}
	return var_enemies_within_range
}
