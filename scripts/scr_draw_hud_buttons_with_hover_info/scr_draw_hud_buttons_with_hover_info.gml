function scr_draw_hud_buttons_with_hover_info() {
	if(global.tile_selected!=noone )
	{
		
		var var_selected_unit=ds_list_find_value(global.tile_selected.selected_units,0)
if(var_selected_unit.altitude!="invisible")
		{
	scr_dra_hud_button_with_hover_inf_hero(var_selected_unit)
		scr_dra_hud_buttons_with_hover_inf_mage(var_selected_unit)  ///one should be removed?
		//scr_draw_hud_button_and_hover_mage(var_selected_unit)       ////same
	
	
	scr_dra_hud_button_with_hover_inf_building(var_selected_unit)
	scr_dra_hud_button_with_hover_inf_lille_skutt(var_selected_unit)


	scr_draw_hud_button_and_hover_footman(var_selected_unit)
	scr_draw_hud_button_and_hover_elven_archer(var_selected_unit)
	
//scr_draw_hud_button_and_hover_priest(var_selected_unit)
	}
	if(var_selected_unit.altitude="invisible")
	{
	scr_draw_decloak_button_with_hover(var_selected_unit)
	}
	}
	



}
