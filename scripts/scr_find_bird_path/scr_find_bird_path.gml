function scr_find_bird_path(steptile, endtile) {
	var birdpath = [steptile]
	var var_best_candidate_distance = scr_get_distance(steptile, endtile)
	var var_best_candidate = steptile
	while(steptile != endtile) {
		for (var i = 0; i < 6; i++) {
			var stepcandidate = steptile.list_of_neighbours[i]
			if(stepcandidate != noone) {
				if(scr_get_distance(stepcandidate, endtile) < var_best_candidate_distance) {
					var_best_candidate_distance = scr_get_distance(stepcandidate, endtile)
					var_best_candidate = stepcandidate
				}
			}
		}
		steptile = var_best_candidate
		array_push(birdpath, steptile)
	}
	return birdpath
}
