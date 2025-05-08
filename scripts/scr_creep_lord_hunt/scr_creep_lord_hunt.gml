function scr_creep_lord_hunt() {
	var distance = scr_get_distance(tile, target.tile)
	show_debug_message("distance = " + string(distance))
	if(0 < distance and distance <= range) {
		if(action_bar >= attack_cost) {
			scr_attack_target()
		}
	} else if(action_bar >= movement_cost and distance > range) {
		path = scr_find_closest_path_within_range(tile,target.tile, range)
		if(array_equals(path, [])) {
			phase = UNIT_PHASES.idle 
			action_bar = 0
			target = noone
		} else if(action_bar >= movement_cost) {
			action_bar = 0//-=movement_cost
			var tile_to_move_to = path[array_length(path) - 2]
			scr_move_to_tile(tile_to_move_to)
		}
	}
}