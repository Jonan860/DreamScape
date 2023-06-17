// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_perform_queue_icon_left_pressed_perform(){
with(global.hud)
{
var var_mouse_x_relative=mouse_x-camera_get_view_x(view_camera[0])
var var_mouse_y_relative=mouse_y-camera_get_view_y(view_camera[0])
var var_selected_building=ds_list_find_value(global.tile_selected.selected_units,0)
var var_icon_queue_position_pressed=ceil((var_mouse_x_relative-progress_bar_x1)/length_of_training_queue_icon)
with(var_selected_building)
{
	if(var_icon_queue_position_pressed=1)
	{
	build_progress=0
	}
	var var_new_queue=ds_list_create()
for(i=0;i<ds_list_size(var_selected_building.queue_list);i+=1)
{
	var var_object=ds_list_find_value(var_selected_building.queue_list,i)
if(i!=var_icon_queue_position_pressed-1)
{
ds_list_add(var_new_queue,var_object)
}
else
{
global.player.money+=ds_map_find_value(global.map_object_to_costs,var_object)
}
}
ds_list_copy(var_selected_building.queue_list,var_new_queue)
ds_list_destroy(var_new_queue)

}

}
}