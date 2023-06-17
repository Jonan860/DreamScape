/// @description scr_is_it_time_for_battle(dialogue_number)
function scr_is_it_time_for_battle(argument0) {
	// @param dialogue_number

	var var_dialogue_number=argument0
	with(global.dialogue)
	{
	if(ds_list_find_index(list_of_dialogue_numbers_where_dialogue_change_to_battle_phase,var_dialogue_number)>=0)
	{
	return 1
	}
	}


}
