// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_left_hud_not_pressed(){
if(scr_is_cursor_on_hud()==0)
{
	unit_to_kawarimi1=noone
	unit_to_kawarimi2=noone
if(global.tile_selected!=noone)
{
	var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)

if(global.ida=var_selected)
{
	if(scr_is_abilities_button_pressed())
	{
		exit; ///done in draw gui
	}
	if(global.hud.gui_display_abilities)
	{
	if(scr_is_q_button_pressed() or scr_is_w_button_pressed() or scr_is_e_button_pressed())
{
exit;
}
}
}

if(var_selected=global.lille_skutt)
scr_q_button_check_and_perform_action()
}
var var_clicked_tile=instance_position(mouse_x,mouse_y,obj_tile)
if(global.tile_selected=var_clicked_tile)
{
scr_rotate_selected_units()
}
else
{
scr_select_tile(var_clicked_tile)
}
if(cursor_sprite!=-1 and var_selected!=global.ida)  ///(cursor_sprite=spr_fire_ball_cursor or cursor_sprite=spr_freeze_cursor or cursor_sprite=spr_kawarimi_cursor or cursor_sprite=spr_slow_cursor)
{
	window_set_cursor(cr_default)
cursor_sprite=-1
}
var var_tile_clicked=instance_position(mouse_x,mouse_y,obj_tile)
	if(var_tile_clicked!=noone)
	{
	var var_ground_unit_list=ds_map_find_value(var_tile_clicked.occupants,"ground")
	var var_ground_unit=ds_list_find_value(var_ground_unit_list,0)
	if(var_ground_unit!=global.ida)
	{
	global.hud.gui_display_abilities=0
	}
	}
}
}