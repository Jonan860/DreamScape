function scr_find_crystals_within_range() {
	var var_crystals_within_range = noone
	with(obj_crystal) {
		var var_distance = scr_get_distance(tile, other.tile)
		if(scr_is_enemies(id, other) and var_distance <= other.range) {
			var_crystals_within_range = id   /// careful with var
		}
	}
	return var_crystals_within_range
}
