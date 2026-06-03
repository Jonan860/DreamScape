function scr_find_unit_that_is_targeting_you() {
	with(obj_unit) {
		if(scr_is_enemies(id, other.id)) {
			if(target == other.id) {
				if(scr_get_distance(tile, other.tile) <= range) {
					return id
				}
			}
		}
	}
	return noone
}