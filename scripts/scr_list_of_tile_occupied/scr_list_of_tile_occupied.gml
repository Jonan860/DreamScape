function scr_list_of_tile_occupied(list, altitude){
	for(var i = 0; i < ds_list_size(list); i += 1) {
		var tilu = list[|i]
		if(scr_occupiable(tilu,altitude)) {
			return 0
		}
	}
	return 1
}