/// @function scr_get_tiles_within_range(range, optionaltile)
/// @param {real} range The max distance
/// @param {any} tile (optional) The starting tile
/// @returns {array} Array of tiles within range
function scr_get_tiles_within_range() {
	var var_range = argument[0]

	var var_tiles_within_range2 = []
	var var_tiles_at_range2 = []
	for(var i = 0; i <= var_range; i++) {
			if(argument_count < 2) {
				var_tiles_at_range2 = scr_get_tiles_at_range(tile, i)
			} else {
				var_tiles_at_range2 = scr_get_tiles_at_range(argument[argument_count - 1], i)
			}
		for(var j = 0; j <= array_length(var_tiles_at_range2) - 1; j++) {
			array_push(var_tiles_within_range2, var_tiles_at_range2[j])
		}
	}
	return var_tiles_within_range2
}

