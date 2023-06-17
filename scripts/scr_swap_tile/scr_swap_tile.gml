/// scr_swap_tile(unit1,unit2)
/// @param unit1
/// @param unit2
function scr_swap_tile(argument0, argument1) {

	var unit1=argument0
	var unit2=argument1
	first_tile=unit1.tile
	second_tile=unit2.tile
	with(obj_tile)
	{
	if(scr_occupiable(id,"ground") and scr_occupiable(id,"air") and scr_occupiable(id,"invisible"))
	{
	other.tile_to_use=id
	break;
	}
	}

	with(unit1)
	{
	scr_move_to_tile(other.tile_to_use)
	}

	with(unit2)
	{
	scr_move_to_tile(other.first_tile)
	phase="idle"
	action_bar=0 //2021
	target=noone
	destination=noone
	}

	with(unit1)
	{
	scr_move_to_tile(other.second_tile)
	phase="idle"
	action_bar=0 //2021
	target=noone
	destination=noone
	}


}
