function scr_unselect_tile(tile2) {
	if(tile2 != noone) {
		for(var i = 0; i < array_length(tile2.selected_units); i++) {
			var var_selected_unit = tile2.selected_units[i]
			with(var_selected_unit) {
				if(object_is_ancestor(var_selected_unit.object_index, obj_unit)) {
					for(var j = 0; j < array_length(path); j++) {
						var tile3 = path[j]
						tile3.imageBlend = c_white
					}
				}
			}
		}
		tile2.selected_units = []
	}
}