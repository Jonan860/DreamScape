total_time_after_effect_end_sec = owner.duration[1]
total_time_sec = owner.duration[0]
lifeTimeSec = 0

scr_frost_nova_perform = function() {
	with(owner.owner) {
		if(lifeTime == total_time_sec - total_time_after_effect_end_sec) {
			scr_frost_nova_damage()
		}
	}
}