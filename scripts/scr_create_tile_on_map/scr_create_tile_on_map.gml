function scr_create_tile_on_map() {
	var i;
	var j;
	for (i = 0; 4*32+8*32*(i-1) < room_height-512; i += 1) //last one is partially outside
	{
	for(j = 0; 4*32+12*32*(j-1) < room_width; j += 1)
	{
		tile=instance_create_depth(4*32+12*32*j,4*32+8*32*i,0,obj_tile)
	tile.tile_x=2*j
	tile.tile_y=2*i
	if(tile.tile_x mod 2 == 1)
	{
	tile.sprite_index=spr_hexagon_pink
	}
	else
	{
	tile.sprite_index=spr_hexagon_purple
	}
	}
	}
	i=0
	j=0
	for (i = 0; 4*32+8*32*(i-1) < room_height-512; i += 1) //last one is partially outside
	{
	for(j = 0; 4*32+12*32*(j-1) < room_width; j += 1)
	{
		tile=instance_create_depth(-2*32+12*32*j,8*32*i,0,obj_tile)
	tile.tile_x=2*j-1
	tile.tile_y=2*i-1
	if(tile.tile_x mod 2 == 0)
	{
	tile.sprite_index=spr_hexagon_purple
	}
	else
	{sprite_index=spr_hexagon_pink}
	}
	}


}
