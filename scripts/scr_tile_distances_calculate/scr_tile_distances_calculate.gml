function scr_tile_distances_calculate() {
	loopTilesStart
		if(scr_occupiable(self, ALTITUDES.invisible)) {
			var shortest_yet = self
			loopTilesStart2
				distance = 100
				path_find_checked = 0
			loopTilesEnd
			distance = 0
			while(shortest_yet != noone) {
					shortest_yet = scr_find_shortest_yet() ///slutar innan targettile
					with(shortest_yet) {
						scr_update_distance_neighbours(ALTITUDES.invisible)
						path_find_checked = 1
					}
			}
			loopTilesStart2
				path_find_checked = 0
				ds_map_add(other.ds_map_distances, string(self._x) + "," + string(self._y), distance)
			loopTilesEnd			
		}
	loopTilesEnd
}
