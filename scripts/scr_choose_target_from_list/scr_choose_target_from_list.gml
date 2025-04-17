function scr_choose_target_from_list(var_list) {
	var var_list_lenght = array_length(var_list)
	if(var_list_lenght = 0) {
		return noone
	}
	scr_filter_target_list(var_list)  ///unattackable targets gets removed
	var var_list_lenght = array_length(var_list)
	if(var_list_lenght == 0) {
		return noone
	}
	var var_pos = irandom(var_list_lenght - 1)
	var chosen_target = var_list[var_pos]
	return chosen_target
}
