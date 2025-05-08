function scr_get_tiles_within_range(var_range) {
	var var_tiles_within_range2 = []
	var var_tiles_at_range2 = []
	for(var i = 1; i <= var_range; i++) {
		var_tiles_at_range2 = scr_get_tiles_at_range(tile, i)
		for(var j = 0; j <= array_length(var_tiles_at_range2) - 1; j++) {
			array_push(var_tiles_within_range2, var_tiles_at_range2[j])
		}
	}
	return var_tiles_within_range2
}
