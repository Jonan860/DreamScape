function scr_count_up_action_bar() {
	action_bar = min(action_bar + 60 * (1 - slowed.applied * slowed.amount) / room_speed, max_action_bar)
}
