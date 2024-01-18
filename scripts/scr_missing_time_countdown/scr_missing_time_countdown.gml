function scr_missing_time_countdown() {
	with(obj_unit) {
		if(missing_time > 0) {
			missing_time -= 1
		}
	}
}
