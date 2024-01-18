function scr_invisible_count_down() {
	with(obj_unit) {
		if(invisible) {
			if(invisible_time_left>0) {
				invisible_time_left -= 1/room_speed
			} else {
				scr_revert_to_standard_altitude()
				invisible = 0  ///migth be more conditions in future
			}
		}
	}
}
