
if(room == map) {
	if(!scr_is_cursor_on_hud()) {
		global.clicked_tile = instance_position(mouse_x, mouse_y, obj_tile)
		if(global.tile_selected != noone) {
			var var_i = 0	
		//	for(var_i=0;var_i<ds_list_size(global.tile_selected.selected_units);var_i+=1)
		//	{	
				var var_selected_unit = global.tile_selected.selected_units[|var_i]
			if(global.clicked_tile != noone) {
				if(object_is_ancestor(var_selected_unit.object_index, obj_building))	{
					var_selected_unit.rally_tile = global.clicked_tile
				} else {
					scr_right_pressed_unit(var_selected_unit)
				}
			}
		}
	} else {
		var buttons = ["q", "w", "e", "r", "a", "s", "d"]
		with(obj_battle_hud) {
			for(var i = 0; i < array_length(buttons); i++) {
				if(scr_is_button_pressed(buttons[i])) {
					with(global.tile_selected) {
						with(selected_units[|0]) {
							if(owner == global.player) {
								with(ds_map_find_value(buttonToSkill, buttons[i])) {
									if(!global.hud.gui_display_abilities) {
										if(lvl > 0 or object_is_ancestor(other.object_index, obj_building)) {
											autocast = !autocast
											exit
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}