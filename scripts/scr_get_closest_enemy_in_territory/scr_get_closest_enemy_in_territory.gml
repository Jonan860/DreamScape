function scr_get_closest_enemy_in_territory() {
	//returns the closest_enemy in territory, noone if noone
	var var_candidate = noone
	var var_candidate_distance = noone
	var var_tile = noone
	var var_occupant = noone

	for(var i = 0; i <= array_length(list_of_territory_tiles) - 1; i++) {
		var_tile = list_of_territory_tiles[i]
		var var_altitudes = [ALTITUDES.air,ALTITUDES.ground]
		for(var j = 0; j < array_length(var_altitudes); j++) {
			var_alt = var_altitudes[j]
			var_occupant = array_first(var_tile.occupants[? var_alt])
			if(!is_undefined(var_occupant)) {
				if(scr_is_enemies(id, var_occupant)) {
					var_candidate = var_occupant
					if(var_candidate == noone or scr_get_distance(tile, var_tile) < var_candidate_distance) {
						var_candidate_distance = scr_get_distance(tile, var_tile)
					}
				}
			}
		}
	}
	return var_candidate
}
