
function scr_creep_ai() {
	switch(phase) {
		case "hunt" :
			if(scr_get_distance(tile, target.tile) > range or ds_list_find_index(list_of_territory_tiles, target.tile) == noone and action_bar == 0) {
				var var_closest_enemy = scr_get_closest_enemy_in_territory()
				if(var_closest_enemy == noone) {
					destination = start_tile
					phase = "return"
				}
				target = var_closest_enemy == noone ? noone : var_closest_enemy
			}

		case "idle" : 
			var_closest_enemy = scr_get_closest_enemy_in_territory()
			if(var_closest_enemy != noone) {
				if(scr_get_distance(var_closest_enemy.tile, tile) <= range) {
					target = var_closest_enemy
					phase = "hunt"
				}
			}

		case "return" :
			if(tile == start_tile) {
				phase = "idle"
				action_bar = 0
			}
	}
}