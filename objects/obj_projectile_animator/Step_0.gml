
if(point_distance(x, y, target_tile._x, target_tile._y) < 10) {
	var target_unit = array_first(target_tile.occupants[? altitude])
	if(!is_undefined(target_unit) and owner != noone) {
		if(scr_is_enemies(owner, target_unit)) {	
			attackEffectWrapper(owner, target_unit)
		}
	}
	instance_destroy()
}