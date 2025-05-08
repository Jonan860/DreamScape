function scr_filter_target_list(var_list) {
	var var_list_lenght = array_length(var_list)
	var filtered_list = []
	for(var i = 0; i <= var_list_lenght - 1; i++) {
		var var_target_candidate = var_list[i]
		if(var_target_candidate.phase != UNIT_PHASES.sleep) {
			array_push(filtered_list, var_target_candidate)
		}
	}
	var_list = filtered_list
}
