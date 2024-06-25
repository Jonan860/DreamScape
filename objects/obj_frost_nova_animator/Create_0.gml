event_inherited()
total_time_after_effect_end_sec = owner.duration[1]
total_time_sec = owner.duration[0]
lifeTimeSec = 0

save = function() {
	var s = {}
	s.lifeTimeSec = lifeTimeSec
	s.owner = owner.owner.id
	return s
}

load = function(s) {
	lifeTimeSec = s.lifeTimeSec
	with(obj_unit) {
		loadFromIdd(s, "owner", "frost_nova")
	}
}

