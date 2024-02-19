function search_target_just_outside_range() {
	var var_enemies_within_range2 = ds_list_create()
	ds_list_copy(var_enemies_within_range2, scr_find_enemies_at_range(range + 1))
	if(ds_list_empty(var_enemies_within_range2)) {
		return owner != global.player ? scr_find_crystals_within_range() : noone
	} else {
		return scr_choose_target_from_list(var_enemies_within_range2) ///might be more complex in future 
	}
}