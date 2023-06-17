function scr_perform_q() {
if(global.tile_selected!=noone)
	{
var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)
	if(!global.hud.gui_display_abilities)
	{
	
		
	scr_perfrom_q_ida(var_selected)

	scr_perform_q_nils(var_selected)

	scr_perform_q_unit_producing_building(var_selected)

	scr_perform_q_lille_skutt(var_selected)

	scr_perform_q_footman(var_selected)
	scr_perform_q_sorceress(var_selected)
	scr_perform_q_priest(var_selected)
	}
	else
	{
		
	if(object_is_ancestor(var_selected.object_index,obj_hero))
	{
		with(var_selected)
		{
	if(number_of_ability_points>0)
		{
			if(2*(spell_q_lvl)+1<=lvl)
		{
		scr_level_up_q_spell()
		}
		}
		}
	}
	}
}
}
