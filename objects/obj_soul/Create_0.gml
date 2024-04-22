object = noone 
alarm[0] = room_speed * 60 //could be gamespeed_fps

save = function() {
var s = {}
	s.object = object
	s.x = x
	s.y = y
	s.alarm = alarm[0]
	s.image_alpha = image_alpha
}

load = function(s) {
	object = s.object
	x = s.x
	y = s.y
	alarm[0] = s.alarm
	image_alpha = s.image_alpha
}