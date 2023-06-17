function scr_perform_s_heroes_and_lille_skutt() {
		if(global.tile_selected!=noone)
		{
		var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)

	if((object_is_ancestor(var_selected.object_index,obj_hero) or var_selected.object_index=obj_lille_skutt) and var_selected.owner=global.player)
	{
		with(var_selected)
		{
		if(phase="reviving")
		{
		
		phase="idle"
		action_bar=0 //2021
		}
		else
		{
			scr_disblend_list(path)
			ds_list_clear(path)
		phase="reviving"
		target=noone
		}
		}
	}
		}

}
