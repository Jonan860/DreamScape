function scr_get_most_north_occupiable_neighbour() {
	with(tile) {
		for(var i = 0; i < array_length(list_of_neighbours); i++) {
			var _tile = list_of_neighbours[i]
			if(scr_occupiable(_tile, ALTITUDES.invisible)) {
				return _tile
			}
		}
		return noone
	}
}
