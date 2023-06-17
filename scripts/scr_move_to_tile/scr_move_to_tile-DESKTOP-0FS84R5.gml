/// @description scr_move_to_tile(tile)    ,altitude)
/// @param tile
function scr_move_to_tile(argument0) {
	//from obj_unit

	var tile2=argument0
	if(ds_map_find_value(tile2.occupants,"ground")==noone)   ///scr_is_occupiable(tile2)
	{
	with(tile)
	{
	ds_map_replace(occupants,"ground",noone)  //need to change when flying invisble
	selected_unit=noone
	}
	if(global.tile_selected=tile)
	{
	global.tile_selected=tile2
	tile2.selected_unit=self
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
	ds_map_replace(tile2.occupants,"ground",self)
	}






}
