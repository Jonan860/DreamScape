// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_perform_q_priest(argument0){

	if(argument0.object_index==obj_priest)
	{
		if(cursor_sprite!=spr_heal_cursor)
		{
			window_set_cursor(cr_none)
	cursor_sprite=spr_heal_cursor
		}
		else
		{
			window_set_cursor(cr_default)
		cursor_sprite=-1
		}
	}



}