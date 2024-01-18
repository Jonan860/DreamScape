function scr_perform_abilities() {
	if(global.tile_selected != noone) {
		var var_selected_unit = ds_list_find_value(global.tile_selected.selected_units, 0)
		if(var_selected_unit.owner = global.player and object_is_ancestor(var_selected_unit.object_index, obj_hero)) {
			gui_display_abilities =! gui_display_abilities
		}
	}
}
