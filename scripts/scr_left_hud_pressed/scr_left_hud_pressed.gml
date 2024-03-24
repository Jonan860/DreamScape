
function scr_left_hud_pressed() {
	var buttons = ["q", "w", "e", "r", "a", "s", "d"]
	with(obj_battle_hud) {
		for(var i = 0; i < array_length(buttons); i++) {
			if(scr_is_button_pressed(buttons[i])) {
				with(global.tile_selected) {
					with(selected_units[|0]) {
						if(owner == global.player) {
							with(ds_map_find_value(buttonToSkill, buttons[i])) {
								if(!global.hud.gui_display_abilities) {
									iconPerform()
								} else {
									if(other.number_of_ability_points > 0) {
										level_up()
									}
								}
							}
						}
					}
				}
			}
		}
	}
	scr_queue_icon_check_and_perform()
}

