function scr_stun_countdown() {
	with(obj_unit) {
		if(stunned) {
			time_until_stunned_clear -= 1/room_speed * global.gamespeed
			if(time_until_stunned_clear <= 0) {
				time_until_stunned_clear = 0
				stunned = 0
			}
		}
	}
}