/// @description scr_perform_w_lille_skutt(selected_unit)
/// @param selected_unit
function scr_perform_w_lille_skutt(argument0) {
	var var_selected=argument0
	if(var_selected=global.lille_skutt)
	{
		window_set_cursor(cr_none)
	cursor_sprite=spr_spade_cursor
	with(var_selected)
	{
	to_build_with_spade=obj_arcane_sanctum
	exit;
	}
	}


}
