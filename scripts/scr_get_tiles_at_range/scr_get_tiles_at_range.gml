function scr_get_tiles_at_range(tile2, range) {
	var list_of_tiles_at_range = []
	
	loopTilesStart
		if(scr_get_distance(tile2, self) == range and ((self.tile_x - 6) * (tile2.tile_x - 6)) > 0  and ((self.tile_x - 14) * (tile2.tile_x - 14)) > 0) { // samma sida om 6 och 14
			array_push(list_of_tiles_at_range, self)
		}
	loopTilesEnd
	return list_of_tiles_at_range
}
