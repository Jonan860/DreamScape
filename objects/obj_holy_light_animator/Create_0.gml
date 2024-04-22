alarm[0] = owner.duration * game_get_speed(gamespeed_fps)
image_alpha = 0.7

save = function() {s = {alarm : alarm[0]}}

load = function(s) {
	alarm[0] = s.alarm
}