function scr_count_up_action_bar() {	
	action_bar = 
	min(action_bar + 60 * action_bar_speed / game_get_speed(gamespeed_fps) * global.gamespeed, max_action_bar)
}

