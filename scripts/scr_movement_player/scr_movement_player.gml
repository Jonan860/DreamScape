function scr_movement_player() {
	if(owner == global.player and phase == "movement" and action_bar >= movement_cost) {
		scr_update_path_to_destination()
		if(ds_list_empty(path) and action_bar >= movement_cost) {	
			if(has_waited_for_blocker_to_move) {
				phase="idle"
				action_bar=0///old:movement_cost
				has_waited_for_blocker_to_move=0
				exit;
			} else {
				action_bar = 0
				has_waited_for_blocker_to_move = 1
				exit;
			}
		}
		action_bar -= movement_cost //not until moved// not
		var tile_to_move_to = ds_list_find_value(path, ds_list_size(path) - 2)
		scr_blend_tile_unit_stood_on()
		scr_check_if_destination_as_close_can_be()
		scr_move_to_tile(tile_to_move_to)
		scr_update_path_to_destination()
	}
}
