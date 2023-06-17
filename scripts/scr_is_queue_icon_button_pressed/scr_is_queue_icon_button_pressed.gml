// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_is_queue_icon_button_pressed(){
	with(global.hud)
	{
		if(global.tile_selected!=noone)
		{
		var var_building=ds_list_find_value(global.tile_selected.selected_units,0)
		if(var_building!=noone)
		{
			
		if(object_is_ancestor(var_building.object_index,obj_unit_producing_building))
		{
		if(!ds_list_empty(var_building.queue_list))
			{
				var var_queue_amount=ds_list_size(var_building.queue_list)
				var mouse_x_relative=mouse_x-camera_get_view_x(view_camera[0])
				var mouse_y_relative=mouse_y-camera_get_view_y(view_camera[0])
				var var_is_queue_pressed=(training_queue_x-1/2*length_of_training_queue_icon < mouse_x_relative and mouse_x_relative < training_queue_x-1/2*length_of_training_queue_icon+var_queue_amount*length_of_training_queue_icon and training_queue_y-1/2*length_of_training_queue_icon<mouse_y_relative and mouse_y_relative<training_queue_y-1/2*length_of_training_queue_icon+length_of_training_queue_icon)
			return var_is_queue_pressed
			}
		}
	
		}
	}
	}
return 0

}