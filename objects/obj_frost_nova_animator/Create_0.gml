event_inherited()
if(variable_instance_exists(id, "owner")) {
	total_time_after_effect_end_sec = owner.duration[1]
	total_time_sec = array_first(owner.duration)
	lifeTimeSec = 0
}

save = function() {
	var s = {}
	s.lifeTimeSec = lifeTimeSec
	s.total_time_after_effect_end_sec = total_time_after_effect_end_sec
	s.total_time_sec = total_time_sec
	s.owner = owner.owner.id
	s.targetX = target.tile_x
	s.targetY = target.tile_y
	return s
}

load = function(s) {
	lifeTimeSec = s.lifeTimeSec
	total_time_after_effect_end_sec = s.total_time_after_effect_end_sec
	total_time_sec = s.total_time_sec
	target = getTile(s.targetX, s.targetY)
	with(obj_unit) {
		loadFromIdd(s, "owner", "frost_nova")
	}
}

