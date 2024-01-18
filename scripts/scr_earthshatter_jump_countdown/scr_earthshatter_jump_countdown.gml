function scr_earthshatter_jump_countdown() {
	with(global.ida) {
		if(time_until_earthshatter_impact >= 0) {
			time_until_earthshatter_impact -= 1/room_speed
		}
	}
}