function scr_get_most_north_occupiable_neighbour() {
	with(tile) {
		for(var i = 0; i < ds_list_size(list_of_neighbours); i++) {
			var _tile = list_of_neighbours[|i]
			if(scr_occupiable(_tile, "invisible")) {
				return _tile
			}
		}
		return noone
	}
}
