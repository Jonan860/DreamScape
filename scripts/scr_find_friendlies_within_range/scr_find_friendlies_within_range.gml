function scr_find_friendlies_within_range() {
	var var_friendlies_within_range = ds_list_create()
	with(obj_unit) {
		if(!(phase == UNIT_PHASES.dead or other.phase == UNIT_PHASES.dead)) {
			var var_distance = scr_get_distance(tile, other.tile)
			if(!scr_is_enemies(id, other.id) and var_distance <= other.range) {
				ds_list_add(var_friendlies_within_range, id)   /// careful with var
			}
		}
	}
	return var_friendlies_within_range
}