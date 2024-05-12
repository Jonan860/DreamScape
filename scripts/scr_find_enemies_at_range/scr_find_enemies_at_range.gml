function scr_find_enemies_at_range(var_range) {
	var var_enemies_at_range = ds_list_create()
	with(obj_unit) {
		if(  !(phase == UNIT_PHASES.dead or other.phase == UNIT_PHASES.dead or altitude == ALTITUDES.invisible)) {
			var var_distance = scr_get_distance(tile, other.tile)
			if(scr_is_enemies(id,other) and var_distance = var_range) {
				ds_list_add(var_enemies_at_range, id)  
			}
		}
	}
	return var_enemies_at_range
}