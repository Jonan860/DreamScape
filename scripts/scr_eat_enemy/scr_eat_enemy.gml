
function scr_eat_enemy(var_victim) {
	object_in_stomach = var_victim
	with(var_victim) {
		eaten = 1
		var var_alt_list = tile.occupants[?altitude]
		var_alt_list = array_filter(var_alt_list, function(value, index) {return value != id})
		//array_remove_value(var_alt_list, id)
		tile = other.tile
	}
}
