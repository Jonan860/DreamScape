/// @description scr_choose_target_from_list(list)    ///from unit
/// @param list
function scr_choose_target_from_list(argument0) {

	var var_list=argument0
	var var_list_lenght=ds_list_size(var_list)

	if(var_list_lenght=0)
	{
	return noone
	}

	scr_filter_target_list(var_list)  ///unattackable targets gets removed
	var var_list_lenght=ds_list_size(var_list)
	if(var_list_lenght=0)
	{
	return noone
	}
	var var_pos=irandom(var_list_lenght-1)
	var chosen_target=ds_list_find_value(var_list,var_pos)
	return chosen_target



}
