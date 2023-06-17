/// scr_get_invisible_distance(start_tile,end_tile) "distance if invisible"
/// @param start_tile
/// @param end_tile
function scr_get_invisibles_distance(argument0, argument1) {

	var var_start_tile=argument0
	var var_end_tile=argument1
var var_end_tile_id=string(var_end_tile.id)
	var var_return=ds_map_find_value(var_start_tile.ds_map_distances,var_end_tile_id)
	return var_return
}
