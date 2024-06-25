event_inherited()
alarm[0] = owner.duration * game_get_speed(gamespeed_fps)
HP = owner.getAmount() 
save = function() {
	var s = {}
	s.x = x; s.y = y
	s.HP = HP
	s.alarm = alarm[0]
	s.owner = owner.owner.id
	return s
}

load = function(s) {
	x = s.x; y = s.y
	HP = s.HP
	alarm[0] = s.alarm
	with(obj_unit) {
		loadFromIdd(s, "owner", "spell_shield")
	}
}