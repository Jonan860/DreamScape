function scr_player_hunt() {
	var distance=scr_get_distance(tile, target.tile)
	show_debug_message("distance=" + string(distance))
	if(0 < distance and distance <= range) {
		if(action_bar >= attack_cost) {
			scr_disblend_list(path)
			ds_list_clear(path)
			scr_update_arrow_path()
			scr_attack_target()
		}
	} else if(action_bar >= movement_cost and distance > range) {
		destination = target.tile
		scr_update_path_to_destination()
		if(ds_list_empty(path)) {
			phase = "idle"
			action_bar = 0
			target = noone
		} else  if(action_bar >= movement_cost) {
			action_bar = 0//-=movement_cost
			var tile_to_move_to = path[|ds_list_size(path) - 2]
			scr_move_to_tile(tile_to_move_to)
			scr_update_path_to_destination()
		}
	}
}
