function scr_draw_hud_buttons_with_hover_info() {
	if(global.tile_selected != noone) {
		var var_selected_unit = global.tile_selected.selected_units[|0]
		if(var_selected_unit.altitude != "invisible") {
			var_selected_unit.draw_hud_buttons_with_info()
		} else {
			var_selected_unit.scr_draw_decloak_button_with_hover()
		}
	}
}
