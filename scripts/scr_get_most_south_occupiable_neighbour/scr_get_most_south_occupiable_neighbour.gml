/// @description scr_get_most_south_occupiable_neighbour(altitude)  called from unit/building
/// @param altitude
///
function scr_get_most_south_occupiable_neighbour() {
	with(tile)
	{
	if(scr_occupiable(south_tile,"invisible"))
	{
	return south_tile
	exit;
	}

	if(scr_occupiable(south_west_tile,"invisible"))
	{
	return south_west_tile
	exit;
	}

	if(scr_occupiable(south_east_tile,"invisible"))
	{
	return south_east_tile
	exit;
	}

	if(scr_occupiable(north_west_tile,"invisible"))
	{
	return north_west_tile
	exit;
	}

	if(scr_occupiable(north_east_tile,"invisible"))
	{
	return north_east_tile
	exit;
	}

	if(scr_occupiable(north_tile,"invisible"))
	{
	return north_tile
	exit;
	}

	return noone
	}


}
