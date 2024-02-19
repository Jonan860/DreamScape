function scr_right_pressed_building_repair(clicked_tile, var_ground_unit) {
	if(ds_list_find_index(global.tile_selected.selected_units, global.lille_skutt) >= 0 and object_is_ancestor(var_ground_unit.object_index, obj_building)) {
		if(scr_get_distance(global.tile_selected,clicked_tile) <= 1) {
			global.lille_skutt.is_building = var_ground_unit
		}
	}
}