var the_lich = owner.owner
lifeTimeSec += 1 / game_get_speed(gamespeed_fps)
if(the_lich != noone) {
	if(lifeTimeSec >= total_time_sec) {
		instance_destroy()
	}
} else if(time_until_after_effect_end_sec <= 0) {
	instance_destroy()
}
if(lifeTimeSec == total_time_sec) {
	depth = layer_get_depth(layer_get_id("air")) - 1
}
