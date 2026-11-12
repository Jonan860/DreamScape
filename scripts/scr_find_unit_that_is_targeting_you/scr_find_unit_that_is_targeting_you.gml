function scr_find_unit_that_is_targeting_you() {
	var selff = id
	with(obj_unit) {
		var othrr = id
		with(selff) {
				if(!isUnReachable(othrr)) {
					if(scr_is_enemies(othrr, selff)) {
						if(othrr.target == selff) {
							if(scr_get_distance(othrr.tile, selff.tile) <= range) {
								return id
							}
						}
					}
				}
		}
	}
	return noone
}