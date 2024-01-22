function scr_update_distance_neighbours(altitude) {
	for(var i = 0; i < ds_list_size(list_of_neighbours); i++) {
		var _tile = list_of_neighbours[|i]
		if(scr_occupiable(_tile, altitude)) {
			_tile.distance = min(distance + 1, _tile.distance)
		}
	}
	path_find_checked = 1
}
