function scr_find_enemies_within_range() {
	var var_enemies_within_range = ds_list_create()
	with(obj_unit) {
		if(!(phase == "dead" or other.phase == "dead" or altitude == "invisible")) {
			var var_distance = scr_get_distance(tile, other.tile)
			if(scr_is_enemies(id, other) and var_distance <= other.range) {
				ds_list_add(var_enemies_within_range, id)   /// careful with var
			}
		}
	}
	return var_enemies_within_range
}
