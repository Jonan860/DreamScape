function scr_find_invisibles_path(steptile, endtile) {
	var invisibles_path = [steptile]
	var var_best_candidate_distance = scr_get_invisibles_distance(steptile, endtile)
	var var_best_candidate = steptile
	while(steptile != endtile) {	
		for (var i = 0; i < 6; i++) {
			var stepcandidate = steptile.list_of_neighbours[i]
			if(stepcandidate != noone and stepcandidate.habitable) {
				var distance_candidate = scr_get_invisibles_distance(stepcandidate, endtile)
				if(distance_candidate<var_best_candidate_distance) {
					var_best_candidate_distance = scr_get_invisibles_distance(stepcandidate, endtile)
					var_best_candidate = stepcandidate
				}
			}
		}
		steptile = var_best_candidate
		array_push(invisibles_path, steptile)
	}
	return invisibles_path
}
