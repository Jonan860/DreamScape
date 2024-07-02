function scr_find_path(start_tile, end_tile, altitude) {
	// path har start tile och end tile, 
	//functionen kollar invisiblespathen baklänges för att hitta dugligaste vägen att ta 
	//om end_tile är occuperad, returnera noone om inget sådant finns och ignorerar vägar längre än 50.
	
	var shortest_yet = start_tile

	if(!scr_occupiable(end_tile,altitude)) {
		global.game.optimal_path = []
		return global.game.optimal_path
		exit;
	}
	loopTilesStart
		distance = 100
		path_find_checked = 0
	loopTilesEnd
	start_tile.distance = 0//need to be reset each time to infty
	if(start_tile == end_tile) {
		exit  show_debug_message("start_tile = end_tile")
	} else {
		while(shortest_yet != end_tile and shortest_yet != noone and shortest_yet.distance < 50) {
			if(noone != scr_find_shortest_yet()) {
				shortest_yet = scr_find_shortest_yet(altitude)
				with(shortest_yet) {
					scr_update_distance_neighbours(altitude)
					path_find_checked = 1
				}
			} else shortest_yet = end_tile
		}
	
	
		if(shortest_yet == noone or shortest_yet.distance >= 50) {
			loopTilesStart
				path_find_checked = 0
			loopTilesEnd
			global.game.optimal_path = []
			return global.game.optimal_path
			exit;
		} else {
			loopTilesStart
				path_find_checked = 0
			loopTilesEnd
			if(!array_equals(global.game.optimal_path, [])) {
				for(var i = 0; i < array_length(global.game.optimal_path) - 1; i++) {    ////////delete old path visuals
					var tile_colored = global.game.optimal_path[i]
					tile_colored.imageBlend = c_white
				}
			}
			global.game.optimal_path = []  //maybe clear
	
			array_push(global.game.optimal_path, end_tile)
			for(var i = 1; i <= shortest_yet.distance; i++) {
				var this_tile = global.game.optimal_path[i - 1]
				var earlier_tile = scr_get_earlier_tile(this_tile)
				array_push(global.game.optimal_path, earlier_tile)
			}
		}
		return global.game.optimal_path
	}
}
