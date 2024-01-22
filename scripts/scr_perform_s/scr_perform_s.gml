function scr_perform_s() {
	var var_selected = global.tile_selected.selected_units[|0]
	if(!is_undefined(var_selected)) {
		if(var_selected.altitude != "invisible") {
			scr_perform_s_human_barrack()
			scr_perform_s_heroes_and_lille_skutt()
		} else {
			with(var_selected) {
				scr_perform_s_decloaking()
			}
		}
	}
}