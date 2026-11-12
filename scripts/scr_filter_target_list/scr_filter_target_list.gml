function scr_filter_target_list(var_list) {
	var var_list_lenght = array_length(var_list)
	var filtered_list = []
	for(var i = 0; i <= var_list_lenght - 1; i++) {
		var var_target_candidate = var_list[i]
		var unreachable = altitude != ALTITUDES.air and range <= 1 and var_target_candidate.altitude == ALTITUDES.air
		if(var_target_candidate.phase != UNIT_PHASES.sleep and !unreachable) {
			array_push(filtered_list, var_target_candidate)
		}
		
	}
	return filtered_list
}
