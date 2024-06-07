function scr_get_earlier_tile(tile2) {
	with(tile2) {
		for(var i = 0; i < ds_list_size(list_of_neighbours); i++) {
			with(list_of_neighbours[|i]) {
				if(distance < other.distance) {
					return self
				}		
			}
		}
	}
}
