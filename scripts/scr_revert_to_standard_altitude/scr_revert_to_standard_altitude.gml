// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_revert_to_standard_altitude(){
	scr_make_room_for_instance_on_tile(tile,base_altitude)
var var_old_alt_list=ds_map_find_value(tile.occupants,altitude)
scr_ds_list_remove_value(var_old_alt_list,id)
altitude=base_altitude
var var_new_alt_list=ds_map_find_value(tile.occupants,altitude)
ds_list_add(var_new_alt_list,id)
}