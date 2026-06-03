/// @description scr_make_room_for_instance_on_tile(tile,altidtude) called from instance to be moved
/// @param tile
/// @param altidude
function scr_make_room_for_instance_on_tile(argument0, argument1) {

	var var_tile_to_clear=argument0
	var var_altitude=argument1  ////behövs om man vill ändra altitude och den altiduden är occuperad

	var var_secondary_tile_to_clear=argument0
	var var_list_of_units_been_dealt_with=ds_list_create()
	var var_owner=owner
	//ds_list_replace(tile.occupants,altitude,noone)
	//tile=noone
	var var_instance_to_move_away=ds_map_find_value(var_tile_to_clear.occupants,var_altitude)
	if(var_instance_to_move_away==noone)
	{
	exit;
	}

	while(scr_occupiable(var_tile_to_clear)==0)
	{
	var var_instance_to_move_away=ds_map_find_value(var_secondary_tile_to_clear.occupants,var_altitude)

	with(var_instance_to_move_away)
	{
		if(var_owner=global.player)
		{
	var var_most_occupiable=scr_get_most_south_occupiable_neighbour()
		}
		else
		{
		var var_most_occupiable=scr_get_most_north_occupiable_neighbour()
		}
	if(var_most_occupiable!=noone)
	{
	scr_move_to_tile(var_most_occupiable)
	var var_last_pos_in_list=ds_list_size(var_list_of_units_been_dealt_with)-1
	for(i=0;i<=var_last_pos_in_list; i+=1)
	{
	var var_unit=ds_list_find_value(var_list_of_units_been_dealt_with,var_last_pos_in_list-i)
	with(var_unit)
	{
	var var_tile_to_move_to=scr_get_most_north_occupiable_neighbour()  //kvittar om north eller south ty finns bara en ruta att gå till
	scr_move_to_tile(var_tile_to_move_to)
	}
	}
	}
	else
	{
		ds_list_add(var_list_of_units_been_dealt_with,self)
		if(var_owner=global.player) //kan bli fel om north/south tile tar slut
		{
	var_secondary_tile_to_clear=var_secondary_tile_to_clear.south_tile
		}
		else
		{
		var_secondary_tile_to_clear=var_secondary_tile_to_clear.north_tile
		}
	}
	}
	}
	ds_list_destroy(var_list_of_units_been_dealt_with)



}
