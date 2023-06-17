function scr_player_hunt() {
	if(phase!="dead" and phase!="reviving" and phase!="earthshatter jump")
	{
	if((owner=global.player or owner=global.creep_lord) and phase="hunt" and action_bar>=min(attack_cost,movement_cost)) ////kanske ska begränsas till friendlies only
	{
		
		var distance=scr_get_distance(tile,target.tile)
		show_debug_message("distance="+string(distance))
		if(0<distance and distance<=range)
		{
			if(action_bar>=attack_cost)
		{
			scr_disblend_list(path)
			ds_list_clear(path)
			scr_update_arrow_path()
			scr_attack_target()
		}
		}
		else if(action_bar>=movement_cost and distance>range)
	{
		//scr_disblend_list(path)
	//ds_list_copy(path,scr_find_closest_path_within_range(tile,target.tile,range)) //om utanför range   //////fps droopppoppps
	//scr_update_arrow_path()
	//scr_blend_path()
	destination=target.tile
	scr_update_path_to_destination()
	if(ds_list_empty(path)) 
	{
	phase="idle"
	action_bar=0 //2021
	target=noone
	}
	else
	{
		if(action_bar>=movement_cost)
		{
			action_bar=0//-=movement_cost
	 	var tile_to_move_to=ds_list_find_value(path,ds_list_size(path)-2)
	 scr_move_to_tile(tile_to_move_to)
	 scr_update_path_to_destination()
		}
	}
	}
	}
	}


}
