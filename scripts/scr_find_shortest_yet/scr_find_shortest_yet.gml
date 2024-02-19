function scr_find_shortest_yet() {
	var shortest_yet2 = noone
	with(obj_tile) {
		if(!path_find_checked) {
			if(shortest_yet2 == noone) {
				if(distance < 100) {
					shortest_yet2 = id
				}
			} else if(distance < shortest_yet2.distance) {
				shortest_yet2 = id
			}
		}
	}
	return  shortest_yet2   // is noone if all checked
}
