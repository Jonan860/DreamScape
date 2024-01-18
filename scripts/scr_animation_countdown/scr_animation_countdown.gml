function scr_animation_countdown(){
	with(obj_unit) {
		heal_animation_time_left_in_sec = max(0, heal_animation_time_left_in_sec - 1/room_speed)
		time_until_dark_ritual_sacrifice_sec = max(0, time_until_dark_ritual_sacrifice_sec - 1/room_speed)
	}
}