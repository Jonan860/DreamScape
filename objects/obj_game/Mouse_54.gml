
if(room == map) {
	global.clicked_tile = instance_position(mouse_x, mouse_y, obj_tile)
	if(global.tile_selected != noone) {
		var var_i = 0	
	//	for(var_i=0;var_i<ds_list_size(global.tile_selected.selected_units);var_i+=1)
	//	{	
			var var_selected_unit = global.tile_selected.selected_units[|var_i]
		if(global.clicked_tile != noone) {
			if(object_is_ancestor(var_selected_unit.object_index, obj_building))	{
				var_selected_unit.rally_tile = global.clicked_tile
			} else {
				scr_right_pressed_unit(var_selected_unit)
			}
		}
	}
}