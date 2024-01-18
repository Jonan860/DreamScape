function scr_filter_target_list(var_list) {
	var var_list_lenght = ds_list_size(var_list)
	var filtered_list = ds_list_create()
	for(var i = 0; i <= var_list_lenght - 1; i += 1) {
		var var_target_candidate = var_list[|i]
		if(var_target_candidate.phase != "sleep") {
			ds_list_add(filtered_list, var_target_candidate)
		}
	}
	ds_list_copy(var_list, filtered_list)
	ds_list_destroy(filtered_list)
}
