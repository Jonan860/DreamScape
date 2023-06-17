function scr_declare_backline_tiles() {
	with(obj_tile)
	{
	if((tile_x>=8 and tile_x<=12 and tile_y=18) or (tile_y=17 and tile_x>=7 and tile_x<=13))
	{
	is_back_tile=1 scr_instance_create_at_tile_with_owner(obj_crystal,self,global.player)
	}
	else
	{
	is_back_tile=0
	}
	}


}
