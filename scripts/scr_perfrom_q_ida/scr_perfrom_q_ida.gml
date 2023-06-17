/// @description scr_perform_q_ida(selected_unit)
/// @param selected_unit
function scr_perfrom_q_ida(argument0) {

	if(argument0==global.ida and argument0.spell_q_lvl>0)
	{
		if(cursor_sprite!=spr_freeze_cursor)
		{
			window_set_cursor(cr_none)
	cursor_sprite=spr_freeze_cursor
		}
		else
		{
			window_set_cursor(cr_default)
		cursor_sprite=-1
		}
	}


}
