function scr_update_path_to_destination() {
	with(obj_game) {
		show_debug_message("instance_unit_again" + string(other.id))
		var_invisibles_path = ds_list_create()
		
		with(other) {
			var var_invisibles_path = scr_find_invisibles_path(tile, destination) 
			if(scr_list_of_tile_occupied(var_invisibles_path, altitude) and ds_list_size(var_invisibles_path) > 1) {
				var substitute_destination = scr_find_best_destination_substitute(destination)
				var var_invisibles_path = scr_find_invisibles_path(tile,  substitute_destination)
			}
		}
		ds_list_clear(optimal_path)
		var i = ds_list_size(var_invisibles_path) - 1
		while(ds_list_empty(optimal_path) and i > 0) {
			if(ds_list_find_value(var_invisibles_path, i) != noone) {
				var candidate_path = scr_find_path(other.tile, ds_list_find_value(var_invisibles_path, i), other.altitude)
				if(ds_list_empty(candidate_path) == false) {
					ds_list_copy(optimal_path, candidate_path)
					scr_disblend_list(other.path)
					ds_list_clear(other.path)
					ds_list_copy(other.path, optimal_path)
				}
			}
			i -= 1
		}
	}
	scr_blend_path()
	scr_update_arrow_path()
}
