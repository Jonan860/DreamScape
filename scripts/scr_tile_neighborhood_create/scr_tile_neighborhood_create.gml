function scr_tile_neighborhood_create() {
	loopTilesStart 
		loopTilesStart2
			if(tile_x == other.tile_x and tile_y - 2 == other.tile_y) {
				other.south_tile = self
			}

			if(tile_x == other.tile_x and tile_y + 2 == other.tile_y) {
				other.north_tile = self
			}

			if(tile_x == other.tile_x + 1 and tile_y == other.tile_y + 1) {
				other.south_east_tile = self
			}

			if(tile_x == other.tile_x - 1 and tile_y == other.tile_y + 1) {
				other.south_west_tile = self
			}

			if(tile_x == other.tile_x + 1 and tile_y == other.tile_y - 1) {
				other.north_east_tile = self
			}

			if(tile_x == other.tile_x - 1 and tile_y == other.tile_y - 1) {
				other.north_west_tile = self
			}
		loopTilesEnd
	loopTilesEnd
	loopTilesStart
		ds_list_clear(list_of_neighbours)
		ds_list_add(list_of_neighbours,  north_tile, north_west_tile, north_east_tile , south_west_tile , south_east_tile, south_tile)
	loopTilesEnd
}
