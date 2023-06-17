function scr_movement_creep_return() {
	if(owner=global.creep_lord and phase="return" and action_bar>=movement_cost/3)
	{
		////debugg
		if(scr_occupiable(start_tile,altitude)==0)
		{
		var slack=random(3)
		}
		////end debug
	scr_update_path_to_destination()
	if(ds_list_empty(path)) //1-07-06
	{
	action_bar=0
	exit;
	}
	//debugg
		if(ds_list_size(path)>10)
		{
		var xx=random(3)
		}
	//end  of debugg
	action_bar=0 //not until moved// not
	var tile_to_move_to=ds_list_find_value(path,ds_list_size(path)-2)
	//debug
	if(tile_to_move_to==noone)
	{
	{
		var xx=random(3)
		}
	}
	//end debug
	scr_blend_tile_unit_stood_on()
	scr_check_if_destination_as_close_can_be()
	scr_move_to_tile(tile_to_move_to)
	}


}
