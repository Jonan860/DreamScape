// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_right_pressed_building(clicked_tile,var_selected_unit){
if(object_is_ancestor(var_selected_unit.object_index,obj_building))
	{
		//var clicked_tile=instance_position(mouse_x,mouse_y,obj_tile)
	var_selected_unit.rally_tile=clicked_tile
	}
}