function scr_get_most_south_occupiable_neighbour() {
	with(tile) {
		for(var i = array_length(list_of_neighbours) - 1; i >= 0; i--) {
			var _tile = list_of_neighbours[i]
			if(scr_occupiable(_tile)) {
				return _tile
			}
		}
		return noone
	}
}
