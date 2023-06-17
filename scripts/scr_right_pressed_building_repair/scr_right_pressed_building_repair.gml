// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_right_pressed_building_repair(clicked_tile,var_ground_unit){
//if(global.tile_selected.selected_unit==global.lille_skutt )
	if(ds_list_find_index(global.tile_selected.selected_units,global.lille_skutt)>=0 and object_is_ancestor(var_ground_unit.object_index,obj_building))
	{
		if(scr_get_distance(global.tile_selected,clicked_tile)<=1)
		{
	global.lille_skutt.is_building=var_ground_unit
		}
	}
}