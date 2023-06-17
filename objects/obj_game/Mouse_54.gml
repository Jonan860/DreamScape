/// @description Insert description here
// You can write your code in this editor
if(room=map)
{
	
var clicked_tile=instance_position(mouse_x,mouse_y,obj_tile)

if(global.tile_selected!=noone)
{
	var var_i=0	
//	for(var_i=0;var_i<ds_list_size(global.tile_selected.selected_units);var_i+=1)
//	{	
		var var_selected_unit=ds_list_find_value(global.tile_selected.selected_units,var_i)
if(clicked_tile!=noone)
{


	scr_right_pressed_building(clicked_tile,var_selected_unit)
	
	//{
	//(scr_start_hunt(global.tile_selected.occupants,clicked_tile.occupant1)
	//}
	scr_right_pressed_unit(clicked_tile,var_selected_unit)
	



}
scr_right_pressed_autocast(var_selected_unit)
//}
}
}