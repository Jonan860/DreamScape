
function scr_perform_w() {
	
	if(global.tile_selected != noone) {
		var var_selected = global.tile_selected.selected_units[|0]
		if(!global.hud.gui_display_abilities) {
			var_selected.button_pressed()
		} else {
			if(object_is_ancestor(var_selected.object_index, obj_hero)) {
				with(var_selected) {
					var w = ds_map_find_first("w")
					if(number_of_ability_points > 0) {
						if(2 * w.lvl + 1 <= lvl) {
							scr_level_up_spell(w)
						}
					}
				}
			}
		}
	}
}