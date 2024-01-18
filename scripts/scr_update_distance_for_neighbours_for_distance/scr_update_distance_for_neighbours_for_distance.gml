function scr_update_distance_for_neighbours_for_distance() {
	if(north_east_tile != noone) {
		north_east_tile.distance = min(distance + 1, north_east_tile.distance)
	}

	if(south_east_tile != noone) {
		south_east_tile.distance = min(distance + 1, south_east_tile.distance)
	}

	if(north_west_tile) {
		north_west_tile.distance = min(distance+1,north_west_tile.distance)
	}

	if(south_west_tile) {
		south_west_tile.distance = min(distance+1,south_west_tile.distance)
	}

	if(north_tile != noone)	{ 
		north_tile.distance = min(distance + 1, north_tile.distance)
	}

	if(south_tile != noone) {
		south_tile.distance = min(distance + 1, south_tile.distance)
	}
	path_find_checked = 1
}
