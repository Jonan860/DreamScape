var var_target = array_first(target_tile.occupants[? target_altitude])

if(point_distance(x, y, target_tile._x, target_tile._y) < 10) {
	if(var_target != noone and altitude == target_altitude) {
		attackEffectWrapper(id, var_target)
	}
	instance_destroy()
}