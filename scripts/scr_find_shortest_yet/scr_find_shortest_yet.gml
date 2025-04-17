function scr_find_shortest_yet() {
	var shortest_yet2 = noone
	loopTilesStart
		if(!path_find_checked) {
			if(shortest_yet2 == noone) {
				if(distance < 100) {
					shortest_yet2 = self
				}
			} else if(distance < shortest_yet2.distance) {
				shortest_yet2 = self
			}
		}
	loopTilesEnd
	return  shortest_yet2   // is noone if all checked
}
