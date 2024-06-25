event_inherited()
rotation_time = 2
counter_to_attack = 0
alarm[0] = owner.duration * room_speed
max_damage = owner.getAmount()
total_damage_done = 0

save = function() {
	var s = {}
	s.x = x; s.y = y
	s.alarm = alarm[0]
	s.owner = owner
	s.total_damage_done = total_damage_done
}

load = function(s) {
	x = s.x; y = s.y
	alarm[0] = s.alarm
	with(obj_unit) {
		loadFromIdd(s, "owner", "ninjago")
	}
	total_damage_done = s.total_damage_done
}