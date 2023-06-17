/// @scr_get_tiles_within_range(tile,range)
/// @param tile
/// @param range
function scr_get_tiles_at_range(argument0, argument1) {

	var tile2=argument0
	var range=argument1
	var list_of_tiles_at_range=ds_list_create()

	//var xx1=tile.x
	//var yy1=tile.y
	//var xx2
	//var yy2
	//var tilex
	//var tiley
	//var tile_within_range
	with(obj_tile)
	{
		//show_debug_message(string(scr_get_distance(tile2,100078)))
	if(scr_get_distance(tile2,self)==range)
	{
	ds_list_add(list_of_tiles_at_range,self)
	}
	}


	///angle might be wrong here
	/*for (i = 0; i < 6; i += 1)
	{
	xx1=tile2.x+range*tile2.sprite_height*sin(pi/3*i)
	yy1=tile2.y-range*tile2.sprite_height*cos(pi/3*i)

	xx2=tile2.x+range*tile2.sprite_height*sin(pi/3*(i+1))
	yy2=tile2.y-range*tile2.sprite_height*cos(pi/3*(i+1))

	for (j=0; j<range; j+=1)
	{
	tilex=(1-j/range)*xx1+j/range*xx2
	tiley=(1-j/range)*yy1+j/range*yy2
	tile_within_range=instance_position(tilex,tiley,obj_tile)
	ds_list_add(list_of_tiles_at_range,tile_within_range)
	}
	}*/

	return list_of_tiles_at_range


}
