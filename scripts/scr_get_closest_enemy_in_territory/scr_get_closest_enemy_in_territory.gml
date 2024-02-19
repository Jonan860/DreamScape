function scr_get_closest_enemy_in_territory() {
	//returns the closest_enemy in territory, noone if noone
	var var_candidate = noone
	var var_candidate_distance = noone
	var var_tile = noone
	var var_occupant_ground = noone

	for(var i = 0; i <= ds_list_size(list_of_territory_tiles) - 1; i += 1) {
		var_tile = list_of_territory_tiles[|i]
		var_occupant_ground = var_tile.grounds_list[|0]
		if(!is_undefined(var_occupant_ground)) {
			if(scr_is_enemies(id, var_occupant_ground)) {
				var_candidate = var_occupant_ground
				if(var_candidate == noone or scr_get_distance(tile, var_tile) < var_candidate_distance) {
					var_candidate_distance = scr_get_distance(tile, var_tile)
				}
			}
		}
	}
	return var_candidate
}
