function scr_tile_distances_calculate() {
	with(obj_tile) {
		if(scr_occupiable(id, ALTITUDES.invisible)) {
			var shortest_yet = id
			with(obj_tile) {
				distance = 100
				path_find_checked = 0
			}
			distance = 0
			while(shortest_yet != noone) {
					shortest_yet = scr_find_shortest_yet() ///slutar innan targettile
					with(shortest_yet) {
						scr_update_distance_neighbours(ALTITUDES.invisible)
						path_find_checked = 1
					}
			}
	
		
			with(obj_tile) {
				path_find_checked = 0
				ds_map_add(other.ds_map_distances, string(id), distance)
			}
		}
	}
}
