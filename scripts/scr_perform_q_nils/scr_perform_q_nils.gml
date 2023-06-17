/// @description scr_perform_q_nils(selected_unit)
/// @param selected_unit
function scr_perform_q_nils(argument0) {

	var var_selected=argument0
	if(var_selected==global.nils and var_selected.spell_q_lvl>0) //kanske varselected=argument0
	{
		if(cursor_sprite!=spr_holy_light_cursor)
		{
			window_set_cursor(cr_none)
	cursor_sprite=spr_holy_light_cursor
		}
		else
		{
			window_set_cursor(cr_default)
		cursor_sprite=-1
		}
	}


}
