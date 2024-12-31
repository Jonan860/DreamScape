function scr_count_up_action_bar() {
	action_bar = 
	min(action_bar + 60 * (1 - (scr_is_debuffed(SPELLS.slow) ? (find_active_debuff(SPELLS.slow).amount) : 0)) / game_get_speed(gamespeed_fps) * global.gamespeed, max_action_bar)
}