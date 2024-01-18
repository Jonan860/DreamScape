function scr_find_path(start_tile, end_tile, altitude) {
	// path har start tile och end tile, 
	//functionen kollar invisiblespathen baklänges för att hitta dugligaste vägen att ta 
	//om end_tile är occuperad, returnera noone om inget sådant finns och ignorerar vägar längre än 50.
	
	var shortest_yet = start_tile

	if(!scr_occupiable(end_tile,altitude)) {
		ds_list_clear(global.game.optimal_path)
		return global.game.optimal_path
		exit;
	}
	with(obj_tile) {
		distance = 100
		path_find_checked = 0
	}
	start_tile.distance = 0//need to be reset each time to infty
	if(start_tile==end_tile) {
		exit  show_debug_message("start_tile=end_tile")
	} else {
		while(shortest_yet != end_tile and shortest_yet != noone and shortest_yet.distance < 50) {
			if(noone != scr_find_shortest_yet()) {
				shortest_yet = scr_find_shortest_yet(altitude)
				with(shortest_yet) {
					scr_update_distance_neighbours(altitude)
					path_find_checked = 1
				}
			}
			else
			shortest_yet = end_tile
		}
	
	
		if(shortest_yet == noone or shortest_yet.distance >= 50) {
			with(obj_tile) {
				path_find_checked=0
			}
			ds_list_clear(global.game.optimal_path)
			return global.game.optimal_path
			exit;
		} else {
				with(obj_tile) {
					path_find_checked=0
				}
			var i = 0	
		
			if(!ds_list_empty(global.game.optimal_path)) {
				for(var i = 0; i < ds_list_size(global.game.optimal_path) - 1; i += 1) {    ////////delete old path visuals
					var tile_colored = ds_list_find_value(global.game.optimal_path, i)
					tile_colored.image_blend = c_white
				}
			}
		
			ds_list_destroy(global.game.optimal_path)
			global.game.optimal_path = ds_list_create()  //maybe clear
	
			ds_list_add(global.game.optimal_path, end_tile)
			for(var i = 1; i <= shortest_yet.distance; i += 1) {
				var this_tile = global.game.optimal_path[|i-1]
				if(this_tile == noone) {
					n = random(5)		
				}
				var earlier_tile=scr_get_earlier_tile(this_tile)
				ds_list_add(global.game.optimal_path, earlier_tile)
			}
		}
		return global.game.optimal_path
	}


}
