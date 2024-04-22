var var_ground_target = target_tile.grounds_list[|0]

if(point_distance(x, y, target_tile.x, target_tile.y) < 10) {
	if(var_ground_target != noone and altitude = "ground") {
		attackEffectWrapper(id, var_ground_target)
	}
	instance_destroy()
}