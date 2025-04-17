event_inherited()
rotation_time = 2
counter_to_attack = 0
if(variable_instance_exists(id, "owner")) {
	alarm[0] = owner.duration * room_speed
	max_damage = owner.getAmount()
}
total_damage_done = 0

save = function() {
	var s = {}
	s.x = x; s.y = y
	s.alarm = alarm[0]
	s.depth = depth
	s.owner = owner.owner.id
	s.total_damage_done = total_damage_done
	s.max_damage = max_damage
	return s
}

load = function(s) {
	x = s.x; y = s.y
	alarm[0] = s.alarm
	depth = s.depth
	with(obj_unit) {
		loadFromIdd(s, "owner", "ninjago")
	}
	total_damage_done = s.total_damage_done
	max_damage = s.max_damage
}