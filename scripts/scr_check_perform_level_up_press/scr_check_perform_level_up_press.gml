// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_perform_level_up_press(){
if(global.tile_selected!=noone)
	{
		
		var var_selected=ds_list_find_value(global.tile_selected.selected_units,0) 
		if(!is_undefined(var_selected))
		{
	if(object_is_ancestor(var_selected.object_index,obj_hero))
	{
		with(var_selected)
		{
if(scr_is_q_button_pressed() and global.hud.gui_display_abilities)
{
	if(number_of_ability_points>0)
	{
		if(2*(spell_q_lvl)+1<=lvl)
	{
	scr_level_up_q_spell()
	exit;
	}
	}
}
if(scr_is_w_button_pressed() and global.hud.gui_display_abilities)
{
	if(number_of_ability_points>0)
	{
		if(2*(spell_w_lvl)+1<=lvl)
		{
			scr_level_up_w_spell()
		exit;
		}
	}
}
if(scr_is_e_button_pressed() and global.hud.gui_display_abilities)
{
	if(number_of_ability_points>0)
	{
		if(2*(spell_e_lvl)+1<=lvl)
		{
			scr_level_up_e_spell()
		
exit;
		}
	}
}


if(scr_is_r_button_pressed() and global.hud.gui_display_abilities)
{
	
}

}
	}
		}
	}
}