function scr_find_soul_within_range(_range) {
	with(obj_soul) {
		var distance = scr_get_distance(other.tile, tile)
		if(distance <= _range) {	
			return id
		}
	}
	return noone
}
