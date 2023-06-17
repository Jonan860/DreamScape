/// @description scr_move_to_tile(tile)    ,altitude)
/// @param tile
function scr_move_to_tile(tile2) {
	//from obj_unit

	//var indigenous_list=ds_map_find_value(tile2.occupants,altitude)
	if(tile!=noone)
	{
	var homeland=ds_map_find_value(tile.occupants,altitude)
	}
	//var homeadress=ds_list_find_index(homeland,id)
	if(scr_occupiable(tile2,altitude))//ds_list_empty(indigenous_list) or altitude="invisible")   ///scr_is_occupiable(tile2)
	{
		if(tile!=noone)
		{
		scr_ds_list_remove_value(homeland,id)
		}
	if(global.tile_selected=tile)
	{
			with(tile)
	{
		
	//ds_list_delete(homeland,homeadress)  //need to change when flying invisble
	scr_ds_list_remove_value(selected_units,other.id)
	}
	global.tile_selected=tile2
	
	}
	tile=tile2

	//if(self==global.lille_skutt)
	//{
	//	x_translate=tile.x-x
	//y_translate=tile.y-y
	//human_barracks_build_icon_x+=x_translate
	//human_barracks_build_icon_y+=y_translate
	//human_barracks_queue_length_x+=x_translate
	//human_barracks_queue_lenght_y+=y_translate
	//human_barracks_progress_bar_x1+=x_translate
	//human_barracks_progress_bar_x2+=x_translate
	//human_barracks_progress_bar_y1+=y_translate
	//human_barracks_progress_bar_y2+=y_translate

	//}
	x=tile.x
	y=tile.y
	var var_altitude_list=ds_map_find_value(tile.occupants,altitude)
	ds_list_add(var_altitude_list,id)
	with(tile2)
	{
	scr_update_selected_list()
	}
	
	//ds_map_replace(tile2.occupants,"ground",id)
	}






}
