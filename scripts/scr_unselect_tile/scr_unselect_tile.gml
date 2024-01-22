function scr_unselect_tile(tile2) {
	if(tile2 != noone) {
		for(var i = 0; i < ds_list_size(tile2.selected_units); i += 1) {
			var var_selected_unit = tile2.selected_units[|i]
			with(var_selected_unit) {
				if(object_is_ancestor(var_selected_unit.object_index, obj_unit)) {
					for(var j = 0; j < ds_list_size(path); j += 1) {
						var tile3 = path[|j]
						tile3.image_blend = c_white
					}
				}
			}
		}
		ds_list_clear(tile2.selected_units)
	}
}