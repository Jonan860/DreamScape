function scr_search_and_perhaps_get_target() {
	var var_target=search_target_within_range()
	if(var_target==noone and owner=global.player)  /// maybe enemies also later
	{
		
	return search_target_just_outside_range()
		
	}
	else
	{
	return var_target
	}
}
