function scr_is_action_bar_stopped() {
	return freezed.applied or phase == "sleep" or stunned
}
