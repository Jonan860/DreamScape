function scr_tile_distances_calculate() {
	/*var var_path=ds_list_create()
	with(obj_tile)
	{
		show_debug_message(string(id))
	with(obj_tile)
	{
		ds_list_clear(var_path)
		ds_list_copy(var_path,scr_find_path(other,self))
	if(!ds_list_empty(var_path))
	{
	var var_distance=ds_list_size(var_path)-1
	ds_map_add(other.ds_map_distances,string(id),var_distance)
	}
	}
	}
	*/

	with(obj_tile)
	{
		if(scr_occupiable(id,"invisible"))
		{
	var shortest_yet=id

	////////7///maaaaaaaaat!!!!!111!!!!!
	with(obj_tile)
	{
	distance=100
	path_find_checked=0
	}
	distance=0//need to be reset each time to infty


		while(shortest_yet!=noone)
		{
			shortest_yet=scr_find_shortest_yet()
			if(noone!=shortest_yet)  ///slutar innan targettile
			{
	with(shortest_yet)
	{
	scr_update_distance_neighbours("invisible")
	path_find_checked=1
	}
			}
			else
			{
				show_debug_message("red alert!!!!1!")
				}
		}
	
		
	with(obj_tile)
	{
		path_find_checked=0
		ds_map_add(other.ds_map_distances,string(id),distance)
	}
		}
	}



}
