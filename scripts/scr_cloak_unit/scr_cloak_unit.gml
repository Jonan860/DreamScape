// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_cloak_unit(targeto){
	with(targeto)
	{
	var homeland=ds_map_find_value(tile.occupants,altitude)
	with(tile)
	{
	scr_ds_list_remove_value(homeland,targeto)
	ds_list_add(invisibles_list,targeto)
	//ds_list_delete(homeland,homeadress)  //need to change when flying invisble
	//ds_list_clear(selected_units)
	}
	scr_make_all_unit_detarget(targeto)
	//if(global.tile_selected=tile)
	//{
	//global.tile_selected=tile
//	ds_listtile.selected_unit=id
//	}
	
altitude="invisible"
	phase="idle"
	action_bar=0 //2021
	
	//var var_altitude_list=ds_map_find_value(tile.occupants,altitude)
	//ds_list_add(var_altitude_list,id)
	//ds_map_replace(tile2.occupants,"ground",id)
	}
}