
if(room == map) {
	var var_selected = global.tile_selected.selected_units[|0]
	if(!is_undefined(var_selected)) {
		if(var_selected.altitude == "invisible") {
			with(var_selected) {
				scr_perform_s_decloaking()
				exit;
			}
		}
	}
	buttonPressedIconPerform("s")
}