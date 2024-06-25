
function scr_occupiable(var_tile, var_altitude) {
	if(var_tile = noone or !var_tile.habitable) {
		return 0
	} else {
		var var_alt_list = ds_map_find_value(var_tile.occupants, var_altitude)
		return array_equals(var_alt_list, []) or var_altitude == ALTITUDES.invisible
	}
}