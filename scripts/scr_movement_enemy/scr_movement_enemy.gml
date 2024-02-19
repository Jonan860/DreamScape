function scr_movement_enemy() {
	var tileToMoveTo = noone
	for(var i = ds_list_size(list_of_neighbours) - 1; i > 0 ; i--) {
		var _tile = list_of_neighbours[|i]
		if(scr_occupiable(_tile, altitude)){
			tileToMoveTo = _tile
			break;
		}
	}
	if(tileToMoveTo != noone) {
		action_bar = 0
		scr_move_to_tile(tileToMoveTo)
	}
}
