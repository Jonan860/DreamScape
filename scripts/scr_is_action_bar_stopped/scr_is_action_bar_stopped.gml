function scr_is_action_bar_stopped() {
	return scr_is_debuffed(SPELLS.freeze) or phase == UNIT_PHASES.sleep or stunned
}
