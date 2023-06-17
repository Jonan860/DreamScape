function scr_get_earlier_tile(argument0) {
	var tile2=argument0

	with(tile2)
	{
		if(north_tile!=noone)
		{
	if(north_tile.distance<distance)
	{
	return north_tile
	exit
	}
		}
	
		if(south_tile!=noone)
		{
	if(south_tile.distance<distance)
	{
	return south_tile
	exit
	}
		}
	
		if(west_tile!=noone)
		{
	if(west_tile.distance<distance)
	{
	return west_tile
	exit
	}
		}
	
		if(east_tile!=noone)
		{
	if(east_tile.distance<distance)
	{
	return east_tile
	exit
	}
		}
	
	
	if(north_west_tile!=noone)
	{
	if(north_west_tile.distance<distance)
	{
	return north_west_tile
	exit
	}
	}

	if(south_east_tile!=noone)
	{
	if(south_east_tile.distance<distance)
	{
	return south_east_tile
	exit
	}
	}


	if(south_west_tile!=noone)
	{
	if(south_west_tile.distance<distance)
	{
	return south_west_tile
	exit
	}
	}

	if(north_east_tile!=noone)
	{
	if(north_east_tile.distance<distance)
	{
	return north_east_tile
	exit
	}
	}
	}


}
