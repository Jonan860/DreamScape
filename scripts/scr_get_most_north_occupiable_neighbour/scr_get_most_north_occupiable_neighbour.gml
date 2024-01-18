function scr_get_most_north_occupiable_neighbour() {
	with(tile) {
		if(scr_occupiable(north_tile, "invisible")) {
			return north_tile
			exit;
		}

		if(scr_occupiable(north_west_tile, "invisible")) {
			return north_west_tile
			exit;
		}

		if(scr_occupiable(north_east_tile, "invisible")) {
			return north_east_tile
			exit;
		}
	
		if(scr_occupiable(south_west_tile, "invisible")) {
			return south_west_tile
			exit;
		}

		if(scr_occupiable(south_east_tile, "invisible")) {
			return north_east_tile
			exit;
		}

		if(scr_occupiable(south_tile, "invisible")) {
			return south_tile
			exit;
		}
		return noone
	}
}
