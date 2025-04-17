event_inherited()
if(variable_instance_exists(id, "owner")) {
	alarm[0] = owner.duration * game_get_speed(gamespeed_fps)
}
image_alpha = 0.7

save = function() {
	return {
			alarm : alarm[0],
			owner : owner.owner.id
		}
}

load = function(s) {
	alarm[0] = s.alarm
	with(obj_unit) {
		loadFromIdd(s, "owner", "holy_light")
	}
}