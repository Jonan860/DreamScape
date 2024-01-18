function scr_is_action_bar_stopped() {
	return scr_is_debuffed(global.freeze_struct) or phase="sleep" or stunned
}
