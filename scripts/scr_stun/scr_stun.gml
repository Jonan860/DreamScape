function scr_stun(unit,time_to_stun) {
	with(unit) {
		stunned = 1
		time_until_stunned_clear = time_to_stun
	}
}