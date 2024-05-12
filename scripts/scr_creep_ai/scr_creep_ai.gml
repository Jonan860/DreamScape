
function scr_creep_ai() {
	switch(phase) {
		case UNIT_PHASES.hunt :
			if(scr_get_distance(tile, target.tile) > range or ds_list_find_index(list_of_territory_tiles, target.tile) == noone and action_bar == 0) {
				var var_closest_enemy = scr_get_closest_enemy_in_territory()
				if(var_closest_enemy == noone) {
					destination = start_tile
					phase = UNIT_PHASES.returning
				}
				target = var_closest_enemy == noone ? noone : var_closest_enemy
			}; break

		case UNIT_PHASES.idle : 
			var_closest_enemy = scr_get_closest_enemy_in_territory()
			if(var_closest_enemy != noone) {
				if(scr_get_distance(var_closest_enemy.tile, tile) <= range) {
					target = var_closest_enemy
					phase = UNIT_PHASES.hunt
				}
			}; break;

		case UNIT_PHASES.returning :
			if(tile == start_tile) {
				phase = UNIT_PHASES.idle
				action_bar = 0
			}
			break;
	}
}