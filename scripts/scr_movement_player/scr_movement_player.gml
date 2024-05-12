function scr_movement_player() {
		scr_update_path_to_destination()
		if(ds_list_empty(path)) {	
			action_bar = 0
			has_waited_for_blocker_to_move = !has_waited_for_blocker_to_move
			if(has_waited_for_blocker_to_move) {
				phase = UNIT_PHASES.idle
			}
			exit;
		}
		action_bar -= movement_cost //not until moved// not
		var tile_to_move_to = path[|ds_list_size(path) - 2]
		scr_blend_tile_unit_stood_on()
		scr_check_if_destination_as_close_can_be()
		scr_move_to_tile(tile_to_move_to)
		scr_update_path_to_destination()
}
