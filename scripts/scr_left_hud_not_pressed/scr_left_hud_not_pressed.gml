function scr_left_hud_not_pressed() {
	unit_to_kawarimi1 = noone; unit_to_kawarimi2 = noone
	var var_selected = global.tile_selected != noone ? array_first(global.tile_selected.selected_units) : noone
	var var_clicked_tile = mouseToTile()
	if(global.tile_selected == var_clicked_tile) {
		scr_rotate_selected_units()
	} else if(!scr_tile_empty(var_clicked_tile)) {
		scr_select_tile(var_clicked_tile)
	}
	if(cursor_sprite != -1 ) { //and var_selected != global.ida
		window_set_cursor(cr_default)
		cursor_sprite = -1
	}
	with(mouseToTile()) {
		var var_ground_unit_list = occupants[? ALTITUDES.ground]
		var var_ground_unit = array_first(var_ground_unit_list)
		if(var_ground_unit != global.ida) {
			global.hud.gui_display_abilities = 0
		}
	}
}