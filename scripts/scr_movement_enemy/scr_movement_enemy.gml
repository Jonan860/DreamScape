function scr_movement_enemy() {
	if(owner=global.enemy and phase="movement" and action_bar>=movement_cost)
	{
	
	if(scr_occupiable(tile.south_tile,altitude))
	{
		action_bar=0//-=movement_cost
	scr_move_to_tile(tile.south_tile)
	}
	else
	if(scr_occupiable(tile.south_west_tile,altitude))
	{
		action_bar=0//-=movement_cost
	scr_move_to_tile(tile.south_west_tile)
	}
	else
	if(scr_occupiable(tile.south_east_tile,altitude))
	{
		action_bar=0//-=movement_cost
	scr_move_to_tile(tile.south_east_tile)
	}
	else
	if(scr_occupiable(tile.north_west_tile,altitude))
	{
		action_bar=0//-=movement_cost
	scr_move_to_tile(tile.north_west_tile)
	}
	else
	if(scr_occupiable(tile.north_east_tile,altitude))
	{
		action_bar=0//-=movement_cost
	scr_move_to_tile(tile.north_east_tile)
	}
	else
	if(scr_occupiable(tile.north_tile,altitude))
	{
		action_bar=0//-=movement_cost
	scr_move_to_tile(tile.north_tile)
	}
	}


}
