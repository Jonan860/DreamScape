function scr_right_pressed_unit(var_selected_unit) {
	if(var_selected_unit.phase != "sleep") {
		with(var_selected_unit) {
			with(global.selectedSpell) {
				if(shouldRightPerform()) {
					rightPerform()
					exit
				}
			}
		}
		if(var_selected_unit.phase != "reviving" and var_selected_unit.phase != "dead") {
			if(scr_occupiable(global.clicked_tile, var_selected_unit.altitude) and window_get_cursor() == cr_default) {
				scr_right_pressed_occupiable_tile(var_selected_unit)
			} else {
				var var_ground_unit_list = ds_map_find_value(global.clicked_tile.occupants, "ground")
				if(!ds_list_empty(var_ground_unit_list)) {
					var var_ground_unit = var_ground_unit_list[|0]
					if(ds_list_find_index(global.tile_selected.selected_units, global.lille_skutt) >= 0 and object_is_ancestor(var_ground_unit.object_index, obj_building)) {
						scr_right_pressed_building_repair(var_ground_unit)
					}
					if(scr_is_enemies(var_selected_unit, var_ground_unit)) {
						scr_right_pressed_enemy(var_ground_unit, var_selected_unit)
					}
				}
			}
		}	
	}
	}