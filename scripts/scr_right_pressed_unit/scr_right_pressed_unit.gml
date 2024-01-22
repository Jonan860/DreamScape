function scr_right_pressed_unit(clicked_tile, var_selected_unit) {
	if(!object_is_ancestor(var_selected_unit.object_index, obj_building)) {
		if(var_selected_unit.phase != "sleep") {
			scr_right_pressed_spade_selected(var_selected_unit, clicked_tile)
			if(object_is_ancestor(var_selected_unit.object_index, obj_unit)) {
				if(var_selected_unit.phase != "reviving" and var_selected_unit.phase != "dead") {
					scr_right_pressed_ida_selected(var_selected_unit, clicked_tile)
					scr_right_pressed_occupiable_tile(var_selected_unit, clicked_tile)
					if(!scr_occupiable(clicked_tile, var_selected_unit.altitude) or window_get_cursor() != cr_default) {
						var var_ground_unit_list = ds_map_find_value(clicked_tile.occupants, "ground")
						if(!ds_list_empty(var_ground_unit_list)) {
							var var_ground_unit = var_ground_unit_list[|0]
							scr_right_pressed_building_repair(clicked_tile, var_ground_unit)
							scr_right_pressed_enemy(var_ground_unit, clicked_tile, var_selected_unit)
							scr_right_pressed_player_unit(var_ground_unit, var_selected_unit, clicked_tile)
						}
					}
				}	
			}
		}
	}
}