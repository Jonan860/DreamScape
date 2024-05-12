function scr_left_hud_not_pressed() {
	unit_to_kawarimi1 = noone; unit_to_kawarimi2 = noone
	var var_selected = global.tile_selected != noone ? global.tile_selected.selected_units[|0] : noone
	var var_clicked_tile = instance_position(mouse_x, mouse_y, obj_tile)
	if(global.tile_selected = var_clicked_tile) {
		scr_rotate_selected_units()
	} else {
		scr_select_tile(var_clicked_tile)
	}
	if(cursor_sprite != -1 and var_selected != global.ida) {
		window_set_cursor(cr_default)
		cursor_sprite = -1
	}
	with( instance_position(mouse_x, mouse_y, obj_tile)) {
		var var_ground_unit_list = ds_map_find_value(occupants, ALTITUDES.ground)
		var var_ground_unit = var_ground_unit_list[|0]
		if(var_ground_unit != global.ida) {
			global.hud.gui_display_abilities = 0
		}
	}
}