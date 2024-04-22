total_time_after_effect_end_sec = owner.duration[1]
total_time_sec = owner.duration[0]
lifeTimeSec = 0

save = function() {
	var s = {}
	s.lifeTimeSec = lifeTimeSec
}

load = function(s) {
	lifeTimeSec = s.lifeTimeSec
}

