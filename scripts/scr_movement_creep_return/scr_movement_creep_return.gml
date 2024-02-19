function scr_movement_creep_return() {
		scr_update_path_to_destination()
		if(ds_list_empty(path)) {
			action_bar = 0
			exit;
		}
		action_bar = 0 
		var tile_to_move_to = path[|ds_list_size(path) - 2]
		
		scr_blend_tile_unit_stood_on()
		scr_check_if_destination_as_close_can_be()
		scr_move_to_tile(tile_to_move_to)
}
