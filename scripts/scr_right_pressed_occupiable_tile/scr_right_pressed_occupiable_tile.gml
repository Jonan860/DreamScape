// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_right_pressed_occupiable_tile(var_selected_unit,clicked_tile){
	if(scr_occupiable(clicked_tile,var_selected_unit.altitude) and window_get_cursor()=cr_default)
	{
		if(var_selected_unit==global.lille_skutt)
		{
		global.lille_skutt.is_building=noone
		}
if(scr_get_invisibles_distance(global.tile_selected,clicked_tile)<100 and var_selected_unit.owner=global.player and clicked_tile!=var_selected_unit.tile)
	{
	var_selected_unit.phase="movement"
	var_selected_unit.destination=instance_position(mouse_x,mouse_y,obj_tile)
	//optimal_path=scr_find_path(global.tile_selected,global.tile_selected.selected_unit.destination)
//scr_disblend_list(global.tile_selected.selected_unit.path)
//ds_list_copy(global.tile_selected.selected_unit.path,optimal_path)
with(var_selected_unit)
{
//scr_blend_path()
//scr_update_arrow_path()
scr_update_path_to_destination()
}
	}
	}
}