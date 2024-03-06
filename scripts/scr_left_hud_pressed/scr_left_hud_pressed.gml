
function scr_left_hud_pressed() {
	var buttons = ["q", "w", "e", "r", "a", "s"]
	with(obj_battle_hud) {
		for(var i = 0; i < array_length(buttons); i++) {
			if(scr_is_button_pressed(buttons[i])) {
				with(global.tile_selected) {
					with(selected_units[|0]) {
						with(ds_map_find_value(buttonToSkill, buttons[i])) {
							perform()
						}
					}
				}
			}
		}
	}
	scr_queue_icon_check_and_perform()
}