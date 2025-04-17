global.gameBoard = id
tiles = []
scr_create_tile_on_map()
scr_tile_neighborhood_create()
scr_declare_non_habitable_tiles()

loopTilesStart
	is_back_tile = (tile_x >= 8 and tile_x <= 12 and tile_y == 18) or (tile_y == 17 and tile_x >= 7 and tile_x <= 13)
	if(is_back_tile) {
		scr_instance_create_at_tile_with_owner(obj_crystal, self, global.player)
	}
loopTilesEnd

scr_tile_distances_calculate()

