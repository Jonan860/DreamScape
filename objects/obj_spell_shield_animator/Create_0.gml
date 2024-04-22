alarm[0] = owner.duration * game_get_speed(gamespeed_fps)
HP = owner.getAmount() 
save = function() {
	var s = {}
	s.x = x
	s.y = y
	s.HP = HP
	s.alarm = alarm[0]
	s.owner = owner
}

load = function(s) {
	x = s.x
	y = s.y
	HP = s.HP
	alarm[0] = s.alarm
	owner = s.owner
}