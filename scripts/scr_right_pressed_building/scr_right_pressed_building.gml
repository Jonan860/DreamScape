function scr_right_pressed_building(clicked_tile, var_selected_unit) {
	if(object_is_ancestor(var_selected_unit.object_index, obj_building))	{
		var_selected_unit.rally_tile = clicked_tile
	}
}