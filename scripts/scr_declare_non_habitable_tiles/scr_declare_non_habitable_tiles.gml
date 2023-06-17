function scr_declare_non_habitable_tiles() {
	with(obj_tile)
	{
	if(
	(tile_x=14 and tile_y!=10) 
	or tile_x<=5
	or tile_x>=21
	or tile_x>=14 and tile_x+tile_y>=30
	or (tile_x=15 and tile_y!=9) 
	or tile_x=6
	or ((tile_x>=15 and tile_x<=17) and (tile_y=7 or tile_y=8 or tile_y=11 or tile_y=12))
	or (tile_x=16 and tile_y<7)
	or (tile_x=20 and tile_y<9)
	or (tile_x=18 and tile_y=10)
	or (tile_x=19 and tile_y=9)
	or (tile_x=19 and tile_y=7)
	or ((tile_x<=19 and tile_x>=17) and (tile_y<2))
	or tile_y>=17
	)
	{
	habitable=0
	}

	}


}
