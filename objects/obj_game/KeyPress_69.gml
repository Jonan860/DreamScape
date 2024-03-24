if(room == map) {
	scr_perform_e()
}

if(room == map) {
	if(global.hud.gui_display_abilities) {
		if(object_is_ancestor(var_selected_unit.object_index, obj_hero)) {
			with(var_selected_unit) {
				if(number_of_ability_points > 0) {
					with(buttonToSkill[? "e"]){
						if(lvl < 3) {
							level_up()
						}
					}
				}
			}
		}
	} else {
		with(global.tile_selected) {
			with(selected_units[|0]) {
				buttonToSkill[? "e"].iconPerform()
			}
		}
	}
}