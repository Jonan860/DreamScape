function scr_update_path_to_destination() {
	with(obj_game) {
		show_debug_message("instance_unit_again" + string(other.id))
		var_invisibles_path = []
		
		with(other) {
			var var_invisibles_path = scr_find_invisibles_path(tile, destination) 
			if(scr_list_of_tile_occupied(var_invisibles_path, altitude) and array_length(var_invisibles_path) > 1) {
				var substitute_destination = scr_find_best_destination_substitute(destination)
				var var_invisibles_path = scr_find_invisibles_path(tile,  substitute_destination)
			}
		}
		optimal_path = []
		var i = array_length(var_invisibles_path) - 1
		while(array_equals(optimal_path, []) and i > 0) {
			if(var_invisibles_path[i] != noone) {
				var candidate_path = scr_find_path(other.tile, var_invisibles_path[i], other.altitude)
				if(!array_equals(candidate_path, [])) {
					optimal_path = candidate_path
					scr_disblend_list(other.path)
					other.path = []
					other.path = optimal_path
				}
			}
			i--
		}
	}
	scr_blend_path()
	scr_update_arrow_path()
}
