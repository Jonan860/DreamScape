
function scr_eat_enemy(var_victim) {
	object_in_stomach = var_victim
	with(var_victim) {
		eaten = 1
		var var_alt_list = tile.occupants[|altitude]
		scr_ds_list_remove_value(var_alt_list, id)
		tile = other.tile
	}
}
