// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_perform_w_sorceress(argument0){
	var var_selected=argument0
	if(var_selected.object_index=obj_sorceress and global.player.sorceress_has_invisibility)	
	{
	
if(cursor_sprite!=spr_invisibility_cursor)
		{
			window_set_cursor(cr_none)
	cursor_sprite=spr_invisibility_cursor
		}
		else
		{
			window_set_cursor(cr_default)
		cursor_sprite=-1
		}

}
}