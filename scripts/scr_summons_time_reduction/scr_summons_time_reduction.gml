function scr_summons_time_reduction() {
	with(obj_summon) {
		if(summon_time_left > 0) {
			summon_time_left -= 1/room_speed
		}
	}
}
