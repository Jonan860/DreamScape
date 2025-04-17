var var_ground_target = array_first(target_tile.occupants[? ALTITUDES.ground])

if(point_distance(x, y, target_tile._x, target_tile._y) < 10) {
	if(var_ground_target != noone and altitude == ALTITUDES.ground) {
		attackEffectWrapper(id, var_ground_target)
	}
	instance_destroy()
}