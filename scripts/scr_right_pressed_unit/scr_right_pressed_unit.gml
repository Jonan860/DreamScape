// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_right_pressed_unit(clicked_tile,var_selected_unit){
if(!object_is_ancestor(var_selected_unit.object_index,obj_building))
 {
 if(var_selected_unit.phase!="sleep") 
	{
		scr_right_pressed_spade_selected(var_selected_unit,clicked_tile)
	
	
	/*if(cursor_sprite=spr_spade_cursor and var_selected_unit.to_build_with_spade==obj_arcane_sanctum) ///can be fused with above using obj_unit_producing_nbuil
	{
		var var_arcane_cost=ds_map_find_value(global.map_object_to_costs,obj_arcane_sanctum)
	if(global.player.money>=var_arcane_cost and scr_occupiable(clicked_tile) and scr_get_distance(global.tile_selected,clicked_tile)<=global.tile_selected.selected_unit.range)
	{
		global.player.money-=var_arcane_cost
	var var_arcane_sanctum=scr_instance_create_at_tile_with_owner(obj_arcane_sanctum,clicked_tile,global.player)
var_arcane_sanctum.unfinished=1
var_arcane_sanctum.build_progress=0
global.lille_skutt.is_building=self
}
	}
	*/
	if(object_is_ancestor(var_selected_unit.object_index,obj_unit))
	{
		if(var_selected_unit.phase!="reviving" and var_selected_unit.phase!="dead")
	{
	//var clicked_tile=instance_position(mouse_x,mouse_y,obj_tile)
	scr_right_pressed_ida_selected(var_selected_unit,clicked_tile)
	scr_right_pressed_occupiable_tile(var_selected_unit,clicked_tile)

	if(!scr_occupiable(clicked_tile,var_selected_unit.altitude) or window_get_cursor()!=cr_default)
	{
		var var_ground_unit_list=ds_map_find_value(clicked_tile.occupants,"ground")
	if(!ds_list_empty(var_ground_unit_list))
	{
		var var_ground_unit=ds_list_find_value(var_ground_unit_list,0)
		scr_right_pressed_building_repair(clicked_tile,var_ground_unit)
	scr_right_pressed_enemy(var_ground_unit,clicked_tile,var_selected_unit)
	
	scr_right_pressed_player_unit(var_ground_unit,var_selected_unit,clicked_tile)
	
	}
	}
	}
	
}


}
}
}