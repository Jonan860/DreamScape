function scr_perform_q_sorceress(argument0) {
	if(argument0.object_index==obj_sorceress)
	{
		if(cursor_sprite!=spr_slow_cursor)
		{
			window_set_cursor(cr_none)
	cursor_sprite=spr_slow_cursor
		}
		else
		{
			window_set_cursor(cr_default)
		cursor_sprite=-1
		}
	}


}
