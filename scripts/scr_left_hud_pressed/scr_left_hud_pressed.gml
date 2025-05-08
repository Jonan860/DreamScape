
function scr_left_hud_pressed() {
	var buttons = ["q", "w", "e", "r", "a", "s", "d"]
	with(obj_battle_hud) {
		for(var i = 0; i < array_length(buttons); i++) {
			if(scr_is_button_pressed(buttons[i])) {
				global.game.buttonPressedIconPerform(buttons[i])
			}
		}
	}
	scr_queue_icon_check_and_perform()
}

