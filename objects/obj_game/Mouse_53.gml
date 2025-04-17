if(room = map) {
	global.selectedSpell = noone
	var func = scr_is_cursor_on_hud() ? scr_left_hud_pressed : scr_left_hud_not_pressed
	func()
}