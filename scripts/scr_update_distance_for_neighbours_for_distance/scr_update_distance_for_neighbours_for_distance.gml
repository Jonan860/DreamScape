function scr_update_distance_for_neighbours_for_distance() {
	for(var i = 0; i < array_length(list_of_neighbours); i++) {
		list_of_neighbours[i].distance = min(distance + 1, list_of_neighbours[i].distance)
	}
	path_find_checked = 1
}
