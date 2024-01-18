function scr_movement_enemy() {
	if(owner == global.enemy and phase == "movement" and action_bar >= movement_cost) {
		var tileToMoveTo = noone
		if(scr_occupiable(tile.south_tile, altitude)) {
			tileToMoveTo = tile.south_tile
		} else if(scr_occupiable(tile.south_west_tile, altitude)) {
			tileToMoveTo = tile.south_west_tile
		} else if(scr_occupiable(tile.south_east_tile, altitude)) {
			tileToMoveTo = tile.south_east_tile
		} else if(scr_occupiable(tile.north_west_tile,altitude)) {
			tileToMoveTo = tile.north_west_tile
		} else if(scr_occupiable(tile.north_east_tile,altitude)) {
			tileToMoveTo = tile.north_east_tile
		} else if(scr_occupiable(tile.north_tile,altitude)) {
			tileToMoveTo = tile.north_tile
		}
		if(tileToMoveTo != noone) {
			action_bar = 0
			scr_move_to_tile(tileToMoveTo)
		}
	}
}
