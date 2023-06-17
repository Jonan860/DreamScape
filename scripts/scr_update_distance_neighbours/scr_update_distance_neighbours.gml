function scr_update_distance_neighbours(altitude) {
	if(north_east_tile!=noone)
	{
		if(scr_occupiable(north_east_tile,altitude))  ////should be improved with scr_moveable_to
		{
	north_east_tile.distance=min(distance+1,north_east_tile.distance)
		}
	}

	if(south_east_tile!=noone)
	{
	if(scr_occupiable(south_east_tile,altitude))
	{
	south_east_tile.distance=min(distance+1,south_east_tile.distance)
	}
	}

	if(north_west_tile!=noone)
	{
		if(scr_occupiable(north_west_tile,altitude))
	{
	north_west_tile.distance=min(distance+1,north_west_tile.distance)
	}
	}

	if(south_west_tile!=noone)
	{
		if(scr_occupiable(south_west_tile,altitude))
	{
	south_west_tile.distance=min(distance+1,south_west_tile.distance)
	}
	}

	if(north_tile!=noone)
	{
		if(scr_occupiable(north_tile,altitude))
	{
	north_tile.distance=min(distance+1,north_tile.distance)
	}
	}

	if(south_tile!=noone)
	{
		if(scr_occupiable(south_tile,altitude))
	{
	south_tile.distance=min(distance+1,south_tile.distance)
	}
	}

	path_find_checked=1


}
