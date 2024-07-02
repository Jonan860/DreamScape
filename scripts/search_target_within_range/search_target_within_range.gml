function search_target_within_range() {
	var var_enemies_within_range2 = []
	var_enemies_within_range2 = scr_find_enemies_within_range(range)
	if(array_equals(var_enemies_within_range2, [])) {
		return scr_find_crystals_within_range()
	} else {
		return scr_choose_target_from_list(var_enemies_within_range2) ///might be more complex in future 
	}
}