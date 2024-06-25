function scr_declare_backline_tiles() {
	loopTilesStart
		is_back_tile = (tile_x >= 8 and tile_x <= 12 and tile_y == 18) or (tile_y == 17 and tile_x >= 7 and tile_x <= 13)
	loopTilesEnd
}
