
if(point_distance(x, y, target_tile.x, target_tile.y) < 10) {
	var target_unit_list = ds_map_find_value(target_tile.occupants, altitude)
	var target_unit = target_unit_list[|0]
	if(!is_undefined(target_unit) and owner != noone) {
		if(scr_is_enemies(owner, target_unit)) {	
			attackEffectWrapper(owner, target_unit)
		}
	}
	instance_destroy()
}