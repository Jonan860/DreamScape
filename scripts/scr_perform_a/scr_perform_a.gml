function scr_perform_a() {
	if(!global.hud.gui_display_abilities)
	{
	if(global.tile_selected!=noone)
	{
		var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)




	if(object_is_ancestor(var_selected.object_index,obj_unit_producing_building))
	{
		with(var_selected)
		{
			if(object_index=obj_human_barrack and ds_list_find_index(queue_list,a_object)<0 and !global.player.footman_has_defend_upgrade)
		{
		scr_recruit_unit(a_object)
		}
		if(object_index=obj_arcane_sanctum and ds_list_find_index(queue_list,a_object)<0 and !global.player.sorceress_has_invisibility)
		{
		scr_recruit_unit(a_object)
		}
		}
	}



	}
	}


}
